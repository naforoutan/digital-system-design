`include "main.v"

module triple_des_single_cycle #(
    parameter integer DATA_W = 256,
    parameter integer NUM_BLOCKS = (DATA_W + 63) / 64,
    parameter integer OUT_W = NUM_BLOCKS * 64
)(
    input  wire                 clk,
    input  wire                 nrst,
    input  wire                 start,
    input  wire [1:0]           mode,
    input  wire [DATA_W-1:0]    data_in,
    input  wire [127:0]         key,
    input  wire [63:0]          iv,
    output reg  [OUT_W-1:0]     data_out,
    output reg                  done,
    output reg                  busy
);

    wire [63:0] K1 = key[127:64];
    wire [63:0] K2 = key[63:0];

    reg  [OUT_W-1:0] padded_data;

    reg  [63:0] des_in;
    reg  [63:0] des_key;
    reg         E_or_D;
    wire [63:0] des_out;

    DES des_core(des_in, des_key, des_out, E_or_D);

    reg [63:0] X;
    reg [63:0] plain_block;
    reg [63:0] ofb_block;
    reg [63:0] block_reg [0:NUM_BLOCKS-1];

    reg [1:0] state;
    integer index;
    integer i;

    localparam IDLE = 2'b00;
    localparam DES1 = 2'b01;
    localparam DES2 = 2'b10;
    localparam DES3 = 2'b11;

    always @(*) begin
        padded_data = {OUT_W{1'b0}};
        padded_data[OUT_W-1 -: DATA_W] = data_in;
    end

    always @(posedge clk or negedge nrst) begin
        if (!nrst) begin
            state <= IDLE;
            index <= 0;
            done <= 0;
            busy <= 0;
            data_out <= 0;
            X <= 0;
            des_in <= 0;
            des_key <= 0;
            E_or_D <= 0;
            plain_block <= 0;
            ofb_block <= 0;

            for (i = 0; i < NUM_BLOCKS; i = i + 1) begin
                block_reg[i] <= 64'd0;
            end

        end else begin
            case (state)

                IDLE: begin
                    if (start) begin
                        busy <= 1;
                        done <= 0;
                        index <= 0;
                        X <= iv;

                        case (mode)
                            2'b00: begin
                                des_in <= padded_data[OUT_W-1 -: 64];
                            end

                            2'b01: begin
                                des_in <= padded_data[OUT_W-1 -: 64] ^ iv;
                            end

                            2'b10: begin
                                des_in <= iv;
                                ofb_block <= padded_data[OUT_W-1 -: 64];
                            end

                            default: begin
                                des_in <= padded_data[OUT_W-1 -: 64];
                            end
                        endcase

                        des_key <= K1;
                        E_or_D <= 1'b0;
                        state <= DES1;
                    end
                end
                DES1: begin
                    des_in <= des_out;
                    des_key <= K2;
                    E_or_D <= 1'b1;
                    state <= DES2;
                end

                DES2: begin
                    des_in <= des_out;
                    des_key <= K1;
                    E_or_D <= 1'b0;
                    state <= DES3;
                end

                DES3: begin
                    if (mode == 2'b10) begin
                        block_reg[index] <= des_out ^ ofb_block;
                        data_out[OUT_W-1-(index*64) -: 64] <= des_out ^ ofb_block;
                        X <= des_out;
                    end else begin
                        block_reg[index] <= des_out;
                        data_out[OUT_W-1-(index*64) -: 64] <= des_out;
                    end

                    if (mode == 2'b01) begin
                        X <= des_out;
                    end

                    if (index == NUM_BLOCKS - 1) begin
                        done <= 1;
                        busy <= 0;
                        state <= IDLE;
                    end else begin
                        index <= index + 1;

                        case (mode)
                            2'b00: begin
                                des_in <= padded_data[OUT_W-1-((index+1)*64) -: 64];
                            end

                            2'b01: begin
                                des_in <= padded_data[OUT_W-1-((index+1)*64) -: 64] ^ des_out;
                            end

                            2'b10: begin
                                des_in <= des_out;
                                ofb_block <= padded_data[OUT_W-1-((index+1)*64) -: 64];
                            end

                            default: begin
                                des_in <= padded_data[OUT_W-1-((index+1)*64) -: 64];
                            end
                        endcase

                        des_key <= K1;
                        E_or_D <= 1'b0;
                        state <= DES1;
                    end
                end
            endcase
        end
    end

endmodule