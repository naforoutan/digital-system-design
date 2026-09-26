`timescale 1ns / 1ps

// ============================================================
// MODULAR INVERSE
// Computes inverse = a^(-1) mod m
// ============================================================
module modular_inverse #(
    parameter WIDTH = 16,
    parameter COEFF_WIDTH = 2*WIDTH + 2
) (
    input wire clk,
    input wire rst,
    input wire start,
    input wire [WIDTH-1:0] a,
    input wire [WIDTH-1:0] m,
    output reg [WIDTH-1:0] inverse,
    output reg done
);

localparam IDLE       = 3'd0;
localparam START_EGCD = 3'd1;
localparam WAIT_EGCD  = 3'd2;
localparam START_DIV  = 3'd3;
localparam WAIT_DIV   = 3'd4;
localparam OUTPUT     = 3'd5;

reg [2:0] state;

reg [WIDTH-1:0] a_reg;
reg [WIDTH-1:0] m_reg;

reg egcd_start;
wire [WIDTH-1:0] gcd;
wire signed [COEFF_WIDTH-1:0] x;
wire signed [COEFF_WIDTH-1:0] y;
wire egcd_done;
reg signed [COEFF_WIDTH-1:0] x_abs_full;
reg div_start;
reg [WIDTH-1:0] div_dividend;
reg [WIDTH-1:0] div_divisor;
wire [WIDTH-1:0] div_quotient;
wire [WIDTH-1:0] div_remainder;
wire div_done;

reg x_is_negative;
reg [WIDTH-1:0] x_abs_low;
reg [WIDTH-1:0] inv_temp;

extended_gcd #(
    .WIDTH(WIDTH),
    .COEFF_WIDTH(COEFF_WIDTH)
) egcd_inst (
    .clk(clk),
    .rst(rst),
    .start(egcd_start),
    .a(a_reg),
    .b(m_reg),
    .gcd(gcd),
    .x(x),
    .y(y),
    .done(egcd_done)
);

non_restoring_div #(
    .WIDTH(WIDTH)
) div_inst (
    .clk(clk),
    .rst(rst),
    .start(div_start),
    .dividend(div_dividend),
    .divisor(div_divisor),
    .quotient(div_quotient),
    .remainder(div_remainder),
    .done(div_done)
);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= IDLE;

        inverse <= 0;
        done <= 1'b0;

        a_reg <= 0;
        m_reg <= 0;
        x_abs_full <= 0;
        egcd_start <= 1'b0;
        div_start <= 1'b0;

        div_dividend <= 0;
        div_divisor <= 0;

        x_is_negative <= 1'b0;
        x_abs_low <= 0;
        inv_temp <= 0;
    end else begin
        done <= 1'b0;
        egcd_start <= 1'b0;
        div_start <= 1'b0;

        case (state)
            IDLE: begin
                if (start) begin
                    a_reg <= a;
                    m_reg <= m;
                    state <= START_EGCD;
                end
            end

            START_EGCD: begin
                egcd_start <= 1'b1;
                state <= WAIT_EGCD;
            end

            WAIT_EGCD: begin
                if (egcd_done) begin
                    if (gcd != 1 || m_reg == 0) begin
                        inv_temp <= 0;
                        state <= OUTPUT;
                    end else begin
                        if (x < 0) begin
                            x_is_negative <= 1'b1;
                            x_abs_full = -x;
                            x_abs_low <= x_abs_full[WIDTH-1:0];
                            div_dividend <= x_abs_full[WIDTH-1:0];
                        end else begin
                            x_is_negative <= 1'b0;
                            x_abs_low <= x[WIDTH-1:0];
                            div_dividend <= x[WIDTH-1:0];
                        end

                        div_divisor <= m_reg;
                        state <= START_DIV;
                    end
                end
            end

            START_DIV: begin
                div_start <= 1'b1;
                state <= WAIT_DIV;
            end

            WAIT_DIV: begin
                if (div_done) begin
                    if (x_is_negative) begin
                        if (div_remainder == 0)
                            inv_temp <= 0;
                        else
                            inv_temp <= m_reg - div_remainder;
                    end else begin
                        inv_temp <= div_remainder;
                    end

                    state <= OUTPUT;
                end
            end

            OUTPUT: begin
                inverse <= inv_temp;
                done <= 1'b1;
                state <= IDLE;
            end

            default: begin
                state <= IDLE;
            end
        endcase
    end
end

endmodule