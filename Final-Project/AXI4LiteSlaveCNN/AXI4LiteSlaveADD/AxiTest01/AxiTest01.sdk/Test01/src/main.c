#include "xparameters.h"
#include "xil_io.h"
#include "xil_printf.h"
#include "xil_types.h"
#include "sleep.h"

#include "input_image.h"

#define AXI_BASE_ADDRESS XPAR_AXI4_LITE_SLAVE_0_BASEADDR
#define REG_ADDRESS(index) ((UINTPTR)(AXI_BASE_ADDRESS + ((index) * 4U)))

#define REG_WINDOW_0        0U
#define REG_WINDOW_1        1U
#define REG_WINDOW_2        2U
#define REG_WINDOW_3        3U
#define REG_WINDOW_X        4U
#define REG_WINDOW_Y        5U
#define REG_COMMAND        32U
#define REG_STATUS         33U
#define REG_DIGIT4_COORD   34U
#define REG_DIGIT4_SCORE   35U
#define REG_DIGIT5_COORD   36U
#define REG_DIGIT5_SCORE   37U
#define REG_WINDOW_COUNT   38U

#define COMMAND_START 0x00000001U
#define COMMAND_CLEAR 0x00000002U

#define STATUS_DONE 0x00000001U
#define STATUS_BUSY 0x00000002U

#define WINDOW_WIDTH      9U
#define WINDOW_HEIGHT    12U
#define WINDOW_PIXELS    (WINDOW_WIDTH * WINDOW_HEIGHT)
#define TOTAL_WINDOWS    ((IMAGE_WIDTH - WINDOW_WIDTH + 1U) * \
                          (IMAGE_HEIGHT - WINDOW_HEIGHT + 1U))
#define BINARY_THRESHOLD 160U

#define WINDOW_TIMEOUT_POLLS 5000000U
#define TRACE_WINDOW_COUNT   2U
#define PROGRESS_INTERVAL    256U

static const u32 digit4_template_words[4] = {
    0xC1C0E020U, 0x198D87C3U, 0x80C0FE7FU, 0x00000101U
};

static const u32 digit5_template_words[4] = {
    0x6031F8F8U, 0x301F8FC0U, 0xF1F8C060U, 0x00000001U
};

static u32 read_reg(u32 index)
{
    return Xil_In32(REG_ADDRESS(index));
}

static void write_reg(u32 index, u32 value)
{
    Xil_Out32(REG_ADDRESS(index), value);
}

static void pack_window(u32 start_x, u32 start_y, u32 words[4])
{
    u32 row;
    u32 column;
    u32 bit_index;

    words[0] = 0U;
    words[1] = 0U;
    words[2] = 0U;
    words[3] = 0U;

    for (row = 0U; row < WINDOW_HEIGHT; ++row) {
        for (column = 0U; column < WINDOW_WIDTH; ++column) {
            bit_index = row * WINDOW_WIDTH + column;

            if (input_image[start_y + row][start_x + column] < BINARY_THRESHOLD) {
                words[bit_index >> 5U] |= 1U << (bit_index & 31U);
            }
        }
    }
}

static int software_score(const u32 window_words[4], const u32 template_words[4])
{
    u32 bit_index;
    int score = 0;

    for (bit_index = 0U; bit_index < WINDOW_PIXELS; ++bit_index) {
        const u32 word_index = bit_index >> 5U;
        const u32 bit_offset = bit_index & 31U;
        const u32 pixel = (window_words[word_index] >> bit_offset) & 1U;
        const u32 template_pixel = (template_words[word_index] >> bit_offset) & 1U;

        if (pixel != 0U) {
            score += (template_pixel != 0U) ? 2 : -1;
        }
    }

    return score;
}

static void print_register_snapshot(const char *label)
{
    const u32 status = read_reg(REG_STATUS);
    const u32 count = read_reg(REG_WINDOW_COUNT) & 0x0FFFU;
    const u32 coord4 = read_reg(REG_DIGIT4_COORD);
    const u32 coord5 = read_reg(REG_DIGIT5_COORD);
    const s32 score4 = (s32)read_reg(REG_DIGIT4_SCORE);
    const s32 score5 = (s32)read_reg(REG_DIGIT5_SCORE);

    xil_printf("[%s] status=0x%08x done=%u busy=%u count=%u\r\n",
               label,
               status,
               (status & STATUS_DONE) != 0U,
               (status & STATUS_BUSY) != 0U,
               count);
    xil_printf("[%s] d4=(%u,%u) score=%d d5=(%u,%u) score=%d\r\n",
               label,
               coord4 & 0x3FU,
               (coord4 >> 8U) & 0x3FU,
               score4,
               coord5 & 0x3FU,
               (coord5 >> 8U) & 0x3FU,
               score5);
}

