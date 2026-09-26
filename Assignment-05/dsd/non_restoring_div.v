// ============================================================
// NON RESTORING DIVISION
// ============================================================
module non_restoring_div #(
    parameter WIDTH = 16
) (
    input wire clk,
    input wire rst,
    input wire start,
    input wire [WIDTH-1:0] dividend,
    input wire [WIDTH-1:0] divisor,
    output reg [WIDTH-1:0] quotient,
    output reg [WIDTH-1:0] remainder,
    output reg done
);

localparam IDLE    = 2'd0;
localparam COMPUTE = 2'd1;
localparam FINISH  = 2'd2;

reg [1:0] state;

reg signed [WIDTH:0] rem;
reg [WIDTH-1:0] quot;
reg [WIDTH-1:0] dividend_reg;
reg [WIDTH-1:0] divisor_reg;
reg [$clog2(WIDTH+1)-1:0] count;
reg signed [WIDTH:0] corrected_rem;
reg signed [WIDTH:0] shifted_rem;
reg signed [WIDTH:0] next_rem;
reg [WIDTH-1:0] next_quot;
reg input_bit;

always @(*) begin
    input_bit = dividend_reg[count - 1];

    shifted_rem = {rem[WIDTH-1:0], input_bit};

    if (rem >= 0)
        next_rem = shifted_rem - {1'b0, divisor_reg};
    else
        next_rem = shifted_rem + {1'b0, divisor_reg};

    next_quot = quot;

    if (next_rem >= 0)
        next_quot[count - 1] = 1'b1;
    else
        next_quot[count - 1] = 1'b0;
end

always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= IDLE;
        quotient <= 0;
        remainder <= 0;
        done <= 1'b0;
        rem <= 0;
        quot <= 0;
        corrected_rem <= 0;
        dividend_reg <= 0;
        divisor_reg <= 0;
        count <= 0;
    end else begin
        done <= 1'b0;

        case (state)
            IDLE: begin
                if (start) begin
                    if (divisor == 0) begin
                        quotient <= 0;
                        remainder <= 0;
                        done <= 1'b1;
                        state <= IDLE;
                    end else begin
                        rem <= 0;
                        quot <= 0;
                        dividend_reg <= dividend;
                        divisor_reg <= divisor;
                        count <= WIDTH;
                        state <= COMPUTE;
                    end
                end
            end

            COMPUTE: begin
                rem <= next_rem;
                quot <= next_quot;

                if (count == 1)
                    state <= FINISH;

                count <= count - 1'b1;
            end
            FINISH: begin
                quotient <= quot;

                if (rem < 0) begin
                    corrected_rem = rem + {1'b0, divisor_reg};
                    remainder <= corrected_rem[WIDTH-1:0];
                end else begin
                    remainder <= rem[WIDTH-1:0];
                end

                done <= 1'b1;
                state <= IDLE;
            end
        endcase
    end
end

endmodule