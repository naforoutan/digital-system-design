// ============================================================
// MONTGOMERY MULTIPLICATION
// MontMul(a,b) = a * b * R^-1 mod N
// R = 2^WIDTH
// ============================================================
module montgomery_mul #(
    parameter WIDTH = 16
) (
    input wire clk,
    input wire rst,
    input wire start,
    input wire [WIDTH-1:0] a,
    input wire [WIDTH-1:0] b,
    input wire [WIDTH-1:0] N,
    input wire [WIDTH-1:0] N_prime,
    output reg [WIDTH-1:0] result,
    output reg done
);

localparam IDLE       = 3'd0;
localparam CAPTURE_T  = 3'd1;
localparam CAPTURE_M  = 3'd2;
localparam CAPTURE_MN = 3'd3;
localparam REDUCE     = 3'd4;

reg [2:0] state;

reg [WIDTH-1:0] a_reg;
reg [WIDTH-1:0] b_reg;
reg [WIDTH-1:0] N_reg;
reg [WIDTH-1:0] N_prime_reg;

reg [2*WIDTH-1:0] t;
reg [WIDTH-1:0] m;
reg [2*WIDTH-1:0] mN;

wire [2*WIDTH-1:0] product_ab;
wire [2*WIDTH-1:0] product_tlow_Np;
wire [2*WIDTH-1:0] product_mN;

wire [2*WIDTH:0] sum_t_mN;
wire [WIDTH:0] candidate;
wire [WIDTH:0] reduced_candidate;

assign sum_t_mN = {1'b0, t} + {1'b0, mN};
assign candidate = sum_t_mN[2*WIDTH:WIDTH];
assign reduced_candidate = candidate - {1'b0, N_reg};

karatsuba_mul #(
    .WIDTH(WIDTH),
    .BASE_WIDTH(16)
) mul_ab (
    .x(a_reg),
    .y(b_reg),
    .p(product_ab)
);

karatsuba_mul #(
    .WIDTH(WIDTH),
    .BASE_WIDTH(16)
) mul_tlow_Np (
    .x(t[WIDTH-1:0]),
    .y(N_prime_reg),
    .p(product_tlow_Np)
);

karatsuba_mul #(
    .WIDTH(WIDTH),
    .BASE_WIDTH(16)
) mul_mN (
    .x(m),
    .y(N_reg),
    .p(product_mN)
);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= IDLE;
        done <= 1'b0;
        result <= 0;

        a_reg <= 0;
        b_reg <= 0;
        N_reg <= 0;
        N_prime_reg <= 0;

        t <= 0;
        m <= 0;
        mN <= 0;
    end else begin
        done <= 1'b0;

        case (state)
            IDLE: begin
                if (start) begin
                    a_reg <= a;
                    b_reg <= b;
                    N_reg <= N;
                    N_prime_reg <= N_prime;
                    state <= CAPTURE_T;
                end
            end

            CAPTURE_T: begin
                t <= product_ab;
                state <= CAPTURE_M;
            end

            CAPTURE_M: begin
                m <= product_tlow_Np[WIDTH-1:0];
                state <= CAPTURE_MN;
            end

            CAPTURE_MN: begin
                mN <= product_mN;
                state <= REDUCE;
            end

            REDUCE: begin
                if (candidate >= {1'b0, N_reg})
                    result <= reduced_candidate[WIDTH-1:0];
                else
                    result <= candidate[WIDTH-1:0];

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