static int clear_hardware(void)
{
    u32 poll;

    write_reg(REG_COMMAND, COMMAND_CLEAR);

    for (poll = 0U; poll < WINDOW_TIMEOUT_POLLS; ++poll) {
        const u32 status = read_reg(REG_STATUS);
        const u32 count = read_reg(REG_WINDOW_COUNT) & 0x0FFFU;

        if (((status & STATUS_BUSY) == 0U) && (count == 0U)) {
            return 1;
        }
    }

    xil_printf("ERROR: clear command did not reach an idle/count=0 state.\r\n");
    print_register_snapshot("CLEAR-TIMEOUT");
    return 0;
}

static int send_window_and_wait(u32 x,
                                u32 y,
                                const u32 words[4],
                                u32 window_number)
{
    const u32 previous_count = read_reg(REG_WINDOW_COUNT) & 0x0FFFU;
    const u32 expected_count = (previous_count + 1U) & 0x0FFFU;
    const int trace_this_window = window_number < TRACE_WINDOW_COUNT;
    u32 poll;
    u32 status = 0U;
    u32 count = previous_count;

    write_reg(REG_WINDOW_0, words[0]);
    write_reg(REG_WINDOW_1, words[1]);
    write_reg(REG_WINDOW_2, words[2]);
    write_reg(REG_WINDOW_3, words[3]);
    write_reg(REG_WINDOW_X, x);
    write_reg(REG_WINDOW_Y, y);

    if (trace_this_window) {
        xil_printf("\r\n[TRACE] window=%u coordinate=(%u,%u) previous_count=%u expected_count=%u\r\n",
                   window_number, x, y, previous_count, expected_count);
        xil_printf("[TRACE] write words: %08x %08x %08x %08x\r\n",
                   words[0], words[1], words[2], words[3]);
        xil_printf("[TRACE] readback   : %08x %08x %08x %08x x=%u y=%u\r\n",
                   read_reg(REG_WINDOW_0),
                   read_reg(REG_WINDOW_1),
                   read_reg(REG_WINDOW_2),
                   read_reg(REG_WINDOW_3),
                   read_reg(REG_WINDOW_X) & 0x3FU,
                   read_reg(REG_WINDOW_Y) & 0x3FU);
        print_register_snapshot("BEFORE-START");
    }

    write_reg(REG_COMMAND, COMMAND_START);

    for (poll = 0U; poll < WINDOW_TIMEOUT_POLLS; ++poll) {
        status = read_reg(REG_STATUS);
        count = read_reg(REG_WINDOW_COUNT) & 0x0FFFU;

        if ((count == expected_count) &&
            ((status & STATUS_DONE) != 0U) &&
            ((status & STATUS_BUSY) == 0U)) {
            if (trace_this_window) {
                xil_printf("[TRACE] completed after %u polls\r\n", poll + 1U);
                print_register_snapshot("WINDOW-DONE");
            }
            return 1;
        }

        if (trace_this_window &&
            ((poll < 8U) || (poll == 31U) || (poll == 127U) ||
             (poll == 1023U) || (poll == 65535U))) {
            xil_printf("[TRACE:POLL %u] status=0x%08x done=%u busy=%u count=%u\r\n",
                       poll,
                       status,
                       (status & STATUS_DONE) != 0U,
                       (status & STATUS_BUSY) != 0U,
                       count);
        }
    }

    xil_printf("\r\nERROR: hardware timeout at window (%u,%u).\r\n", x, y);
    xil_printf("Expected count=%u, actual count=%u, status=0x%08x\r\n",
               expected_count, count, status);
    xil_printf("Window readback: %08x %08x %08x %08x x=%u y=%u\r\n",
               read_reg(REG_WINDOW_0),
               read_reg(REG_WINDOW_1),
               read_reg(REG_WINDOW_2),
               read_reg(REG_WINDOW_3),
               read_reg(REG_WINDOW_X) & 0x3FU,
               read_reg(REG_WINDOW_Y) & 0x3FU);
    print_register_snapshot("WINDOW-TIMEOUT");

    if (count == previous_count) {
        if ((status & STATUS_BUSY) != 0U) {
            xil_printf("DIAGNOSIS: start was accepted, but the convolution engine did not finish.\r\n");
        } else {
            xil_printf("DIAGNOSIS: start was not accepted, or SDK programmed a stale bitstream/register map.\r\n");
        }
    } else {
        xil_printf("DIAGNOSIS: count changed, but DONE/BUSY handshake is inconsistent.\r\n");
    }

    return 0;
}

