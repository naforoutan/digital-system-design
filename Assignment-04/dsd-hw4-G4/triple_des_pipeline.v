`include "main.v"

module triple_des_pipeline #(
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

    reg [31:0] feed_index;
    reg [31:0] output_count;

    reg [32:1] L_pipe [0:47];
    reg [32:1] R_pipe [0:47];

    reg [31:0] index_pipe [0:47];
    reg        valid_pipe [0:47];

    wire run_now;
    wire feed_valid;
    wire [31:0] active_feed_index;
    wire [64:1] feed_block;

    wire [32:1] L0_feed;
    wire [32:1] R0_feed;

    wire [32:1] stage_L_in  [0:47];
    wire [32:1] stage_R_in  [0:47];
    wire [32:1] stage_L_out [0:47];
    wire [32:1] stage_R_out [0:47];
    wire [48:1] stage_key   [0:47];

    wire [64:1] final_block;

    integer i;
    genvar g;

    assign run_now = busy || (start && !busy);
    assign active_feed_index = (!busy && start) ? 0 : feed_index;
    assign feed_valid = run_now && (active_feed_index < NUM_BLOCKS);

    assign feed_block = padded_data[OUT_W-1-(active_feed_index*64) -: 64];

    DES_initial_permutation ip_feed_inst(
        .in(feed_block),
        .L0(L0_feed),
        .R0(R0_feed)
    );

    generate
        for (g = 0; g < 48; g = g + 1) begin : pipeline_stage
            localparam [5:1] ROUND_NO = (g % 16) + 1;
            localparam       IS_DEC   = (g >= 16 && g < 32);

            KS_round ks_round_inst(
                .key(IS_DEC ? K2 : K1),
                .round(ROUND_NO),
                .E_or_D(IS_DEC),
                .round_key(stage_key[g])
            );

            if (g == 0) begin : input_stage
                assign stage_L_in[g] = L0_feed;
                assign stage_R_in[g] = R0_feed;
            end else if (g == 16 || g == 32) begin : des_boundary_stage
                assign stage_L_in[g] = R_pipe[g-1];
                assign stage_R_in[g] = L_pipe[g-1];
            end else begin : normal_stage
                assign stage_L_in[g] = L_pipe[g-1];
                assign stage_R_in[g] = R_pipe[g-1];
            end

            DES_round des_round_inst(
                .L_in(stage_L_in[g]),
                .R_in(stage_R_in[g]),
                .round_key(stage_key[g]),
                .L_out(stage_L_out[g]),
                .R_out(stage_R_out[g])
            );
        end
    endgenerate

    DES_final_permutation final_perm_inst(
        .L16(stage_L_out[47]),
        .R16(stage_R_out[47]),
        .out(final_block)
    );

    always @(*) begin
        padded_data = {OUT_W{1'b0}};
        padded_data[OUT_W-1 -: DATA_W] = data_in;
    end

    always @(posedge clk or negedge nrst) begin
        if (!nrst) begin
            busy <= 0;
            done <= 0;
            data_out <= 0;
            feed_index <= 0;
            output_count <= 0;

            for (i = 0; i < 48; i = i + 1) begin
                L_pipe[i] <= 0;
                R_pipe[i] <= 0;
                index_pipe[i] <= 0;
                valid_pipe[i] <= 0;
            end

        end else begin
            done <= 0;

            if (run_now) begin
                L_pipe[0] <= stage_L_out[0];
                R_pipe[0] <= stage_R_out[0];
                valid_pipe[0] <= feed_valid;
                index_pipe[0] <= active_feed_index;

                for (i = 1; i < 48; i = i + 1) begin
                    L_pipe[i] <= stage_L_out[i];
                    R_pipe[i] <= stage_R_out[i];
                    valid_pipe[i] <= valid_pipe[i-1];
                    index_pipe[i] <= index_pipe[i-1];
                end

                if (!busy && start) begin
                    busy <= 1;
                    feed_index <= 1;
                    output_count <= 0;
                end else if (feed_valid) begin
                    feed_index <= feed_index + 1;
                end

                if (valid_pipe[46]) begin
                    data_out[OUT_W-1-(index_pipe[46]*64) -: 64] <= final_block;
                    output_count <= output_count + 1;

                    if (output_count == NUM_BLOCKS - 1) begin
                        done <= 1;
                        busy <= 0;
                    end
                end
            end
        end
    end

endmodule