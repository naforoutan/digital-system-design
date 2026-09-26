//////////////////////////////////////////////////////////////////////////////////
// AXI4-Lite window-convolution accelerator
// Based on the original RemoteFPGATest AXI4-Lite adder example.
//
// Register map (word offsets):
//   0..3 : 108-bit binary window, little-endian bit packing
//   4    : window X coordinate
//   5    : window Y coordinate
//   32   : command: bit0=start window, bit1=clear all maxima
//   33   : status : bit0=done, bit1=busy
//   34   : digit 4 coordinate: [13:8]=Y, [5:0]=X
//   35   : digit 4 signed score in [15:0]
//   36   : digit 5 coordinate: [13:8]=Y, [5:0]=X
//   37   : digit 5 signed score in [15:0]
//   38   : processed window count
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module axi4_lite_slave #(
    parameter ADDRESS    = 32,
    parameter DATA_WIDTH = 32
)(
    input                       ACLK,
    input                       ARESETN,

    input      [ADDRESS-1:0]    S_ARADDR,
    input                       S_ARVALID,
    input                       S_RREADY,

    input      [ADDRESS-1:0]    S_AWADDR,
    input                       S_AWVALID,
    input      [DATA_WIDTH-1:0] S_WDATA,
    input      [3:0]            S_WSTRB,
    input                       S_WVALID,
    input                       S_BREADY,

    output                      S_ARREADY,
    output     [DATA_WIDTH-1:0] S_RDATA,
    output     [1:0]            S_RRESP,
    output                      S_RVALID,

    output                      S_AWREADY,
    output                      S_WREADY,
    output     [1:0]            S_BRESP,
    output                      S_BVALID,

    output                      ledout
);

    reg [31:0] window_word0;
    reg [31:0] window_word1;
    reg [31:0] window_word2;
    reg [31:0] window_word3;
    reg [5:0]  window_x;
    reg [5:0]  window_y;

    wire [107:0] window_bits;
    assign window_bits = {
        window_word3[11:0],
        window_word2,
        window_word1,
        window_word0
    };

    reg                   aw_pending;
    reg [ADDRESS-1:0]     awaddr_latched;
    reg                   w_pending;
    reg [DATA_WIDTH-1:0]  wdata_latched;
    reg [3:0]             wstrb_latched;
    reg                   bvalid_reg;

    reg                   rvalid_reg;
    reg [DATA_WIDTH-1:0]  rdata_reg;

    wire aw_handshake;
    wire w_handshake;
    wire ar_handshake;
    wire have_aw;
    wire have_w;
    wire write_fire;

    wire [ADDRESS-1:0]    active_awaddr;
    wire [DATA_WIDTH-1:0] active_wdata;
    wire [3:0]            active_wstrb;
    wire [5:0]            write_index;
    wire [5:0]            read_index;

    assign S_AWREADY = !aw_pending && !bvalid_reg;
    assign S_WREADY  = !w_pending  && !bvalid_reg;
    assign S_BVALID  = bvalid_reg;
    assign S_BRESP   = 2'b00;

    assign S_ARREADY = !rvalid_reg;
    assign S_RVALID  = rvalid_reg;
    assign S_RDATA   = rdata_reg;
    assign S_RRESP   = 2'b00;

    assign aw_handshake = S_AWVALID && S_AWREADY;
    assign w_handshake  = S_WVALID  && S_WREADY;
    assign ar_handshake = S_ARVALID && S_ARREADY;

    assign have_aw = aw_pending || aw_handshake;
    assign have_w  = w_pending  || w_handshake;
    assign write_fire = have_aw && have_w && !bvalid_reg;

    assign active_awaddr = aw_pending ? awaddr_latched : S_AWADDR;
    assign active_wdata  = w_pending  ? wdata_latched  : S_WDATA;
    assign active_wstrb  = w_pending  ? wstrb_latched  : S_WSTRB;

    assign write_index = active_awaddr[7:2];
    assign read_index  = S_ARADDR[7:2];

    wire start_command;
    wire clear_command;
    assign start_command = write_fire && (write_index == 6'd32) &&
                           active_wstrb[0] && active_wdata[0];
    assign clear_command = write_fire && (write_index == 6'd32) &&
                           active_wstrb[0] && active_wdata[1];

    wire                  convolution_done;
    wire                  convolution_busy;
    wire signed [15:0]    best_score_digit4;
    wire [5:0]            best_x_digit4;
    wire [5:0]            best_y_digit4;
    wire signed [15:0]    best_score_digit5;
    wire [5:0]            best_x_digit5;
    wire [5:0]            best_y_digit5;
    wire [11:0]           processed_windows;

    function [31:0] apply_wstrb;
        input [31:0] old_value;
        input [31:0] new_value;
        input [3:0]  byte_enable;
        integer byte_index;
        begin
            apply_wstrb = old_value;
            for (byte_index = 0; byte_index < 4; byte_index = byte_index + 1) begin
                if (byte_enable[byte_index]) begin
                    apply_wstrb[(byte_index * 8) +: 8] =
                        new_value[(byte_index * 8) +: 8];
                end
            end
        end
    endfunction

    reg [31:0] led_counter;

    always @(posedge ACLK) begin
        if (!ARESETN) begin
            window_word0   <= 32'd0;
            window_word1   <= 32'd0;
            window_word2   <= 32'd0;
            window_word3   <= 32'd0;
            window_x       <= 6'd0;
            window_y       <= 6'd0;

            aw_pending     <= 1'b0;
            awaddr_latched <= {ADDRESS{1'b0}};
            w_pending      <= 1'b0;
            wdata_latched  <= {DATA_WIDTH{1'b0}};
            wstrb_latched  <= 4'd0;
            bvalid_reg     <= 1'b0;

            rvalid_reg     <= 1'b0;
            rdata_reg      <= {DATA_WIDTH{1'b0}};
            led_counter    <= 32'd0;
        end else begin
            led_counter <= led_counter + 1'b1;

            if (aw_handshake && !write_fire) begin
                aw_pending     <= 1'b1;
                awaddr_latched <= S_AWADDR;
            end

            if (w_handshake && !write_fire) begin
                w_pending     <= 1'b1;
                wdata_latched <= S_WDATA;
                wstrb_latched <= S_WSTRB;
            end

            if (write_fire) begin
                aw_pending <= 1'b0;
                w_pending  <= 1'b0;
                bvalid_reg <= 1'b1;

                case (write_index)
                    6'd0: window_word0 <= apply_wstrb(window_word0, active_wdata, active_wstrb);
                    6'd1: window_word1 <= apply_wstrb(window_word1, active_wdata, active_wstrb);
                    6'd2: window_word2 <= apply_wstrb(window_word2, active_wdata, active_wstrb);
                    6'd3: window_word3 <= apply_wstrb(window_word3, active_wdata, active_wstrb);
                    6'd4: if (active_wstrb[0]) window_x <= active_wdata[5:0];
                    6'd5: if (active_wstrb[0]) window_y <= active_wdata[5:0];
                    default: begin end
                endcase
            end else if (bvalid_reg && S_BREADY) begin
                bvalid_reg <= 1'b0;
            end

            if (ar_handshake) begin
                rvalid_reg <= 1'b1;
                case (read_index)
                    6'd0:  rdata_reg <= window_word0;
                    6'd1:  rdata_reg <= window_word1;
                    6'd2:  rdata_reg <= window_word2;
                    6'd3:  rdata_reg <= window_word3;
                    6'd4:  rdata_reg <= {26'd0, window_x};
                    6'd5:  rdata_reg <= {26'd0, window_y};
                    6'd33: rdata_reg <= {30'd0, convolution_busy, convolution_done};
                    6'd34: rdata_reg <= {18'd0, best_y_digit4, 2'd0, best_x_digit4};
                    6'd35: rdata_reg <= {{16{best_score_digit4[15]}}, best_score_digit4};
                    6'd36: rdata_reg <= {18'd0, best_y_digit5, 2'd0, best_x_digit5};
                    6'd37: rdata_reg <= {{16{best_score_digit5[15]}}, best_score_digit5};
                    6'd38: rdata_reg <= {20'd0, processed_windows};
                    default: rdata_reg <= 32'd0;
                endcase
            end else if (rvalid_reg && S_RREADY) begin
                rvalid_reg <= 1'b0;
            end
        end
    end

    window_convolution convolution_inst (
        .clk                 (ACLK),
        .rst                 (!ARESETN),
        .clear_results       (clear_command),
        .start               (start_command),
        .window_bits         (window_bits),
        .window_x            (window_x),
        .window_y            (window_y),
        .done                (convolution_done),
        .busy                (convolution_busy),
        .best_score_digit4   (best_score_digit4),
        .best_x_digit4       (best_x_digit4),
        .best_y_digit4       (best_y_digit4),
        .best_score_digit5   (best_score_digit5),
        .best_x_digit5       (best_x_digit5),
        .best_y_digit5       (best_y_digit5),
        .processed_windows   (processed_windows)
    );

    assign ledout = led_counter[25];

endmodule