int main(void)
{
    u32 x;
    u32 y;
    u32 window_words[4];
    u32 window_number = 0U;

    int software_best4 = -32768;
    int software_best5 = -32768;
    u32 software_x4 = 0U;
    u32 software_y4 = 0U;
    u32 software_x5 = 0U;
    u32 software_y5 = 0U;

    u32 coord4;
    u32 coord5;
    s32 hardware_score4;
    s32 hardware_score5;
    u32 hardware_x4;
    u32 hardware_y4;
    u32 hardware_x5;
    u32 hardware_y5;
    u32 processed_windows;

    xil_printf("\r\nRemoteFPGA 9x12 Window Convolution - TRACE V4\r\n");
    xil_printf("Targets: digit 4 and digit 5\r\n");
    xil_printf("Image: 64x64 grayscale, threshold=%u\r\n", BINARY_THRESHOLD);
    xil_printf("AXI base address: 0x%08x\r\n", (u32)AXI_BASE_ADDRESS);
    xil_printf("Total windows: %u\r\n", (u32)TOTAL_WINDOWS);

    print_register_snapshot("BOOT");

    if (!clear_hardware()) {
        xil_printf("FATAL: hardware clear failed. Stop before scanning the image.\r\n");
        while (1) {
            sleep(1);
        }
    }

    print_register_snapshot("AFTER-CLEAR");

    for (y = 0U; y <= IMAGE_HEIGHT - WINDOW_HEIGHT; ++y) {
        for (x = 0U; x <= IMAGE_WIDTH - WINDOW_WIDTH; ++x) {
            int current_score4;
            int current_score5;

            pack_window(x, y, window_words);

            current_score4 = software_score(window_words, digit4_template_words);
            current_score5 = software_score(window_words, digit5_template_words);

            if (current_score4 > software_best4) {
                software_best4 = current_score4;
                software_x4 = x;
                software_y4 = y;
            }

            if (current_score5 > software_best5) {
                software_best5 = current_score5;
                software_x5 = x;
                software_y5 = y;
            }

            if (!send_window_and_wait(x, y, window_words, window_number)) {
                xil_printf("FATAL: scan stopped at window %u of %u.\r\n",
                           window_number + 1U, (u32)TOTAL_WINDOWS);
                while (1) {
                    sleep(1);
                }
            }

            ++window_number;

            if ((window_number == 1U) ||
                ((window_number % PROGRESS_INTERVAL) == 0U) ||
                (window_number == TOTAL_WINDOWS)) {
                xil_printf("Progress: %u/%u, last window=(%u,%u), HW count=%u\r\n",
                           window_number,
                           (u32)TOTAL_WINDOWS,
                           x,
                           y,
                           read_reg(REG_WINDOW_COUNT) & 0x0FFFU);
            }
        }
    }

    coord4 = read_reg(REG_DIGIT4_COORD);
    coord5 = read_reg(REG_DIGIT5_COORD);

    hardware_x4 = coord4 & 0x3FU;
    hardware_y4 = (coord4 >> 8U) & 0x3FU;
    hardware_x5 = coord5 & 0x3FU;
    hardware_y5 = (coord5 >> 8U) & 0x3FU;

    hardware_score4 = (s32)read_reg(REG_DIGIT4_SCORE);
    hardware_score5 = (s32)read_reg(REG_DIGIT5_SCORE);
    processed_windows = read_reg(REG_WINDOW_COUNT) & 0x0FFFU;

    xil_printf("\r\n--------------- RESULTS ---------------\r\n");
    xil_printf("Processed windows: %u (expected %u)\r\n",
               processed_windows, (u32)TOTAL_WINDOWS);

    xil_printf("Digit 4 HW: top-left=(%u,%u), score=%d\r\n",
               hardware_x4, hardware_y4, hardware_score4);
    xil_printf("Digit 4 SW: top-left=(%u,%u), score=%d\r\n",
               software_x4, software_y4, software_best4);

    xil_printf("Digit 5 HW: top-left=(%u,%u), score=%d\r\n",
               hardware_x5, hardware_y5, hardware_score5);
    xil_printf("Digit 5 SW: top-left=(%u,%u), score=%d\r\n",
               software_x5, software_y5, software_best5);

    if ((processed_windows == TOTAL_WINDOWS) &&
        (hardware_x4 == software_x4) &&
        (hardware_y4 == software_y4) &&
        (hardware_score4 == software_best4) &&
        (hardware_x5 == software_x5) &&
        (hardware_y5 == software_y5) &&
        (hardware_score5 == software_best5)) {
        xil_printf("PASS: hardware and software results match.\r\n");
    } else {
        xil_printf("FAIL: hardware and software results are different.\r\n");
    }

    xil_printf("Expected supplied-image positions: digit4=(21,47), digit5=(34,5)\r\n");
    xil_printf("---------------------------------------\r\n");

    while (1) {
        sleep(1);
    }

    return 0;
}
