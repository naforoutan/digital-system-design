// ============================================================
// MONTGOMERY EXPONENTIATION TOP
// result = A^E mod N
// ============================================================
module montgomery_exp_top #(
    parameter WIDTH = 16
) (
    input wire clk,
    input wire rst,
    input wire start,
    input wire [WIDTH-1:0] A,
    input wire [WIDTH-1:0] E,
    input wire [WIDTH-1:0] N,
    output reg [WIDTH-1:0] result,
    output reg done
);

localparam INV_WIDTH = WIDTH + 1;
localparam DIV_WIDTH = 2*WIDTH + 1;

localparam IDLE             = 5'd0;
localparam START_INV        = 5'd1;
localparam WAIT_INV         = 5'd2;
localparam START_R_MOD_N    = 5'd3;
localparam WAIT_R_MOD_N     = 5'd4;
localparam START_A_BAR      = 5'd5;
localparam WAIT_A_BAR       = 5'd6;
localparam START_SQUARE     = 5'd7;
localparam WAIT_SQUARE      = 5'd8;
localparam START_MULTIPLY   = 5'd9;
localparam WAIT_MULTIPLY    = 5'd10;
localparam NEXT_BIT         = 5'd11;
localparam START_CONVERT    = 5'd12;
localparam WAIT_CONVERT     = 5'd13;
localparam FINISH           = 5'd14;

reg [4:0] state;

reg [WIDTH-1:0] A_reg;
reg [WIDTH-1:0] E_reg;
reg [WIDTH-1:0] N_reg;

reg [WIDTH-1:0] N_prime;
reg [WIDTH-1:0] A_bar;
reg [WIDTH-1:0] mont_result;

reg [$clog2(WIDTH+1)-1:0] bit_index;

// ---------------- Modular inverse: N^(-1) mod R ----------------
// R = 2^WIDTH needs WIDTH+1 bits.
reg inv_start;
wire [INV_WIDTH-1:0] N_inv_ext;
wire inv_done;

modular_inverse #(
    .WIDTH(INV_WIDTH),
    .COEFF_WIDTH(2*INV_WIDTH + 2)
) inv_inst (
    .clk(clk),
    .rst(rst),
    .start(inv_start),
    .a({1'b0, N_reg}),
    .m({1'b1, {WIDTH{1'b0}}}),
    .inverse(N_inv_ext),
    .done(inv_done)
);

// ---------------- Divider for A_bar and R mod N ----------------
reg div_start;
reg [DIV_WIDTH-1:0] div_dividend;
reg [DIV_WIDTH-1:0] div_divisor;
wire [DIV_WIDTH-1:0] div_quotient;
wire [DIV_WIDTH-1:0] div_remainder;
wire div_done;

non_restoring_div #(
    .WIDTH(DIV_WIDTH)
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

// ---------------- Montgomery multiplication ----------------
reg mont_start;
reg [WIDTH-1:0] mont_a;
reg [WIDTH-1:0] mont_b;
wire [WIDTH-1:0] mont_out;
wire mont_done;

montgomery_mul #(
    .WIDTH(WIDTH)
) mont_mul_inst (
    .clk(clk),
    .rst(rst),
    .start(mont_start),
    .a(mont_a),
    .b(mont_b),
    .N(N_reg),
    .N_prime(N_prime),
    .result(mont_out),
    .done(mont_done)
);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= IDLE;

        result <= 0;
        done <= 1'b0;

        A_reg <= 0;
        E_reg <= 0;
        N_reg <= 0;

        N_prime <= 0;
        A_bar <= 0;
        mont_result <= 0;

        bit_index <= 0;

        inv_start <= 1'b0;
        div_start <= 1'b0;
        mont_start <= 1'b0;

        div_dividend <= 0;
        div_divisor <= 0;

        mont_a <= 0;
        mont_b <= 0;
    end else begin
        done <= 1'b0;
        inv_start <= 1'b0;
        div_start <= 1'b0;
        mont_start <= 1'b0;

        case (state)
            IDLE: begin
                if (start) begin
                    A_reg <= A;
                    E_reg <= E;
                    N_reg <= N;
                    state <= START_INV;
                end
            end

            START_INV: begin
                inv_start <= 1'b1;
                state <= WAIT_INV;
            end

            WAIT_INV: begin
                if (inv_done) begin
                    N_prime <= (~N_inv_ext[WIDTH-1:0]) + 1'b1;
                    state <= START_R_MOD_N;
                end
            end

            START_R_MOD_N: begin
                div_dividend <= {{WIDTH{1'b0}}, 1'b1, {WIDTH{1'b0}}};
                div_divisor <= {{(DIV_WIDTH-WIDTH){1'b0}}, N_reg};
                div_start <= 1'b1;
                state <= WAIT_R_MOD_N;
            end

            WAIT_R_MOD_N: begin
                if (div_done) begin
                    mont_result <= div_remainder[WIDTH-1:0];
                    state <= START_A_BAR;
                end
            end

            START_A_BAR: begin
                div_dividend <= {1'b0, A_reg, {WIDTH{1'b0}}};
                div_divisor <= {{(DIV_WIDTH-WIDTH){1'b0}}, N_reg};
                div_start <= 1'b1;
                state <= WAIT_A_BAR;
            end

            WAIT_A_BAR: begin
                if (div_done) begin
                    A_bar <= div_remainder[WIDTH-1:0];
                    bit_index <= WIDTH - 1;
                    state <= START_SQUARE;
                end
            end

            START_SQUARE: begin
                mont_a <= mont_result;
                mont_b <= mont_result;
                mont_start <= 1'b1;
                state <= WAIT_SQUARE;
            end

            WAIT_SQUARE: begin
                if (mont_done) begin
                    mont_result <= mont_out;

                    if (E_reg[bit_index])
                        state <= START_MULTIPLY;
                    else
                        state <= NEXT_BIT;
                end
            end

            START_MULTIPLY: begin
                mont_a <= mont_result;
                mont_b <= A_bar;
                mont_start <= 1'b1;
                state <= WAIT_MULTIPLY;
            end

            WAIT_MULTIPLY: begin
                if (mont_done) begin
                    mont_result <= mont_out;
                    state <= NEXT_BIT;
                end
            end

            NEXT_BIT: begin
                if (bit_index == 0) begin
                    state <= START_CONVERT;
                end else begin
                    bit_index <= bit_index - 1'b1;
                    state <= START_SQUARE;
                end
            end

            START_CONVERT: begin
                mont_a <= mont_result;
                mont_b <= {{(WIDTH-1){1'b0}}, 1'b1};
                mont_start <= 1'b1;
                state <= WAIT_CONVERT;
            end

            WAIT_CONVERT: begin
                if (mont_done) begin
                    result <= mont_out;
                    state <= FINISH;
                end
            end

            FINISH: begin
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