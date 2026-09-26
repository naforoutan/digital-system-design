`include "main.v"

module triple_des_multi_cycle #(
    parameter integer DATA_W = 256,
    parameter integer NUM_BLOCKS = (DATA_W + 63) / 64,
    parameter integer OUT_W = NUM_BLOCKS * 64
)(
    input  wire              clk,
    input  wire              nrst,
    input  wire              start,
    input  wire [1:0]        mode,
    input  wire [DATA_W-1:0] data_in,
    input  wire [127:0]      key,
    input  wire [63:0]       iv,
    output reg  [OUT_W-1:0]  data_out,
    output reg               done,
    output reg               busy
);

    wire [64:1] K1 = key[127:64];
    wire [64:1] K2 = key[63:0];

    reg [OUT_W-1:0] padded_data;

    reg [31:0] active_index;
    reg [64:1] plain_block;
    reg [64:1] next_plain_block;
    reg [64:1] des_input_comb;

    reg [32:1] L;
    reg [32:1] R;

    wire [32:1] L0;
    wire [32:1] R0;

    reg  [5:1] round_no;
    wire [48:1] round_key;
    wire [32:1] round_L_in;
    wire [32:1] round_R_in;
    wire [32:1] L_next;
    wire [32:1] R_next;
    wire [64:1] des_result;

    reg [64:1] des_mid;
    reg [64:1] X;
    reg [64:1] ofb_block;

    reg [1:0] state;
    reg [1:0] des_phase;

    integer index;

    localparam IDLE  = 2'b00;
    localparam ROUND = 2'b01;

    localparam PHASE_DES1 = 2'b00;
    localparam PHASE_DES2 = 2'b01;
    localparam PHASE_DES3 = 2'b10;

    wire [64:1] current_des_key;
    wire        current_E_or_D;

    assign current_des_key = (des_phase == PHASE_DES2) ? K2 : K1;
    assign current_E_or_D  = (des_phase == PHASE_DES2) ? 1'b1 : 1'b0;

    DES_initial_permutation ip_inst(
        .in(des_input_comb),
        .L0(L0),
        .R0(R0)
    );

    assign round_L_in = (round_no == 1) ? L0 : L;
    assign round_R_in = (round_no == 1) ? R0 : R;

    KS_round ks_round_inst(
        .key(current_des_key),
        .round(round_no),
        .E_or_D(current_E_or_D),
        .round_key(round_key)
    );

    DES_round des_round_inst(
        .L_in(round_L_in),
        .R_in(round_R_in),
        .round_key(round_key),
        .L_out(L_next),
        .R_out(R_next)
    );

    DES_final_permutation fp_inst(
        .L16(L_next),
        .R16(R_next),
        .out(des_result)
    );

    always @(*) begin
        padded_data = {OUT_W{1'b0}};
        padded_data[OUT_W-1 -: DATA_W] = data_in;
    end

    always @(*) begin
        active_index = (!busy && start) ? 0 : index;

        plain_block = padded_data[OUT_W-1-(active_index*64) -: 64];

        if (active_index < NUM_BLOCKS - 1) begin
            next_plain_block = padded_data[OUT_W-1-((active_index + 1)*64) -: 64];
        end else begin
            next_plain_block = 64'd0;
        end

        if (des_phase == PHASE_DES1) begin
            case (mode)
                2'b00: begin
                    des_input_comb = plain_block;
                end

                2'b01: begin
                    des_input_comb = plain_block ^ ((!busy && start) ? iv : X);
                end

                2'b10: begin
                    des_input_comb = (!busy && start) ? iv : X;
                end

                default: begin
                    des_input_comb = plain_block;
                end
            endcase
        end else begin
            des_input_comb = des_mid;
        end
    end

    always @(posedge clk or negedge nrst) begin
        if (!nrst) begin
            state <= IDLE;
            index <= 0;
            done <= 0;
            busy <= 0;
            data_out <= 0;

            L <= 0;
            R <= 0;
            round_no <= 1;

            des_mid <= 0;
            X <= 0;
            ofb_block <= 0;
            des_phase <= PHASE_DES1;

        end else begin
            done <= 0;

            case (state)

                IDLE: begin
                    busy <= 0;

                    if (start) begin
                        busy <= 1;
                        index <= 0;
                        X <= iv;
                        des_phase <= PHASE_DES1;

                        if (mode == 2'b10) begin
                            ofb_block <= plain_block;
                        end

                        L <= L_next;
                        R <= R_next;
                        round_no <= 2;

                        state <= ROUND;
                    end
                end

                ROUND: begin
                    if (round_no < 16) begin
                        L <= L_next;
                        R <= R_next;
                        round_no <= round_no + 1;
                    end else begin
                        if (des_phase == PHASE_DES1) begin
                            des_mid <= des_result;
                            des_phase <= PHASE_DES2;
                            round_no <= 1;
                        end else if (des_phase == PHASE_DES2) begin
                            des_mid <= des_result;
                            des_phase <= PHASE_DES3;
                            round_no <= 1;
                        end else begin
                            if (mode == 2'b10) begin
                                data_out[OUT_W-1-(index*64) -: 64] <= des_result ^ ofb_block;
                                X <= des_result;
                            end else begin
                                data_out[OUT_W-1-(index*64) -: 64] <= des_result;
                            end

                            if (mode == 2'b01) begin
                                X <= des_result;
                            end

                            if (index == NUM_BLOCKS - 1) begin
                                done <= 1;
                                busy <= 0;
                                state <= IDLE;
                                round_no <= 1;
                                des_phase <= PHASE_DES1;
                            end else begin
                                index <= index + 1;
                                des_phase <= PHASE_DES1;
                                round_no <= 1;

                                if (mode == 2'b10) begin
                                    ofb_block <= next_plain_block;
                                end
                            end
                        end
                    end
                end

            endcase
        end
    end

endmodule