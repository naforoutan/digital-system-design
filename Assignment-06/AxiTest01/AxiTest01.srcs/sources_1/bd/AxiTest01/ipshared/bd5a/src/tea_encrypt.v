module tea_encrypt (
    input wire clk,
    input wire rst,
    input wire start,
    input wire [63:0] data_in,
    input wire [127:0] key,
    output reg [63:0] data_out,
    output reg done,
    output reg busy
);

    localparam DELTA = 32'h9E3779B9;

    reg [31:0] v0;
    reg [31:0] v1;
    reg [31:0] sum;
    reg [5:0] round;

    wire [31:0] k0 = key[127:96];
    wire [31:0] k1 = key[95:64];
    wire [31:0] k2 = key[63:32];
    wire [31:0] k3 = key[31:0];

    wire [31:0] sum_next;
    wire [31:0] v0_next;
    wire [31:0] v1_next;

    assign sum_next = sum + DELTA;

    assign v0_next = v0 + (((v1 << 4) + k0) ^ (v1 + sum_next) ^ ((v1 >> 5) + k1));

    assign v1_next = v1 + (((v0_next << 4) + k2) ^ (v0_next + sum_next) ^ ((v0_next >> 5) + k3));

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            v0 <= 32'd0;
            v1 <= 32'd0;
            sum <= 32'd0;
            round <= 6'd0;
            data_out <= 64'd0;
            done <= 1'b0;
            busy <= 1'b0;
        end else begin
            done <= 1'b0;

            if (start && !busy) begin
                v0 <= data_in[63:32];
                v1 <= data_in[31:0];
                sum <= 32'd0;
                round <= 6'd0;
                busy <= 1'b1;
            end else if (busy) begin
                v0 <= v0_next;
                v1 <= v1_next;
                sum <= sum_next;
                round <= round + 1'b1;

                if (round == 6'd31) begin
                    data_out <= {v0_next, v1_next};
                    done <= 1'b1;
                    busy <= 1'b0;
                end
            end
        end
    end

endmodule