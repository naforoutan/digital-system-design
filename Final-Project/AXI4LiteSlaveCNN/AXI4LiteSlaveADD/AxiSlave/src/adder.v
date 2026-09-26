`timescale 1ns / 1ps

// Resource-optimized 9x12 binary convolution engine.
// The ARM processor sends one thresholded image window at a time.
// Two fixed filters (digits 4 and 5 for group 4) are evaluated serially.
// Coefficients are restricted to +2 and -1, so no hardware multiplier is used.
module window_convolution (
    input  wire               clk,
    input  wire               rst,
    input  wire               clear_results,
    input  wire               start,
    input  wire [107:0]       window_bits,
    input  wire [5:0]         window_x,
    input  wire [5:0]         window_y,

    output reg                done,
    output reg                busy,
    output reg signed [15:0]  best_score_digit4,
    output reg [5:0]          best_x_digit4,
    output reg [5:0]          best_y_digit4,
    output reg signed [15:0]  best_score_digit5,
    output reg [5:0]          best_x_digit5,
    output reg [5:0]          best_y_digit5,
    output reg [11:0]         processed_windows
);

    localparam integer WINDOW_PIXELS = 108;

    // Bit i represents pixel i in row-major order.
    // These templates were extracted from the supplied 64x64 input image
    // using threshold 160. Replace them when the required group digits change.
    localparam [107:0] TEMPLATE_DIGIT_4 =
        108'h10180C0FE7F198D87C3C1C0E020;
    localparam [107:0] TEMPLATE_DIGIT_5 =
        108'h001F1F8C060301F8FC06031F8F8;

    localparam signed [15:0] SCORE_MIN = 16'sh8000;

    reg [107:0] window_latched;
    reg [5:0]   x_latched;
    reg [5:0]   y_latched;
    reg [6:0]   pixel_index;

    reg signed [15:0] accumulator_digit4;
    reg signed [15:0] accumulator_digit5;

    wire pixel_value;
    wire template4_value;
    wire template5_value;

    wire signed [15:0] contribution_digit4;
    wire signed [15:0] contribution_digit5;
    wire signed [15:0] next_score_digit4;
    wire signed [15:0] next_score_digit5;

    assign pixel_value     = window_latched[pixel_index];
    assign template4_value = TEMPLATE_DIGIT_4[pixel_index];
    assign template5_value = TEMPLATE_DIGIT_5[pixel_index];

    // Binary convolution coefficients:
    // foreground template pixel => +2
    // background template pixel => -1
    // white input pixel          =>  0
    assign contribution_digit4 = pixel_value
        ? (template4_value ? 16'sd2 : -16'sd1)
        : 16'sd0;

    assign contribution_digit5 = pixel_value
        ? (template5_value ? 16'sd2 : -16'sd1)
        : 16'sd0;

    assign next_score_digit4 = accumulator_digit4 + contribution_digit4;
    assign next_score_digit5 = accumulator_digit5 + contribution_digit5;

    always @(posedge clk) begin
        if (rst) begin
            done                <= 1'b0;
            busy                <= 1'b0;
            window_latched      <= 108'd0;
            x_latched           <= 6'd0;
            y_latched           <= 6'd0;
            pixel_index         <= 7'd0;
            accumulator_digit4  <= 16'sd0;
            accumulator_digit5  <= 16'sd0;
            best_score_digit4   <= SCORE_MIN;
            best_x_digit4       <= 6'd0;
            best_y_digit4       <= 6'd0;
            best_score_digit5   <= SCORE_MIN;
            best_x_digit5       <= 6'd0;
            best_y_digit5       <= 6'd0;
            processed_windows   <= 12'd0;
        end else if (clear_results) begin
            done                <= 1'b0;
            busy                <= 1'b0;
            pixel_index         <= 7'd0;
            accumulator_digit4  <= 16'sd0;
            accumulator_digit5  <= 16'sd0;
            best_score_digit4   <= SCORE_MIN;
            best_x_digit4       <= 6'd0;
            best_y_digit4       <= 6'd0;
            best_score_digit5   <= SCORE_MIN;
            best_x_digit5       <= 6'd0;
            best_y_digit5       <= 6'd0;
            processed_windows   <= 12'd0;
        end else begin
            if (start && !busy) begin
                window_latched      <= window_bits;
                x_latched           <= window_x;
                y_latched           <= window_y;
                pixel_index         <= 7'd0;
                accumulator_digit4  <= 16'sd0;
                accumulator_digit5  <= 16'sd0;
                done                <= 1'b0;
                busy                <= 1'b1;
            end else if (busy) begin
                if (pixel_index == WINDOW_PIXELS - 1) begin
                    if (next_score_digit4 > best_score_digit4) begin
                        best_score_digit4 <= next_score_digit4;
                        best_x_digit4     <= x_latched;
                        best_y_digit4     <= y_latched;
                    end

                    if (next_score_digit5 > best_score_digit5) begin
                        best_score_digit5 <= next_score_digit5;
                        best_x_digit5     <= x_latched;
                        best_y_digit5     <= y_latched;
                    end

                    processed_windows <= processed_windows + 1'b1;
                    busy              <= 1'b0;
                    done              <= 1'b1;
                end else begin
                    accumulator_digit4 <= next_score_digit4;
                    accumulator_digit5 <= next_score_digit5;
                    pixel_index        <= pixel_index + 1'b1;
                end
            end
        end
    end

endmodule
