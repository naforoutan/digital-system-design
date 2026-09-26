// ============================================================
// EXTENDED GCD
// ============================================================
module extended_gcd #(
    parameter WIDTH = 16,
    parameter COEFF_WIDTH = 2*WIDTH + 2
) (
    input wire clk,
    input wire rst,
    input wire start,
    input wire [WIDTH-1:0] a,
    input wire [WIDTH-1:0] b,
    output reg [WIDTH-1:0] gcd,
    output reg signed [COEFF_WIDTH-1:0] x,
    output reg signed [COEFF_WIDTH-1:0] y,
    output reg done
);

localparam IDLE     = 3'd0;
localparam DIVIDE   = 3'd1;
localparam WAIT_DIV = 3'd2;
localparam UPDATE   = 3'd3;
localparam FINISH   = 3'd4;

reg [2:0] state;

reg [WIDTH-1:0] r0, r1;
reg signed [COEFF_WIDTH-1:0] s0, s1;
reg signed [COEFF_WIDTH-1:0] t0, t1;

reg div_start;
reg [WIDTH-1:0] div_dividend;
reg [WIDTH-1:0] div_divisor;

wire [WIDTH-1:0] div_quotient;
wire [WIDTH-1:0] div_remainder;
wire div_done;

reg [WIDTH-1:0] q;
reg [WIDTH-1:0] rem;

// ---------------- Division ----------------
non_restoring_div #(.WIDTH(WIDTH)) div_inst (
    .clk(clk),
    .rst(rst),
    .start(div_start),
    .dividend(div_dividend),
    .divisor(div_divisor),
    .quotient(div_quotient),
    .remainder(div_remainder),
    .done(div_done)
);

// ---------------- Signed coefficient multiplication ----------------
wire s1_neg = s1 < 0;
wire t1_neg = t1 < 0;

wire [COEFF_WIDTH-1:0] q_ext =
    {{(COEFF_WIDTH-WIDTH){1'b0}}, q};

wire [COEFF_WIDTH-1:0] s1_abs =
    s1_neg ? $unsigned(-s1) : $unsigned(s1);

wire [COEFF_WIDTH-1:0] t1_abs =
    t1_neg ? $unsigned(-t1) : $unsigned(t1);

wire [2*COEFF_WIDTH-1:0] q_s1_abs_product;
wire [2*COEFF_WIDTH-1:0] q_t1_abs_product;

karatsuba_mul #(.WIDTH(COEFF_WIDTH), .BASE_WIDTH(16)) mul_q_s1 (
    .x(q_ext),
    .y(s1_abs),
    .p(q_s1_abs_product)
);

karatsuba_mul #(.WIDTH(COEFF_WIDTH), .BASE_WIDTH(16)) mul_q_t1 (
    .x(q_ext),
    .y(t1_abs),
    .p(q_t1_abs_product)
);

wire signed [COEFF_WIDTH-1:0] q_s1_signed_product =
    s1_neg ? -$signed(q_s1_abs_product[COEFF_WIDTH-1:0]) :
              $signed(q_s1_abs_product[COEFF_WIDTH-1:0]);

wire signed [COEFF_WIDTH-1:0] q_t1_signed_product =
    t1_neg ? -$signed(q_t1_abs_product[COEFF_WIDTH-1:0]) :
              $signed(q_t1_abs_product[COEFF_WIDTH-1:0]);

// ---------------- FSM ----------------
always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= IDLE;
        done <= 1'b0;

        gcd <= 0;
        x <= 0;
        y <= 0;

        r0 <= 0;
        r1 <= 0;

        s0 <= 0;
        s1 <= 0;
        t0 <= 0;
        t1 <= 0;

        div_start <= 1'b0;
        div_dividend <= 0;
        div_divisor <= 0;

        q <= 0;
        rem <= 0;
    end else begin
        done <= 1'b0;
        div_start <= 1'b0;

        case (state)
            IDLE: begin
                if (start) begin
                    if (b == 0) begin
                        gcd <= a;
                        x <= 1;
                        y <= 0;
                        done <= 1'b1;
                        state <= IDLE;
                    end else begin
                        r0 <= a;
                        r1 <= b;

                        s0 <= 1;
                        s1 <= 0;

                        t0 <= 0;
                        t1 <= 1;

                        state <= DIVIDE;
                    end
                end
            end

            DIVIDE: begin
                if (r1 != 0) begin
                    div_dividend <= r0;
                    div_divisor <= r1;
                    div_start <= 1'b1;
                    state <= WAIT_DIV;
                end else begin
                    state <= FINISH;
                end
            end

            WAIT_DIV: begin
                if (div_done) begin
                    q <= div_quotient;
                    rem <= div_remainder;
                    state <= UPDATE;
                end
            end

            UPDATE: begin
                r0 <= r1;
                r1 <= rem;

                s0 <= s1;
                s1 <= s0 - q_s1_signed_product;

                t0 <= t1;
                t1 <= t0 - q_t1_signed_product;

                state <= DIVIDE;
            end

            FINISH: begin
                gcd <= r0;
                x <= s0;
                y <= t0;
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