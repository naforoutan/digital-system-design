#include "xparameters.h"
#include "xil_io.h"
#include "sleep.h"
#include "xil_printf.h"

volatile unsigned int *AXIAddr0 =
    (volatile unsigned int *)XPAR_AXI4_LITE_SLAVE_0_BASEADDR;

int main()
{
    unsigned int out_low;
    unsigned int out_high;
    unsigned int done;
    unsigned int busy;

    xil_printf("TEA Encryption Test\r\n");

    while (1)
    {
        xil_printf("---------------------------------\r\n");

        /*
         * Plaintext = 0x0123456789ABCDEF
         */
        Xil_Out32((UINTPTR)(AXIAddr0 + 0), 0x89ABCDEF);
        Xil_Out32((UINTPTR)(AXIAddr0 + 1), 0x01234567);

        /*
         * Key = 0x00112233445566778899AABBCCDDEEFF
         */
        Xil_Out32((UINTPTR)(AXIAddr0 + 2), 0xCCDDEEFF);
        Xil_Out32((UINTPTR)(AXIAddr0 + 3), 0x8899AABB);
        Xil_Out32((UINTPTR)(AXIAddr0 + 4), 0x44556677);
        Xil_Out32((UINTPTR)(AXIAddr0 + 5), 0x00112233);

        xil_printf("Data and Key Loaded\r\n");

        /*
         * Start Encryption
         */
        xil_printf("Send Start\r\n");
        Xil_Out32((UINTPTR)(AXIAddr0 + 32), 1);

        done = 0;

        /*
        while(done == 0)
        {
            done = Xil_In32((UINTPTR)(AXIAddr0 + 33));
            busy = Xil_In32((UINTPTR)(AXIAddr0 + 36));

            xil_printf("Busy=%d Done=%d\r\n", busy, done);
        }*/

        xil_printf("Encryption Finished\r\n");

        out_low  = Xil_In32((UINTPTR)(AXIAddr0 + 34));
        out_high = Xil_In32((UINTPTR)(AXIAddr0 + 35));

        xil_printf("Cipher Low  = 0x%08X\r\n", out_low);
        xil_printf("Cipher High = 0x%08X\r\n", out_high);

        xil_printf("Cipher Text = 0x%08X%08X\r\n",
                   out_high,
                   out_low);

        sleep(2);
    }

    return 0;
}
