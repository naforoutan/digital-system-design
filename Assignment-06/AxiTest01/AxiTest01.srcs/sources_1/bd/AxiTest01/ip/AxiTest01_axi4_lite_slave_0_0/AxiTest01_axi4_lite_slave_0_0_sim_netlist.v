// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Jun 19 14:33:34 2026
// Host        : LAPTOP-ME99JD6U running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/Nazanin/Downloads/AXI4LiteSlaveADD/AxiTest01/AxiTest01.srcs/sources_1/bd/AxiTest01/ip/AxiTest01_axi4_lite_slave_0_0/AxiTest01_axi4_lite_slave_0_0_sim_netlist.v
// Design      : AxiTest01_axi4_lite_slave_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "AxiTest01_axi4_lite_slave_0_0,axi4_lite_slave,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "axi4_lite_slave,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module AxiTest01_axi4_lite_slave_0_0
   (ACLK,
    ARESETN,
    S_ARADDR,
    S_ARVALID,
    S_RREADY,
    S_AWADDR,
    S_AWVALID,
    S_WDATA,
    S_WSTRB,
    S_WVALID,
    S_BREADY,
    S_ARREADY,
    S_RDATA,
    S_RRESP,
    S_RVALID,
    S_AWREADY,
    S_WREADY,
    S_BRESP,
    S_BVALID,
    ledout);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ACLK, ASSOCIATED_BUSIF S, ASSOCIATED_RESET ARESETN, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN AxiTest01_processing_system7_0_0_FCLK_CLK0" *) input ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ARESETN, POLARITY ACTIVE_LOW" *) input ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S ARADDR" *) input [31:0]S_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S ARVALID" *) input S_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S RREADY" *) input S_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S AWADDR" *) input [31:0]S_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S AWVALID" *) input S_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S WDATA" *) input [31:0]S_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S WSTRB" *) input [3:0]S_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S WVALID" *) input S_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S BREADY" *) input S_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S ARREADY" *) output S_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S RDATA" *) output [31:0]S_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S RRESP" *) output [1:0]S_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S RVALID" *) output S_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S AWREADY" *) output S_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S WREADY" *) output S_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S BRESP" *) output [1:0]S_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S BVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN AxiTest01_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) output S_BVALID;
  output ledout;

  wire \<const0> ;
  wire ACLK;
  wire ARESETN;
  wire [31:0]S_ARADDR;
  wire S_ARREADY;
  wire S_ARVALID;
  wire [31:0]S_AWADDR;
  wire S_AWVALID;
  wire S_BREADY;
  wire S_BVALID;
  wire [31:0]S_RDATA;
  wire S_RREADY;
  wire S_RVALID;
  wire [31:0]S_WDATA;
  wire S_WREADY;
  wire S_WVALID;
  wire ledout;

  assign S_AWREADY = S_WREADY;
  assign S_BRESP[1] = \<const0> ;
  assign S_BRESP[0] = \<const0> ;
  assign S_RRESP[1] = \<const0> ;
  assign S_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  AxiTest01_axi4_lite_slave_0_0_axi4_lite_slave inst
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .S_ARADDR(S_ARADDR[7:2]),
        .S_ARVALID(S_ARVALID),
        .S_AWADDR(S_AWADDR[7:2]),
        .S_AWVALID(S_AWVALID),
        .S_BREADY(S_BREADY),
        .S_RDATA(S_RDATA),
        .S_RREADY(S_RREADY),
        .S_WDATA(S_WDATA),
        .S_WVALID(S_WVALID),
        .ledout(ledout),
        .out({S_RVALID,S_ARREADY,S_BVALID,S_WREADY}));
endmodule

(* ORIG_REF_NAME = "axi4_lite_slave" *) 
module AxiTest01_axi4_lite_slave_0_0_axi4_lite_slave
   (out,
    ledout,
    S_RDATA,
    S_AWADDR,
    ACLK,
    S_WDATA,
    S_ARADDR,
    S_ARVALID,
    S_BREADY,
    ARESETN,
    S_WVALID,
    S_AWVALID,
    S_RREADY);
  output [3:0]out;
  output ledout;
  output [31:0]S_RDATA;
  input [5:0]S_AWADDR;
  input ACLK;
  input [31:0]S_WDATA;
  input [5:0]S_ARADDR;
  input S_ARVALID;
  input S_BREADY;
  input ARESETN;
  input S_WVALID;
  input S_AWVALID;
  input S_RREADY;

  wire ACLK;
  wire ARESETN;
  wire [31:0]C;
  wire \FSM_onehot_next_state_reg[0]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg[1]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg[3]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg[4]_i_2_n_0 ;
  wire \FSM_onehot_next_state_reg[4]_i_3_n_0 ;
  wire \FSM_onehot_next_state_reg[4]_i_4_n_0 ;
  wire \FSM_onehot_next_state_reg_n_0_[0] ;
  wire \FSM_onehot_next_state_reg_n_0_[1] ;
  wire \FSM_onehot_next_state_reg_n_0_[2] ;
  wire \FSM_onehot_next_state_reg_n_0_[3] ;
  wire \FSM_onehot_next_state_reg_n_0_[4] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[0] ;
  wire [5:0]S_ARADDR;
  wire S_ARVALID;
  wire [5:0]S_AWADDR;
  wire S_AWVALID;
  wire S_BREADY;
  wire [31:0]S_RDATA;
  wire [31:0]S_RDATA5;
  wire \S_RDATA[0]_INST_0_i_3_n_0 ;
  wire \S_RDATA[29]_INST_0_i_2_n_0 ;
  wire \S_RDATA[31]_INST_0_i_2_n_0 ;
  wire S_RREADY;
  wire [31:0]S_WDATA;
  wire S_WVALID;
  wire clear;
  wire \cntr[0]_i_2_n_0 ;
  wire \cntr_reg[0]_i_1_n_0 ;
  wire \cntr_reg[0]_i_1_n_1 ;
  wire \cntr_reg[0]_i_1_n_2 ;
  wire \cntr_reg[0]_i_1_n_3 ;
  wire \cntr_reg[0]_i_1_n_4 ;
  wire \cntr_reg[0]_i_1_n_5 ;
  wire \cntr_reg[0]_i_1_n_6 ;
  wire \cntr_reg[0]_i_1_n_7 ;
  wire \cntr_reg[12]_i_1_n_0 ;
  wire \cntr_reg[12]_i_1_n_1 ;
  wire \cntr_reg[12]_i_1_n_2 ;
  wire \cntr_reg[12]_i_1_n_3 ;
  wire \cntr_reg[12]_i_1_n_4 ;
  wire \cntr_reg[12]_i_1_n_5 ;
  wire \cntr_reg[12]_i_1_n_6 ;
  wire \cntr_reg[12]_i_1_n_7 ;
  wire \cntr_reg[16]_i_1_n_0 ;
  wire \cntr_reg[16]_i_1_n_1 ;
  wire \cntr_reg[16]_i_1_n_2 ;
  wire \cntr_reg[16]_i_1_n_3 ;
  wire \cntr_reg[16]_i_1_n_4 ;
  wire \cntr_reg[16]_i_1_n_5 ;
  wire \cntr_reg[16]_i_1_n_6 ;
  wire \cntr_reg[16]_i_1_n_7 ;
  wire \cntr_reg[20]_i_1_n_0 ;
  wire \cntr_reg[20]_i_1_n_1 ;
  wire \cntr_reg[20]_i_1_n_2 ;
  wire \cntr_reg[20]_i_1_n_3 ;
  wire \cntr_reg[20]_i_1_n_4 ;
  wire \cntr_reg[20]_i_1_n_5 ;
  wire \cntr_reg[20]_i_1_n_6 ;
  wire \cntr_reg[20]_i_1_n_7 ;
  wire \cntr_reg[25]_i_2_n_3 ;
  wire \cntr_reg[25]_i_2_n_6 ;
  wire \cntr_reg[25]_i_2_n_7 ;
  wire \cntr_reg[4]_i_1_n_0 ;
  wire \cntr_reg[4]_i_1_n_1 ;
  wire \cntr_reg[4]_i_1_n_2 ;
  wire \cntr_reg[4]_i_1_n_3 ;
  wire \cntr_reg[4]_i_1_n_4 ;
  wire \cntr_reg[4]_i_1_n_5 ;
  wire \cntr_reg[4]_i_1_n_6 ;
  wire \cntr_reg[4]_i_1_n_7 ;
  wire \cntr_reg[8]_i_1_n_0 ;
  wire \cntr_reg[8]_i_1_n_1 ;
  wire \cntr_reg[8]_i_1_n_2 ;
  wire \cntr_reg[8]_i_1_n_3 ;
  wire \cntr_reg[8]_i_1_n_4 ;
  wire \cntr_reg[8]_i_1_n_5 ;
  wire \cntr_reg[8]_i_1_n_6 ;
  wire \cntr_reg[8]_i_1_n_7 ;
  wire \cntr_reg_n_0_[0] ;
  wire \cntr_reg_n_0_[10] ;
  wire \cntr_reg_n_0_[11] ;
  wire \cntr_reg_n_0_[12] ;
  wire \cntr_reg_n_0_[13] ;
  wire \cntr_reg_n_0_[14] ;
  wire \cntr_reg_n_0_[15] ;
  wire \cntr_reg_n_0_[16] ;
  wire \cntr_reg_n_0_[17] ;
  wire \cntr_reg_n_0_[18] ;
  wire \cntr_reg_n_0_[19] ;
  wire \cntr_reg_n_0_[1] ;
  wire \cntr_reg_n_0_[20] ;
  wire \cntr_reg_n_0_[21] ;
  wire \cntr_reg_n_0_[22] ;
  wire \cntr_reg_n_0_[23] ;
  wire \cntr_reg_n_0_[24] ;
  wire \cntr_reg_n_0_[2] ;
  wire \cntr_reg_n_0_[3] ;
  wire \cntr_reg_n_0_[4] ;
  wire \cntr_reg_n_0_[5] ;
  wire \cntr_reg_n_0_[6] ;
  wire \cntr_reg_n_0_[7] ;
  wire \cntr_reg_n_0_[8] ;
  wire \cntr_reg_n_0_[9] ;
  wire \data_in[31]_i_1_n_0 ;
  wire \data_in[31]_i_2_n_0 ;
  wire \data_in[31]_i_3_n_0 ;
  wire \data_in[63]_i_1_n_0 ;
  wire \data_in[63]_i_2_n_0 ;
  wire \data_in_reg_n_0_[0] ;
  wire \data_in_reg_n_0_[10] ;
  wire \data_in_reg_n_0_[11] ;
  wire \data_in_reg_n_0_[12] ;
  wire \data_in_reg_n_0_[13] ;
  wire \data_in_reg_n_0_[14] ;
  wire \data_in_reg_n_0_[15] ;
  wire \data_in_reg_n_0_[16] ;
  wire \data_in_reg_n_0_[17] ;
  wire \data_in_reg_n_0_[18] ;
  wire \data_in_reg_n_0_[19] ;
  wire \data_in_reg_n_0_[1] ;
  wire \data_in_reg_n_0_[20] ;
  wire \data_in_reg_n_0_[21] ;
  wire \data_in_reg_n_0_[22] ;
  wire \data_in_reg_n_0_[23] ;
  wire \data_in_reg_n_0_[24] ;
  wire \data_in_reg_n_0_[25] ;
  wire \data_in_reg_n_0_[26] ;
  wire \data_in_reg_n_0_[27] ;
  wire \data_in_reg_n_0_[28] ;
  wire \data_in_reg_n_0_[29] ;
  wire \data_in_reg_n_0_[2] ;
  wire \data_in_reg_n_0_[30] ;
  wire \data_in_reg_n_0_[31] ;
  wire \data_in_reg_n_0_[3] ;
  wire \data_in_reg_n_0_[4] ;
  wire \data_in_reg_n_0_[5] ;
  wire \data_in_reg_n_0_[6] ;
  wire \data_in_reg_n_0_[7] ;
  wire \data_in_reg_n_0_[8] ;
  wire \data_in_reg_n_0_[9] ;
  wire [31:0]k0;
  wire [31:0]k1;
  wire [31:0]k2;
  wire \key[127]_i_1_n_0 ;
  wire \key[31]_i_1_n_0 ;
  wire \key[63]_i_1_n_0 ;
  wire \key[63]_i_2_n_0 ;
  wire \key[63]_i_3_n_0 ;
  wire \key[95]_i_1_n_0 ;
  wire \key[95]_i_2_n_0 ;
  wire \key[95]_i_3_n_0 ;
  wire \key_reg_n_0_[0] ;
  wire \key_reg_n_0_[10] ;
  wire \key_reg_n_0_[11] ;
  wire \key_reg_n_0_[12] ;
  wire \key_reg_n_0_[13] ;
  wire \key_reg_n_0_[14] ;
  wire \key_reg_n_0_[15] ;
  wire \key_reg_n_0_[16] ;
  wire \key_reg_n_0_[17] ;
  wire \key_reg_n_0_[18] ;
  wire \key_reg_n_0_[19] ;
  wire \key_reg_n_0_[1] ;
  wire \key_reg_n_0_[20] ;
  wire \key_reg_n_0_[21] ;
  wire \key_reg_n_0_[22] ;
  wire \key_reg_n_0_[23] ;
  wire \key_reg_n_0_[24] ;
  wire \key_reg_n_0_[25] ;
  wire \key_reg_n_0_[26] ;
  wire \key_reg_n_0_[27] ;
  wire \key_reg_n_0_[28] ;
  wire \key_reg_n_0_[29] ;
  wire \key_reg_n_0_[2] ;
  wire \key_reg_n_0_[30] ;
  wire \key_reg_n_0_[31] ;
  wire \key_reg_n_0_[3] ;
  wire \key_reg_n_0_[4] ;
  wire \key_reg_n_0_[5] ;
  wire \key_reg_n_0_[6] ;
  wire \key_reg_n_0_[7] ;
  wire \key_reg_n_0_[8] ;
  wire \key_reg_n_0_[9] ;
  wire ledout;
  wire next_state;
  (* RTL_KEEP = "yes" *) wire [3:0]out;
  wire [5:0]read_addr;
  wire read_addr_0;
  wire register;
  wire register_reg_i_1_n_0;
  wire register_reg_i_2_n_0;
  wire register_reg_i_3_n_0;
  wire register_reg_i_4_n_0;
  wire register_reg_i_5_n_0;
  wire register_reg_i_6_n_0;
  wire register_reg_i_8_n_0;
  wire register_reg_i_9_n_0;
  wire start;
  wire start_i_1_n_0;
  wire start_i_2_n_0;
  wire [3:1]\NLW_cntr_reg[25]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_cntr_reg[25]_i_2_O_UNCONNECTED ;
  wire [1:0]NLW_register_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_register_reg_DOPBDOP_UNCONNECTED;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_next_state_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[0]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[0] ));
  LUT5 #(
    .INIT(32'hEEEEEFEE)) 
    \FSM_onehot_next_state_reg[0]_i_1 
       (.I0(out[1]),
        .I1(out[3]),
        .I2(S_AWVALID),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(S_ARVALID),
        .O(\FSM_onehot_next_state_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[1]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[1] ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_next_state_reg[1]_i_1 
       (.I0(S_AWVALID),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_next_state_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[2] 
       (.CLR(1'b0),
        .D(out[0]),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[3] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[3]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[3] ));
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_next_state_reg[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(S_ARVALID),
        .I2(S_AWVALID),
        .O(\FSM_onehot_next_state_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[4] 
       (.CLR(1'b0),
        .D(out[2]),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFEA)) 
    \FSM_onehot_next_state_reg[4]_i_1 
       (.I0(\FSM_onehot_next_state_reg[4]_i_2_n_0 ),
        .I1(out[2]),
        .I2(S_ARVALID),
        .I3(out[3]),
        .I4(\FSM_onehot_next_state_reg[4]_i_3_n_0 ),
        .I5(\FSM_onehot_next_state_reg[4]_i_4_n_0 ),
        .O(next_state));
  LUT5 #(
    .INIT(32'h10001111)) 
    \FSM_onehot_next_state_reg[4]_i_2 
       (.I0(out[1]),
        .I1(out[2]),
        .I2(S_WVALID),
        .I3(S_AWVALID),
        .I4(out[0]),
        .O(\FSM_onehot_next_state_reg[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \FSM_onehot_next_state_reg[4]_i_3 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(out[1]),
        .I3(S_BREADY),
        .O(\FSM_onehot_next_state_reg[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \FSM_onehot_next_state_reg[4]_i_4 
       (.I0(out[1]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[3]),
        .I4(S_RREADY),
        .O(\FSM_onehot_next_state_reg[4]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "RDATA_CHANNEL:10000,WRESP_CHANNEL:00100,WRITE_CHANNEL:00010,IDLE:00001,RADDR_CHANNEL:01000" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(clear));
  (* FSM_ENCODED_STATES = "RDATA_CHANNEL:10000,WRESP_CHANNEL:00100,WRITE_CHANNEL:00010,IDLE:00001,RADDR_CHANNEL:01000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[1] ),
        .Q(out[0]),
        .R(clear));
  (* FSM_ENCODED_STATES = "RDATA_CHANNEL:10000,WRESP_CHANNEL:00100,WRITE_CHANNEL:00010,IDLE:00001,RADDR_CHANNEL:01000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[2] ),
        .Q(out[1]),
        .R(clear));
  (* FSM_ENCODED_STATES = "RDATA_CHANNEL:10000,WRESP_CHANNEL:00100,WRITE_CHANNEL:00010,IDLE:00001,RADDR_CHANNEL:01000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[3] ),
        .Q(out[2]),
        .R(clear));
  (* FSM_ENCODED_STATES = "RDATA_CHANNEL:10000,WRESP_CHANNEL:00100,WRITE_CHANNEL:00010,IDLE:00001,RADDR_CHANNEL:01000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[4] ),
        .Q(out[3]),
        .R(clear));
  LUT3 #(
    .INIT(8'hFB)) 
    \S_RDATA[0]_INST_0_i_3 
       (.I0(read_addr[4]),
        .I1(read_addr[5]),
        .I2(read_addr[3]),
        .O(\S_RDATA[0]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFBFFFF)) 
    \S_RDATA[29]_INST_0_i_2 
       (.I0(read_addr[4]),
        .I1(read_addr[5]),
        .I2(read_addr[3]),
        .I3(read_addr[2]),
        .I4(read_addr[1]),
        .O(\S_RDATA[29]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \S_RDATA[31]_INST_0_i_2 
       (.I0(read_addr[2]),
        .I1(read_addr[3]),
        .I2(read_addr[5]),
        .I3(read_addr[4]),
        .O(\S_RDATA[31]_INST_0_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cntr[0]_i_2 
       (.I0(\cntr_reg_n_0_[0] ),
        .O(\cntr[0]_i_2_n_0 ));
  FDRE \cntr_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\cntr_reg[0]_i_1_n_7 ),
        .Q(\cntr_reg_n_0_[0] ),
        .R(clear));
  CARRY4 \cntr_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cntr_reg[0]_i_1_n_0 ,\cntr_reg[0]_i_1_n_1 ,\cntr_reg[0]_i_1_n_2 ,\cntr_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cntr_reg[0]_i_1_n_4 ,\cntr_reg[0]_i_1_n_5 ,\cntr_reg[0]_i_1_n_6 ,\cntr_reg[0]_i_1_n_7 }),
        .S({\cntr_reg_n_0_[3] ,\cntr_reg_n_0_[2] ,\cntr_reg_n_0_[1] ,\cntr[0]_i_2_n_0 }));
  FDRE \cntr_reg[10] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\cntr_reg[8]_i_1_n_5 ),
        .Q(\cntr_reg_n_0_[10] ),
        .R(clear));
  FDRE \cntr_reg[11] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\cntr_reg[8]_i_1_n_4 ),
        .Q(\cntr_reg_n_0_[11] ),
        .R(clear));
  FDRE \cntr_reg[12] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\cntr_reg[12]_i_1_n_7 ),
        .Q(\cntr_reg_n_0_[12] ),
        .R(clear));
  CARRY4 \cntr_reg[12]_i_1 
       (.CI(\cntr_reg[8]_i_1_n_0 ),
        .CO({\cntr_reg[12]_i_1_n_0 ,\cntr_reg[12]_i_1_n_1 ,\cntr_reg[12]_i_1_n_2 ,\cntr_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cntr_reg[12]_i_1_n_4 ,\cntr_reg[12]_i_1_n_5 ,\cntr_reg[12]_i_1_n_6 ,\cntr_reg[12]_i_1_n_7 }),
        .S({\cntr_reg_n_0_[15] ,\cntr_reg_n_0_[14] ,\cntr_reg_n_0_[13] ,\cntr_reg_n_0_[12] }));
  FDRE \cntr_reg[13] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\cntr_reg[12]_i_1_n_6 ),
        .Q(\cntr_reg_n_0_[13] ),
        .R(clear));
  FDRE \cntr_reg[14] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\cntr_reg[12]_i_1_n_5 ),
        .Q(\cntr_reg_n_0_[14] ),
        .R(clear));
  FDRE \cntr_reg[15] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\cntr_reg[12]_i_1_n_4 ),
        .Q(\cntr_reg_n_0_[15] ),
        .R(clear));
  FDRE \cntr_reg[16] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\cntr_reg[16]_i_1_n_7 ),
        .Q(\cntr_reg_n_0_[16] ),
        .R(clear));
  CARRY4 \cntr_reg[16]_i_1 
       (.CI(\cntr_reg[12]_i_1_n_0 ),
        .CO({\cntr_reg[16]_i_1_n_0 ,\cntr_reg[16]_i_1_n_1 ,\cntr_reg[16]_i_1_n_2 ,\cntr_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cntr_reg[16]_i_1_n_4 ,\cntr_reg[16]_i_1_n_5 ,\cntr_reg[16]_i_1_n_6 ,\cntr_reg[16]_i_1_n_7 }),
        .S({\cntr_reg_n_0_[19] ,\cntr_reg_n_0_[18] ,\cntr_reg_n_0_[17] ,\cntr_reg_n_0_[16] }));
  FDRE \cntr_reg[17] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\cntr_reg[16]_i_1_n_6 ),
        .Q(\cntr_reg_n_0_[17] ),
        .R(clear));
  FDRE \cntr_reg[18] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\cntr_reg[16]_i_1_n_5 ),
        .Q(\cntr_reg_n_0_[18] ),
        .R(clear));
  FDRE \cntr_reg[19] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\cntr_reg[16]_i_1_n_4 ),
        .Q(\cntr_reg_n_0_[19] ),
        .R(clear));
  FDRE \cntr_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\cntr_reg[0]_i_1_n_6 ),
        .Q(\cntr_reg_n_0_[1] ),
        .R(clear));
  FDRE \cntr_reg[20] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\cntr_reg[20]_i_1_n_7 ),
        .Q(\cntr_reg_n_0_[20] ),
        .R(clear));
  CARRY4 \cntr_reg[20]_i_1 
       (.CI(\cntr_reg[16]_i_1_n_0 ),
        .CO({\cntr_reg[20]_i_1_n_0 ,\cntr_reg[20]_i_1_n_1 ,\cntr_reg[20]_i_1_n_2 ,\cntr_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cntr_reg[20]_i_1_n_4 ,\cntr_reg[20]_i_1_n_5 ,\cntr_reg[20]_i_1_n_6 ,\cntr_reg[20]_i_1_n_7 }),
        .S({\cntr_reg_n_0_[23] ,\cntr_reg_n_0_[22] ,\cntr_reg_n_0_[21] ,\cntr_reg_n_0_[20] }));
  FDRE \cntr_reg[21] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\cntr_reg[20]_i_1_n_6 ),
        .Q(\cntr_reg_n_0_[21] ),
        .R(clear));
  FDRE \cntr_reg[22] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\cntr_reg[20]_i_1_n_5 ),
        .Q(\cntr_reg_n_0_[22] ),
        .R(clear));
  FDRE \cntr_reg[23] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\cntr_reg[20]_i_1_n_4 ),
        .Q(\cntr_reg_n_0_[23] ),
        .R(clear));
  FDRE \cntr_reg[24] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\cntr_reg[25]_i_2_n_7 ),
        .Q(\cntr_reg_n_0_[24] ),
        .R(clear));
  FDRE \cntr_reg[25] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\cntr_reg[25]_i_2_n_6 ),
        .Q(ledout),
        .R(clear));
  CARRY4 \cntr_reg[25]_i_2 
       (.CI(\cntr_reg[20]_i_1_n_0 ),
        .CO({\NLW_cntr_reg[25]_i_2_CO_UNCONNECTED [3:1],\cntr_reg[25]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cntr_reg[25]_i_2_O_UNCONNECTED [3:2],\cntr_reg[25]_i_2_n_6 ,\cntr_reg[25]_i_2_n_7 }),
        .S({1'b0,1'b0,ledout,\cntr_reg_n_0_[24] }));
  FDRE \cntr_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\cntr_reg[0]_i_1_n_5 ),
        .Q(\cntr_reg_n_0_[2] ),
        .R(clear));
  FDRE \cntr_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\cntr_reg[0]_i_1_n_4 ),
        .Q(\cntr_reg_n_0_[3] ),
        .R(clear));
  FDRE \cntr_reg[4] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\cntr_reg[4]_i_1_n_7 ),
        .Q(\cntr_reg_n_0_[4] ),
        .R(clear));
  CARRY4 \cntr_reg[4]_i_1 
       (.CI(\cntr_reg[0]_i_1_n_0 ),
        .CO({\cntr_reg[4]_i_1_n_0 ,\cntr_reg[4]_i_1_n_1 ,\cntr_reg[4]_i_1_n_2 ,\cntr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cntr_reg[4]_i_1_n_4 ,\cntr_reg[4]_i_1_n_5 ,\cntr_reg[4]_i_1_n_6 ,\cntr_reg[4]_i_1_n_7 }),
        .S({\cntr_reg_n_0_[7] ,\cntr_reg_n_0_[6] ,\cntr_reg_n_0_[5] ,\cntr_reg_n_0_[4] }));
  FDRE \cntr_reg[5] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\cntr_reg[4]_i_1_n_6 ),
        .Q(\cntr_reg_n_0_[5] ),
        .R(clear));
  FDRE \cntr_reg[6] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\cntr_reg[4]_i_1_n_5 ),
        .Q(\cntr_reg_n_0_[6] ),
        .R(clear));
  FDRE \cntr_reg[7] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\cntr_reg[4]_i_1_n_4 ),
        .Q(\cntr_reg_n_0_[7] ),
        .R(clear));
  FDRE \cntr_reg[8] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\cntr_reg[8]_i_1_n_7 ),
        .Q(\cntr_reg_n_0_[8] ),
        .R(clear));
  CARRY4 \cntr_reg[8]_i_1 
       (.CI(\cntr_reg[4]_i_1_n_0 ),
        .CO({\cntr_reg[8]_i_1_n_0 ,\cntr_reg[8]_i_1_n_1 ,\cntr_reg[8]_i_1_n_2 ,\cntr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cntr_reg[8]_i_1_n_4 ,\cntr_reg[8]_i_1_n_5 ,\cntr_reg[8]_i_1_n_6 ,\cntr_reg[8]_i_1_n_7 }),
        .S({\cntr_reg_n_0_[11] ,\cntr_reg_n_0_[10] ,\cntr_reg_n_0_[9] ,\cntr_reg_n_0_[8] }));
  FDRE \cntr_reg[9] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\cntr_reg[8]_i_1_n_6 ),
        .Q(\cntr_reg_n_0_[9] ),
        .R(clear));
  LUT3 #(
    .INIT(8'h10)) 
    \data_in[31]_i_1 
       (.I0(S_AWADDR[0]),
        .I1(S_AWADDR[1]),
        .I2(\data_in[31]_i_2_n_0 ),
        .O(\data_in[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001010100)) 
    \data_in[31]_i_2 
       (.I0(S_AWADDR[2]),
        .I1(S_AWADDR[4]),
        .I2(S_AWADDR[3]),
        .I3(out[2]),
        .I4(out[0]),
        .I5(\data_in[31]_i_3_n_0 ),
        .O(\data_in[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_in[31]_i_3 
       (.I0(S_AWADDR[5]),
        .I1(out[2]),
        .I2(out[1]),
        .I3(out[3]),
        .O(\data_in[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0101010000000000)) 
    \data_in[63]_i_1 
       (.I0(S_AWADDR[2]),
        .I1(S_AWADDR[4]),
        .I2(S_AWADDR[3]),
        .I3(out[2]),
        .I4(out[0]),
        .I5(\data_in[63]_i_2_n_0 ),
        .O(\data_in[63]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \data_in[63]_i_2 
       (.I0(out[3]),
        .I1(out[1]),
        .I2(out[2]),
        .I3(S_AWADDR[5]),
        .I4(S_AWADDR[0]),
        .I5(S_AWADDR[1]),
        .O(\data_in[63]_i_2_n_0 ));
  FDRE \data_in_reg[0] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[0]),
        .Q(\data_in_reg_n_0_[0] ),
        .R(clear));
  FDRE \data_in_reg[10] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[10]),
        .Q(\data_in_reg_n_0_[10] ),
        .R(clear));
  FDRE \data_in_reg[11] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[11]),
        .Q(\data_in_reg_n_0_[11] ),
        .R(clear));
  FDRE \data_in_reg[12] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[12]),
        .Q(\data_in_reg_n_0_[12] ),
        .R(clear));
  FDRE \data_in_reg[13] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[13]),
        .Q(\data_in_reg_n_0_[13] ),
        .R(clear));
  FDRE \data_in_reg[14] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[14]),
        .Q(\data_in_reg_n_0_[14] ),
        .R(clear));
  FDRE \data_in_reg[15] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[15]),
        .Q(\data_in_reg_n_0_[15] ),
        .R(clear));
  FDRE \data_in_reg[16] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[16]),
        .Q(\data_in_reg_n_0_[16] ),
        .R(clear));
  FDRE \data_in_reg[17] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[17]),
        .Q(\data_in_reg_n_0_[17] ),
        .R(clear));
  FDRE \data_in_reg[18] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[18]),
        .Q(\data_in_reg_n_0_[18] ),
        .R(clear));
  FDRE \data_in_reg[19] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[19]),
        .Q(\data_in_reg_n_0_[19] ),
        .R(clear));
  FDRE \data_in_reg[1] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[1]),
        .Q(\data_in_reg_n_0_[1] ),
        .R(clear));
  FDRE \data_in_reg[20] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[20]),
        .Q(\data_in_reg_n_0_[20] ),
        .R(clear));
  FDRE \data_in_reg[21] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[21]),
        .Q(\data_in_reg_n_0_[21] ),
        .R(clear));
  FDRE \data_in_reg[22] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[22]),
        .Q(\data_in_reg_n_0_[22] ),
        .R(clear));
  FDRE \data_in_reg[23] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[23]),
        .Q(\data_in_reg_n_0_[23] ),
        .R(clear));
  FDRE \data_in_reg[24] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[24]),
        .Q(\data_in_reg_n_0_[24] ),
        .R(clear));
  FDRE \data_in_reg[25] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[25]),
        .Q(\data_in_reg_n_0_[25] ),
        .R(clear));
  FDRE \data_in_reg[26] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[26]),
        .Q(\data_in_reg_n_0_[26] ),
        .R(clear));
  FDRE \data_in_reg[27] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[27]),
        .Q(\data_in_reg_n_0_[27] ),
        .R(clear));
  FDRE \data_in_reg[28] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[28]),
        .Q(\data_in_reg_n_0_[28] ),
        .R(clear));
  FDRE \data_in_reg[29] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[29]),
        .Q(\data_in_reg_n_0_[29] ),
        .R(clear));
  FDRE \data_in_reg[2] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[2]),
        .Q(\data_in_reg_n_0_[2] ),
        .R(clear));
  FDRE \data_in_reg[30] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[30]),
        .Q(\data_in_reg_n_0_[30] ),
        .R(clear));
  FDRE \data_in_reg[31] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[31]),
        .Q(\data_in_reg_n_0_[31] ),
        .R(clear));
  FDRE \data_in_reg[32] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[0]),
        .Q(C[0]),
        .R(clear));
  FDRE \data_in_reg[33] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[1]),
        .Q(C[1]),
        .R(clear));
  FDRE \data_in_reg[34] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[2]),
        .Q(C[2]),
        .R(clear));
  FDRE \data_in_reg[35] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[3]),
        .Q(C[3]),
        .R(clear));
  FDRE \data_in_reg[36] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[4]),
        .Q(C[4]),
        .R(clear));
  FDRE \data_in_reg[37] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[5]),
        .Q(C[5]),
        .R(clear));
  FDRE \data_in_reg[38] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[6]),
        .Q(C[6]),
        .R(clear));
  FDRE \data_in_reg[39] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[7]),
        .Q(C[7]),
        .R(clear));
  FDRE \data_in_reg[3] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[3]),
        .Q(\data_in_reg_n_0_[3] ),
        .R(clear));
  FDRE \data_in_reg[40] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[8]),
        .Q(C[8]),
        .R(clear));
  FDRE \data_in_reg[41] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[9]),
        .Q(C[9]),
        .R(clear));
  FDRE \data_in_reg[42] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[10]),
        .Q(C[10]),
        .R(clear));
  FDRE \data_in_reg[43] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[11]),
        .Q(C[11]),
        .R(clear));
  FDRE \data_in_reg[44] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[12]),
        .Q(C[12]),
        .R(clear));
  FDRE \data_in_reg[45] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[13]),
        .Q(C[13]),
        .R(clear));
  FDRE \data_in_reg[46] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[14]),
        .Q(C[14]),
        .R(clear));
  FDRE \data_in_reg[47] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[15]),
        .Q(C[15]),
        .R(clear));
  FDRE \data_in_reg[48] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[16]),
        .Q(C[16]),
        .R(clear));
  FDRE \data_in_reg[49] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[17]),
        .Q(C[17]),
        .R(clear));
  FDRE \data_in_reg[4] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[4]),
        .Q(\data_in_reg_n_0_[4] ),
        .R(clear));
  FDRE \data_in_reg[50] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[18]),
        .Q(C[18]),
        .R(clear));
  FDRE \data_in_reg[51] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[19]),
        .Q(C[19]),
        .R(clear));
  FDRE \data_in_reg[52] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[20]),
        .Q(C[20]),
        .R(clear));
  FDRE \data_in_reg[53] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[21]),
        .Q(C[21]),
        .R(clear));
  FDRE \data_in_reg[54] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[22]),
        .Q(C[22]),
        .R(clear));
  FDRE \data_in_reg[55] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[23]),
        .Q(C[23]),
        .R(clear));
  FDRE \data_in_reg[56] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[24]),
        .Q(C[24]),
        .R(clear));
  FDRE \data_in_reg[57] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[25]),
        .Q(C[25]),
        .R(clear));
  FDRE \data_in_reg[58] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[26]),
        .Q(C[26]),
        .R(clear));
  FDRE \data_in_reg[59] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[27]),
        .Q(C[27]),
        .R(clear));
  FDRE \data_in_reg[5] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[5]),
        .Q(\data_in_reg_n_0_[5] ),
        .R(clear));
  FDRE \data_in_reg[60] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[28]),
        .Q(C[28]),
        .R(clear));
  FDRE \data_in_reg[61] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[29]),
        .Q(C[29]),
        .R(clear));
  FDRE \data_in_reg[62] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[30]),
        .Q(C[30]),
        .R(clear));
  FDRE \data_in_reg[63] 
       (.C(ACLK),
        .CE(\data_in[63]_i_1_n_0 ),
        .D(S_WDATA[31]),
        .Q(C[31]),
        .R(clear));
  FDRE \data_in_reg[6] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[6]),
        .Q(\data_in_reg_n_0_[6] ),
        .R(clear));
  FDRE \data_in_reg[7] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[7]),
        .Q(\data_in_reg_n_0_[7] ),
        .R(clear));
  FDRE \data_in_reg[8] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[8]),
        .Q(\data_in_reg_n_0_[8] ),
        .R(clear));
  FDRE \data_in_reg[9] 
       (.C(ACLK),
        .CE(\data_in[31]_i_1_n_0 ),
        .D(S_WDATA[9]),
        .Q(\data_in_reg_n_0_[9] ),
        .R(clear));
  LUT6 #(
    .INIT(64'h000000000000A800)) 
    \key[127]_i_1 
       (.I0(\data_in[63]_i_2_n_0 ),
        .I1(out[0]),
        .I2(out[2]),
        .I3(S_AWADDR[2]),
        .I4(S_AWADDR[3]),
        .I5(S_AWADDR[4]),
        .O(\key[127]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \key[31]_i_1 
       (.I0(\data_in[31]_i_2_n_0 ),
        .I1(S_AWADDR[1]),
        .I2(S_AWADDR[0]),
        .O(\key[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \key[63]_i_1 
       (.I0(\key[63]_i_2_n_0 ),
        .I1(S_AWADDR[0]),
        .I2(S_AWADDR[2]),
        .I3(S_AWADDR[1]),
        .I4(out[0]),
        .I5(\key[63]_i_3_n_0 ),
        .O(\key[63]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \key[63]_i_2 
       (.I0(S_AWADDR[5]),
        .I1(S_AWADDR[4]),
        .I2(S_AWADDR[3]),
        .O(\key[63]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \key[63]_i_3 
       (.I0(out[3]),
        .I1(out[1]),
        .I2(out[2]),
        .O(\key[63]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \key[95]_i_1 
       (.I0(\key[95]_i_2_n_0 ),
        .I1(S_AWADDR[1]),
        .I2(S_AWADDR[0]),
        .I3(out[3]),
        .I4(\key[95]_i_3_n_0 ),
        .I5(S_AWADDR[5]),
        .O(\key[95]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFEFEFFF)) 
    \key[95]_i_2 
       (.I0(S_AWADDR[4]),
        .I1(S_AWADDR[3]),
        .I2(S_AWADDR[2]),
        .I3(out[2]),
        .I4(out[0]),
        .O(\key[95]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \key[95]_i_3 
       (.I0(out[2]),
        .I1(out[1]),
        .O(\key[95]_i_3_n_0 ));
  FDRE \key_reg[0] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[0]),
        .Q(\key_reg_n_0_[0] ),
        .R(clear));
  FDRE \key_reg[100] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[4]),
        .Q(k0[4]),
        .R(clear));
  FDRE \key_reg[101] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[5]),
        .Q(k0[5]),
        .R(clear));
  FDRE \key_reg[102] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[6]),
        .Q(k0[6]),
        .R(clear));
  FDRE \key_reg[103] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[7]),
        .Q(k0[7]),
        .R(clear));
  FDRE \key_reg[104] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[8]),
        .Q(k0[8]),
        .R(clear));
  FDRE \key_reg[105] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[9]),
        .Q(k0[9]),
        .R(clear));
  FDRE \key_reg[106] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[10]),
        .Q(k0[10]),
        .R(clear));
  FDRE \key_reg[107] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[11]),
        .Q(k0[11]),
        .R(clear));
  FDRE \key_reg[108] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[12]),
        .Q(k0[12]),
        .R(clear));
  FDRE \key_reg[109] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[13]),
        .Q(k0[13]),
        .R(clear));
  FDRE \key_reg[10] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[10]),
        .Q(\key_reg_n_0_[10] ),
        .R(clear));
  FDRE \key_reg[110] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[14]),
        .Q(k0[14]),
        .R(clear));
  FDRE \key_reg[111] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[15]),
        .Q(k0[15]),
        .R(clear));
  FDRE \key_reg[112] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[16]),
        .Q(k0[16]),
        .R(clear));
  FDRE \key_reg[113] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[17]),
        .Q(k0[17]),
        .R(clear));
  FDRE \key_reg[114] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[18]),
        .Q(k0[18]),
        .R(clear));
  FDRE \key_reg[115] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[19]),
        .Q(k0[19]),
        .R(clear));
  FDRE \key_reg[116] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[20]),
        .Q(k0[20]),
        .R(clear));
  FDRE \key_reg[117] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[21]),
        .Q(k0[21]),
        .R(clear));
  FDRE \key_reg[118] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[22]),
        .Q(k0[22]),
        .R(clear));
  FDRE \key_reg[119] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[23]),
        .Q(k0[23]),
        .R(clear));
  FDRE \key_reg[11] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[11]),
        .Q(\key_reg_n_0_[11] ),
        .R(clear));
  FDRE \key_reg[120] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[24]),
        .Q(k0[24]),
        .R(clear));
  FDRE \key_reg[121] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[25]),
        .Q(k0[25]),
        .R(clear));
  FDRE \key_reg[122] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[26]),
        .Q(k0[26]),
        .R(clear));
  FDRE \key_reg[123] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[27]),
        .Q(k0[27]),
        .R(clear));
  FDRE \key_reg[124] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[28]),
        .Q(k0[28]),
        .R(clear));
  FDRE \key_reg[125] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[29]),
        .Q(k0[29]),
        .R(clear));
  FDRE \key_reg[126] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[30]),
        .Q(k0[30]),
        .R(clear));
  FDRE \key_reg[127] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[31]),
        .Q(k0[31]),
        .R(clear));
  FDRE \key_reg[12] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[12]),
        .Q(\key_reg_n_0_[12] ),
        .R(clear));
  FDRE \key_reg[13] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[13]),
        .Q(\key_reg_n_0_[13] ),
        .R(clear));
  FDRE \key_reg[14] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[14]),
        .Q(\key_reg_n_0_[14] ),
        .R(clear));
  FDRE \key_reg[15] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[15]),
        .Q(\key_reg_n_0_[15] ),
        .R(clear));
  FDRE \key_reg[16] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[16]),
        .Q(\key_reg_n_0_[16] ),
        .R(clear));
  FDRE \key_reg[17] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[17]),
        .Q(\key_reg_n_0_[17] ),
        .R(clear));
  FDRE \key_reg[18] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[18]),
        .Q(\key_reg_n_0_[18] ),
        .R(clear));
  FDRE \key_reg[19] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[19]),
        .Q(\key_reg_n_0_[19] ),
        .R(clear));
  FDRE \key_reg[1] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[1]),
        .Q(\key_reg_n_0_[1] ),
        .R(clear));
  FDRE \key_reg[20] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[20]),
        .Q(\key_reg_n_0_[20] ),
        .R(clear));
  FDRE \key_reg[21] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[21]),
        .Q(\key_reg_n_0_[21] ),
        .R(clear));
  FDRE \key_reg[22] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[22]),
        .Q(\key_reg_n_0_[22] ),
        .R(clear));
  FDRE \key_reg[23] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[23]),
        .Q(\key_reg_n_0_[23] ),
        .R(clear));
  FDRE \key_reg[24] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[24]),
        .Q(\key_reg_n_0_[24] ),
        .R(clear));
  FDRE \key_reg[25] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[25]),
        .Q(\key_reg_n_0_[25] ),
        .R(clear));
  FDRE \key_reg[26] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[26]),
        .Q(\key_reg_n_0_[26] ),
        .R(clear));
  FDRE \key_reg[27] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[27]),
        .Q(\key_reg_n_0_[27] ),
        .R(clear));
  FDRE \key_reg[28] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[28]),
        .Q(\key_reg_n_0_[28] ),
        .R(clear));
  FDRE \key_reg[29] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[29]),
        .Q(\key_reg_n_0_[29] ),
        .R(clear));
  FDRE \key_reg[2] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[2]),
        .Q(\key_reg_n_0_[2] ),
        .R(clear));
  FDRE \key_reg[30] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[30]),
        .Q(\key_reg_n_0_[30] ),
        .R(clear));
  FDRE \key_reg[31] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[31]),
        .Q(\key_reg_n_0_[31] ),
        .R(clear));
  FDRE \key_reg[32] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[0]),
        .Q(k2[0]),
        .R(clear));
  FDRE \key_reg[33] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[1]),
        .Q(k2[1]),
        .R(clear));
  FDRE \key_reg[34] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[2]),
        .Q(k2[2]),
        .R(clear));
  FDRE \key_reg[35] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[3]),
        .Q(k2[3]),
        .R(clear));
  FDRE \key_reg[36] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[4]),
        .Q(k2[4]),
        .R(clear));
  FDRE \key_reg[37] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[5]),
        .Q(k2[5]),
        .R(clear));
  FDRE \key_reg[38] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[6]),
        .Q(k2[6]),
        .R(clear));
  FDRE \key_reg[39] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[7]),
        .Q(k2[7]),
        .R(clear));
  FDRE \key_reg[3] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[3]),
        .Q(\key_reg_n_0_[3] ),
        .R(clear));
  FDRE \key_reg[40] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[8]),
        .Q(k2[8]),
        .R(clear));
  FDRE \key_reg[41] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[9]),
        .Q(k2[9]),
        .R(clear));
  FDRE \key_reg[42] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[10]),
        .Q(k2[10]),
        .R(clear));
  FDRE \key_reg[43] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[11]),
        .Q(k2[11]),
        .R(clear));
  FDRE \key_reg[44] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[12]),
        .Q(k2[12]),
        .R(clear));
  FDRE \key_reg[45] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[13]),
        .Q(k2[13]),
        .R(clear));
  FDRE \key_reg[46] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[14]),
        .Q(k2[14]),
        .R(clear));
  FDRE \key_reg[47] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[15]),
        .Q(k2[15]),
        .R(clear));
  FDRE \key_reg[48] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[16]),
        .Q(k2[16]),
        .R(clear));
  FDRE \key_reg[49] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[17]),
        .Q(k2[17]),
        .R(clear));
  FDRE \key_reg[4] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[4]),
        .Q(\key_reg_n_0_[4] ),
        .R(clear));
  FDRE \key_reg[50] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[18]),
        .Q(k2[18]),
        .R(clear));
  FDRE \key_reg[51] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[19]),
        .Q(k2[19]),
        .R(clear));
  FDRE \key_reg[52] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[20]),
        .Q(k2[20]),
        .R(clear));
  FDRE \key_reg[53] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[21]),
        .Q(k2[21]),
        .R(clear));
  FDRE \key_reg[54] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[22]),
        .Q(k2[22]),
        .R(clear));
  FDRE \key_reg[55] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[23]),
        .Q(k2[23]),
        .R(clear));
  FDRE \key_reg[56] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[24]),
        .Q(k2[24]),
        .R(clear));
  FDRE \key_reg[57] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[25]),
        .Q(k2[25]),
        .R(clear));
  FDRE \key_reg[58] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[26]),
        .Q(k2[26]),
        .R(clear));
  FDRE \key_reg[59] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[27]),
        .Q(k2[27]),
        .R(clear));
  FDRE \key_reg[5] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[5]),
        .Q(\key_reg_n_0_[5] ),
        .R(clear));
  FDRE \key_reg[60] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[28]),
        .Q(k2[28]),
        .R(clear));
  FDRE \key_reg[61] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[29]),
        .Q(k2[29]),
        .R(clear));
  FDRE \key_reg[62] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[30]),
        .Q(k2[30]),
        .R(clear));
  FDRE \key_reg[63] 
       (.C(ACLK),
        .CE(\key[63]_i_1_n_0 ),
        .D(S_WDATA[31]),
        .Q(k2[31]),
        .R(clear));
  FDRE \key_reg[64] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[0]),
        .Q(k1[0]),
        .R(clear));
  FDRE \key_reg[65] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[1]),
        .Q(k1[1]),
        .R(clear));
  FDRE \key_reg[66] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[2]),
        .Q(k1[2]),
        .R(clear));
  FDRE \key_reg[67] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[3]),
        .Q(k1[3]),
        .R(clear));
  FDRE \key_reg[68] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[4]),
        .Q(k1[4]),
        .R(clear));
  FDRE \key_reg[69] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[5]),
        .Q(k1[5]),
        .R(clear));
  FDRE \key_reg[6] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[6]),
        .Q(\key_reg_n_0_[6] ),
        .R(clear));
  FDRE \key_reg[70] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[6]),
        .Q(k1[6]),
        .R(clear));
  FDRE \key_reg[71] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[7]),
        .Q(k1[7]),
        .R(clear));
  FDRE \key_reg[72] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[8]),
        .Q(k1[8]),
        .R(clear));
  FDRE \key_reg[73] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[9]),
        .Q(k1[9]),
        .R(clear));
  FDRE \key_reg[74] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[10]),
        .Q(k1[10]),
        .R(clear));
  FDRE \key_reg[75] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[11]),
        .Q(k1[11]),
        .R(clear));
  FDRE \key_reg[76] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[12]),
        .Q(k1[12]),
        .R(clear));
  FDRE \key_reg[77] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[13]),
        .Q(k1[13]),
        .R(clear));
  FDRE \key_reg[78] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[14]),
        .Q(k1[14]),
        .R(clear));
  FDRE \key_reg[79] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[15]),
        .Q(k1[15]),
        .R(clear));
  FDRE \key_reg[7] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[7]),
        .Q(\key_reg_n_0_[7] ),
        .R(clear));
  FDRE \key_reg[80] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[16]),
        .Q(k1[16]),
        .R(clear));
  FDRE \key_reg[81] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[17]),
        .Q(k1[17]),
        .R(clear));
  FDRE \key_reg[82] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[18]),
        .Q(k1[18]),
        .R(clear));
  FDRE \key_reg[83] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[19]),
        .Q(k1[19]),
        .R(clear));
  FDRE \key_reg[84] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[20]),
        .Q(k1[20]),
        .R(clear));
  FDRE \key_reg[85] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[21]),
        .Q(k1[21]),
        .R(clear));
  FDRE \key_reg[86] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[22]),
        .Q(k1[22]),
        .R(clear));
  FDRE \key_reg[87] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[23]),
        .Q(k1[23]),
        .R(clear));
  FDRE \key_reg[88] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[24]),
        .Q(k1[24]),
        .R(clear));
  FDRE \key_reg[89] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[25]),
        .Q(k1[25]),
        .R(clear));
  FDRE \key_reg[8] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[8]),
        .Q(\key_reg_n_0_[8] ),
        .R(clear));
  FDRE \key_reg[90] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[26]),
        .Q(k1[26]),
        .R(clear));
  FDRE \key_reg[91] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[27]),
        .Q(k1[27]),
        .R(clear));
  FDRE \key_reg[92] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[28]),
        .Q(k1[28]),
        .R(clear));
  FDRE \key_reg[93] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[29]),
        .Q(k1[29]),
        .R(clear));
  FDRE \key_reg[94] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[30]),
        .Q(k1[30]),
        .R(clear));
  FDRE \key_reg[95] 
       (.C(ACLK),
        .CE(\key[95]_i_1_n_0 ),
        .D(S_WDATA[31]),
        .Q(k1[31]),
        .R(clear));
  FDRE \key_reg[96] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[0]),
        .Q(k0[0]),
        .R(clear));
  FDRE \key_reg[97] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[1]),
        .Q(k0[1]),
        .R(clear));
  FDRE \key_reg[98] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[2]),
        .Q(k0[2]),
        .R(clear));
  FDRE \key_reg[99] 
       (.C(ACLK),
        .CE(\key[127]_i_1_n_0 ),
        .D(S_WDATA[3]),
        .Q(k0[3]),
        .R(clear));
  FDRE \key_reg[9] 
       (.C(ACLK),
        .CE(\key[31]_i_1_n_0 ),
        .D(S_WDATA[9]),
        .Q(\key_reg_n_0_[9] ),
        .R(clear));
  LUT5 #(
    .INIT(32'h0C0C0800)) 
    \read_addr[5]_i_1 
       (.I0(out[1]),
        .I1(ARESETN),
        .I2(out[3]),
        .I3(out[0]),
        .I4(out[2]),
        .O(read_addr_0));
  FDRE \read_addr_reg[0] 
       (.C(ACLK),
        .CE(read_addr_0),
        .D(S_ARADDR[0]),
        .Q(read_addr[0]),
        .R(1'b0));
  FDRE \read_addr_reg[1] 
       (.C(ACLK),
        .CE(read_addr_0),
        .D(S_ARADDR[1]),
        .Q(read_addr[1]),
        .R(1'b0));
  FDRE \read_addr_reg[2] 
       (.C(ACLK),
        .CE(read_addr_0),
        .D(S_ARADDR[2]),
        .Q(read_addr[2]),
        .R(1'b0));
  FDRE \read_addr_reg[3] 
       (.C(ACLK),
        .CE(read_addr_0),
        .D(S_ARADDR[3]),
        .Q(read_addr[3]),
        .R(1'b0));
  FDRE \read_addr_reg[4] 
       (.C(ACLK),
        .CE(read_addr_0),
        .D(S_ARADDR[4]),
        .Q(read_addr[4]),
        .R(1'b0));
  FDRE \read_addr_reg[5] 
       (.C(ACLK),
        .CE(read_addr_0),
        .D(S_ARADDR[5]),
        .Q(read_addr[5]),
        .R(1'b0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-16 {cell *THIS*}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "register" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "31" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    register_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,register_reg_i_2_n_0,register_reg_i_3_n_0,register_reg_i_4_n_0,register_reg_i_5_n_0,register_reg_i_6_n_0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,S_AWADDR[4:0],1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ACLK),
        .CLKBWRCLK(ACLK),
        .DIADI(S_WDATA[15:0]),
        .DIBDI(S_WDATA[31:16]),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(S_RDATA5[15:0]),
        .DOBDO(S_RDATA5[31:16]),
        .DOPADOP(NLW_register_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_register_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(register_reg_i_1_n_0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({register,register,register,register}));
  LUT1 #(
    .INIT(2'h1)) 
    register_reg_i_1
       (.I0(S_AWADDR[5]),
        .O(register_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    register_reg_i_2
       (.I0(S_ARADDR[4]),
        .I1(read_addr_0),
        .I2(read_addr[4]),
        .O(register_reg_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    register_reg_i_3
       (.I0(S_ARADDR[3]),
        .I1(read_addr_0),
        .I2(read_addr[3]),
        .O(register_reg_i_3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    register_reg_i_4
       (.I0(S_ARADDR[2]),
        .I1(read_addr_0),
        .I2(read_addr[2]),
        .O(register_reg_i_4_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    register_reg_i_5
       (.I0(S_ARADDR[1]),
        .I1(read_addr_0),
        .I2(read_addr[1]),
        .O(register_reg_i_5_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    register_reg_i_6
       (.I0(S_ARADDR[0]),
        .I1(read_addr_0),
        .I2(read_addr[0]),
        .O(register_reg_i_6_n_0));
  LUT6 #(
    .INIT(64'h3333332233332220)) 
    register_reg_i_7
       (.I0(S_AWADDR[5]),
        .I1(register_reg_i_8_n_0),
        .I2(S_AWADDR[0]),
        .I3(S_AWADDR[1]),
        .I4(register_reg_i_9_n_0),
        .I5(S_AWADDR[2]),
        .O(register));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    register_reg_i_8
       (.I0(out[2]),
        .I1(out[1]),
        .I2(out[3]),
        .I3(out[0]),
        .I4(ARESETN),
        .O(register_reg_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    register_reg_i_9
       (.I0(S_AWADDR[3]),
        .I1(S_AWADDR[4]),
        .O(register_reg_i_9_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    start_i_1
       (.I0(start_i_2_n_0),
        .I1(S_AWADDR[5]),
        .I2(ARESETN),
        .I3(out[0]),
        .O(start_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    start_i_2
       (.I0(S_AWADDR[0]),
        .I1(S_AWADDR[1]),
        .I2(S_AWADDR[3]),
        .I3(S_AWADDR[4]),
        .I4(S_AWADDR[2]),
        .O(start_i_2_n_0));
  FDRE start_reg
       (.C(ACLK),
        .CE(1'b1),
        .D(start_i_1_n_0),
        .Q(start),
        .R(1'b0));
  AxiTest01_axi4_lite_slave_0_0_tea_encrypt tea_encrypt_inst
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .Q({k0,k1,k2,\key_reg_n_0_[31] ,\key_reg_n_0_[30] ,\key_reg_n_0_[29] ,\key_reg_n_0_[28] ,\key_reg_n_0_[27] ,\key_reg_n_0_[26] ,\key_reg_n_0_[25] ,\key_reg_n_0_[24] ,\key_reg_n_0_[23] ,\key_reg_n_0_[22] ,\key_reg_n_0_[21] ,\key_reg_n_0_[20] ,\key_reg_n_0_[19] ,\key_reg_n_0_[18] ,\key_reg_n_0_[17] ,\key_reg_n_0_[16] ,\key_reg_n_0_[15] ,\key_reg_n_0_[14] ,\key_reg_n_0_[13] ,\key_reg_n_0_[12] ,\key_reg_n_0_[11] ,\key_reg_n_0_[10] ,\key_reg_n_0_[9] ,\key_reg_n_0_[8] ,\key_reg_n_0_[7] ,\key_reg_n_0_[6] ,\key_reg_n_0_[5] ,\key_reg_n_0_[4] ,\key_reg_n_0_[3] ,\key_reg_n_0_[2] ,\key_reg_n_0_[1] ,\key_reg_n_0_[0] }),
        .S_RDATA(S_RDATA),
        .S_RDATA5(S_RDATA5),
        .clear(clear),
        .\data_in_reg[63] ({C,\data_in_reg_n_0_[31] ,\data_in_reg_n_0_[30] ,\data_in_reg_n_0_[29] ,\data_in_reg_n_0_[28] ,\data_in_reg_n_0_[27] ,\data_in_reg_n_0_[26] ,\data_in_reg_n_0_[25] ,\data_in_reg_n_0_[24] ,\data_in_reg_n_0_[23] ,\data_in_reg_n_0_[22] ,\data_in_reg_n_0_[21] ,\data_in_reg_n_0_[20] ,\data_in_reg_n_0_[19] ,\data_in_reg_n_0_[18] ,\data_in_reg_n_0_[17] ,\data_in_reg_n_0_[16] ,\data_in_reg_n_0_[15] ,\data_in_reg_n_0_[14] ,\data_in_reg_n_0_[13] ,\data_in_reg_n_0_[12] ,\data_in_reg_n_0_[11] ,\data_in_reg_n_0_[10] ,\data_in_reg_n_0_[9] ,\data_in_reg_n_0_[8] ,\data_in_reg_n_0_[7] ,\data_in_reg_n_0_[6] ,\data_in_reg_n_0_[5] ,\data_in_reg_n_0_[4] ,\data_in_reg_n_0_[3] ,\data_in_reg_n_0_[2] ,\data_in_reg_n_0_[1] ,\data_in_reg_n_0_[0] }),
        .out(out[3]),
        .read_addr({read_addr[5],read_addr[2:0]}),
        .\read_addr_reg[2] (\S_RDATA[31]_INST_0_i_2_n_0 ),
        .\read_addr_reg[4] (\S_RDATA[0]_INST_0_i_3_n_0 ),
        .\read_addr_reg[4]_0 (\S_RDATA[29]_INST_0_i_2_n_0 ),
        .start(start));
endmodule

(* ORIG_REF_NAME = "tea_encrypt" *) 
module AxiTest01_axi4_lite_slave_0_0_tea_encrypt
   (clear,
    S_RDATA,
    ACLK,
    Q,
    read_addr,
    \data_in_reg[63] ,
    start,
    ARESETN,
    out,
    S_RDATA5,
    \read_addr_reg[4] ,
    \read_addr_reg[4]_0 ,
    \read_addr_reg[2] );
  output clear;
  output [31:0]S_RDATA;
  input ACLK;
  input [127:0]Q;
  input [3:0]read_addr;
  input [63:0]\data_in_reg[63] ;
  input start;
  input ARESETN;
  input [0:0]out;
  input [31:0]S_RDATA5;
  input \read_addr_reg[4] ;
  input \read_addr_reg[4]_0 ;
  input \read_addr_reg[2] ;

  wire ACLK;
  wire ARESETN;
  wire [127:0]Q;
  wire [31:0]S_RDATA;
  wire [31:0]S_RDATA5;
  wire \S_RDATA[0]_INST_0_i_1_n_0 ;
  wire \S_RDATA[0]_INST_0_i_2_n_0 ;
  wire \S_RDATA[10]_INST_0_i_1_n_0 ;
  wire \S_RDATA[11]_INST_0_i_1_n_0 ;
  wire \S_RDATA[12]_INST_0_i_1_n_0 ;
  wire \S_RDATA[13]_INST_0_i_1_n_0 ;
  wire \S_RDATA[14]_INST_0_i_1_n_0 ;
  wire \S_RDATA[15]_INST_0_i_1_n_0 ;
  wire \S_RDATA[16]_INST_0_i_1_n_0 ;
  wire \S_RDATA[17]_INST_0_i_1_n_0 ;
  wire \S_RDATA[18]_INST_0_i_1_n_0 ;
  wire \S_RDATA[19]_INST_0_i_1_n_0 ;
  wire \S_RDATA[1]_INST_0_i_1_n_0 ;
  wire \S_RDATA[20]_INST_0_i_1_n_0 ;
  wire \S_RDATA[21]_INST_0_i_1_n_0 ;
  wire \S_RDATA[22]_INST_0_i_1_n_0 ;
  wire \S_RDATA[23]_INST_0_i_1_n_0 ;
  wire \S_RDATA[24]_INST_0_i_1_n_0 ;
  wire \S_RDATA[25]_INST_0_i_1_n_0 ;
  wire \S_RDATA[26]_INST_0_i_1_n_0 ;
  wire \S_RDATA[27]_INST_0_i_1_n_0 ;
  wire \S_RDATA[28]_INST_0_i_1_n_0 ;
  wire \S_RDATA[29]_INST_0_i_1_n_0 ;
  wire \S_RDATA[2]_INST_0_i_1_n_0 ;
  wire \S_RDATA[30]_INST_0_i_1_n_0 ;
  wire \S_RDATA[31]_INST_0_i_1_n_0 ;
  wire \S_RDATA[3]_INST_0_i_1_n_0 ;
  wire \S_RDATA[3]_INST_0_i_2_n_0 ;
  wire \S_RDATA[4]_INST_0_i_1_n_0 ;
  wire \S_RDATA[4]_INST_0_i_2_n_0 ;
  wire \S_RDATA[5]_INST_0_i_1_n_0 ;
  wire \S_RDATA[5]_INST_0_i_2_n_0 ;
  wire \S_RDATA[6]_INST_0_i_1_n_0 ;
  wire \S_RDATA[7]_INST_0_i_1_n_0 ;
  wire \S_RDATA[8]_INST_0_i_1_n_0 ;
  wire \S_RDATA[9]_INST_0_i_1_n_0 ;
  wire busy;
  wire busy_i_1_n_0;
  wire clear;
  wire [31:0]data2;
  wire [63:0]\data_in_reg[63] ;
  wire \data_out_reg_n_0_[0] ;
  wire \data_out_reg_n_0_[10] ;
  wire \data_out_reg_n_0_[11] ;
  wire \data_out_reg_n_0_[12] ;
  wire \data_out_reg_n_0_[13] ;
  wire \data_out_reg_n_0_[14] ;
  wire \data_out_reg_n_0_[15] ;
  wire \data_out_reg_n_0_[16] ;
  wire \data_out_reg_n_0_[17] ;
  wire \data_out_reg_n_0_[18] ;
  wire \data_out_reg_n_0_[19] ;
  wire \data_out_reg_n_0_[1] ;
  wire \data_out_reg_n_0_[20] ;
  wire \data_out_reg_n_0_[21] ;
  wire \data_out_reg_n_0_[22] ;
  wire \data_out_reg_n_0_[23] ;
  wire \data_out_reg_n_0_[24] ;
  wire \data_out_reg_n_0_[25] ;
  wire \data_out_reg_n_0_[26] ;
  wire \data_out_reg_n_0_[27] ;
  wire \data_out_reg_n_0_[28] ;
  wire \data_out_reg_n_0_[29] ;
  wire \data_out_reg_n_0_[2] ;
  wire \data_out_reg_n_0_[30] ;
  wire \data_out_reg_n_0_[31] ;
  wire \data_out_reg_n_0_[3] ;
  wire \data_out_reg_n_0_[4] ;
  wire \data_out_reg_n_0_[5] ;
  wire \data_out_reg_n_0_[6] ;
  wire \data_out_reg_n_0_[7] ;
  wire \data_out_reg_n_0_[8] ;
  wire \data_out_reg_n_0_[9] ;
  wire done;
  wire done_i_1_n_0;
  wire done_i_2_n_0;
  wire [0:0]out;
  wire [5:0]p_0_in;
  wire p_1_in;
  wire [3:0]read_addr;
  wire \read_addr_reg[2] ;
  wire \read_addr_reg[4] ;
  wire \read_addr_reg[4]_0 ;
  wire round;
  wire [5:0]round_reg__0;
  wire start;
  wire \sum[0]_i_2_n_0 ;
  wire \sum[0]_i_3_n_0 ;
  wire \sum[0]_i_4_n_0 ;
  wire \sum[0]_i_5_n_0 ;
  wire \sum[0]_i_6_n_0 ;
  wire \sum[0]_i_7_n_0 ;
  wire \sum[12]_i_2_n_0 ;
  wire \sum[12]_i_3_n_0 ;
  wire \sum[12]_i_4_n_0 ;
  wire \sum[12]_i_5_n_0 ;
  wire \sum[12]_i_6_n_0 ;
  wire \sum[12]_i_7_n_0 ;
  wire \sum[12]_i_8_n_0 ;
  wire \sum[16]_i_2_n_0 ;
  wire \sum[16]_i_3_n_0 ;
  wire \sum[16]_i_4_n_0 ;
  wire \sum[16]_i_5_n_0 ;
  wire \sum[16]_i_6_n_0 ;
  wire \sum[16]_i_7_n_0 ;
  wire \sum[16]_i_8_n_0 ;
  wire \sum[20]_i_2_n_0 ;
  wire \sum[20]_i_3_n_0 ;
  wire \sum[20]_i_4_n_0 ;
  wire \sum[20]_i_5_n_0 ;
  wire \sum[20]_i_6_n_0 ;
  wire \sum[20]_i_7_n_0 ;
  wire \sum[24]_i_2_n_0 ;
  wire \sum[24]_i_3_n_0 ;
  wire \sum[24]_i_4_n_0 ;
  wire \sum[24]_i_5_n_0 ;
  wire \sum[24]_i_6_n_0 ;
  wire \sum[24]_i_7_n_0 ;
  wire \sum[24]_i_8_n_0 ;
  wire \sum[28]_i_2_n_0 ;
  wire \sum[28]_i_3_n_0 ;
  wire \sum[28]_i_4_n_0 ;
  wire \sum[28]_i_5_n_0 ;
  wire \sum[28]_i_6_n_0 ;
  wire \sum[4]_i_2_n_0 ;
  wire \sum[4]_i_3_n_0 ;
  wire \sum[4]_i_4_n_0 ;
  wire \sum[4]_i_5_n_0 ;
  wire \sum[4]_i_6_n_0 ;
  wire \sum[4]_i_7_n_0 ;
  wire \sum[4]_i_8_n_0 ;
  wire \sum[8]_i_2_n_0 ;
  wire \sum[8]_i_3_n_0 ;
  wire \sum[8]_i_4_n_0 ;
  wire \sum[8]_i_5_n_0 ;
  wire \sum[8]_i_6_n_0 ;
  wire \sum[8]_i_7_n_0 ;
  wire [31:1]sum_next;
  wire sum_next_carry__0_i_1_n_0;
  wire sum_next_carry__0_i_2_n_0;
  wire sum_next_carry__0_i_3_n_0;
  wire sum_next_carry__0_n_0;
  wire sum_next_carry__0_n_1;
  wire sum_next_carry__0_n_2;
  wire sum_next_carry__0_n_3;
  wire sum_next_carry__1_i_1_n_0;
  wire sum_next_carry__1_i_2_n_0;
  wire sum_next_carry__1_n_0;
  wire sum_next_carry__1_n_1;
  wire sum_next_carry__1_n_2;
  wire sum_next_carry__1_n_3;
  wire sum_next_carry__2_i_1_n_0;
  wire sum_next_carry__2_i_2_n_0;
  wire sum_next_carry__2_i_3_n_0;
  wire sum_next_carry__2_n_0;
  wire sum_next_carry__2_n_1;
  wire sum_next_carry__2_n_2;
  wire sum_next_carry__2_n_3;
  wire sum_next_carry__3_i_1_n_0;
  wire sum_next_carry__3_i_2_n_0;
  wire sum_next_carry__3_i_3_n_0;
  wire sum_next_carry__3_n_0;
  wire sum_next_carry__3_n_1;
  wire sum_next_carry__3_n_2;
  wire sum_next_carry__3_n_3;
  wire sum_next_carry__4_i_1_n_0;
  wire sum_next_carry__4_n_0;
  wire sum_next_carry__4_n_1;
  wire sum_next_carry__4_n_2;
  wire sum_next_carry__4_n_3;
  wire sum_next_carry__5_i_1_n_0;
  wire sum_next_carry__5_i_2_n_0;
  wire sum_next_carry__5_i_3_n_0;
  wire sum_next_carry__5_i_4_n_0;
  wire sum_next_carry__5_n_0;
  wire sum_next_carry__5_n_1;
  wire sum_next_carry__5_n_2;
  wire sum_next_carry__5_n_3;
  wire sum_next_carry__6_i_1_n_0;
  wire sum_next_carry__6_n_2;
  wire sum_next_carry__6_n_3;
  wire sum_next_carry_i_1_n_0;
  wire sum_next_carry_i_2_n_0;
  wire sum_next_carry_n_0;
  wire sum_next_carry_n_1;
  wire sum_next_carry_n_2;
  wire sum_next_carry_n_3;
  wire [31:0]sum_reg;
  wire \sum_reg[0]_i_1_n_0 ;
  wire \sum_reg[0]_i_1_n_1 ;
  wire \sum_reg[0]_i_1_n_2 ;
  wire \sum_reg[0]_i_1_n_3 ;
  wire \sum_reg[0]_i_1_n_4 ;
  wire \sum_reg[0]_i_1_n_5 ;
  wire \sum_reg[0]_i_1_n_6 ;
  wire \sum_reg[0]_i_1_n_7 ;
  wire \sum_reg[12]_i_1_n_0 ;
  wire \sum_reg[12]_i_1_n_1 ;
  wire \sum_reg[12]_i_1_n_2 ;
  wire \sum_reg[12]_i_1_n_3 ;
  wire \sum_reg[12]_i_1_n_4 ;
  wire \sum_reg[12]_i_1_n_5 ;
  wire \sum_reg[12]_i_1_n_6 ;
  wire \sum_reg[12]_i_1_n_7 ;
  wire \sum_reg[16]_i_1_n_0 ;
  wire \sum_reg[16]_i_1_n_1 ;
  wire \sum_reg[16]_i_1_n_2 ;
  wire \sum_reg[16]_i_1_n_3 ;
  wire \sum_reg[16]_i_1_n_4 ;
  wire \sum_reg[16]_i_1_n_5 ;
  wire \sum_reg[16]_i_1_n_6 ;
  wire \sum_reg[16]_i_1_n_7 ;
  wire \sum_reg[20]_i_1_n_0 ;
  wire \sum_reg[20]_i_1_n_1 ;
  wire \sum_reg[20]_i_1_n_2 ;
  wire \sum_reg[20]_i_1_n_3 ;
  wire \sum_reg[20]_i_1_n_4 ;
  wire \sum_reg[20]_i_1_n_5 ;
  wire \sum_reg[20]_i_1_n_6 ;
  wire \sum_reg[20]_i_1_n_7 ;
  wire \sum_reg[24]_i_1_n_0 ;
  wire \sum_reg[24]_i_1_n_1 ;
  wire \sum_reg[24]_i_1_n_2 ;
  wire \sum_reg[24]_i_1_n_3 ;
  wire \sum_reg[24]_i_1_n_4 ;
  wire \sum_reg[24]_i_1_n_5 ;
  wire \sum_reg[24]_i_1_n_6 ;
  wire \sum_reg[24]_i_1_n_7 ;
  wire \sum_reg[28]_i_1_n_1 ;
  wire \sum_reg[28]_i_1_n_2 ;
  wire \sum_reg[28]_i_1_n_3 ;
  wire \sum_reg[28]_i_1_n_4 ;
  wire \sum_reg[28]_i_1_n_5 ;
  wire \sum_reg[28]_i_1_n_6 ;
  wire \sum_reg[28]_i_1_n_7 ;
  wire \sum_reg[4]_i_1_n_0 ;
  wire \sum_reg[4]_i_1_n_1 ;
  wire \sum_reg[4]_i_1_n_2 ;
  wire \sum_reg[4]_i_1_n_3 ;
  wire \sum_reg[4]_i_1_n_4 ;
  wire \sum_reg[4]_i_1_n_5 ;
  wire \sum_reg[4]_i_1_n_6 ;
  wire \sum_reg[4]_i_1_n_7 ;
  wire \sum_reg[8]_i_1_n_0 ;
  wire \sum_reg[8]_i_1_n_1 ;
  wire \sum_reg[8]_i_1_n_2 ;
  wire \sum_reg[8]_i_1_n_3 ;
  wire \sum_reg[8]_i_1_n_4 ;
  wire \sum_reg[8]_i_1_n_5 ;
  wire \sum_reg[8]_i_1_n_6 ;
  wire \sum_reg[8]_i_1_n_7 ;
  wire \v0[0]_i_2_n_0 ;
  wire \v0[0]_i_3_n_0 ;
  wire \v0[0]_i_4_n_0 ;
  wire \v0[0]_i_5_n_0 ;
  wire \v0[0]_i_6_n_0 ;
  wire \v0[0]_i_7_n_0 ;
  wire \v0[0]_i_8_n_0 ;
  wire \v0[0]_i_9_n_0 ;
  wire \v0[12]_i_2_n_0 ;
  wire \v0[12]_i_3_n_0 ;
  wire \v0[12]_i_4_n_0 ;
  wire \v0[12]_i_5_n_0 ;
  wire \v0[12]_i_6_n_0 ;
  wire \v0[12]_i_7_n_0 ;
  wire \v0[12]_i_8_n_0 ;
  wire \v0[12]_i_9_n_0 ;
  wire \v0[16]_i_2_n_0 ;
  wire \v0[16]_i_3_n_0 ;
  wire \v0[16]_i_4_n_0 ;
  wire \v0[16]_i_5_n_0 ;
  wire \v0[16]_i_6_n_0 ;
  wire \v0[16]_i_7_n_0 ;
  wire \v0[16]_i_8_n_0 ;
  wire \v0[16]_i_9_n_0 ;
  wire \v0[20]_i_2_n_0 ;
  wire \v0[20]_i_3_n_0 ;
  wire \v0[20]_i_4_n_0 ;
  wire \v0[20]_i_5_n_0 ;
  wire \v0[20]_i_6_n_0 ;
  wire \v0[20]_i_7_n_0 ;
  wire \v0[20]_i_8_n_0 ;
  wire \v0[20]_i_9_n_0 ;
  wire \v0[24]_i_2_n_0 ;
  wire \v0[24]_i_3_n_0 ;
  wire \v0[24]_i_4_n_0 ;
  wire \v0[24]_i_5_n_0 ;
  wire \v0[24]_i_6_n_0 ;
  wire \v0[24]_i_7_n_0 ;
  wire \v0[24]_i_8_n_0 ;
  wire \v0[24]_i_9_n_0 ;
  wire \v0[28]_i_2_n_0 ;
  wire \v0[28]_i_3_n_0 ;
  wire \v0[28]_i_4_n_0 ;
  wire \v0[28]_i_5_n_0 ;
  wire \v0[28]_i_6_n_0 ;
  wire \v0[28]_i_7_n_0 ;
  wire \v0[28]_i_8_n_0 ;
  wire \v0[4]_i_2_n_0 ;
  wire \v0[4]_i_3_n_0 ;
  wire \v0[4]_i_4_n_0 ;
  wire \v0[4]_i_5_n_0 ;
  wire \v0[4]_i_6_n_0 ;
  wire \v0[4]_i_7_n_0 ;
  wire \v0[4]_i_8_n_0 ;
  wire \v0[4]_i_9_n_0 ;
  wire \v0[8]_i_2_n_0 ;
  wire \v0[8]_i_3_n_0 ;
  wire \v0[8]_i_4_n_0 ;
  wire \v0[8]_i_5_n_0 ;
  wire \v0[8]_i_6_n_0 ;
  wire \v0[8]_i_7_n_0 ;
  wire \v0[8]_i_8_n_0 ;
  wire \v0[8]_i_9_n_0 ;
  wire [31:0]v0_next;
  wire [31:0]v0_next1;
  wire [31:0]v0_next23_out;
  wire [31:3]v0_next24_out;
  wire v0_next2__93_carry__0_i_1_n_0;
  wire v0_next2__93_carry__0_i_2_n_0;
  wire v0_next2__93_carry__0_i_3_n_0;
  wire v0_next2__93_carry__0_i_4_n_0;
  wire v0_next2__93_carry__0_n_0;
  wire v0_next2__93_carry__0_n_1;
  wire v0_next2__93_carry__0_n_2;
  wire v0_next2__93_carry__0_n_3;
  wire v0_next2__93_carry__1_i_1_n_0;
  wire v0_next2__93_carry__1_i_2_n_0;
  wire v0_next2__93_carry__1_i_3_n_0;
  wire v0_next2__93_carry__1_i_4_n_0;
  wire v0_next2__93_carry__1_n_0;
  wire v0_next2__93_carry__1_n_1;
  wire v0_next2__93_carry__1_n_2;
  wire v0_next2__93_carry__1_n_3;
  wire v0_next2__93_carry__2_i_1_n_0;
  wire v0_next2__93_carry__2_i_2_n_0;
  wire v0_next2__93_carry__2_i_3_n_0;
  wire v0_next2__93_carry__2_i_4_n_0;
  wire v0_next2__93_carry__2_n_0;
  wire v0_next2__93_carry__2_n_1;
  wire v0_next2__93_carry__2_n_2;
  wire v0_next2__93_carry__2_n_3;
  wire v0_next2__93_carry__3_i_1_n_0;
  wire v0_next2__93_carry__3_i_2_n_0;
  wire v0_next2__93_carry__3_i_3_n_0;
  wire v0_next2__93_carry__3_i_4_n_0;
  wire v0_next2__93_carry__3_n_0;
  wire v0_next2__93_carry__3_n_1;
  wire v0_next2__93_carry__3_n_2;
  wire v0_next2__93_carry__3_n_3;
  wire v0_next2__93_carry__4_i_1_n_0;
  wire v0_next2__93_carry__4_i_2_n_0;
  wire v0_next2__93_carry__4_i_3_n_0;
  wire v0_next2__93_carry__4_i_4_n_0;
  wire v0_next2__93_carry__4_n_0;
  wire v0_next2__93_carry__4_n_1;
  wire v0_next2__93_carry__4_n_2;
  wire v0_next2__93_carry__4_n_3;
  wire v0_next2__93_carry__5_i_1_n_0;
  wire v0_next2__93_carry__5_i_2_n_0;
  wire v0_next2__93_carry__5_i_3_n_0;
  wire v0_next2__93_carry__5_i_4_n_0;
  wire v0_next2__93_carry__5_n_0;
  wire v0_next2__93_carry__5_n_1;
  wire v0_next2__93_carry__5_n_2;
  wire v0_next2__93_carry__5_n_3;
  wire v0_next2__93_carry__6_i_1_n_0;
  wire v0_next2__93_carry_i_1_n_0;
  wire v0_next2__93_carry_i_2_n_0;
  wire v0_next2__93_carry_i_3_n_0;
  wire v0_next2__93_carry_n_0;
  wire v0_next2__93_carry_n_1;
  wire v0_next2__93_carry_n_2;
  wire v0_next2__93_carry_n_3;
  wire v0_next2_carry__0_i_1_n_0;
  wire v0_next2_carry__0_i_2_n_0;
  wire v0_next2_carry__0_i_3_n_0;
  wire v0_next2_carry__0_i_4_n_0;
  wire v0_next2_carry__0_n_0;
  wire v0_next2_carry__0_n_1;
  wire v0_next2_carry__0_n_2;
  wire v0_next2_carry__0_n_3;
  wire v0_next2_carry__1_i_1_n_0;
  wire v0_next2_carry__1_i_2_n_0;
  wire v0_next2_carry__1_i_3_n_0;
  wire v0_next2_carry__1_i_4_n_0;
  wire v0_next2_carry__1_n_0;
  wire v0_next2_carry__1_n_1;
  wire v0_next2_carry__1_n_2;
  wire v0_next2_carry__1_n_3;
  wire v0_next2_carry__2_i_1_n_0;
  wire v0_next2_carry__2_i_2_n_0;
  wire v0_next2_carry__2_i_3_n_0;
  wire v0_next2_carry__2_i_4_n_0;
  wire v0_next2_carry__2_n_0;
  wire v0_next2_carry__2_n_1;
  wire v0_next2_carry__2_n_2;
  wire v0_next2_carry__2_n_3;
  wire v0_next2_carry__3_i_1_n_0;
  wire v0_next2_carry__3_i_2_n_0;
  wire v0_next2_carry__3_i_3_n_0;
  wire v0_next2_carry__3_i_4_n_0;
  wire v0_next2_carry__3_n_0;
  wire v0_next2_carry__3_n_1;
  wire v0_next2_carry__3_n_2;
  wire v0_next2_carry__3_n_3;
  wire v0_next2_carry__4_i_1_n_0;
  wire v0_next2_carry__4_i_2_n_0;
  wire v0_next2_carry__4_i_3_n_0;
  wire v0_next2_carry__4_i_4_n_0;
  wire v0_next2_carry__4_n_0;
  wire v0_next2_carry__4_n_1;
  wire v0_next2_carry__4_n_2;
  wire v0_next2_carry__4_n_3;
  wire v0_next2_carry__5_i_1_n_0;
  wire v0_next2_carry__5_i_2_n_0;
  wire v0_next2_carry__5_i_3_n_0;
  wire v0_next2_carry__5_i_4_n_0;
  wire v0_next2_carry__5_n_0;
  wire v0_next2_carry__5_n_1;
  wire v0_next2_carry__5_n_2;
  wire v0_next2_carry__5_n_3;
  wire v0_next2_carry__6_i_1_n_0;
  wire v0_next2_carry__6_i_2_n_0;
  wire v0_next2_carry__6_i_3_n_0;
  wire v0_next2_carry__6_i_4_n_0;
  wire v0_next2_carry__6_n_1;
  wire v0_next2_carry__6_n_2;
  wire v0_next2_carry__6_n_3;
  wire v0_next2_carry_i_1_n_0;
  wire v0_next2_carry_i_2_n_0;
  wire v0_next2_carry_i_3_n_0;
  wire v0_next2_carry_i_4_n_0;
  wire v0_next2_carry_n_0;
  wire v0_next2_carry_n_1;
  wire v0_next2_carry_n_2;
  wire v0_next2_carry_n_3;
  wire v0_next_carry__0_i_1_n_0;
  wire v0_next_carry__0_i_2_n_0;
  wire v0_next_carry__0_i_3_n_0;
  wire v0_next_carry__0_i_4_n_0;
  wire v0_next_carry__0_i_5_n_0;
  wire v0_next_carry__0_i_5_n_1;
  wire v0_next_carry__0_i_5_n_2;
  wire v0_next_carry__0_i_5_n_3;
  wire v0_next_carry__0_i_6_n_0;
  wire v0_next_carry__0_i_7_n_0;
  wire v0_next_carry__0_i_8_n_0;
  wire v0_next_carry__0_i_9_n_0;
  wire v0_next_carry__0_n_0;
  wire v0_next_carry__0_n_1;
  wire v0_next_carry__0_n_2;
  wire v0_next_carry__0_n_3;
  wire v0_next_carry__1_i_1_n_0;
  wire v0_next_carry__1_i_2_n_0;
  wire v0_next_carry__1_i_3_n_0;
  wire v0_next_carry__1_i_4_n_0;
  wire v0_next_carry__1_i_5_n_0;
  wire v0_next_carry__1_i_5_n_1;
  wire v0_next_carry__1_i_5_n_2;
  wire v0_next_carry__1_i_5_n_3;
  wire v0_next_carry__1_i_6_n_0;
  wire v0_next_carry__1_i_7_n_0;
  wire v0_next_carry__1_i_8_n_0;
  wire v0_next_carry__1_i_9_n_0;
  wire v0_next_carry__1_n_0;
  wire v0_next_carry__1_n_1;
  wire v0_next_carry__1_n_2;
  wire v0_next_carry__1_n_3;
  wire v0_next_carry__2_i_1_n_0;
  wire v0_next_carry__2_i_2_n_0;
  wire v0_next_carry__2_i_3_n_0;
  wire v0_next_carry__2_i_4_n_0;
  wire v0_next_carry__2_i_5_n_0;
  wire v0_next_carry__2_i_5_n_1;
  wire v0_next_carry__2_i_5_n_2;
  wire v0_next_carry__2_i_5_n_3;
  wire v0_next_carry__2_i_6_n_0;
  wire v0_next_carry__2_i_7_n_0;
  wire v0_next_carry__2_i_8_n_0;
  wire v0_next_carry__2_i_9_n_0;
  wire v0_next_carry__2_n_0;
  wire v0_next_carry__2_n_1;
  wire v0_next_carry__2_n_2;
  wire v0_next_carry__2_n_3;
  wire v0_next_carry__3_i_1_n_0;
  wire v0_next_carry__3_i_2_n_0;
  wire v0_next_carry__3_i_3_n_0;
  wire v0_next_carry__3_i_4_n_0;
  wire v0_next_carry__3_i_5_n_0;
  wire v0_next_carry__3_i_5_n_1;
  wire v0_next_carry__3_i_5_n_2;
  wire v0_next_carry__3_i_5_n_3;
  wire v0_next_carry__3_i_6_n_0;
  wire v0_next_carry__3_i_7_n_0;
  wire v0_next_carry__3_i_8_n_0;
  wire v0_next_carry__3_i_9_n_0;
  wire v0_next_carry__3_n_0;
  wire v0_next_carry__3_n_1;
  wire v0_next_carry__3_n_2;
  wire v0_next_carry__3_n_3;
  wire v0_next_carry__4_i_1_n_0;
  wire v0_next_carry__4_i_2_n_0;
  wire v0_next_carry__4_i_3_n_0;
  wire v0_next_carry__4_i_4_n_0;
  wire v0_next_carry__4_i_5_n_0;
  wire v0_next_carry__4_i_5_n_1;
  wire v0_next_carry__4_i_5_n_2;
  wire v0_next_carry__4_i_5_n_3;
  wire v0_next_carry__4_i_6_n_0;
  wire v0_next_carry__4_i_7_n_0;
  wire v0_next_carry__4_i_8_n_0;
  wire v0_next_carry__4_i_9_n_0;
  wire v0_next_carry__4_n_0;
  wire v0_next_carry__4_n_1;
  wire v0_next_carry__4_n_2;
  wire v0_next_carry__4_n_3;
  wire v0_next_carry__5_i_1_n_0;
  wire v0_next_carry__5_i_2_n_0;
  wire v0_next_carry__5_i_3_n_0;
  wire v0_next_carry__5_i_4_n_0;
  wire v0_next_carry__5_i_5_n_0;
  wire v0_next_carry__5_i_5_n_1;
  wire v0_next_carry__5_i_5_n_2;
  wire v0_next_carry__5_i_5_n_3;
  wire v0_next_carry__5_i_6_n_0;
  wire v0_next_carry__5_i_7_n_0;
  wire v0_next_carry__5_i_8_n_0;
  wire v0_next_carry__5_n_0;
  wire v0_next_carry__5_n_1;
  wire v0_next_carry__5_n_2;
  wire v0_next_carry__5_n_3;
  wire v0_next_carry__6_i_1_n_0;
  wire v0_next_carry__6_i_2_n_0;
  wire v0_next_carry__6_i_3_n_0;
  wire v0_next_carry__6_i_4_n_0;
  wire v0_next_carry__6_i_5_n_1;
  wire v0_next_carry__6_i_5_n_2;
  wire v0_next_carry__6_i_5_n_3;
  wire v0_next_carry__6_n_1;
  wire v0_next_carry__6_n_2;
  wire v0_next_carry__6_n_3;
  wire v0_next_carry_i_1_n_0;
  wire v0_next_carry_i_2_n_0;
  wire v0_next_carry_i_3_n_0;
  wire v0_next_carry_i_4_n_0;
  wire v0_next_carry_i_5_n_0;
  wire v0_next_carry_i_5_n_1;
  wire v0_next_carry_i_5_n_2;
  wire v0_next_carry_i_5_n_3;
  wire v0_next_carry_i_6_n_0;
  wire v0_next_carry_i_7_n_0;
  wire v0_next_carry_i_8_n_0;
  wire v0_next_carry_i_9_n_0;
  wire v0_next_carry_n_0;
  wire v0_next_carry_n_1;
  wire v0_next_carry_n_2;
  wire v0_next_carry_n_3;
  wire [31:0]v0_reg;
  wire \v0_reg[0]_i_1_n_0 ;
  wire \v0_reg[0]_i_1_n_1 ;
  wire \v0_reg[0]_i_1_n_2 ;
  wire \v0_reg[0]_i_1_n_3 ;
  wire \v0_reg[0]_i_1_n_4 ;
  wire \v0_reg[0]_i_1_n_5 ;
  wire \v0_reg[0]_i_1_n_6 ;
  wire \v0_reg[0]_i_1_n_7 ;
  wire \v0_reg[12]_i_1_n_0 ;
  wire \v0_reg[12]_i_1_n_1 ;
  wire \v0_reg[12]_i_1_n_2 ;
  wire \v0_reg[12]_i_1_n_3 ;
  wire \v0_reg[12]_i_1_n_4 ;
  wire \v0_reg[12]_i_1_n_5 ;
  wire \v0_reg[12]_i_1_n_6 ;
  wire \v0_reg[12]_i_1_n_7 ;
  wire \v0_reg[16]_i_1_n_0 ;
  wire \v0_reg[16]_i_1_n_1 ;
  wire \v0_reg[16]_i_1_n_2 ;
  wire \v0_reg[16]_i_1_n_3 ;
  wire \v0_reg[16]_i_1_n_4 ;
  wire \v0_reg[16]_i_1_n_5 ;
  wire \v0_reg[16]_i_1_n_6 ;
  wire \v0_reg[16]_i_1_n_7 ;
  wire \v0_reg[20]_i_1_n_0 ;
  wire \v0_reg[20]_i_1_n_1 ;
  wire \v0_reg[20]_i_1_n_2 ;
  wire \v0_reg[20]_i_1_n_3 ;
  wire \v0_reg[20]_i_1_n_4 ;
  wire \v0_reg[20]_i_1_n_5 ;
  wire \v0_reg[20]_i_1_n_6 ;
  wire \v0_reg[20]_i_1_n_7 ;
  wire \v0_reg[24]_i_1_n_0 ;
  wire \v0_reg[24]_i_1_n_1 ;
  wire \v0_reg[24]_i_1_n_2 ;
  wire \v0_reg[24]_i_1_n_3 ;
  wire \v0_reg[24]_i_1_n_4 ;
  wire \v0_reg[24]_i_1_n_5 ;
  wire \v0_reg[24]_i_1_n_6 ;
  wire \v0_reg[24]_i_1_n_7 ;
  wire \v0_reg[28]_i_1_n_1 ;
  wire \v0_reg[28]_i_1_n_2 ;
  wire \v0_reg[28]_i_1_n_3 ;
  wire \v0_reg[28]_i_1_n_4 ;
  wire \v0_reg[28]_i_1_n_5 ;
  wire \v0_reg[28]_i_1_n_6 ;
  wire \v0_reg[28]_i_1_n_7 ;
  wire \v0_reg[4]_i_1_n_0 ;
  wire \v0_reg[4]_i_1_n_1 ;
  wire \v0_reg[4]_i_1_n_2 ;
  wire \v0_reg[4]_i_1_n_3 ;
  wire \v0_reg[4]_i_1_n_4 ;
  wire \v0_reg[4]_i_1_n_5 ;
  wire \v0_reg[4]_i_1_n_6 ;
  wire \v0_reg[4]_i_1_n_7 ;
  wire \v0_reg[8]_i_1_n_0 ;
  wire \v0_reg[8]_i_1_n_1 ;
  wire \v0_reg[8]_i_1_n_2 ;
  wire \v0_reg[8]_i_1_n_3 ;
  wire \v0_reg[8]_i_1_n_4 ;
  wire \v0_reg[8]_i_1_n_5 ;
  wire \v0_reg[8]_i_1_n_6 ;
  wire \v0_reg[8]_i_1_n_7 ;
  wire \v1[0]_i_2_n_0 ;
  wire \v1[0]_i_3_n_0 ;
  wire \v1[0]_i_4_n_0 ;
  wire \v1[0]_i_5_n_0 ;
  wire \v1[0]_i_6_n_0 ;
  wire \v1[0]_i_7_n_0 ;
  wire \v1[0]_i_8_n_0 ;
  wire \v1[0]_i_9_n_0 ;
  wire \v1[12]_i_2_n_0 ;
  wire \v1[12]_i_3_n_0 ;
  wire \v1[12]_i_4_n_0 ;
  wire \v1[12]_i_5_n_0 ;
  wire \v1[12]_i_6_n_0 ;
  wire \v1[12]_i_7_n_0 ;
  wire \v1[12]_i_8_n_0 ;
  wire \v1[12]_i_9_n_0 ;
  wire \v1[16]_i_2_n_0 ;
  wire \v1[16]_i_3_n_0 ;
  wire \v1[16]_i_4_n_0 ;
  wire \v1[16]_i_5_n_0 ;
  wire \v1[16]_i_6_n_0 ;
  wire \v1[16]_i_7_n_0 ;
  wire \v1[16]_i_8_n_0 ;
  wire \v1[16]_i_9_n_0 ;
  wire \v1[20]_i_2_n_0 ;
  wire \v1[20]_i_3_n_0 ;
  wire \v1[20]_i_4_n_0 ;
  wire \v1[20]_i_5_n_0 ;
  wire \v1[20]_i_6_n_0 ;
  wire \v1[20]_i_7_n_0 ;
  wire \v1[20]_i_8_n_0 ;
  wire \v1[20]_i_9_n_0 ;
  wire \v1[24]_i_2_n_0 ;
  wire \v1[24]_i_3_n_0 ;
  wire \v1[24]_i_4_n_0 ;
  wire \v1[24]_i_5_n_0 ;
  wire \v1[24]_i_6_n_0 ;
  wire \v1[24]_i_7_n_0 ;
  wire \v1[24]_i_8_n_0 ;
  wire \v1[24]_i_9_n_0 ;
  wire \v1[28]_i_2_n_0 ;
  wire \v1[28]_i_3_n_0 ;
  wire \v1[28]_i_4_n_0 ;
  wire \v1[28]_i_5_n_0 ;
  wire \v1[28]_i_6_n_0 ;
  wire \v1[28]_i_7_n_0 ;
  wire \v1[28]_i_8_n_0 ;
  wire \v1[4]_i_2_n_0 ;
  wire \v1[4]_i_3_n_0 ;
  wire \v1[4]_i_4_n_0 ;
  wire \v1[4]_i_5_n_0 ;
  wire \v1[4]_i_6_n_0 ;
  wire \v1[4]_i_7_n_0 ;
  wire \v1[4]_i_8_n_0 ;
  wire \v1[4]_i_9_n_0 ;
  wire \v1[8]_i_2_n_0 ;
  wire \v1[8]_i_3_n_0 ;
  wire \v1[8]_i_4_n_0 ;
  wire \v1[8]_i_5_n_0 ;
  wire \v1[8]_i_6_n_0 ;
  wire \v1[8]_i_7_n_0 ;
  wire \v1[8]_i_8_n_0 ;
  wire \v1[8]_i_9_n_0 ;
  wire [31:0]v1_next;
  wire [31:0]v1_next1;
  wire [31:0]v1_next21_out;
  wire [31:3]v1_next22_out;
  wire v1_next2__93_carry__0_i_1_n_0;
  wire v1_next2__93_carry__0_i_2_n_0;
  wire v1_next2__93_carry__0_i_3_n_0;
  wire v1_next2__93_carry__0_i_4_n_0;
  wire v1_next2__93_carry__0_n_0;
  wire v1_next2__93_carry__0_n_1;
  wire v1_next2__93_carry__0_n_2;
  wire v1_next2__93_carry__0_n_3;
  wire v1_next2__93_carry__1_i_1_n_0;
  wire v1_next2__93_carry__1_i_2_n_0;
  wire v1_next2__93_carry__1_i_3_n_0;
  wire v1_next2__93_carry__1_i_4_n_0;
  wire v1_next2__93_carry__1_n_0;
  wire v1_next2__93_carry__1_n_1;
  wire v1_next2__93_carry__1_n_2;
  wire v1_next2__93_carry__1_n_3;
  wire v1_next2__93_carry__2_i_1_n_0;
  wire v1_next2__93_carry__2_i_2_n_0;
  wire v1_next2__93_carry__2_i_3_n_0;
  wire v1_next2__93_carry__2_i_4_n_0;
  wire v1_next2__93_carry__2_n_0;
  wire v1_next2__93_carry__2_n_1;
  wire v1_next2__93_carry__2_n_2;
  wire v1_next2__93_carry__2_n_3;
  wire v1_next2__93_carry__3_i_1_n_0;
  wire v1_next2__93_carry__3_i_2_n_0;
  wire v1_next2__93_carry__3_i_3_n_0;
  wire v1_next2__93_carry__3_i_4_n_0;
  wire v1_next2__93_carry__3_n_0;
  wire v1_next2__93_carry__3_n_1;
  wire v1_next2__93_carry__3_n_2;
  wire v1_next2__93_carry__3_n_3;
  wire v1_next2__93_carry__4_i_1_n_0;
  wire v1_next2__93_carry__4_i_2_n_0;
  wire v1_next2__93_carry__4_i_3_n_0;
  wire v1_next2__93_carry__4_i_4_n_0;
  wire v1_next2__93_carry__4_n_0;
  wire v1_next2__93_carry__4_n_1;
  wire v1_next2__93_carry__4_n_2;
  wire v1_next2__93_carry__4_n_3;
  wire v1_next2__93_carry__5_i_1_n_0;
  wire v1_next2__93_carry__5_i_2_n_0;
  wire v1_next2__93_carry__5_i_3_n_0;
  wire v1_next2__93_carry__5_i_4_n_0;
  wire v1_next2__93_carry__5_n_0;
  wire v1_next2__93_carry__5_n_1;
  wire v1_next2__93_carry__5_n_2;
  wire v1_next2__93_carry__5_n_3;
  wire v1_next2__93_carry__6_i_1_n_0;
  wire v1_next2__93_carry_i_1_n_0;
  wire v1_next2__93_carry_i_2_n_0;
  wire v1_next2__93_carry_i_3_n_0;
  wire v1_next2__93_carry_n_0;
  wire v1_next2__93_carry_n_1;
  wire v1_next2__93_carry_n_2;
  wire v1_next2__93_carry_n_3;
  wire v1_next2_carry__0_i_1_n_0;
  wire v1_next2_carry__0_i_2_n_0;
  wire v1_next2_carry__0_i_3_n_0;
  wire v1_next2_carry__0_i_4_n_0;
  wire v1_next2_carry__0_n_0;
  wire v1_next2_carry__0_n_1;
  wire v1_next2_carry__0_n_2;
  wire v1_next2_carry__0_n_3;
  wire v1_next2_carry__1_i_1_n_0;
  wire v1_next2_carry__1_i_2_n_0;
  wire v1_next2_carry__1_i_3_n_0;
  wire v1_next2_carry__1_i_4_n_0;
  wire v1_next2_carry__1_n_0;
  wire v1_next2_carry__1_n_1;
  wire v1_next2_carry__1_n_2;
  wire v1_next2_carry__1_n_3;
  wire v1_next2_carry__2_i_1_n_0;
  wire v1_next2_carry__2_i_2_n_0;
  wire v1_next2_carry__2_i_3_n_0;
  wire v1_next2_carry__2_i_4_n_0;
  wire v1_next2_carry__2_n_0;
  wire v1_next2_carry__2_n_1;
  wire v1_next2_carry__2_n_2;
  wire v1_next2_carry__2_n_3;
  wire v1_next2_carry__3_i_1_n_0;
  wire v1_next2_carry__3_i_2_n_0;
  wire v1_next2_carry__3_i_3_n_0;
  wire v1_next2_carry__3_i_4_n_0;
  wire v1_next2_carry__3_n_0;
  wire v1_next2_carry__3_n_1;
  wire v1_next2_carry__3_n_2;
  wire v1_next2_carry__3_n_3;
  wire v1_next2_carry__4_i_1_n_0;
  wire v1_next2_carry__4_i_2_n_0;
  wire v1_next2_carry__4_i_3_n_0;
  wire v1_next2_carry__4_i_4_n_0;
  wire v1_next2_carry__4_n_0;
  wire v1_next2_carry__4_n_1;
  wire v1_next2_carry__4_n_2;
  wire v1_next2_carry__4_n_3;
  wire v1_next2_carry__5_i_1_n_0;
  wire v1_next2_carry__5_i_2_n_0;
  wire v1_next2_carry__5_i_3_n_0;
  wire v1_next2_carry__5_i_4_n_0;
  wire v1_next2_carry__5_n_0;
  wire v1_next2_carry__5_n_1;
  wire v1_next2_carry__5_n_2;
  wire v1_next2_carry__5_n_3;
  wire v1_next2_carry__6_i_1_n_0;
  wire v1_next2_carry__6_i_2_n_0;
  wire v1_next2_carry__6_i_3_n_0;
  wire v1_next2_carry__6_i_4_n_0;
  wire v1_next2_carry__6_n_1;
  wire v1_next2_carry__6_n_2;
  wire v1_next2_carry__6_n_3;
  wire v1_next2_carry_i_1_n_0;
  wire v1_next2_carry_i_2_n_0;
  wire v1_next2_carry_i_3_n_0;
  wire v1_next2_carry_i_4_n_0;
  wire v1_next2_carry_n_0;
  wire v1_next2_carry_n_1;
  wire v1_next2_carry_n_2;
  wire v1_next2_carry_n_3;
  wire v1_next_carry__0_i_1_n_0;
  wire v1_next_carry__0_i_2_n_0;
  wire v1_next_carry__0_i_3_n_0;
  wire v1_next_carry__0_i_4_n_0;
  wire v1_next_carry__0_i_5_n_0;
  wire v1_next_carry__0_i_5_n_1;
  wire v1_next_carry__0_i_5_n_2;
  wire v1_next_carry__0_i_5_n_3;
  wire v1_next_carry__0_i_6_n_0;
  wire v1_next_carry__0_i_7_n_0;
  wire v1_next_carry__0_i_8_n_0;
  wire v1_next_carry__0_i_9_n_0;
  wire v1_next_carry__0_n_0;
  wire v1_next_carry__0_n_1;
  wire v1_next_carry__0_n_2;
  wire v1_next_carry__0_n_3;
  wire v1_next_carry__1_i_1_n_0;
  wire v1_next_carry__1_i_2_n_0;
  wire v1_next_carry__1_i_3_n_0;
  wire v1_next_carry__1_i_4_n_0;
  wire v1_next_carry__1_i_5_n_0;
  wire v1_next_carry__1_i_5_n_1;
  wire v1_next_carry__1_i_5_n_2;
  wire v1_next_carry__1_i_5_n_3;
  wire v1_next_carry__1_i_6_n_0;
  wire v1_next_carry__1_i_7_n_0;
  wire v1_next_carry__1_i_8_n_0;
  wire v1_next_carry__1_i_9_n_0;
  wire v1_next_carry__1_n_0;
  wire v1_next_carry__1_n_1;
  wire v1_next_carry__1_n_2;
  wire v1_next_carry__1_n_3;
  wire v1_next_carry__2_i_1_n_0;
  wire v1_next_carry__2_i_2_n_0;
  wire v1_next_carry__2_i_3_n_0;
  wire v1_next_carry__2_i_4_n_0;
  wire v1_next_carry__2_i_5_n_0;
  wire v1_next_carry__2_i_5_n_1;
  wire v1_next_carry__2_i_5_n_2;
  wire v1_next_carry__2_i_5_n_3;
  wire v1_next_carry__2_i_6_n_0;
  wire v1_next_carry__2_i_7_n_0;
  wire v1_next_carry__2_i_8_n_0;
  wire v1_next_carry__2_i_9_n_0;
  wire v1_next_carry__2_n_0;
  wire v1_next_carry__2_n_1;
  wire v1_next_carry__2_n_2;
  wire v1_next_carry__2_n_3;
  wire v1_next_carry__3_i_1_n_0;
  wire v1_next_carry__3_i_2_n_0;
  wire v1_next_carry__3_i_3_n_0;
  wire v1_next_carry__3_i_4_n_0;
  wire v1_next_carry__3_i_5_n_0;
  wire v1_next_carry__3_i_5_n_1;
  wire v1_next_carry__3_i_5_n_2;
  wire v1_next_carry__3_i_5_n_3;
  wire v1_next_carry__3_i_6_n_0;
  wire v1_next_carry__3_i_7_n_0;
  wire v1_next_carry__3_i_8_n_0;
  wire v1_next_carry__3_i_9_n_0;
  wire v1_next_carry__3_n_0;
  wire v1_next_carry__3_n_1;
  wire v1_next_carry__3_n_2;
  wire v1_next_carry__3_n_3;
  wire v1_next_carry__4_i_1_n_0;
  wire v1_next_carry__4_i_2_n_0;
  wire v1_next_carry__4_i_3_n_0;
  wire v1_next_carry__4_i_4_n_0;
  wire v1_next_carry__4_i_5_n_0;
  wire v1_next_carry__4_i_5_n_1;
  wire v1_next_carry__4_i_5_n_2;
  wire v1_next_carry__4_i_5_n_3;
  wire v1_next_carry__4_i_6_n_0;
  wire v1_next_carry__4_i_7_n_0;
  wire v1_next_carry__4_i_8_n_0;
  wire v1_next_carry__4_i_9_n_0;
  wire v1_next_carry__4_n_0;
  wire v1_next_carry__4_n_1;
  wire v1_next_carry__4_n_2;
  wire v1_next_carry__4_n_3;
  wire v1_next_carry__5_i_1_n_0;
  wire v1_next_carry__5_i_2_n_0;
  wire v1_next_carry__5_i_3_n_0;
  wire v1_next_carry__5_i_4_n_0;
  wire v1_next_carry__5_i_5_n_0;
  wire v1_next_carry__5_i_5_n_1;
  wire v1_next_carry__5_i_5_n_2;
  wire v1_next_carry__5_i_5_n_3;
  wire v1_next_carry__5_i_6_n_0;
  wire v1_next_carry__5_i_7_n_0;
  wire v1_next_carry__5_i_8_n_0;
  wire v1_next_carry__5_n_0;
  wire v1_next_carry__5_n_1;
  wire v1_next_carry__5_n_2;
  wire v1_next_carry__5_n_3;
  wire v1_next_carry__6_i_1_n_0;
  wire v1_next_carry__6_i_2_n_0;
  wire v1_next_carry__6_i_3_n_0;
  wire v1_next_carry__6_i_4_n_0;
  wire v1_next_carry__6_i_5_n_1;
  wire v1_next_carry__6_i_5_n_2;
  wire v1_next_carry__6_i_5_n_3;
  wire v1_next_carry__6_n_1;
  wire v1_next_carry__6_n_2;
  wire v1_next_carry__6_n_3;
  wire v1_next_carry_i_1_n_0;
  wire v1_next_carry_i_2_n_0;
  wire v1_next_carry_i_3_n_0;
  wire v1_next_carry_i_4_n_0;
  wire v1_next_carry_i_5_n_0;
  wire v1_next_carry_i_5_n_1;
  wire v1_next_carry_i_5_n_2;
  wire v1_next_carry_i_5_n_3;
  wire v1_next_carry_i_6_n_0;
  wire v1_next_carry_i_7_n_0;
  wire v1_next_carry_i_8_n_0;
  wire v1_next_carry_i_9_n_0;
  wire v1_next_carry_n_0;
  wire v1_next_carry_n_1;
  wire v1_next_carry_n_2;
  wire v1_next_carry_n_3;
  wire [31:0]v1_reg;
  wire \v1_reg[0]_i_1_n_0 ;
  wire \v1_reg[0]_i_1_n_1 ;
  wire \v1_reg[0]_i_1_n_2 ;
  wire \v1_reg[0]_i_1_n_3 ;
  wire \v1_reg[0]_i_1_n_4 ;
  wire \v1_reg[0]_i_1_n_5 ;
  wire \v1_reg[0]_i_1_n_6 ;
  wire \v1_reg[0]_i_1_n_7 ;
  wire \v1_reg[12]_i_1_n_0 ;
  wire \v1_reg[12]_i_1_n_1 ;
  wire \v1_reg[12]_i_1_n_2 ;
  wire \v1_reg[12]_i_1_n_3 ;
  wire \v1_reg[12]_i_1_n_4 ;
  wire \v1_reg[12]_i_1_n_5 ;
  wire \v1_reg[12]_i_1_n_6 ;
  wire \v1_reg[12]_i_1_n_7 ;
  wire \v1_reg[16]_i_1_n_0 ;
  wire \v1_reg[16]_i_1_n_1 ;
  wire \v1_reg[16]_i_1_n_2 ;
  wire \v1_reg[16]_i_1_n_3 ;
  wire \v1_reg[16]_i_1_n_4 ;
  wire \v1_reg[16]_i_1_n_5 ;
  wire \v1_reg[16]_i_1_n_6 ;
  wire \v1_reg[16]_i_1_n_7 ;
  wire \v1_reg[20]_i_1_n_0 ;
  wire \v1_reg[20]_i_1_n_1 ;
  wire \v1_reg[20]_i_1_n_2 ;
  wire \v1_reg[20]_i_1_n_3 ;
  wire \v1_reg[20]_i_1_n_4 ;
  wire \v1_reg[20]_i_1_n_5 ;
  wire \v1_reg[20]_i_1_n_6 ;
  wire \v1_reg[20]_i_1_n_7 ;
  wire \v1_reg[24]_i_1_n_0 ;
  wire \v1_reg[24]_i_1_n_1 ;
  wire \v1_reg[24]_i_1_n_2 ;
  wire \v1_reg[24]_i_1_n_3 ;
  wire \v1_reg[24]_i_1_n_4 ;
  wire \v1_reg[24]_i_1_n_5 ;
  wire \v1_reg[24]_i_1_n_6 ;
  wire \v1_reg[24]_i_1_n_7 ;
  wire \v1_reg[28]_i_1_n_1 ;
  wire \v1_reg[28]_i_1_n_2 ;
  wire \v1_reg[28]_i_1_n_3 ;
  wire \v1_reg[28]_i_1_n_4 ;
  wire \v1_reg[28]_i_1_n_5 ;
  wire \v1_reg[28]_i_1_n_6 ;
  wire \v1_reg[28]_i_1_n_7 ;
  wire \v1_reg[4]_i_1_n_0 ;
  wire \v1_reg[4]_i_1_n_1 ;
  wire \v1_reg[4]_i_1_n_2 ;
  wire \v1_reg[4]_i_1_n_3 ;
  wire \v1_reg[4]_i_1_n_4 ;
  wire \v1_reg[4]_i_1_n_5 ;
  wire \v1_reg[4]_i_1_n_6 ;
  wire \v1_reg[4]_i_1_n_7 ;
  wire \v1_reg[8]_i_1_n_0 ;
  wire \v1_reg[8]_i_1_n_1 ;
  wire \v1_reg[8]_i_1_n_2 ;
  wire \v1_reg[8]_i_1_n_3 ;
  wire \v1_reg[8]_i_1_n_4 ;
  wire \v1_reg[8]_i_1_n_5 ;
  wire \v1_reg[8]_i_1_n_6 ;
  wire \v1_reg[8]_i_1_n_7 ;
  wire [3:2]NLW_sum_next_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_sum_next_carry__6_O_UNCONNECTED;
  wire [3:3]\NLW_sum_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_v0_next2__93_carry__6_CO_UNCONNECTED;
  wire [3:1]NLW_v0_next2__93_carry__6_O_UNCONNECTED;
  wire [3:3]NLW_v0_next2_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_v0_next_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_v0_next_carry__6_i_5_CO_UNCONNECTED;
  wire [3:3]\NLW_v0_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_v1_next2__93_carry__6_CO_UNCONNECTED;
  wire [3:1]NLW_v1_next2__93_carry__6_O_UNCONNECTED;
  wire [3:3]NLW_v1_next2_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_v1_next_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_v1_next_carry__6_i_5_CO_UNCONNECTED;
  wire [3:3]\NLW_v1_reg[28]_i_1_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h08AA0808)) 
    \S_RDATA[0]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[0]_INST_0_i_1_n_0 ),
        .I2(\S_RDATA[0]_INST_0_i_2_n_0 ),
        .I3(read_addr[3]),
        .I4(S_RDATA5[0]),
        .O(S_RDATA[0]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \S_RDATA[0]_INST_0_i_1 
       (.I0(\data_out_reg_n_0_[0] ),
        .I1(read_addr[0]),
        .I2(data2[0]),
        .I3(read_addr[1]),
        .O(\S_RDATA[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEFFFFABBBABBB)) 
    \S_RDATA[0]_INST_0_i_2 
       (.I0(\read_addr_reg[4] ),
        .I1(read_addr[1]),
        .I2(done),
        .I3(read_addr[0]),
        .I4(busy),
        .I5(read_addr[2]),
        .O(\S_RDATA[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00A088A8)) 
    \S_RDATA[10]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[10]_INST_0_i_1_n_0 ),
        .I2(S_RDATA5[10]),
        .I3(read_addr[3]),
        .I4(\read_addr_reg[2] ),
        .O(S_RDATA[10]));
  LUT4 #(
    .INIT(16'hE200)) 
    \S_RDATA[10]_INST_0_i_1 
       (.I0(\data_out_reg_n_0_[10] ),
        .I1(read_addr[0]),
        .I2(data2[10]),
        .I3(read_addr[1]),
        .O(\S_RDATA[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A088A8)) 
    \S_RDATA[11]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[11]_INST_0_i_1_n_0 ),
        .I2(S_RDATA5[11]),
        .I3(read_addr[3]),
        .I4(\read_addr_reg[2] ),
        .O(S_RDATA[11]));
  LUT4 #(
    .INIT(16'hE200)) 
    \S_RDATA[11]_INST_0_i_1 
       (.I0(\data_out_reg_n_0_[11] ),
        .I1(read_addr[0]),
        .I2(data2[11]),
        .I3(read_addr[1]),
        .O(\S_RDATA[11]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A88)) 
    \S_RDATA[12]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[12]_INST_0_i_1_n_0 ),
        .I2(read_addr[3]),
        .I3(S_RDATA5[12]),
        .O(S_RDATA[12]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \S_RDATA[12]_INST_0_i_1 
       (.I0(\data_out_reg_n_0_[12] ),
        .I1(read_addr[0]),
        .I2(data2[12]),
        .I3(\read_addr_reg[4]_0 ),
        .O(\S_RDATA[12]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A88)) 
    \S_RDATA[13]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[13]_INST_0_i_1_n_0 ),
        .I2(read_addr[3]),
        .I3(S_RDATA5[13]),
        .O(S_RDATA[13]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \S_RDATA[13]_INST_0_i_1 
       (.I0(\data_out_reg_n_0_[13] ),
        .I1(read_addr[0]),
        .I2(data2[13]),
        .I3(\read_addr_reg[4]_0 ),
        .O(\S_RDATA[13]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A88)) 
    \S_RDATA[14]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[14]_INST_0_i_1_n_0 ),
        .I2(read_addr[3]),
        .I3(S_RDATA5[14]),
        .O(S_RDATA[14]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \S_RDATA[14]_INST_0_i_1 
       (.I0(\data_out_reg_n_0_[14] ),
        .I1(read_addr[0]),
        .I2(data2[14]),
        .I3(\read_addr_reg[4]_0 ),
        .O(\S_RDATA[14]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A88)) 
    \S_RDATA[15]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[15]_INST_0_i_1_n_0 ),
        .I2(read_addr[3]),
        .I3(S_RDATA5[15]),
        .O(S_RDATA[15]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \S_RDATA[15]_INST_0_i_1 
       (.I0(\data_out_reg_n_0_[15] ),
        .I1(read_addr[0]),
        .I2(data2[15]),
        .I3(\read_addr_reg[4]_0 ),
        .O(\S_RDATA[15]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A88)) 
    \S_RDATA[16]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[16]_INST_0_i_1_n_0 ),
        .I2(read_addr[3]),
        .I3(S_RDATA5[16]),
        .O(S_RDATA[16]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \S_RDATA[16]_INST_0_i_1 
       (.I0(\data_out_reg_n_0_[16] ),
        .I1(read_addr[0]),
        .I2(data2[16]),
        .I3(\read_addr_reg[4]_0 ),
        .O(\S_RDATA[16]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A88)) 
    \S_RDATA[17]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[17]_INST_0_i_1_n_0 ),
        .I2(read_addr[3]),
        .I3(S_RDATA5[17]),
        .O(S_RDATA[17]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \S_RDATA[17]_INST_0_i_1 
       (.I0(\data_out_reg_n_0_[17] ),
        .I1(read_addr[0]),
        .I2(data2[17]),
        .I3(\read_addr_reg[4]_0 ),
        .O(\S_RDATA[17]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A88)) 
    \S_RDATA[18]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[18]_INST_0_i_1_n_0 ),
        .I2(read_addr[3]),
        .I3(S_RDATA5[18]),
        .O(S_RDATA[18]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \S_RDATA[18]_INST_0_i_1 
       (.I0(\data_out_reg_n_0_[18] ),
        .I1(read_addr[0]),
        .I2(data2[18]),
        .I3(\read_addr_reg[4]_0 ),
        .O(\S_RDATA[18]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A88)) 
    \S_RDATA[19]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[19]_INST_0_i_1_n_0 ),
        .I2(read_addr[3]),
        .I3(S_RDATA5[19]),
        .O(S_RDATA[19]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \S_RDATA[19]_INST_0_i_1 
       (.I0(\data_out_reg_n_0_[19] ),
        .I1(read_addr[0]),
        .I2(data2[19]),
        .I3(\read_addr_reg[4]_0 ),
        .O(\S_RDATA[19]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A88)) 
    \S_RDATA[1]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[1]_INST_0_i_1_n_0 ),
        .I2(read_addr[3]),
        .I3(S_RDATA5[1]),
        .O(S_RDATA[1]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \S_RDATA[1]_INST_0_i_1 
       (.I0(\data_out_reg_n_0_[1] ),
        .I1(read_addr[0]),
        .I2(data2[1]),
        .I3(\read_addr_reg[4]_0 ),
        .O(\S_RDATA[1]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A88)) 
    \S_RDATA[20]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[20]_INST_0_i_1_n_0 ),
        .I2(read_addr[3]),
        .I3(S_RDATA5[20]),
        .O(S_RDATA[20]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \S_RDATA[20]_INST_0_i_1 
       (.I0(\data_out_reg_n_0_[20] ),
        .I1(read_addr[0]),
        .I2(data2[20]),
        .I3(\read_addr_reg[4]_0 ),
        .O(\S_RDATA[20]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A88)) 
    \S_RDATA[21]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[21]_INST_0_i_1_n_0 ),
        .I2(read_addr[3]),
        .I3(S_RDATA5[21]),
        .O(S_RDATA[21]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \S_RDATA[21]_INST_0_i_1 
       (.I0(\data_out_reg_n_0_[21] ),
        .I1(read_addr[0]),
        .I2(data2[21]),
        .I3(\read_addr_reg[4]_0 ),
        .O(\S_RDATA[21]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A88)) 
    \S_RDATA[22]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[22]_INST_0_i_1_n_0 ),
        .I2(read_addr[3]),
        .I3(S_RDATA5[22]),
        .O(S_RDATA[22]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \S_RDATA[22]_INST_0_i_1 
       (.I0(\data_out_reg_n_0_[22] ),
        .I1(read_addr[0]),
        .I2(data2[22]),
        .I3(\read_addr_reg[4]_0 ),
        .O(\S_RDATA[22]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A88)) 
    \S_RDATA[23]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[23]_INST_0_i_1_n_0 ),
        .I2(read_addr[3]),
        .I3(S_RDATA5[23]),
        .O(S_RDATA[23]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \S_RDATA[23]_INST_0_i_1 
       (.I0(\data_out_reg_n_0_[23] ),
        .I1(read_addr[0]),
        .I2(data2[23]),
        .I3(\read_addr_reg[4]_0 ),
        .O(\S_RDATA[23]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A88)) 
    \S_RDATA[24]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[24]_INST_0_i_1_n_0 ),
        .I2(read_addr[3]),
        .I3(S_RDATA5[24]),
        .O(S_RDATA[24]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \S_RDATA[24]_INST_0_i_1 
       (.I0(\data_out_reg_n_0_[24] ),
        .I1(read_addr[0]),
        .I2(data2[24]),
        .I3(\read_addr_reg[4]_0 ),
        .O(\S_RDATA[24]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A88)) 
    \S_RDATA[25]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[25]_INST_0_i_1_n_0 ),
        .I2(read_addr[3]),
        .I3(S_RDATA5[25]),
        .O(S_RDATA[25]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \S_RDATA[25]_INST_0_i_1 
       (.I0(\data_out_reg_n_0_[25] ),
        .I1(read_addr[0]),
        .I2(data2[25]),
        .I3(\read_addr_reg[4]_0 ),
        .O(\S_RDATA[25]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A88)) 
    \S_RDATA[26]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[26]_INST_0_i_1_n_0 ),
        .I2(read_addr[3]),
        .I3(S_RDATA5[26]),
        .O(S_RDATA[26]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \S_RDATA[26]_INST_0_i_1 
       (.I0(\data_out_reg_n_0_[26] ),
        .I1(read_addr[0]),
        .I2(data2[26]),
        .I3(\read_addr_reg[4]_0 ),
        .O(\S_RDATA[26]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A088A8)) 
    \S_RDATA[27]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[27]_INST_0_i_1_n_0 ),
        .I2(S_RDATA5[27]),
        .I3(read_addr[3]),
        .I4(\read_addr_reg[2] ),
        .O(S_RDATA[27]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \S_RDATA[27]_INST_0_i_1 
       (.I0(\data_out_reg_n_0_[27] ),
        .I1(read_addr[0]),
        .I2(data2[27]),
        .I3(read_addr[1]),
        .O(\S_RDATA[27]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A88)) 
    \S_RDATA[28]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[28]_INST_0_i_1_n_0 ),
        .I2(read_addr[3]),
        .I3(S_RDATA5[28]),
        .O(S_RDATA[28]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \S_RDATA[28]_INST_0_i_1 
       (.I0(\data_out_reg_n_0_[28] ),
        .I1(read_addr[0]),
        .I2(data2[28]),
        .I3(\read_addr_reg[4]_0 ),
        .O(\S_RDATA[28]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A88)) 
    \S_RDATA[29]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[29]_INST_0_i_1_n_0 ),
        .I2(read_addr[3]),
        .I3(S_RDATA5[29]),
        .O(S_RDATA[29]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \S_RDATA[29]_INST_0_i_1 
       (.I0(\data_out_reg_n_0_[29] ),
        .I1(read_addr[0]),
        .I2(data2[29]),
        .I3(\read_addr_reg[4]_0 ),
        .O(\S_RDATA[29]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A088A8)) 
    \S_RDATA[2]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[2]_INST_0_i_1_n_0 ),
        .I2(S_RDATA5[2]),
        .I3(read_addr[3]),
        .I4(\read_addr_reg[2] ),
        .O(S_RDATA[2]));
  LUT4 #(
    .INIT(16'hE200)) 
    \S_RDATA[2]_INST_0_i_1 
       (.I0(\data_out_reg_n_0_[2] ),
        .I1(read_addr[0]),
        .I2(data2[2]),
        .I3(read_addr[1]),
        .O(\S_RDATA[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A088A8)) 
    \S_RDATA[30]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[30]_INST_0_i_1_n_0 ),
        .I2(S_RDATA5[30]),
        .I3(read_addr[3]),
        .I4(\read_addr_reg[2] ),
        .O(S_RDATA[30]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \S_RDATA[30]_INST_0_i_1 
       (.I0(\data_out_reg_n_0_[30] ),
        .I1(read_addr[0]),
        .I2(data2[30]),
        .I3(read_addr[1]),
        .O(\S_RDATA[30]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A088A8)) 
    \S_RDATA[31]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[31]_INST_0_i_1_n_0 ),
        .I2(S_RDATA5[31]),
        .I3(read_addr[3]),
        .I4(\read_addr_reg[2] ),
        .O(S_RDATA[31]));
  LUT4 #(
    .INIT(16'hE200)) 
    \S_RDATA[31]_INST_0_i_1 
       (.I0(\data_out_reg_n_0_[31] ),
        .I1(read_addr[0]),
        .I2(data2[31]),
        .I3(read_addr[1]),
        .O(\S_RDATA[31]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A088A8)) 
    \S_RDATA[3]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[3]_INST_0_i_1_n_0 ),
        .I2(S_RDATA5[3]),
        .I3(read_addr[3]),
        .I4(\S_RDATA[3]_INST_0_i_2_n_0 ),
        .O(S_RDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \S_RDATA[3]_INST_0_i_1 
       (.I0(read_addr[1]),
        .I1(data2[3]),
        .I2(read_addr[0]),
        .O(\S_RDATA[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hAABA)) 
    \S_RDATA[3]_INST_0_i_2 
       (.I0(\read_addr_reg[2] ),
        .I1(read_addr[0]),
        .I2(read_addr[1]),
        .I3(\data_out_reg_n_0_[3] ),
        .O(\S_RDATA[3]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00A088A8)) 
    \S_RDATA[4]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[4]_INST_0_i_1_n_0 ),
        .I2(S_RDATA5[4]),
        .I3(read_addr[3]),
        .I4(\S_RDATA[4]_INST_0_i_2_n_0 ),
        .O(S_RDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \S_RDATA[4]_INST_0_i_1 
       (.I0(read_addr[1]),
        .I1(data2[4]),
        .I2(read_addr[0]),
        .O(\S_RDATA[4]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hAABA)) 
    \S_RDATA[4]_INST_0_i_2 
       (.I0(\read_addr_reg[2] ),
        .I1(read_addr[0]),
        .I2(read_addr[1]),
        .I3(\data_out_reg_n_0_[4] ),
        .O(\S_RDATA[4]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00A088A8)) 
    \S_RDATA[5]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[5]_INST_0_i_1_n_0 ),
        .I2(S_RDATA5[5]),
        .I3(read_addr[3]),
        .I4(\S_RDATA[5]_INST_0_i_2_n_0 ),
        .O(S_RDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \S_RDATA[5]_INST_0_i_1 
       (.I0(read_addr[1]),
        .I1(data2[5]),
        .I2(read_addr[0]),
        .O(\S_RDATA[5]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAABA)) 
    \S_RDATA[5]_INST_0_i_2 
       (.I0(\read_addr_reg[2] ),
        .I1(read_addr[0]),
        .I2(read_addr[1]),
        .I3(\data_out_reg_n_0_[5] ),
        .O(\S_RDATA[5]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00A088A8)) 
    \S_RDATA[6]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[6]_INST_0_i_1_n_0 ),
        .I2(S_RDATA5[6]),
        .I3(read_addr[3]),
        .I4(\read_addr_reg[2] ),
        .O(S_RDATA[6]));
  LUT4 #(
    .INIT(16'hE200)) 
    \S_RDATA[6]_INST_0_i_1 
       (.I0(\data_out_reg_n_0_[6] ),
        .I1(read_addr[0]),
        .I2(data2[6]),
        .I3(read_addr[1]),
        .O(\S_RDATA[6]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A88)) 
    \S_RDATA[7]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[7]_INST_0_i_1_n_0 ),
        .I2(read_addr[3]),
        .I3(S_RDATA5[7]),
        .O(S_RDATA[7]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \S_RDATA[7]_INST_0_i_1 
       (.I0(\data_out_reg_n_0_[7] ),
        .I1(read_addr[0]),
        .I2(data2[7]),
        .I3(\read_addr_reg[4]_0 ),
        .O(\S_RDATA[7]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A88)) 
    \S_RDATA[8]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[8]_INST_0_i_1_n_0 ),
        .I2(read_addr[3]),
        .I3(S_RDATA5[8]),
        .O(S_RDATA[8]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \S_RDATA[8]_INST_0_i_1 
       (.I0(\data_out_reg_n_0_[8] ),
        .I1(read_addr[0]),
        .I2(data2[8]),
        .I3(\read_addr_reg[4]_0 ),
        .O(\S_RDATA[8]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A88)) 
    \S_RDATA[9]_INST_0 
       (.I0(out),
        .I1(\S_RDATA[9]_INST_0_i_1_n_0 ),
        .I2(read_addr[3]),
        .I3(S_RDATA5[9]),
        .O(S_RDATA[9]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \S_RDATA[9]_INST_0_i_1 
       (.I0(\data_out_reg_n_0_[9] ),
        .I1(read_addr[0]),
        .I2(data2[9]),
        .I3(\read_addr_reg[4]_0 ),
        .O(\S_RDATA[9]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA8FF)) 
    busy_i_1
       (.I0(busy),
        .I1(done_i_2_n_0),
        .I2(round_reg__0[5]),
        .I3(p_1_in),
        .O(busy_i_1_n_0));
  FDCE busy_reg
       (.C(ACLK),
        .CE(1'b1),
        .CLR(clear),
        .D(busy_i_1_n_0),
        .Q(busy));
  LUT1 #(
    .INIT(2'h1)) 
    \cntr[25]_i_1 
       (.I0(ARESETN),
        .O(clear));
  FDCE \data_out_reg[0] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[0]),
        .Q(\data_out_reg_n_0_[0] ));
  FDCE \data_out_reg[10] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[10]),
        .Q(\data_out_reg_n_0_[10] ));
  FDCE \data_out_reg[11] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[11]),
        .Q(\data_out_reg_n_0_[11] ));
  FDCE \data_out_reg[12] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[12]),
        .Q(\data_out_reg_n_0_[12] ));
  FDCE \data_out_reg[13] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[13]),
        .Q(\data_out_reg_n_0_[13] ));
  FDCE \data_out_reg[14] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[14]),
        .Q(\data_out_reg_n_0_[14] ));
  FDCE \data_out_reg[15] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[15]),
        .Q(\data_out_reg_n_0_[15] ));
  FDCE \data_out_reg[16] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[16]),
        .Q(\data_out_reg_n_0_[16] ));
  FDCE \data_out_reg[17] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[17]),
        .Q(\data_out_reg_n_0_[17] ));
  FDCE \data_out_reg[18] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[18]),
        .Q(\data_out_reg_n_0_[18] ));
  FDCE \data_out_reg[19] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[19]),
        .Q(\data_out_reg_n_0_[19] ));
  FDCE \data_out_reg[1] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[1]),
        .Q(\data_out_reg_n_0_[1] ));
  FDCE \data_out_reg[20] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[20]),
        .Q(\data_out_reg_n_0_[20] ));
  FDCE \data_out_reg[21] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[21]),
        .Q(\data_out_reg_n_0_[21] ));
  FDCE \data_out_reg[22] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[22]),
        .Q(\data_out_reg_n_0_[22] ));
  FDCE \data_out_reg[23] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[23]),
        .Q(\data_out_reg_n_0_[23] ));
  FDCE \data_out_reg[24] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[24]),
        .Q(\data_out_reg_n_0_[24] ));
  FDCE \data_out_reg[25] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[25]),
        .Q(\data_out_reg_n_0_[25] ));
  FDCE \data_out_reg[26] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[26]),
        .Q(\data_out_reg_n_0_[26] ));
  FDCE \data_out_reg[27] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[27]),
        .Q(\data_out_reg_n_0_[27] ));
  FDCE \data_out_reg[28] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[28]),
        .Q(\data_out_reg_n_0_[28] ));
  FDCE \data_out_reg[29] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[29]),
        .Q(\data_out_reg_n_0_[29] ));
  FDCE \data_out_reg[2] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[2]),
        .Q(\data_out_reg_n_0_[2] ));
  FDCE \data_out_reg[30] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[30]),
        .Q(\data_out_reg_n_0_[30] ));
  FDCE \data_out_reg[31] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[31]),
        .Q(\data_out_reg_n_0_[31] ));
  FDCE \data_out_reg[32] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[0]),
        .Q(data2[0]));
  FDCE \data_out_reg[33] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[1]),
        .Q(data2[1]));
  FDCE \data_out_reg[34] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[2]),
        .Q(data2[2]));
  FDCE \data_out_reg[35] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[3]),
        .Q(data2[3]));
  FDCE \data_out_reg[36] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[4]),
        .Q(data2[4]));
  FDCE \data_out_reg[37] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[5]),
        .Q(data2[5]));
  FDCE \data_out_reg[38] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[6]),
        .Q(data2[6]));
  FDCE \data_out_reg[39] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[7]),
        .Q(data2[7]));
  FDCE \data_out_reg[3] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[3]),
        .Q(\data_out_reg_n_0_[3] ));
  FDCE \data_out_reg[40] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[8]),
        .Q(data2[8]));
  FDCE \data_out_reg[41] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[9]),
        .Q(data2[9]));
  FDCE \data_out_reg[42] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[10]),
        .Q(data2[10]));
  FDCE \data_out_reg[43] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[11]),
        .Q(data2[11]));
  FDCE \data_out_reg[44] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[12]),
        .Q(data2[12]));
  FDCE \data_out_reg[45] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[13]),
        .Q(data2[13]));
  FDCE \data_out_reg[46] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[14]),
        .Q(data2[14]));
  FDCE \data_out_reg[47] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[15]),
        .Q(data2[15]));
  FDCE \data_out_reg[48] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[16]),
        .Q(data2[16]));
  FDCE \data_out_reg[49] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[17]),
        .Q(data2[17]));
  FDCE \data_out_reg[4] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[4]),
        .Q(\data_out_reg_n_0_[4] ));
  FDCE \data_out_reg[50] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[18]),
        .Q(data2[18]));
  FDCE \data_out_reg[51] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[19]),
        .Q(data2[19]));
  FDCE \data_out_reg[52] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[20]),
        .Q(data2[20]));
  FDCE \data_out_reg[53] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[21]),
        .Q(data2[21]));
  FDCE \data_out_reg[54] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[22]),
        .Q(data2[22]));
  FDCE \data_out_reg[55] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[23]),
        .Q(data2[23]));
  FDCE \data_out_reg[56] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[24]),
        .Q(data2[24]));
  FDCE \data_out_reg[57] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[25]),
        .Q(data2[25]));
  FDCE \data_out_reg[58] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[26]),
        .Q(data2[26]));
  FDCE \data_out_reg[59] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[27]),
        .Q(data2[27]));
  FDCE \data_out_reg[5] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[5]),
        .Q(\data_out_reg_n_0_[5] ));
  FDCE \data_out_reg[60] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[28]),
        .Q(data2[28]));
  FDCE \data_out_reg[61] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[29]),
        .Q(data2[29]));
  FDCE \data_out_reg[62] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[30]),
        .Q(data2[30]));
  FDCE \data_out_reg[63] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v0_next[31]),
        .Q(data2[31]));
  FDCE \data_out_reg[6] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[6]),
        .Q(\data_out_reg_n_0_[6] ));
  FDCE \data_out_reg[7] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[7]),
        .Q(\data_out_reg_n_0_[7] ));
  FDCE \data_out_reg[8] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[8]),
        .Q(\data_out_reg_n_0_[8] ));
  FDCE \data_out_reg[9] 
       (.C(ACLK),
        .CE(done_i_1_n_0),
        .CLR(clear),
        .D(v1_next[9]),
        .Q(\data_out_reg_n_0_[9] ));
  LUT3 #(
    .INIT(8'h02)) 
    done_i_1
       (.I0(busy),
        .I1(done_i_2_n_0),
        .I2(round_reg__0[5]),
        .O(done_i_1_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    done_i_2
       (.I0(round_reg__0[3]),
        .I1(round_reg__0[1]),
        .I2(round_reg__0[0]),
        .I3(round_reg__0[2]),
        .I4(round_reg__0[4]),
        .O(done_i_2_n_0));
  FDCE done_reg
       (.C(ACLK),
        .CE(1'b1),
        .CLR(clear),
        .D(done_i_1_n_0),
        .Q(done));
  LUT2 #(
    .INIT(4'h2)) 
    \round[0]_i_1 
       (.I0(p_1_in),
        .I1(round_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \round[1]_i_1 
       (.I0(p_1_in),
        .I1(round_reg__0[1]),
        .I2(round_reg__0[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \round[2]_i_1 
       (.I0(p_1_in),
        .I1(round_reg__0[0]),
        .I2(round_reg__0[1]),
        .I3(round_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \round[3]_i_1 
       (.I0(p_1_in),
        .I1(round_reg__0[1]),
        .I2(round_reg__0[0]),
        .I3(round_reg__0[2]),
        .I4(round_reg__0[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \round[4]_i_1 
       (.I0(p_1_in),
        .I1(round_reg__0[2]),
        .I2(round_reg__0[0]),
        .I3(round_reg__0[1]),
        .I4(round_reg__0[3]),
        .I5(round_reg__0[4]),
        .O(p_0_in[4]));
  LUT2 #(
    .INIT(4'hE)) 
    \round[5]_i_1 
       (.I0(busy),
        .I1(start),
        .O(round));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \round[5]_i_2 
       (.I0(p_1_in),
        .I1(done_i_2_n_0),
        .I2(round_reg__0[5]),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'hB)) 
    \round[5]_i_3 
       (.I0(busy),
        .I1(start),
        .O(p_1_in));
  FDCE \round_reg[0] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(p_0_in[0]),
        .Q(round_reg__0[0]));
  FDCE \round_reg[1] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(p_0_in[1]),
        .Q(round_reg__0[1]));
  FDCE \round_reg[2] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(p_0_in[2]),
        .Q(round_reg__0[2]));
  FDCE \round_reg[3] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(p_0_in[3]),
        .Q(round_reg__0[3]));
  FDCE \round_reg[4] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(p_0_in[4]),
        .Q(round_reg__0[4]));
  FDCE \round_reg[5] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(p_0_in[5]),
        .Q(round_reg__0[5]));
  LUT2 #(
    .INIT(4'hB)) 
    \sum[0]_i_2 
       (.I0(busy),
        .I1(start),
        .O(\sum[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sum[0]_i_3 
       (.I0(busy),
        .I1(start),
        .O(\sum[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \sum[0]_i_4 
       (.I0(sum_reg[3]),
        .I1(p_1_in),
        .O(\sum[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sum[0]_i_5 
       (.I0(sum_reg[2]),
        .I1(p_1_in),
        .O(\sum[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sum[0]_i_6 
       (.I0(sum_reg[1]),
        .I1(p_1_in),
        .O(\sum[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \sum[0]_i_7 
       (.I0(sum_reg[0]),
        .I1(p_1_in),
        .O(\sum[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sum[12]_i_2 
       (.I0(busy),
        .I1(start),
        .O(\sum[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sum[12]_i_3 
       (.I0(busy),
        .I1(start),
        .O(\sum[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sum[12]_i_4 
       (.I0(busy),
        .I1(start),
        .O(\sum[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sum[12]_i_5 
       (.I0(sum_reg[15]),
        .I1(p_1_in),
        .O(\sum[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \sum[12]_i_6 
       (.I0(sum_reg[14]),
        .I1(p_1_in),
        .O(\sum[12]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \sum[12]_i_7 
       (.I0(sum_reg[13]),
        .I1(p_1_in),
        .O(\sum[12]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \sum[12]_i_8 
       (.I0(sum_reg[12]),
        .I1(p_1_in),
        .O(\sum[12]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sum[16]_i_2 
       (.I0(busy),
        .I1(start),
        .O(\sum[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sum[16]_i_3 
       (.I0(busy),
        .I1(start),
        .O(\sum[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sum[16]_i_4 
       (.I0(busy),
        .I1(start),
        .O(\sum[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sum[16]_i_5 
       (.I0(sum_reg[19]),
        .I1(p_1_in),
        .O(\sum[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \sum[16]_i_6 
       (.I0(sum_reg[18]),
        .I1(p_1_in),
        .O(\sum[16]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \sum[16]_i_7 
       (.I0(sum_reg[17]),
        .I1(p_1_in),
        .O(\sum[16]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \sum[16]_i_8 
       (.I0(sum_reg[16]),
        .I1(p_1_in),
        .O(\sum[16]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sum[20]_i_2 
       (.I0(busy),
        .I1(start),
        .O(\sum[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sum[20]_i_3 
       (.I0(busy),
        .I1(start),
        .O(\sum[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sum[20]_i_4 
       (.I0(sum_reg[23]),
        .I1(p_1_in),
        .O(\sum[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sum[20]_i_5 
       (.I0(sum_reg[22]),
        .I1(p_1_in),
        .O(\sum[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \sum[20]_i_6 
       (.I0(sum_reg[21]),
        .I1(p_1_in),
        .O(\sum[20]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \sum[20]_i_7 
       (.I0(sum_reg[20]),
        .I1(p_1_in),
        .O(\sum[20]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sum[24]_i_2 
       (.I0(busy),
        .I1(start),
        .O(\sum[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sum[24]_i_3 
       (.I0(busy),
        .I1(start),
        .O(\sum[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sum[24]_i_4 
       (.I0(busy),
        .I1(start),
        .O(\sum[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \sum[24]_i_5 
       (.I0(sum_reg[27]),
        .I1(p_1_in),
        .O(\sum[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \sum[24]_i_6 
       (.I0(sum_reg[26]),
        .I1(p_1_in),
        .O(\sum[24]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \sum[24]_i_7 
       (.I0(sum_reg[25]),
        .I1(p_1_in),
        .O(\sum[24]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sum[24]_i_8 
       (.I0(sum_reg[24]),
        .I1(p_1_in),
        .O(\sum[24]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sum[28]_i_2 
       (.I0(busy),
        .I1(start),
        .O(\sum[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum[28]_i_3 
       (.I0(p_1_in),
        .I1(sum_reg[31]),
        .O(\sum[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sum[28]_i_4 
       (.I0(sum_reg[30]),
        .I1(p_1_in),
        .O(\sum[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sum[28]_i_5 
       (.I0(sum_reg[29]),
        .I1(p_1_in),
        .O(\sum[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \sum[28]_i_6 
       (.I0(sum_reg[28]),
        .I1(p_1_in),
        .O(\sum[28]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sum[4]_i_2 
       (.I0(busy),
        .I1(start),
        .O(\sum[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sum[4]_i_3 
       (.I0(busy),
        .I1(start),
        .O(\sum[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sum[4]_i_4 
       (.I0(busy),
        .I1(start),
        .O(\sum[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \sum[4]_i_5 
       (.I0(sum_reg[7]),
        .I1(p_1_in),
        .O(\sum[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sum[4]_i_6 
       (.I0(sum_reg[6]),
        .I1(p_1_in),
        .O(\sum[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \sum[4]_i_7 
       (.I0(sum_reg[5]),
        .I1(p_1_in),
        .O(\sum[4]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \sum[4]_i_8 
       (.I0(sum_reg[4]),
        .I1(p_1_in),
        .O(\sum[4]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sum[8]_i_2 
       (.I0(busy),
        .I1(start),
        .O(\sum[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sum[8]_i_3 
       (.I0(busy),
        .I1(start),
        .O(\sum[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \sum[8]_i_4 
       (.I0(sum_reg[11]),
        .I1(p_1_in),
        .O(\sum[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sum[8]_i_5 
       (.I0(sum_reg[10]),
        .I1(p_1_in),
        .O(\sum[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sum[8]_i_6 
       (.I0(sum_reg[9]),
        .I1(p_1_in),
        .O(\sum[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \sum[8]_i_7 
       (.I0(sum_reg[8]),
        .I1(p_1_in),
        .O(\sum[8]_i_7_n_0 ));
  CARRY4 sum_next_carry
       (.CI(1'b0),
        .CO({sum_next_carry_n_0,sum_next_carry_n_1,sum_next_carry_n_2,sum_next_carry_n_3}),
        .CYINIT(sum_reg[0]),
        .DI({sum_reg[4:3],1'b0,1'b0}),
        .O(sum_next[4:1]),
        .S({sum_next_carry_i_1_n_0,sum_next_carry_i_2_n_0,sum_reg[2:1]}));
  CARRY4 sum_next_carry__0
       (.CI(sum_next_carry_n_0),
        .CO({sum_next_carry__0_n_0,sum_next_carry__0_n_1,sum_next_carry__0_n_2,sum_next_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({sum_reg[8:7],1'b0,sum_reg[5]}),
        .O(sum_next[8:5]),
        .S({sum_next_carry__0_i_1_n_0,sum_next_carry__0_i_2_n_0,sum_reg[6],sum_next_carry__0_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sum_next_carry__0_i_1
       (.I0(sum_reg[8]),
        .O(sum_next_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_next_carry__0_i_2
       (.I0(sum_reg[7]),
        .O(sum_next_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_next_carry__0_i_3
       (.I0(sum_reg[5]),
        .O(sum_next_carry__0_i_3_n_0));
  CARRY4 sum_next_carry__1
       (.CI(sum_next_carry__0_n_0),
        .CO({sum_next_carry__1_n_0,sum_next_carry__1_n_1,sum_next_carry__1_n_2,sum_next_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({sum_reg[12:11],1'b0,1'b0}),
        .O(sum_next[12:9]),
        .S({sum_next_carry__1_i_1_n_0,sum_next_carry__1_i_2_n_0,sum_reg[10:9]}));
  LUT1 #(
    .INIT(2'h1)) 
    sum_next_carry__1_i_1
       (.I0(sum_reg[12]),
        .O(sum_next_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_next_carry__1_i_2
       (.I0(sum_reg[11]),
        .O(sum_next_carry__1_i_2_n_0));
  CARRY4 sum_next_carry__2
       (.CI(sum_next_carry__1_n_0),
        .CO({sum_next_carry__2_n_0,sum_next_carry__2_n_1,sum_next_carry__2_n_2,sum_next_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({sum_reg[16],1'b0,sum_reg[14:13]}),
        .O(sum_next[16:13]),
        .S({sum_next_carry__2_i_1_n_0,sum_reg[15],sum_next_carry__2_i_2_n_0,sum_next_carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sum_next_carry__2_i_1
       (.I0(sum_reg[16]),
        .O(sum_next_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_next_carry__2_i_2
       (.I0(sum_reg[14]),
        .O(sum_next_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_next_carry__2_i_3
       (.I0(sum_reg[13]),
        .O(sum_next_carry__2_i_3_n_0));
  CARRY4 sum_next_carry__3
       (.CI(sum_next_carry__2_n_0),
        .CO({sum_next_carry__3_n_0,sum_next_carry__3_n_1,sum_next_carry__3_n_2,sum_next_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({sum_reg[20],1'b0,sum_reg[18:17]}),
        .O(sum_next[20:17]),
        .S({sum_next_carry__3_i_1_n_0,sum_reg[19],sum_next_carry__3_i_2_n_0,sum_next_carry__3_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sum_next_carry__3_i_1
       (.I0(sum_reg[20]),
        .O(sum_next_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_next_carry__3_i_2
       (.I0(sum_reg[18]),
        .O(sum_next_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_next_carry__3_i_3
       (.I0(sum_reg[17]),
        .O(sum_next_carry__3_i_3_n_0));
  CARRY4 sum_next_carry__4
       (.CI(sum_next_carry__3_n_0),
        .CO({sum_next_carry__4_n_0,sum_next_carry__4_n_1,sum_next_carry__4_n_2,sum_next_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sum_reg[21]}),
        .O(sum_next[24:21]),
        .S({sum_reg[24:22],sum_next_carry__4_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sum_next_carry__4_i_1
       (.I0(sum_reg[21]),
        .O(sum_next_carry__4_i_1_n_0));
  CARRY4 sum_next_carry__5
       (.CI(sum_next_carry__4_n_0),
        .CO({sum_next_carry__5_n_0,sum_next_carry__5_n_1,sum_next_carry__5_n_2,sum_next_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(sum_reg[28:25]),
        .O(sum_next[28:25]),
        .S({sum_next_carry__5_i_1_n_0,sum_next_carry__5_i_2_n_0,sum_next_carry__5_i_3_n_0,sum_next_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sum_next_carry__5_i_1
       (.I0(sum_reg[28]),
        .O(sum_next_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_next_carry__5_i_2
       (.I0(sum_reg[27]),
        .O(sum_next_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_next_carry__5_i_3
       (.I0(sum_reg[26]),
        .O(sum_next_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_next_carry__5_i_4
       (.I0(sum_reg[25]),
        .O(sum_next_carry__5_i_4_n_0));
  CARRY4 sum_next_carry__6
       (.CI(sum_next_carry__5_n_0),
        .CO({NLW_sum_next_carry__6_CO_UNCONNECTED[3:2],sum_next_carry__6_n_2,sum_next_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sum_next_carry__6_O_UNCONNECTED[3],sum_next[31:29]}),
        .S({1'b0,sum_next_carry__6_i_1_n_0,sum_reg[30:29]}));
  LUT1 #(
    .INIT(2'h1)) 
    sum_next_carry__6_i_1
       (.I0(sum_reg[31]),
        .O(sum_next_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_next_carry_i_1
       (.I0(sum_reg[4]),
        .O(sum_next_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_next_carry_i_2
       (.I0(sum_reg[3]),
        .O(sum_next_carry_i_2_n_0));
  FDCE \sum_reg[0] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[0]_i_1_n_7 ),
        .Q(sum_reg[0]));
  CARRY4 \sum_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\sum_reg[0]_i_1_n_0 ,\sum_reg[0]_i_1_n_1 ,\sum_reg[0]_i_1_n_2 ,\sum_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum[0]_i_2_n_0 ,1'b0,1'b0,\sum[0]_i_3_n_0 }),
        .O({\sum_reg[0]_i_1_n_4 ,\sum_reg[0]_i_1_n_5 ,\sum_reg[0]_i_1_n_6 ,\sum_reg[0]_i_1_n_7 }),
        .S({\sum[0]_i_4_n_0 ,\sum[0]_i_5_n_0 ,\sum[0]_i_6_n_0 ,\sum[0]_i_7_n_0 }));
  FDCE \sum_reg[10] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[8]_i_1_n_5 ),
        .Q(sum_reg[10]));
  FDCE \sum_reg[11] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[8]_i_1_n_4 ),
        .Q(sum_reg[11]));
  FDCE \sum_reg[12] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[12]_i_1_n_7 ),
        .Q(sum_reg[12]));
  CARRY4 \sum_reg[12]_i_1 
       (.CI(\sum_reg[8]_i_1_n_0 ),
        .CO({\sum_reg[12]_i_1_n_0 ,\sum_reg[12]_i_1_n_1 ,\sum_reg[12]_i_1_n_2 ,\sum_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\sum[12]_i_2_n_0 ,\sum[12]_i_3_n_0 ,\sum[12]_i_4_n_0 }),
        .O({\sum_reg[12]_i_1_n_4 ,\sum_reg[12]_i_1_n_5 ,\sum_reg[12]_i_1_n_6 ,\sum_reg[12]_i_1_n_7 }),
        .S({\sum[12]_i_5_n_0 ,\sum[12]_i_6_n_0 ,\sum[12]_i_7_n_0 ,\sum[12]_i_8_n_0 }));
  FDCE \sum_reg[13] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[12]_i_1_n_6 ),
        .Q(sum_reg[13]));
  FDCE \sum_reg[14] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[12]_i_1_n_5 ),
        .Q(sum_reg[14]));
  FDCE \sum_reg[15] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[12]_i_1_n_4 ),
        .Q(sum_reg[15]));
  FDCE \sum_reg[16] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[16]_i_1_n_7 ),
        .Q(sum_reg[16]));
  CARRY4 \sum_reg[16]_i_1 
       (.CI(\sum_reg[12]_i_1_n_0 ),
        .CO({\sum_reg[16]_i_1_n_0 ,\sum_reg[16]_i_1_n_1 ,\sum_reg[16]_i_1_n_2 ,\sum_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\sum[16]_i_2_n_0 ,\sum[16]_i_3_n_0 ,\sum[16]_i_4_n_0 }),
        .O({\sum_reg[16]_i_1_n_4 ,\sum_reg[16]_i_1_n_5 ,\sum_reg[16]_i_1_n_6 ,\sum_reg[16]_i_1_n_7 }),
        .S({\sum[16]_i_5_n_0 ,\sum[16]_i_6_n_0 ,\sum[16]_i_7_n_0 ,\sum[16]_i_8_n_0 }));
  FDCE \sum_reg[17] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[16]_i_1_n_6 ),
        .Q(sum_reg[17]));
  FDCE \sum_reg[18] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[16]_i_1_n_5 ),
        .Q(sum_reg[18]));
  FDCE \sum_reg[19] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[16]_i_1_n_4 ),
        .Q(sum_reg[19]));
  FDCE \sum_reg[1] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[0]_i_1_n_6 ),
        .Q(sum_reg[1]));
  FDCE \sum_reg[20] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[20]_i_1_n_7 ),
        .Q(sum_reg[20]));
  CARRY4 \sum_reg[20]_i_1 
       (.CI(\sum_reg[16]_i_1_n_0 ),
        .CO({\sum_reg[20]_i_1_n_0 ,\sum_reg[20]_i_1_n_1 ,\sum_reg[20]_i_1_n_2 ,\sum_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\sum[20]_i_2_n_0 ,\sum[20]_i_3_n_0 }),
        .O({\sum_reg[20]_i_1_n_4 ,\sum_reg[20]_i_1_n_5 ,\sum_reg[20]_i_1_n_6 ,\sum_reg[20]_i_1_n_7 }),
        .S({\sum[20]_i_4_n_0 ,\sum[20]_i_5_n_0 ,\sum[20]_i_6_n_0 ,\sum[20]_i_7_n_0 }));
  FDCE \sum_reg[21] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[20]_i_1_n_6 ),
        .Q(sum_reg[21]));
  FDCE \sum_reg[22] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[20]_i_1_n_5 ),
        .Q(sum_reg[22]));
  FDCE \sum_reg[23] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[20]_i_1_n_4 ),
        .Q(sum_reg[23]));
  FDCE \sum_reg[24] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[24]_i_1_n_7 ),
        .Q(sum_reg[24]));
  CARRY4 \sum_reg[24]_i_1 
       (.CI(\sum_reg[20]_i_1_n_0 ),
        .CO({\sum_reg[24]_i_1_n_0 ,\sum_reg[24]_i_1_n_1 ,\sum_reg[24]_i_1_n_2 ,\sum_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum[24]_i_2_n_0 ,\sum[24]_i_3_n_0 ,\sum[24]_i_4_n_0 ,1'b0}),
        .O({\sum_reg[24]_i_1_n_4 ,\sum_reg[24]_i_1_n_5 ,\sum_reg[24]_i_1_n_6 ,\sum_reg[24]_i_1_n_7 }),
        .S({\sum[24]_i_5_n_0 ,\sum[24]_i_6_n_0 ,\sum[24]_i_7_n_0 ,\sum[24]_i_8_n_0 }));
  FDCE \sum_reg[25] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[24]_i_1_n_6 ),
        .Q(sum_reg[25]));
  FDCE \sum_reg[26] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[24]_i_1_n_5 ),
        .Q(sum_reg[26]));
  FDCE \sum_reg[27] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[24]_i_1_n_4 ),
        .Q(sum_reg[27]));
  FDCE \sum_reg[28] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[28]_i_1_n_7 ),
        .Q(sum_reg[28]));
  CARRY4 \sum_reg[28]_i_1 
       (.CI(\sum_reg[24]_i_1_n_0 ),
        .CO({\NLW_sum_reg[28]_i_1_CO_UNCONNECTED [3],\sum_reg[28]_i_1_n_1 ,\sum_reg[28]_i_1_n_2 ,\sum_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\sum[28]_i_2_n_0 }),
        .O({\sum_reg[28]_i_1_n_4 ,\sum_reg[28]_i_1_n_5 ,\sum_reg[28]_i_1_n_6 ,\sum_reg[28]_i_1_n_7 }),
        .S({\sum[28]_i_3_n_0 ,\sum[28]_i_4_n_0 ,\sum[28]_i_5_n_0 ,\sum[28]_i_6_n_0 }));
  FDCE \sum_reg[29] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[28]_i_1_n_6 ),
        .Q(sum_reg[29]));
  FDCE \sum_reg[2] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[0]_i_1_n_5 ),
        .Q(sum_reg[2]));
  FDCE \sum_reg[30] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[28]_i_1_n_5 ),
        .Q(sum_reg[30]));
  FDCE \sum_reg[31] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[28]_i_1_n_4 ),
        .Q(sum_reg[31]));
  FDCE \sum_reg[3] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[0]_i_1_n_4 ),
        .Q(sum_reg[3]));
  FDCE \sum_reg[4] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[4]_i_1_n_7 ),
        .Q(sum_reg[4]));
  CARRY4 \sum_reg[4]_i_1 
       (.CI(\sum_reg[0]_i_1_n_0 ),
        .CO({\sum_reg[4]_i_1_n_0 ,\sum_reg[4]_i_1_n_1 ,\sum_reg[4]_i_1_n_2 ,\sum_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum[4]_i_2_n_0 ,1'b0,\sum[4]_i_3_n_0 ,\sum[4]_i_4_n_0 }),
        .O({\sum_reg[4]_i_1_n_4 ,\sum_reg[4]_i_1_n_5 ,\sum_reg[4]_i_1_n_6 ,\sum_reg[4]_i_1_n_7 }),
        .S({\sum[4]_i_5_n_0 ,\sum[4]_i_6_n_0 ,\sum[4]_i_7_n_0 ,\sum[4]_i_8_n_0 }));
  FDCE \sum_reg[5] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[4]_i_1_n_6 ),
        .Q(sum_reg[5]));
  FDCE \sum_reg[6] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[4]_i_1_n_5 ),
        .Q(sum_reg[6]));
  FDCE \sum_reg[7] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[4]_i_1_n_4 ),
        .Q(sum_reg[7]));
  FDCE \sum_reg[8] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[8]_i_1_n_7 ),
        .Q(sum_reg[8]));
  CARRY4 \sum_reg[8]_i_1 
       (.CI(\sum_reg[4]_i_1_n_0 ),
        .CO({\sum_reg[8]_i_1_n_0 ,\sum_reg[8]_i_1_n_1 ,\sum_reg[8]_i_1_n_2 ,\sum_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum[8]_i_2_n_0 ,1'b0,1'b0,\sum[8]_i_3_n_0 }),
        .O({\sum_reg[8]_i_1_n_4 ,\sum_reg[8]_i_1_n_5 ,\sum_reg[8]_i_1_n_6 ,\sum_reg[8]_i_1_n_7 }),
        .S({\sum[8]_i_4_n_0 ,\sum[8]_i_5_n_0 ,\sum[8]_i_6_n_0 ,\sum[8]_i_7_n_0 }));
  FDCE \sum_reg[9] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\sum_reg[8]_i_1_n_6 ),
        .Q(sum_reg[9]));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[0]_i_2 
       (.I0(p_1_in),
        .I1(v0_next1[3]),
        .I2(v0_next23_out[3]),
        .I3(v0_next24_out[3]),
        .O(\v0[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[0]_i_3 
       (.I0(p_1_in),
        .I1(v0_next1[2]),
        .I2(v0_next23_out[2]),
        .I3(Q[98]),
        .O(\v0[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[0]_i_4 
       (.I0(p_1_in),
        .I1(v0_next1[1]),
        .I2(v0_next23_out[1]),
        .I3(Q[97]),
        .O(\v0[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[0]_i_5 
       (.I0(p_1_in),
        .I1(v0_next1[0]),
        .I2(v0_next23_out[0]),
        .I3(Q[96]),
        .O(\v0[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[0]_i_6 
       (.I0(v0_next24_out[3]),
        .I1(v0_next23_out[3]),
        .I2(v0_next1[3]),
        .I3(\data_in_reg[63] [35]),
        .I4(p_1_in),
        .I5(v0_reg[3]),
        .O(\v0[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[0]_i_7 
       (.I0(Q[98]),
        .I1(v0_next23_out[2]),
        .I2(v0_next1[2]),
        .I3(\data_in_reg[63] [34]),
        .I4(p_1_in),
        .I5(v0_reg[2]),
        .O(\v0[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[0]_i_8 
       (.I0(Q[97]),
        .I1(v0_next23_out[1]),
        .I2(v0_next1[1]),
        .I3(\data_in_reg[63] [33]),
        .I4(p_1_in),
        .I5(v0_reg[1]),
        .O(\v0[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[0]_i_9 
       (.I0(Q[96]),
        .I1(v0_next23_out[0]),
        .I2(v0_next1[0]),
        .I3(\data_in_reg[63] [32]),
        .I4(p_1_in),
        .I5(v0_reg[0]),
        .O(\v0[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[12]_i_2 
       (.I0(p_1_in),
        .I1(v0_next1[15]),
        .I2(v0_next23_out[15]),
        .I3(v0_next24_out[15]),
        .O(\v0[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[12]_i_3 
       (.I0(p_1_in),
        .I1(v0_next1[14]),
        .I2(v0_next23_out[14]),
        .I3(v0_next24_out[14]),
        .O(\v0[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[12]_i_4 
       (.I0(p_1_in),
        .I1(v0_next1[13]),
        .I2(v0_next23_out[13]),
        .I3(v0_next24_out[13]),
        .O(\v0[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[12]_i_5 
       (.I0(p_1_in),
        .I1(v0_next1[12]),
        .I2(v0_next23_out[12]),
        .I3(v0_next24_out[12]),
        .O(\v0[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[12]_i_6 
       (.I0(v0_next24_out[15]),
        .I1(v0_next23_out[15]),
        .I2(v0_next1[15]),
        .I3(\data_in_reg[63] [47]),
        .I4(p_1_in),
        .I5(v0_reg[15]),
        .O(\v0[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[12]_i_7 
       (.I0(v0_next24_out[14]),
        .I1(v0_next23_out[14]),
        .I2(v0_next1[14]),
        .I3(\data_in_reg[63] [46]),
        .I4(p_1_in),
        .I5(v0_reg[14]),
        .O(\v0[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[12]_i_8 
       (.I0(v0_next24_out[13]),
        .I1(v0_next23_out[13]),
        .I2(v0_next1[13]),
        .I3(\data_in_reg[63] [45]),
        .I4(p_1_in),
        .I5(v0_reg[13]),
        .O(\v0[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[12]_i_9 
       (.I0(v0_next24_out[12]),
        .I1(v0_next23_out[12]),
        .I2(v0_next1[12]),
        .I3(\data_in_reg[63] [44]),
        .I4(p_1_in),
        .I5(v0_reg[12]),
        .O(\v0[12]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[16]_i_2 
       (.I0(p_1_in),
        .I1(v0_next1[19]),
        .I2(v0_next23_out[19]),
        .I3(v0_next24_out[19]),
        .O(\v0[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[16]_i_3 
       (.I0(p_1_in),
        .I1(v0_next1[18]),
        .I2(v0_next23_out[18]),
        .I3(v0_next24_out[18]),
        .O(\v0[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[16]_i_4 
       (.I0(p_1_in),
        .I1(v0_next1[17]),
        .I2(v0_next23_out[17]),
        .I3(v0_next24_out[17]),
        .O(\v0[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[16]_i_5 
       (.I0(p_1_in),
        .I1(v0_next1[16]),
        .I2(v0_next23_out[16]),
        .I3(v0_next24_out[16]),
        .O(\v0[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[16]_i_6 
       (.I0(v0_next24_out[19]),
        .I1(v0_next23_out[19]),
        .I2(v0_next1[19]),
        .I3(\data_in_reg[63] [51]),
        .I4(p_1_in),
        .I5(v0_reg[19]),
        .O(\v0[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[16]_i_7 
       (.I0(v0_next24_out[18]),
        .I1(v0_next23_out[18]),
        .I2(v0_next1[18]),
        .I3(\data_in_reg[63] [50]),
        .I4(p_1_in),
        .I5(v0_reg[18]),
        .O(\v0[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[16]_i_8 
       (.I0(v0_next24_out[17]),
        .I1(v0_next23_out[17]),
        .I2(v0_next1[17]),
        .I3(\data_in_reg[63] [49]),
        .I4(p_1_in),
        .I5(v0_reg[17]),
        .O(\v0[16]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[16]_i_9 
       (.I0(v0_next24_out[16]),
        .I1(v0_next23_out[16]),
        .I2(v0_next1[16]),
        .I3(\data_in_reg[63] [48]),
        .I4(p_1_in),
        .I5(v0_reg[16]),
        .O(\v0[16]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[20]_i_2 
       (.I0(p_1_in),
        .I1(v0_next1[23]),
        .I2(v0_next23_out[23]),
        .I3(v0_next24_out[23]),
        .O(\v0[20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[20]_i_3 
       (.I0(p_1_in),
        .I1(v0_next1[22]),
        .I2(v0_next23_out[22]),
        .I3(v0_next24_out[22]),
        .O(\v0[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[20]_i_4 
       (.I0(p_1_in),
        .I1(v0_next1[21]),
        .I2(v0_next23_out[21]),
        .I3(v0_next24_out[21]),
        .O(\v0[20]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[20]_i_5 
       (.I0(p_1_in),
        .I1(v0_next1[20]),
        .I2(v0_next23_out[20]),
        .I3(v0_next24_out[20]),
        .O(\v0[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[20]_i_6 
       (.I0(v0_next24_out[23]),
        .I1(v0_next23_out[23]),
        .I2(v0_next1[23]),
        .I3(\data_in_reg[63] [55]),
        .I4(p_1_in),
        .I5(v0_reg[23]),
        .O(\v0[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[20]_i_7 
       (.I0(v0_next24_out[22]),
        .I1(v0_next23_out[22]),
        .I2(v0_next1[22]),
        .I3(\data_in_reg[63] [54]),
        .I4(p_1_in),
        .I5(v0_reg[22]),
        .O(\v0[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[20]_i_8 
       (.I0(v0_next24_out[21]),
        .I1(v0_next23_out[21]),
        .I2(v0_next1[21]),
        .I3(\data_in_reg[63] [53]),
        .I4(p_1_in),
        .I5(v0_reg[21]),
        .O(\v0[20]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[20]_i_9 
       (.I0(v0_next24_out[20]),
        .I1(v0_next23_out[20]),
        .I2(v0_next1[20]),
        .I3(\data_in_reg[63] [52]),
        .I4(p_1_in),
        .I5(v0_reg[20]),
        .O(\v0[20]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[24]_i_2 
       (.I0(p_1_in),
        .I1(v0_next1[27]),
        .I2(v0_next23_out[27]),
        .I3(v0_next24_out[27]),
        .O(\v0[24]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[24]_i_3 
       (.I0(p_1_in),
        .I1(v0_next1[26]),
        .I2(v0_next23_out[26]),
        .I3(v0_next24_out[26]),
        .O(\v0[24]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[24]_i_4 
       (.I0(p_1_in),
        .I1(v0_next1[25]),
        .I2(v0_next23_out[25]),
        .I3(v0_next24_out[25]),
        .O(\v0[24]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[24]_i_5 
       (.I0(p_1_in),
        .I1(v0_next1[24]),
        .I2(v0_next23_out[24]),
        .I3(v0_next24_out[24]),
        .O(\v0[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[24]_i_6 
       (.I0(v0_next24_out[27]),
        .I1(v0_next23_out[27]),
        .I2(v0_next1[27]),
        .I3(\data_in_reg[63] [59]),
        .I4(p_1_in),
        .I5(v0_reg[27]),
        .O(\v0[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[24]_i_7 
       (.I0(v0_next24_out[26]),
        .I1(v0_next23_out[26]),
        .I2(v0_next1[26]),
        .I3(\data_in_reg[63] [58]),
        .I4(p_1_in),
        .I5(v0_reg[26]),
        .O(\v0[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[24]_i_8 
       (.I0(v0_next24_out[25]),
        .I1(v0_next23_out[25]),
        .I2(v0_next1[25]),
        .I3(\data_in_reg[63] [57]),
        .I4(p_1_in),
        .I5(v0_reg[25]),
        .O(\v0[24]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[24]_i_9 
       (.I0(v0_next24_out[24]),
        .I1(v0_next23_out[24]),
        .I2(v0_next1[24]),
        .I3(\data_in_reg[63] [56]),
        .I4(p_1_in),
        .I5(v0_reg[24]),
        .O(\v0[24]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[28]_i_2 
       (.I0(p_1_in),
        .I1(v0_next1[30]),
        .I2(v0_next23_out[30]),
        .I3(v0_next24_out[30]),
        .O(\v0[28]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[28]_i_3 
       (.I0(p_1_in),
        .I1(v0_next1[29]),
        .I2(v0_next23_out[29]),
        .I3(v0_next24_out[29]),
        .O(\v0[28]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[28]_i_4 
       (.I0(p_1_in),
        .I1(v0_next1[28]),
        .I2(v0_next23_out[28]),
        .I3(v0_next24_out[28]),
        .O(\v0[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6996FFFF69960000)) 
    \v0[28]_i_5 
       (.I0(v0_next23_out[31]),
        .I1(v0_next1[31]),
        .I2(v0_next24_out[31]),
        .I3(v0_reg[31]),
        .I4(p_1_in),
        .I5(\data_in_reg[63] [63]),
        .O(\v0[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[28]_i_6 
       (.I0(v0_next24_out[30]),
        .I1(v0_next23_out[30]),
        .I2(v0_next1[30]),
        .I3(\data_in_reg[63] [62]),
        .I4(p_1_in),
        .I5(v0_reg[30]),
        .O(\v0[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[28]_i_7 
       (.I0(v0_next24_out[29]),
        .I1(v0_next23_out[29]),
        .I2(v0_next1[29]),
        .I3(\data_in_reg[63] [61]),
        .I4(p_1_in),
        .I5(v0_reg[29]),
        .O(\v0[28]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[28]_i_8 
       (.I0(v0_next24_out[28]),
        .I1(v0_next23_out[28]),
        .I2(v0_next1[28]),
        .I3(\data_in_reg[63] [60]),
        .I4(p_1_in),
        .I5(v0_reg[28]),
        .O(\v0[28]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[4]_i_2 
       (.I0(p_1_in),
        .I1(v0_next1[7]),
        .I2(v0_next23_out[7]),
        .I3(v0_next24_out[7]),
        .O(\v0[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[4]_i_3 
       (.I0(p_1_in),
        .I1(v0_next1[6]),
        .I2(v0_next23_out[6]),
        .I3(v0_next24_out[6]),
        .O(\v0[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[4]_i_4 
       (.I0(p_1_in),
        .I1(v0_next1[5]),
        .I2(v0_next23_out[5]),
        .I3(v0_next24_out[5]),
        .O(\v0[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[4]_i_5 
       (.I0(p_1_in),
        .I1(v0_next1[4]),
        .I2(v0_next23_out[4]),
        .I3(v0_next24_out[4]),
        .O(\v0[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[4]_i_6 
       (.I0(v0_next24_out[7]),
        .I1(v0_next23_out[7]),
        .I2(v0_next1[7]),
        .I3(\data_in_reg[63] [39]),
        .I4(p_1_in),
        .I5(v0_reg[7]),
        .O(\v0[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[4]_i_7 
       (.I0(v0_next24_out[6]),
        .I1(v0_next23_out[6]),
        .I2(v0_next1[6]),
        .I3(\data_in_reg[63] [38]),
        .I4(p_1_in),
        .I5(v0_reg[6]),
        .O(\v0[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[4]_i_8 
       (.I0(v0_next24_out[5]),
        .I1(v0_next23_out[5]),
        .I2(v0_next1[5]),
        .I3(\data_in_reg[63] [37]),
        .I4(p_1_in),
        .I5(v0_reg[5]),
        .O(\v0[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[4]_i_9 
       (.I0(v0_next24_out[4]),
        .I1(v0_next23_out[4]),
        .I2(v0_next1[4]),
        .I3(\data_in_reg[63] [36]),
        .I4(p_1_in),
        .I5(v0_reg[4]),
        .O(\v0[4]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[8]_i_2 
       (.I0(p_1_in),
        .I1(v0_next1[11]),
        .I2(v0_next23_out[11]),
        .I3(v0_next24_out[11]),
        .O(\v0[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[8]_i_3 
       (.I0(p_1_in),
        .I1(v0_next1[10]),
        .I2(v0_next23_out[10]),
        .I3(v0_next24_out[10]),
        .O(\v0[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[8]_i_4 
       (.I0(p_1_in),
        .I1(v0_next1[9]),
        .I2(v0_next23_out[9]),
        .I3(v0_next24_out[9]),
        .O(\v0[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v0[8]_i_5 
       (.I0(p_1_in),
        .I1(v0_next1[8]),
        .I2(v0_next23_out[8]),
        .I3(v0_next24_out[8]),
        .O(\v0[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[8]_i_6 
       (.I0(v0_next24_out[11]),
        .I1(v0_next23_out[11]),
        .I2(v0_next1[11]),
        .I3(\data_in_reg[63] [43]),
        .I4(p_1_in),
        .I5(v0_reg[11]),
        .O(\v0[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[8]_i_7 
       (.I0(v0_next24_out[10]),
        .I1(v0_next23_out[10]),
        .I2(v0_next1[10]),
        .I3(\data_in_reg[63] [42]),
        .I4(p_1_in),
        .I5(v0_reg[10]),
        .O(\v0[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[8]_i_8 
       (.I0(v0_next24_out[9]),
        .I1(v0_next23_out[9]),
        .I2(v0_next1[9]),
        .I3(\data_in_reg[63] [41]),
        .I4(p_1_in),
        .I5(v0_reg[9]),
        .O(\v0[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v0[8]_i_9 
       (.I0(v0_next24_out[8]),
        .I1(v0_next23_out[8]),
        .I2(v0_next1[8]),
        .I3(\data_in_reg[63] [40]),
        .I4(p_1_in),
        .I5(v0_reg[8]),
        .O(\v0[8]_i_9_n_0 ));
  CARRY4 v0_next2__93_carry
       (.CI(1'b0),
        .CO({v0_next2__93_carry_n_0,v0_next2__93_carry_n_1,v0_next2__93_carry_n_2,v0_next2__93_carry_n_3}),
        .CYINIT(1'b0),
        .DI({v1_reg[2:0],1'b0}),
        .O(v0_next24_out[6:3]),
        .S({v0_next2__93_carry_i_1_n_0,v0_next2__93_carry_i_2_n_0,v0_next2__93_carry_i_3_n_0,Q[99]}));
  CARRY4 v0_next2__93_carry__0
       (.CI(v0_next2__93_carry_n_0),
        .CO({v0_next2__93_carry__0_n_0,v0_next2__93_carry__0_n_1,v0_next2__93_carry__0_n_2,v0_next2__93_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg[6:3]),
        .O(v0_next24_out[10:7]),
        .S({v0_next2__93_carry__0_i_1_n_0,v0_next2__93_carry__0_i_2_n_0,v0_next2__93_carry__0_i_3_n_0,v0_next2__93_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2__93_carry__0_i_1
       (.I0(v1_reg[6]),
        .I1(Q[106]),
        .O(v0_next2__93_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2__93_carry__0_i_2
       (.I0(v1_reg[5]),
        .I1(Q[105]),
        .O(v0_next2__93_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2__93_carry__0_i_3
       (.I0(v1_reg[4]),
        .I1(Q[104]),
        .O(v0_next2__93_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2__93_carry__0_i_4
       (.I0(v1_reg[3]),
        .I1(Q[103]),
        .O(v0_next2__93_carry__0_i_4_n_0));
  CARRY4 v0_next2__93_carry__1
       (.CI(v0_next2__93_carry__0_n_0),
        .CO({v0_next2__93_carry__1_n_0,v0_next2__93_carry__1_n_1,v0_next2__93_carry__1_n_2,v0_next2__93_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg[10:7]),
        .O(v0_next24_out[14:11]),
        .S({v0_next2__93_carry__1_i_1_n_0,v0_next2__93_carry__1_i_2_n_0,v0_next2__93_carry__1_i_3_n_0,v0_next2__93_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2__93_carry__1_i_1
       (.I0(v1_reg[10]),
        .I1(Q[110]),
        .O(v0_next2__93_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2__93_carry__1_i_2
       (.I0(v1_reg[9]),
        .I1(Q[109]),
        .O(v0_next2__93_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2__93_carry__1_i_3
       (.I0(v1_reg[8]),
        .I1(Q[108]),
        .O(v0_next2__93_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2__93_carry__1_i_4
       (.I0(v1_reg[7]),
        .I1(Q[107]),
        .O(v0_next2__93_carry__1_i_4_n_0));
  CARRY4 v0_next2__93_carry__2
       (.CI(v0_next2__93_carry__1_n_0),
        .CO({v0_next2__93_carry__2_n_0,v0_next2__93_carry__2_n_1,v0_next2__93_carry__2_n_2,v0_next2__93_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg[14:11]),
        .O(v0_next24_out[18:15]),
        .S({v0_next2__93_carry__2_i_1_n_0,v0_next2__93_carry__2_i_2_n_0,v0_next2__93_carry__2_i_3_n_0,v0_next2__93_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2__93_carry__2_i_1
       (.I0(v1_reg[14]),
        .I1(Q[114]),
        .O(v0_next2__93_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2__93_carry__2_i_2
       (.I0(v1_reg[13]),
        .I1(Q[113]),
        .O(v0_next2__93_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2__93_carry__2_i_3
       (.I0(v1_reg[12]),
        .I1(Q[112]),
        .O(v0_next2__93_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2__93_carry__2_i_4
       (.I0(v1_reg[11]),
        .I1(Q[111]),
        .O(v0_next2__93_carry__2_i_4_n_0));
  CARRY4 v0_next2__93_carry__3
       (.CI(v0_next2__93_carry__2_n_0),
        .CO({v0_next2__93_carry__3_n_0,v0_next2__93_carry__3_n_1,v0_next2__93_carry__3_n_2,v0_next2__93_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg[18:15]),
        .O(v0_next24_out[22:19]),
        .S({v0_next2__93_carry__3_i_1_n_0,v0_next2__93_carry__3_i_2_n_0,v0_next2__93_carry__3_i_3_n_0,v0_next2__93_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2__93_carry__3_i_1
       (.I0(v1_reg[18]),
        .I1(Q[118]),
        .O(v0_next2__93_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2__93_carry__3_i_2
       (.I0(v1_reg[17]),
        .I1(Q[117]),
        .O(v0_next2__93_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2__93_carry__3_i_3
       (.I0(v1_reg[16]),
        .I1(Q[116]),
        .O(v0_next2__93_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2__93_carry__3_i_4
       (.I0(v1_reg[15]),
        .I1(Q[115]),
        .O(v0_next2__93_carry__3_i_4_n_0));
  CARRY4 v0_next2__93_carry__4
       (.CI(v0_next2__93_carry__3_n_0),
        .CO({v0_next2__93_carry__4_n_0,v0_next2__93_carry__4_n_1,v0_next2__93_carry__4_n_2,v0_next2__93_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg[22:19]),
        .O(v0_next24_out[26:23]),
        .S({v0_next2__93_carry__4_i_1_n_0,v0_next2__93_carry__4_i_2_n_0,v0_next2__93_carry__4_i_3_n_0,v0_next2__93_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2__93_carry__4_i_1
       (.I0(v1_reg[22]),
        .I1(Q[122]),
        .O(v0_next2__93_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2__93_carry__4_i_2
       (.I0(v1_reg[21]),
        .I1(Q[121]),
        .O(v0_next2__93_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2__93_carry__4_i_3
       (.I0(v1_reg[20]),
        .I1(Q[120]),
        .O(v0_next2__93_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2__93_carry__4_i_4
       (.I0(v1_reg[19]),
        .I1(Q[119]),
        .O(v0_next2__93_carry__4_i_4_n_0));
  CARRY4 v0_next2__93_carry__5
       (.CI(v0_next2__93_carry__4_n_0),
        .CO({v0_next2__93_carry__5_n_0,v0_next2__93_carry__5_n_1,v0_next2__93_carry__5_n_2,v0_next2__93_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg[26:23]),
        .O(v0_next24_out[30:27]),
        .S({v0_next2__93_carry__5_i_1_n_0,v0_next2__93_carry__5_i_2_n_0,v0_next2__93_carry__5_i_3_n_0,v0_next2__93_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2__93_carry__5_i_1
       (.I0(v1_reg[26]),
        .I1(Q[126]),
        .O(v0_next2__93_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2__93_carry__5_i_2
       (.I0(v1_reg[25]),
        .I1(Q[125]),
        .O(v0_next2__93_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2__93_carry__5_i_3
       (.I0(v1_reg[24]),
        .I1(Q[124]),
        .O(v0_next2__93_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2__93_carry__5_i_4
       (.I0(v1_reg[23]),
        .I1(Q[123]),
        .O(v0_next2__93_carry__5_i_4_n_0));
  CARRY4 v0_next2__93_carry__6
       (.CI(v0_next2__93_carry__5_n_0),
        .CO(NLW_v0_next2__93_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_v0_next2__93_carry__6_O_UNCONNECTED[3:1],v0_next24_out[31]}),
        .S({1'b0,1'b0,1'b0,v0_next2__93_carry__6_i_1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2__93_carry__6_i_1
       (.I0(v1_reg[27]),
        .I1(Q[127]),
        .O(v0_next2__93_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2__93_carry_i_1
       (.I0(v1_reg[2]),
        .I1(Q[102]),
        .O(v0_next2__93_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2__93_carry_i_2
       (.I0(v1_reg[1]),
        .I1(Q[101]),
        .O(v0_next2__93_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2__93_carry_i_3
       (.I0(v1_reg[0]),
        .I1(Q[100]),
        .O(v0_next2__93_carry_i_3_n_0));
  CARRY4 v0_next2_carry
       (.CI(1'b0),
        .CO({v0_next2_carry_n_0,v0_next2_carry_n_1,v0_next2_carry_n_2,v0_next2_carry_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg[3:0]),
        .O(v0_next23_out[3:0]),
        .S({v0_next2_carry_i_1_n_0,v0_next2_carry_i_2_n_0,v0_next2_carry_i_3_n_0,v0_next2_carry_i_4_n_0}));
  CARRY4 v0_next2_carry__0
       (.CI(v0_next2_carry_n_0),
        .CO({v0_next2_carry__0_n_0,v0_next2_carry__0_n_1,v0_next2_carry__0_n_2,v0_next2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg[7:4]),
        .O(v0_next23_out[7:4]),
        .S({v0_next2_carry__0_i_1_n_0,v0_next2_carry__0_i_2_n_0,v0_next2_carry__0_i_3_n_0,v0_next2_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry__0_i_1
       (.I0(v1_reg[7]),
        .I1(sum_next[7]),
        .O(v0_next2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry__0_i_2
       (.I0(v1_reg[6]),
        .I1(sum_next[6]),
        .O(v0_next2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry__0_i_3
       (.I0(v1_reg[5]),
        .I1(sum_next[5]),
        .O(v0_next2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry__0_i_4
       (.I0(v1_reg[4]),
        .I1(sum_next[4]),
        .O(v0_next2_carry__0_i_4_n_0));
  CARRY4 v0_next2_carry__1
       (.CI(v0_next2_carry__0_n_0),
        .CO({v0_next2_carry__1_n_0,v0_next2_carry__1_n_1,v0_next2_carry__1_n_2,v0_next2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg[11:8]),
        .O(v0_next23_out[11:8]),
        .S({v0_next2_carry__1_i_1_n_0,v0_next2_carry__1_i_2_n_0,v0_next2_carry__1_i_3_n_0,v0_next2_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry__1_i_1
       (.I0(v1_reg[11]),
        .I1(sum_next[11]),
        .O(v0_next2_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry__1_i_2
       (.I0(v1_reg[10]),
        .I1(sum_next[10]),
        .O(v0_next2_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry__1_i_3
       (.I0(v1_reg[9]),
        .I1(sum_next[9]),
        .O(v0_next2_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry__1_i_4
       (.I0(v1_reg[8]),
        .I1(sum_next[8]),
        .O(v0_next2_carry__1_i_4_n_0));
  CARRY4 v0_next2_carry__2
       (.CI(v0_next2_carry__1_n_0),
        .CO({v0_next2_carry__2_n_0,v0_next2_carry__2_n_1,v0_next2_carry__2_n_2,v0_next2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg[15:12]),
        .O(v0_next23_out[15:12]),
        .S({v0_next2_carry__2_i_1_n_0,v0_next2_carry__2_i_2_n_0,v0_next2_carry__2_i_3_n_0,v0_next2_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry__2_i_1
       (.I0(v1_reg[15]),
        .I1(sum_next[15]),
        .O(v0_next2_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry__2_i_2
       (.I0(v1_reg[14]),
        .I1(sum_next[14]),
        .O(v0_next2_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry__2_i_3
       (.I0(v1_reg[13]),
        .I1(sum_next[13]),
        .O(v0_next2_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry__2_i_4
       (.I0(v1_reg[12]),
        .I1(sum_next[12]),
        .O(v0_next2_carry__2_i_4_n_0));
  CARRY4 v0_next2_carry__3
       (.CI(v0_next2_carry__2_n_0),
        .CO({v0_next2_carry__3_n_0,v0_next2_carry__3_n_1,v0_next2_carry__3_n_2,v0_next2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg[19:16]),
        .O(v0_next23_out[19:16]),
        .S({v0_next2_carry__3_i_1_n_0,v0_next2_carry__3_i_2_n_0,v0_next2_carry__3_i_3_n_0,v0_next2_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry__3_i_1
       (.I0(v1_reg[19]),
        .I1(sum_next[19]),
        .O(v0_next2_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry__3_i_2
       (.I0(v1_reg[18]),
        .I1(sum_next[18]),
        .O(v0_next2_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry__3_i_3
       (.I0(v1_reg[17]),
        .I1(sum_next[17]),
        .O(v0_next2_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry__3_i_4
       (.I0(v1_reg[16]),
        .I1(sum_next[16]),
        .O(v0_next2_carry__3_i_4_n_0));
  CARRY4 v0_next2_carry__4
       (.CI(v0_next2_carry__3_n_0),
        .CO({v0_next2_carry__4_n_0,v0_next2_carry__4_n_1,v0_next2_carry__4_n_2,v0_next2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg[23:20]),
        .O(v0_next23_out[23:20]),
        .S({v0_next2_carry__4_i_1_n_0,v0_next2_carry__4_i_2_n_0,v0_next2_carry__4_i_3_n_0,v0_next2_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry__4_i_1
       (.I0(v1_reg[23]),
        .I1(sum_next[23]),
        .O(v0_next2_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry__4_i_2
       (.I0(v1_reg[22]),
        .I1(sum_next[22]),
        .O(v0_next2_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry__4_i_3
       (.I0(v1_reg[21]),
        .I1(sum_next[21]),
        .O(v0_next2_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry__4_i_4
       (.I0(v1_reg[20]),
        .I1(sum_next[20]),
        .O(v0_next2_carry__4_i_4_n_0));
  CARRY4 v0_next2_carry__5
       (.CI(v0_next2_carry__4_n_0),
        .CO({v0_next2_carry__5_n_0,v0_next2_carry__5_n_1,v0_next2_carry__5_n_2,v0_next2_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg[27:24]),
        .O(v0_next23_out[27:24]),
        .S({v0_next2_carry__5_i_1_n_0,v0_next2_carry__5_i_2_n_0,v0_next2_carry__5_i_3_n_0,v0_next2_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry__5_i_1
       (.I0(v1_reg[27]),
        .I1(sum_next[27]),
        .O(v0_next2_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry__5_i_2
       (.I0(v1_reg[26]),
        .I1(sum_next[26]),
        .O(v0_next2_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry__5_i_3
       (.I0(v1_reg[25]),
        .I1(sum_next[25]),
        .O(v0_next2_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry__5_i_4
       (.I0(v1_reg[24]),
        .I1(sum_next[24]),
        .O(v0_next2_carry__5_i_4_n_0));
  CARRY4 v0_next2_carry__6
       (.CI(v0_next2_carry__5_n_0),
        .CO({NLW_v0_next2_carry__6_CO_UNCONNECTED[3],v0_next2_carry__6_n_1,v0_next2_carry__6_n_2,v0_next2_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,v1_reg[30:28]}),
        .O(v0_next23_out[31:28]),
        .S({v0_next2_carry__6_i_1_n_0,v0_next2_carry__6_i_2_n_0,v0_next2_carry__6_i_3_n_0,v0_next2_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry__6_i_1
       (.I0(v1_reg[31]),
        .I1(sum_next[31]),
        .O(v0_next2_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry__6_i_2
       (.I0(v1_reg[30]),
        .I1(sum_next[30]),
        .O(v0_next2_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry__6_i_3
       (.I0(v1_reg[29]),
        .I1(sum_next[29]),
        .O(v0_next2_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry__6_i_4
       (.I0(v1_reg[28]),
        .I1(sum_next[28]),
        .O(v0_next2_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry_i_1
       (.I0(v1_reg[3]),
        .I1(sum_next[3]),
        .O(v0_next2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry_i_2
       (.I0(v1_reg[2]),
        .I1(sum_next[2]),
        .O(v0_next2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next2_carry_i_3
       (.I0(v1_reg[1]),
        .I1(sum_next[1]),
        .O(v0_next2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    v0_next2_carry_i_4
       (.I0(v1_reg[0]),
        .I1(sum_reg[0]),
        .O(v0_next2_carry_i_4_n_0));
  CARRY4 v0_next_carry
       (.CI(1'b0),
        .CO({v0_next_carry_n_0,v0_next_carry_n_1,v0_next_carry_n_2,v0_next_carry_n_3}),
        .CYINIT(1'b0),
        .DI(v0_reg[3:0]),
        .O(v0_next[3:0]),
        .S({v0_next_carry_i_1_n_0,v0_next_carry_i_2_n_0,v0_next_carry_i_3_n_0,v0_next_carry_i_4_n_0}));
  CARRY4 v0_next_carry__0
       (.CI(v0_next_carry_n_0),
        .CO({v0_next_carry__0_n_0,v0_next_carry__0_n_1,v0_next_carry__0_n_2,v0_next_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(v0_reg[7:4]),
        .O(v0_next[7:4]),
        .S({v0_next_carry__0_i_1_n_0,v0_next_carry__0_i_2_n_0,v0_next_carry__0_i_3_n_0,v0_next_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry__0_i_1
       (.I0(v0_reg[7]),
        .I1(v0_next1[7]),
        .I2(v0_next23_out[7]),
        .I3(v0_next24_out[7]),
        .O(v0_next_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry__0_i_2
       (.I0(v0_reg[6]),
        .I1(v0_next1[6]),
        .I2(v0_next23_out[6]),
        .I3(v0_next24_out[6]),
        .O(v0_next_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry__0_i_3
       (.I0(v0_reg[5]),
        .I1(v0_next1[5]),
        .I2(v0_next23_out[5]),
        .I3(v0_next24_out[5]),
        .O(v0_next_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry__0_i_4
       (.I0(v0_reg[4]),
        .I1(v0_next1[4]),
        .I2(v0_next23_out[4]),
        .I3(v0_next24_out[4]),
        .O(v0_next_carry__0_i_4_n_0));
  CARRY4 v0_next_carry__0_i_5
       (.CI(v0_next_carry_i_5_n_0),
        .CO({v0_next_carry__0_i_5_n_0,v0_next_carry__0_i_5_n_1,v0_next_carry__0_i_5_n_2,v0_next_carry__0_i_5_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg[12:9]),
        .O(v0_next1[7:4]),
        .S({v0_next_carry__0_i_6_n_0,v0_next_carry__0_i_7_n_0,v0_next_carry__0_i_8_n_0,v0_next_carry__0_i_9_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next_carry__0_i_6
       (.I0(v1_reg[12]),
        .I1(Q[71]),
        .O(v0_next_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next_carry__0_i_7
       (.I0(v1_reg[11]),
        .I1(Q[70]),
        .O(v0_next_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next_carry__0_i_8
       (.I0(v1_reg[10]),
        .I1(Q[69]),
        .O(v0_next_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next_carry__0_i_9
       (.I0(v1_reg[9]),
        .I1(Q[68]),
        .O(v0_next_carry__0_i_9_n_0));
  CARRY4 v0_next_carry__1
       (.CI(v0_next_carry__0_n_0),
        .CO({v0_next_carry__1_n_0,v0_next_carry__1_n_1,v0_next_carry__1_n_2,v0_next_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(v0_reg[11:8]),
        .O(v0_next[11:8]),
        .S({v0_next_carry__1_i_1_n_0,v0_next_carry__1_i_2_n_0,v0_next_carry__1_i_3_n_0,v0_next_carry__1_i_4_n_0}));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry__1_i_1
       (.I0(v0_reg[11]),
        .I1(v0_next1[11]),
        .I2(v0_next23_out[11]),
        .I3(v0_next24_out[11]),
        .O(v0_next_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry__1_i_2
       (.I0(v0_reg[10]),
        .I1(v0_next1[10]),
        .I2(v0_next23_out[10]),
        .I3(v0_next24_out[10]),
        .O(v0_next_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry__1_i_3
       (.I0(v0_reg[9]),
        .I1(v0_next1[9]),
        .I2(v0_next23_out[9]),
        .I3(v0_next24_out[9]),
        .O(v0_next_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry__1_i_4
       (.I0(v0_reg[8]),
        .I1(v0_next1[8]),
        .I2(v0_next23_out[8]),
        .I3(v0_next24_out[8]),
        .O(v0_next_carry__1_i_4_n_0));
  CARRY4 v0_next_carry__1_i_5
       (.CI(v0_next_carry__0_i_5_n_0),
        .CO({v0_next_carry__1_i_5_n_0,v0_next_carry__1_i_5_n_1,v0_next_carry__1_i_5_n_2,v0_next_carry__1_i_5_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg[16:13]),
        .O(v0_next1[11:8]),
        .S({v0_next_carry__1_i_6_n_0,v0_next_carry__1_i_7_n_0,v0_next_carry__1_i_8_n_0,v0_next_carry__1_i_9_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next_carry__1_i_6
       (.I0(v1_reg[16]),
        .I1(Q[75]),
        .O(v0_next_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next_carry__1_i_7
       (.I0(v1_reg[15]),
        .I1(Q[74]),
        .O(v0_next_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next_carry__1_i_8
       (.I0(v1_reg[14]),
        .I1(Q[73]),
        .O(v0_next_carry__1_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next_carry__1_i_9
       (.I0(v1_reg[13]),
        .I1(Q[72]),
        .O(v0_next_carry__1_i_9_n_0));
  CARRY4 v0_next_carry__2
       (.CI(v0_next_carry__1_n_0),
        .CO({v0_next_carry__2_n_0,v0_next_carry__2_n_1,v0_next_carry__2_n_2,v0_next_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(v0_reg[15:12]),
        .O(v0_next[15:12]),
        .S({v0_next_carry__2_i_1_n_0,v0_next_carry__2_i_2_n_0,v0_next_carry__2_i_3_n_0,v0_next_carry__2_i_4_n_0}));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry__2_i_1
       (.I0(v0_reg[15]),
        .I1(v0_next1[15]),
        .I2(v0_next23_out[15]),
        .I3(v0_next24_out[15]),
        .O(v0_next_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry__2_i_2
       (.I0(v0_reg[14]),
        .I1(v0_next1[14]),
        .I2(v0_next23_out[14]),
        .I3(v0_next24_out[14]),
        .O(v0_next_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry__2_i_3
       (.I0(v0_reg[13]),
        .I1(v0_next1[13]),
        .I2(v0_next23_out[13]),
        .I3(v0_next24_out[13]),
        .O(v0_next_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry__2_i_4
       (.I0(v0_reg[12]),
        .I1(v0_next1[12]),
        .I2(v0_next23_out[12]),
        .I3(v0_next24_out[12]),
        .O(v0_next_carry__2_i_4_n_0));
  CARRY4 v0_next_carry__2_i_5
       (.CI(v0_next_carry__1_i_5_n_0),
        .CO({v0_next_carry__2_i_5_n_0,v0_next_carry__2_i_5_n_1,v0_next_carry__2_i_5_n_2,v0_next_carry__2_i_5_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg[20:17]),
        .O(v0_next1[15:12]),
        .S({v0_next_carry__2_i_6_n_0,v0_next_carry__2_i_7_n_0,v0_next_carry__2_i_8_n_0,v0_next_carry__2_i_9_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next_carry__2_i_6
       (.I0(v1_reg[20]),
        .I1(Q[79]),
        .O(v0_next_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next_carry__2_i_7
       (.I0(v1_reg[19]),
        .I1(Q[78]),
        .O(v0_next_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next_carry__2_i_8
       (.I0(v1_reg[18]),
        .I1(Q[77]),
        .O(v0_next_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next_carry__2_i_9
       (.I0(v1_reg[17]),
        .I1(Q[76]),
        .O(v0_next_carry__2_i_9_n_0));
  CARRY4 v0_next_carry__3
       (.CI(v0_next_carry__2_n_0),
        .CO({v0_next_carry__3_n_0,v0_next_carry__3_n_1,v0_next_carry__3_n_2,v0_next_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(v0_reg[19:16]),
        .O(v0_next[19:16]),
        .S({v0_next_carry__3_i_1_n_0,v0_next_carry__3_i_2_n_0,v0_next_carry__3_i_3_n_0,v0_next_carry__3_i_4_n_0}));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry__3_i_1
       (.I0(v0_reg[19]),
        .I1(v0_next1[19]),
        .I2(v0_next23_out[19]),
        .I3(v0_next24_out[19]),
        .O(v0_next_carry__3_i_1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry__3_i_2
       (.I0(v0_reg[18]),
        .I1(v0_next1[18]),
        .I2(v0_next23_out[18]),
        .I3(v0_next24_out[18]),
        .O(v0_next_carry__3_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry__3_i_3
       (.I0(v0_reg[17]),
        .I1(v0_next1[17]),
        .I2(v0_next23_out[17]),
        .I3(v0_next24_out[17]),
        .O(v0_next_carry__3_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry__3_i_4
       (.I0(v0_reg[16]),
        .I1(v0_next1[16]),
        .I2(v0_next23_out[16]),
        .I3(v0_next24_out[16]),
        .O(v0_next_carry__3_i_4_n_0));
  CARRY4 v0_next_carry__3_i_5
       (.CI(v0_next_carry__2_i_5_n_0),
        .CO({v0_next_carry__3_i_5_n_0,v0_next_carry__3_i_5_n_1,v0_next_carry__3_i_5_n_2,v0_next_carry__3_i_5_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg[24:21]),
        .O(v0_next1[19:16]),
        .S({v0_next_carry__3_i_6_n_0,v0_next_carry__3_i_7_n_0,v0_next_carry__3_i_8_n_0,v0_next_carry__3_i_9_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next_carry__3_i_6
       (.I0(v1_reg[24]),
        .I1(Q[83]),
        .O(v0_next_carry__3_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next_carry__3_i_7
       (.I0(v1_reg[23]),
        .I1(Q[82]),
        .O(v0_next_carry__3_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next_carry__3_i_8
       (.I0(v1_reg[22]),
        .I1(Q[81]),
        .O(v0_next_carry__3_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next_carry__3_i_9
       (.I0(v1_reg[21]),
        .I1(Q[80]),
        .O(v0_next_carry__3_i_9_n_0));
  CARRY4 v0_next_carry__4
       (.CI(v0_next_carry__3_n_0),
        .CO({v0_next_carry__4_n_0,v0_next_carry__4_n_1,v0_next_carry__4_n_2,v0_next_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(v0_reg[23:20]),
        .O(v0_next[23:20]),
        .S({v0_next_carry__4_i_1_n_0,v0_next_carry__4_i_2_n_0,v0_next_carry__4_i_3_n_0,v0_next_carry__4_i_4_n_0}));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry__4_i_1
       (.I0(v0_reg[23]),
        .I1(v0_next1[23]),
        .I2(v0_next23_out[23]),
        .I3(v0_next24_out[23]),
        .O(v0_next_carry__4_i_1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry__4_i_2
       (.I0(v0_reg[22]),
        .I1(v0_next1[22]),
        .I2(v0_next23_out[22]),
        .I3(v0_next24_out[22]),
        .O(v0_next_carry__4_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry__4_i_3
       (.I0(v0_reg[21]),
        .I1(v0_next1[21]),
        .I2(v0_next23_out[21]),
        .I3(v0_next24_out[21]),
        .O(v0_next_carry__4_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry__4_i_4
       (.I0(v0_reg[20]),
        .I1(v0_next1[20]),
        .I2(v0_next23_out[20]),
        .I3(v0_next24_out[20]),
        .O(v0_next_carry__4_i_4_n_0));
  CARRY4 v0_next_carry__4_i_5
       (.CI(v0_next_carry__3_i_5_n_0),
        .CO({v0_next_carry__4_i_5_n_0,v0_next_carry__4_i_5_n_1,v0_next_carry__4_i_5_n_2,v0_next_carry__4_i_5_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg[28:25]),
        .O(v0_next1[23:20]),
        .S({v0_next_carry__4_i_6_n_0,v0_next_carry__4_i_7_n_0,v0_next_carry__4_i_8_n_0,v0_next_carry__4_i_9_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next_carry__4_i_6
       (.I0(v1_reg[28]),
        .I1(Q[87]),
        .O(v0_next_carry__4_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next_carry__4_i_7
       (.I0(v1_reg[27]),
        .I1(Q[86]),
        .O(v0_next_carry__4_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next_carry__4_i_8
       (.I0(v1_reg[26]),
        .I1(Q[85]),
        .O(v0_next_carry__4_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next_carry__4_i_9
       (.I0(v1_reg[25]),
        .I1(Q[84]),
        .O(v0_next_carry__4_i_9_n_0));
  CARRY4 v0_next_carry__5
       (.CI(v0_next_carry__4_n_0),
        .CO({v0_next_carry__5_n_0,v0_next_carry__5_n_1,v0_next_carry__5_n_2,v0_next_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(v0_reg[27:24]),
        .O(v0_next[27:24]),
        .S({v0_next_carry__5_i_1_n_0,v0_next_carry__5_i_2_n_0,v0_next_carry__5_i_3_n_0,v0_next_carry__5_i_4_n_0}));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry__5_i_1
       (.I0(v0_reg[27]),
        .I1(v0_next1[27]),
        .I2(v0_next23_out[27]),
        .I3(v0_next24_out[27]),
        .O(v0_next_carry__5_i_1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry__5_i_2
       (.I0(v0_reg[26]),
        .I1(v0_next1[26]),
        .I2(v0_next23_out[26]),
        .I3(v0_next24_out[26]),
        .O(v0_next_carry__5_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry__5_i_3
       (.I0(v0_reg[25]),
        .I1(v0_next1[25]),
        .I2(v0_next23_out[25]),
        .I3(v0_next24_out[25]),
        .O(v0_next_carry__5_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry__5_i_4
       (.I0(v0_reg[24]),
        .I1(v0_next1[24]),
        .I2(v0_next23_out[24]),
        .I3(v0_next24_out[24]),
        .O(v0_next_carry__5_i_4_n_0));
  CARRY4 v0_next_carry__5_i_5
       (.CI(v0_next_carry__4_i_5_n_0),
        .CO({v0_next_carry__5_i_5_n_0,v0_next_carry__5_i_5_n_1,v0_next_carry__5_i_5_n_2,v0_next_carry__5_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,v1_reg[31:29]}),
        .O(v0_next1[27:24]),
        .S({Q[91],v0_next_carry__5_i_6_n_0,v0_next_carry__5_i_7_n_0,v0_next_carry__5_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next_carry__5_i_6
       (.I0(v1_reg[31]),
        .I1(Q[90]),
        .O(v0_next_carry__5_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next_carry__5_i_7
       (.I0(v1_reg[30]),
        .I1(Q[89]),
        .O(v0_next_carry__5_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next_carry__5_i_8
       (.I0(v1_reg[29]),
        .I1(Q[88]),
        .O(v0_next_carry__5_i_8_n_0));
  CARRY4 v0_next_carry__6
       (.CI(v0_next_carry__5_n_0),
        .CO({NLW_v0_next_carry__6_CO_UNCONNECTED[3],v0_next_carry__6_n_1,v0_next_carry__6_n_2,v0_next_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,v0_reg[30:28]}),
        .O(v0_next[31:28]),
        .S({v0_next_carry__6_i_1_n_0,v0_next_carry__6_i_2_n_0,v0_next_carry__6_i_3_n_0,v0_next_carry__6_i_4_n_0}));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry__6_i_1
       (.I0(v0_next23_out[31]),
        .I1(v0_next1[31]),
        .I2(v0_next24_out[31]),
        .I3(v0_reg[31]),
        .O(v0_next_carry__6_i_1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry__6_i_2
       (.I0(v0_reg[30]),
        .I1(v0_next1[30]),
        .I2(v0_next23_out[30]),
        .I3(v0_next24_out[30]),
        .O(v0_next_carry__6_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry__6_i_3
       (.I0(v0_reg[29]),
        .I1(v0_next1[29]),
        .I2(v0_next23_out[29]),
        .I3(v0_next24_out[29]),
        .O(v0_next_carry__6_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry__6_i_4
       (.I0(v0_reg[28]),
        .I1(v0_next1[28]),
        .I2(v0_next23_out[28]),
        .I3(v0_next24_out[28]),
        .O(v0_next_carry__6_i_4_n_0));
  CARRY4 v0_next_carry__6_i_5
       (.CI(v0_next_carry__5_i_5_n_0),
        .CO({NLW_v0_next_carry__6_i_5_CO_UNCONNECTED[3],v0_next_carry__6_i_5_n_1,v0_next_carry__6_i_5_n_2,v0_next_carry__6_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(v0_next1[31:28]),
        .S(Q[95:92]));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry_i_1
       (.I0(v0_reg[3]),
        .I1(v0_next1[3]),
        .I2(v0_next23_out[3]),
        .I3(v0_next24_out[3]),
        .O(v0_next_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry_i_2
       (.I0(v0_reg[2]),
        .I1(v0_next1[2]),
        .I2(v0_next23_out[2]),
        .I3(Q[98]),
        .O(v0_next_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry_i_3
       (.I0(v0_reg[1]),
        .I1(v0_next1[1]),
        .I2(v0_next23_out[1]),
        .I3(Q[97]),
        .O(v0_next_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_next_carry_i_4
       (.I0(v0_reg[0]),
        .I1(v0_next1[0]),
        .I2(v0_next23_out[0]),
        .I3(Q[96]),
        .O(v0_next_carry_i_4_n_0));
  CARRY4 v0_next_carry_i_5
       (.CI(1'b0),
        .CO({v0_next_carry_i_5_n_0,v0_next_carry_i_5_n_1,v0_next_carry_i_5_n_2,v0_next_carry_i_5_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg[8:5]),
        .O(v0_next1[3:0]),
        .S({v0_next_carry_i_6_n_0,v0_next_carry_i_7_n_0,v0_next_carry_i_8_n_0,v0_next_carry_i_9_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next_carry_i_6
       (.I0(v1_reg[8]),
        .I1(Q[67]),
        .O(v0_next_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next_carry_i_7
       (.I0(v1_reg[7]),
        .I1(Q[66]),
        .O(v0_next_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next_carry_i_8
       (.I0(v1_reg[6]),
        .I1(Q[65]),
        .O(v0_next_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v0_next_carry_i_9
       (.I0(v1_reg[5]),
        .I1(Q[64]),
        .O(v0_next_carry_i_9_n_0));
  FDCE \v0_reg[0] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[0]_i_1_n_7 ),
        .Q(v0_reg[0]));
  CARRY4 \v0_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\v0_reg[0]_i_1_n_0 ,\v0_reg[0]_i_1_n_1 ,\v0_reg[0]_i_1_n_2 ,\v0_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\v0[0]_i_2_n_0 ,\v0[0]_i_3_n_0 ,\v0[0]_i_4_n_0 ,\v0[0]_i_5_n_0 }),
        .O({\v0_reg[0]_i_1_n_4 ,\v0_reg[0]_i_1_n_5 ,\v0_reg[0]_i_1_n_6 ,\v0_reg[0]_i_1_n_7 }),
        .S({\v0[0]_i_6_n_0 ,\v0[0]_i_7_n_0 ,\v0[0]_i_8_n_0 ,\v0[0]_i_9_n_0 }));
  FDCE \v0_reg[10] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[8]_i_1_n_5 ),
        .Q(v0_reg[10]));
  FDCE \v0_reg[11] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[8]_i_1_n_4 ),
        .Q(v0_reg[11]));
  FDCE \v0_reg[12] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[12]_i_1_n_7 ),
        .Q(v0_reg[12]));
  CARRY4 \v0_reg[12]_i_1 
       (.CI(\v0_reg[8]_i_1_n_0 ),
        .CO({\v0_reg[12]_i_1_n_0 ,\v0_reg[12]_i_1_n_1 ,\v0_reg[12]_i_1_n_2 ,\v0_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\v0[12]_i_2_n_0 ,\v0[12]_i_3_n_0 ,\v0[12]_i_4_n_0 ,\v0[12]_i_5_n_0 }),
        .O({\v0_reg[12]_i_1_n_4 ,\v0_reg[12]_i_1_n_5 ,\v0_reg[12]_i_1_n_6 ,\v0_reg[12]_i_1_n_7 }),
        .S({\v0[12]_i_6_n_0 ,\v0[12]_i_7_n_0 ,\v0[12]_i_8_n_0 ,\v0[12]_i_9_n_0 }));
  FDCE \v0_reg[13] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[12]_i_1_n_6 ),
        .Q(v0_reg[13]));
  FDCE \v0_reg[14] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[12]_i_1_n_5 ),
        .Q(v0_reg[14]));
  FDCE \v0_reg[15] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[12]_i_1_n_4 ),
        .Q(v0_reg[15]));
  FDCE \v0_reg[16] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[16]_i_1_n_7 ),
        .Q(v0_reg[16]));
  CARRY4 \v0_reg[16]_i_1 
       (.CI(\v0_reg[12]_i_1_n_0 ),
        .CO({\v0_reg[16]_i_1_n_0 ,\v0_reg[16]_i_1_n_1 ,\v0_reg[16]_i_1_n_2 ,\v0_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\v0[16]_i_2_n_0 ,\v0[16]_i_3_n_0 ,\v0[16]_i_4_n_0 ,\v0[16]_i_5_n_0 }),
        .O({\v0_reg[16]_i_1_n_4 ,\v0_reg[16]_i_1_n_5 ,\v0_reg[16]_i_1_n_6 ,\v0_reg[16]_i_1_n_7 }),
        .S({\v0[16]_i_6_n_0 ,\v0[16]_i_7_n_0 ,\v0[16]_i_8_n_0 ,\v0[16]_i_9_n_0 }));
  FDCE \v0_reg[17] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[16]_i_1_n_6 ),
        .Q(v0_reg[17]));
  FDCE \v0_reg[18] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[16]_i_1_n_5 ),
        .Q(v0_reg[18]));
  FDCE \v0_reg[19] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[16]_i_1_n_4 ),
        .Q(v0_reg[19]));
  FDCE \v0_reg[1] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[0]_i_1_n_6 ),
        .Q(v0_reg[1]));
  FDCE \v0_reg[20] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[20]_i_1_n_7 ),
        .Q(v0_reg[20]));
  CARRY4 \v0_reg[20]_i_1 
       (.CI(\v0_reg[16]_i_1_n_0 ),
        .CO({\v0_reg[20]_i_1_n_0 ,\v0_reg[20]_i_1_n_1 ,\v0_reg[20]_i_1_n_2 ,\v0_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\v0[20]_i_2_n_0 ,\v0[20]_i_3_n_0 ,\v0[20]_i_4_n_0 ,\v0[20]_i_5_n_0 }),
        .O({\v0_reg[20]_i_1_n_4 ,\v0_reg[20]_i_1_n_5 ,\v0_reg[20]_i_1_n_6 ,\v0_reg[20]_i_1_n_7 }),
        .S({\v0[20]_i_6_n_0 ,\v0[20]_i_7_n_0 ,\v0[20]_i_8_n_0 ,\v0[20]_i_9_n_0 }));
  FDCE \v0_reg[21] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[20]_i_1_n_6 ),
        .Q(v0_reg[21]));
  FDCE \v0_reg[22] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[20]_i_1_n_5 ),
        .Q(v0_reg[22]));
  FDCE \v0_reg[23] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[20]_i_1_n_4 ),
        .Q(v0_reg[23]));
  FDCE \v0_reg[24] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[24]_i_1_n_7 ),
        .Q(v0_reg[24]));
  CARRY4 \v0_reg[24]_i_1 
       (.CI(\v0_reg[20]_i_1_n_0 ),
        .CO({\v0_reg[24]_i_1_n_0 ,\v0_reg[24]_i_1_n_1 ,\v0_reg[24]_i_1_n_2 ,\v0_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\v0[24]_i_2_n_0 ,\v0[24]_i_3_n_0 ,\v0[24]_i_4_n_0 ,\v0[24]_i_5_n_0 }),
        .O({\v0_reg[24]_i_1_n_4 ,\v0_reg[24]_i_1_n_5 ,\v0_reg[24]_i_1_n_6 ,\v0_reg[24]_i_1_n_7 }),
        .S({\v0[24]_i_6_n_0 ,\v0[24]_i_7_n_0 ,\v0[24]_i_8_n_0 ,\v0[24]_i_9_n_0 }));
  FDCE \v0_reg[25] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[24]_i_1_n_6 ),
        .Q(v0_reg[25]));
  FDCE \v0_reg[26] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[24]_i_1_n_5 ),
        .Q(v0_reg[26]));
  FDCE \v0_reg[27] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[24]_i_1_n_4 ),
        .Q(v0_reg[27]));
  FDCE \v0_reg[28] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[28]_i_1_n_7 ),
        .Q(v0_reg[28]));
  CARRY4 \v0_reg[28]_i_1 
       (.CI(\v0_reg[24]_i_1_n_0 ),
        .CO({\NLW_v0_reg[28]_i_1_CO_UNCONNECTED [3],\v0_reg[28]_i_1_n_1 ,\v0_reg[28]_i_1_n_2 ,\v0_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\v0[28]_i_2_n_0 ,\v0[28]_i_3_n_0 ,\v0[28]_i_4_n_0 }),
        .O({\v0_reg[28]_i_1_n_4 ,\v0_reg[28]_i_1_n_5 ,\v0_reg[28]_i_1_n_6 ,\v0_reg[28]_i_1_n_7 }),
        .S({\v0[28]_i_5_n_0 ,\v0[28]_i_6_n_0 ,\v0[28]_i_7_n_0 ,\v0[28]_i_8_n_0 }));
  FDCE \v0_reg[29] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[28]_i_1_n_6 ),
        .Q(v0_reg[29]));
  FDCE \v0_reg[2] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[0]_i_1_n_5 ),
        .Q(v0_reg[2]));
  FDCE \v0_reg[30] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[28]_i_1_n_5 ),
        .Q(v0_reg[30]));
  FDCE \v0_reg[31] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[28]_i_1_n_4 ),
        .Q(v0_reg[31]));
  FDCE \v0_reg[3] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[0]_i_1_n_4 ),
        .Q(v0_reg[3]));
  FDCE \v0_reg[4] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[4]_i_1_n_7 ),
        .Q(v0_reg[4]));
  CARRY4 \v0_reg[4]_i_1 
       (.CI(\v0_reg[0]_i_1_n_0 ),
        .CO({\v0_reg[4]_i_1_n_0 ,\v0_reg[4]_i_1_n_1 ,\v0_reg[4]_i_1_n_2 ,\v0_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\v0[4]_i_2_n_0 ,\v0[4]_i_3_n_0 ,\v0[4]_i_4_n_0 ,\v0[4]_i_5_n_0 }),
        .O({\v0_reg[4]_i_1_n_4 ,\v0_reg[4]_i_1_n_5 ,\v0_reg[4]_i_1_n_6 ,\v0_reg[4]_i_1_n_7 }),
        .S({\v0[4]_i_6_n_0 ,\v0[4]_i_7_n_0 ,\v0[4]_i_8_n_0 ,\v0[4]_i_9_n_0 }));
  FDCE \v0_reg[5] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[4]_i_1_n_6 ),
        .Q(v0_reg[5]));
  FDCE \v0_reg[6] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[4]_i_1_n_5 ),
        .Q(v0_reg[6]));
  FDCE \v0_reg[7] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[4]_i_1_n_4 ),
        .Q(v0_reg[7]));
  FDCE \v0_reg[8] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[8]_i_1_n_7 ),
        .Q(v0_reg[8]));
  CARRY4 \v0_reg[8]_i_1 
       (.CI(\v0_reg[4]_i_1_n_0 ),
        .CO({\v0_reg[8]_i_1_n_0 ,\v0_reg[8]_i_1_n_1 ,\v0_reg[8]_i_1_n_2 ,\v0_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\v0[8]_i_2_n_0 ,\v0[8]_i_3_n_0 ,\v0[8]_i_4_n_0 ,\v0[8]_i_5_n_0 }),
        .O({\v0_reg[8]_i_1_n_4 ,\v0_reg[8]_i_1_n_5 ,\v0_reg[8]_i_1_n_6 ,\v0_reg[8]_i_1_n_7 }),
        .S({\v0[8]_i_6_n_0 ,\v0[8]_i_7_n_0 ,\v0[8]_i_8_n_0 ,\v0[8]_i_9_n_0 }));
  FDCE \v0_reg[9] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v0_reg[8]_i_1_n_6 ),
        .Q(v0_reg[9]));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[0]_i_2 
       (.I0(p_1_in),
        .I1(v1_next1[3]),
        .I2(v1_next21_out[3]),
        .I3(v1_next22_out[3]),
        .O(\v1[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[0]_i_3 
       (.I0(p_1_in),
        .I1(v1_next1[2]),
        .I2(v1_next21_out[2]),
        .I3(Q[34]),
        .O(\v1[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[0]_i_4 
       (.I0(p_1_in),
        .I1(v1_next1[1]),
        .I2(v1_next21_out[1]),
        .I3(Q[33]),
        .O(\v1[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[0]_i_5 
       (.I0(p_1_in),
        .I1(v1_next1[0]),
        .I2(v1_next21_out[0]),
        .I3(Q[32]),
        .O(\v1[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[0]_i_6 
       (.I0(v1_next22_out[3]),
        .I1(v1_next21_out[3]),
        .I2(v1_next1[3]),
        .I3(\data_in_reg[63] [3]),
        .I4(p_1_in),
        .I5(v1_reg[3]),
        .O(\v1[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[0]_i_7 
       (.I0(Q[34]),
        .I1(v1_next21_out[2]),
        .I2(v1_next1[2]),
        .I3(\data_in_reg[63] [2]),
        .I4(p_1_in),
        .I5(v1_reg[2]),
        .O(\v1[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[0]_i_8 
       (.I0(Q[33]),
        .I1(v1_next21_out[1]),
        .I2(v1_next1[1]),
        .I3(\data_in_reg[63] [1]),
        .I4(p_1_in),
        .I5(v1_reg[1]),
        .O(\v1[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[0]_i_9 
       (.I0(Q[32]),
        .I1(v1_next21_out[0]),
        .I2(v1_next1[0]),
        .I3(\data_in_reg[63] [0]),
        .I4(p_1_in),
        .I5(v1_reg[0]),
        .O(\v1[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[12]_i_2 
       (.I0(p_1_in),
        .I1(v1_next1[15]),
        .I2(v1_next21_out[15]),
        .I3(v1_next22_out[15]),
        .O(\v1[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[12]_i_3 
       (.I0(p_1_in),
        .I1(v1_next1[14]),
        .I2(v1_next21_out[14]),
        .I3(v1_next22_out[14]),
        .O(\v1[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[12]_i_4 
       (.I0(p_1_in),
        .I1(v1_next1[13]),
        .I2(v1_next21_out[13]),
        .I3(v1_next22_out[13]),
        .O(\v1[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[12]_i_5 
       (.I0(p_1_in),
        .I1(v1_next1[12]),
        .I2(v1_next21_out[12]),
        .I3(v1_next22_out[12]),
        .O(\v1[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[12]_i_6 
       (.I0(v1_next22_out[15]),
        .I1(v1_next21_out[15]),
        .I2(v1_next1[15]),
        .I3(\data_in_reg[63] [15]),
        .I4(p_1_in),
        .I5(v1_reg[15]),
        .O(\v1[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[12]_i_7 
       (.I0(v1_next22_out[14]),
        .I1(v1_next21_out[14]),
        .I2(v1_next1[14]),
        .I3(\data_in_reg[63] [14]),
        .I4(p_1_in),
        .I5(v1_reg[14]),
        .O(\v1[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[12]_i_8 
       (.I0(v1_next22_out[13]),
        .I1(v1_next21_out[13]),
        .I2(v1_next1[13]),
        .I3(\data_in_reg[63] [13]),
        .I4(p_1_in),
        .I5(v1_reg[13]),
        .O(\v1[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[12]_i_9 
       (.I0(v1_next22_out[12]),
        .I1(v1_next21_out[12]),
        .I2(v1_next1[12]),
        .I3(\data_in_reg[63] [12]),
        .I4(p_1_in),
        .I5(v1_reg[12]),
        .O(\v1[12]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[16]_i_2 
       (.I0(p_1_in),
        .I1(v1_next1[19]),
        .I2(v1_next21_out[19]),
        .I3(v1_next22_out[19]),
        .O(\v1[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[16]_i_3 
       (.I0(p_1_in),
        .I1(v1_next1[18]),
        .I2(v1_next21_out[18]),
        .I3(v1_next22_out[18]),
        .O(\v1[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[16]_i_4 
       (.I0(p_1_in),
        .I1(v1_next1[17]),
        .I2(v1_next21_out[17]),
        .I3(v1_next22_out[17]),
        .O(\v1[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[16]_i_5 
       (.I0(p_1_in),
        .I1(v1_next1[16]),
        .I2(v1_next21_out[16]),
        .I3(v1_next22_out[16]),
        .O(\v1[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[16]_i_6 
       (.I0(v1_next22_out[19]),
        .I1(v1_next21_out[19]),
        .I2(v1_next1[19]),
        .I3(\data_in_reg[63] [19]),
        .I4(p_1_in),
        .I5(v1_reg[19]),
        .O(\v1[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[16]_i_7 
       (.I0(v1_next22_out[18]),
        .I1(v1_next21_out[18]),
        .I2(v1_next1[18]),
        .I3(\data_in_reg[63] [18]),
        .I4(p_1_in),
        .I5(v1_reg[18]),
        .O(\v1[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[16]_i_8 
       (.I0(v1_next22_out[17]),
        .I1(v1_next21_out[17]),
        .I2(v1_next1[17]),
        .I3(\data_in_reg[63] [17]),
        .I4(p_1_in),
        .I5(v1_reg[17]),
        .O(\v1[16]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[16]_i_9 
       (.I0(v1_next22_out[16]),
        .I1(v1_next21_out[16]),
        .I2(v1_next1[16]),
        .I3(\data_in_reg[63] [16]),
        .I4(p_1_in),
        .I5(v1_reg[16]),
        .O(\v1[16]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[20]_i_2 
       (.I0(p_1_in),
        .I1(v1_next1[23]),
        .I2(v1_next21_out[23]),
        .I3(v1_next22_out[23]),
        .O(\v1[20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[20]_i_3 
       (.I0(p_1_in),
        .I1(v1_next1[22]),
        .I2(v1_next21_out[22]),
        .I3(v1_next22_out[22]),
        .O(\v1[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[20]_i_4 
       (.I0(p_1_in),
        .I1(v1_next1[21]),
        .I2(v1_next21_out[21]),
        .I3(v1_next22_out[21]),
        .O(\v1[20]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[20]_i_5 
       (.I0(p_1_in),
        .I1(v1_next1[20]),
        .I2(v1_next21_out[20]),
        .I3(v1_next22_out[20]),
        .O(\v1[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[20]_i_6 
       (.I0(v1_next22_out[23]),
        .I1(v1_next21_out[23]),
        .I2(v1_next1[23]),
        .I3(\data_in_reg[63] [23]),
        .I4(p_1_in),
        .I5(v1_reg[23]),
        .O(\v1[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[20]_i_7 
       (.I0(v1_next22_out[22]),
        .I1(v1_next21_out[22]),
        .I2(v1_next1[22]),
        .I3(\data_in_reg[63] [22]),
        .I4(p_1_in),
        .I5(v1_reg[22]),
        .O(\v1[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[20]_i_8 
       (.I0(v1_next22_out[21]),
        .I1(v1_next21_out[21]),
        .I2(v1_next1[21]),
        .I3(\data_in_reg[63] [21]),
        .I4(p_1_in),
        .I5(v1_reg[21]),
        .O(\v1[20]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[20]_i_9 
       (.I0(v1_next22_out[20]),
        .I1(v1_next21_out[20]),
        .I2(v1_next1[20]),
        .I3(\data_in_reg[63] [20]),
        .I4(p_1_in),
        .I5(v1_reg[20]),
        .O(\v1[20]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[24]_i_2 
       (.I0(p_1_in),
        .I1(v1_next1[27]),
        .I2(v1_next21_out[27]),
        .I3(v1_next22_out[27]),
        .O(\v1[24]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[24]_i_3 
       (.I0(p_1_in),
        .I1(v1_next1[26]),
        .I2(v1_next21_out[26]),
        .I3(v1_next22_out[26]),
        .O(\v1[24]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[24]_i_4 
       (.I0(p_1_in),
        .I1(v1_next1[25]),
        .I2(v1_next21_out[25]),
        .I3(v1_next22_out[25]),
        .O(\v1[24]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[24]_i_5 
       (.I0(p_1_in),
        .I1(v1_next1[24]),
        .I2(v1_next21_out[24]),
        .I3(v1_next22_out[24]),
        .O(\v1[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[24]_i_6 
       (.I0(v1_next22_out[27]),
        .I1(v1_next21_out[27]),
        .I2(v1_next1[27]),
        .I3(\data_in_reg[63] [27]),
        .I4(p_1_in),
        .I5(v1_reg[27]),
        .O(\v1[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[24]_i_7 
       (.I0(v1_next22_out[26]),
        .I1(v1_next21_out[26]),
        .I2(v1_next1[26]),
        .I3(\data_in_reg[63] [26]),
        .I4(p_1_in),
        .I5(v1_reg[26]),
        .O(\v1[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[24]_i_8 
       (.I0(v1_next22_out[25]),
        .I1(v1_next21_out[25]),
        .I2(v1_next1[25]),
        .I3(\data_in_reg[63] [25]),
        .I4(p_1_in),
        .I5(v1_reg[25]),
        .O(\v1[24]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[24]_i_9 
       (.I0(v1_next22_out[24]),
        .I1(v1_next21_out[24]),
        .I2(v1_next1[24]),
        .I3(\data_in_reg[63] [24]),
        .I4(p_1_in),
        .I5(v1_reg[24]),
        .O(\v1[24]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[28]_i_2 
       (.I0(p_1_in),
        .I1(v1_next1[30]),
        .I2(v1_next21_out[30]),
        .I3(v1_next22_out[30]),
        .O(\v1[28]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[28]_i_3 
       (.I0(p_1_in),
        .I1(v1_next1[29]),
        .I2(v1_next21_out[29]),
        .I3(v1_next22_out[29]),
        .O(\v1[28]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[28]_i_4 
       (.I0(p_1_in),
        .I1(v1_next1[28]),
        .I2(v1_next21_out[28]),
        .I3(v1_next22_out[28]),
        .O(\v1[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6996FFFF69960000)) 
    \v1[28]_i_5 
       (.I0(v1_next21_out[31]),
        .I1(v1_next1[31]),
        .I2(v1_next22_out[31]),
        .I3(v1_reg[31]),
        .I4(p_1_in),
        .I5(\data_in_reg[63] [31]),
        .O(\v1[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[28]_i_6 
       (.I0(v1_next22_out[30]),
        .I1(v1_next21_out[30]),
        .I2(v1_next1[30]),
        .I3(\data_in_reg[63] [30]),
        .I4(p_1_in),
        .I5(v1_reg[30]),
        .O(\v1[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[28]_i_7 
       (.I0(v1_next22_out[29]),
        .I1(v1_next21_out[29]),
        .I2(v1_next1[29]),
        .I3(\data_in_reg[63] [29]),
        .I4(p_1_in),
        .I5(v1_reg[29]),
        .O(\v1[28]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[28]_i_8 
       (.I0(v1_next22_out[28]),
        .I1(v1_next21_out[28]),
        .I2(v1_next1[28]),
        .I3(\data_in_reg[63] [28]),
        .I4(p_1_in),
        .I5(v1_reg[28]),
        .O(\v1[28]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[4]_i_2 
       (.I0(p_1_in),
        .I1(v1_next1[7]),
        .I2(v1_next21_out[7]),
        .I3(v1_next22_out[7]),
        .O(\v1[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[4]_i_3 
       (.I0(p_1_in),
        .I1(v1_next1[6]),
        .I2(v1_next21_out[6]),
        .I3(v1_next22_out[6]),
        .O(\v1[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[4]_i_4 
       (.I0(p_1_in),
        .I1(v1_next1[5]),
        .I2(v1_next21_out[5]),
        .I3(v1_next22_out[5]),
        .O(\v1[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[4]_i_5 
       (.I0(p_1_in),
        .I1(v1_next1[4]),
        .I2(v1_next21_out[4]),
        .I3(v1_next22_out[4]),
        .O(\v1[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[4]_i_6 
       (.I0(v1_next22_out[7]),
        .I1(v1_next21_out[7]),
        .I2(v1_next1[7]),
        .I3(\data_in_reg[63] [7]),
        .I4(p_1_in),
        .I5(v1_reg[7]),
        .O(\v1[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[4]_i_7 
       (.I0(v1_next22_out[6]),
        .I1(v1_next21_out[6]),
        .I2(v1_next1[6]),
        .I3(\data_in_reg[63] [6]),
        .I4(p_1_in),
        .I5(v1_reg[6]),
        .O(\v1[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[4]_i_8 
       (.I0(v1_next22_out[5]),
        .I1(v1_next21_out[5]),
        .I2(v1_next1[5]),
        .I3(\data_in_reg[63] [5]),
        .I4(p_1_in),
        .I5(v1_reg[5]),
        .O(\v1[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[4]_i_9 
       (.I0(v1_next22_out[4]),
        .I1(v1_next21_out[4]),
        .I2(v1_next1[4]),
        .I3(\data_in_reg[63] [4]),
        .I4(p_1_in),
        .I5(v1_reg[4]),
        .O(\v1[4]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[8]_i_2 
       (.I0(p_1_in),
        .I1(v1_next1[11]),
        .I2(v1_next21_out[11]),
        .I3(v1_next22_out[11]),
        .O(\v1[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[8]_i_3 
       (.I0(p_1_in),
        .I1(v1_next1[10]),
        .I2(v1_next21_out[10]),
        .I3(v1_next22_out[10]),
        .O(\v1[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[8]_i_4 
       (.I0(p_1_in),
        .I1(v1_next1[9]),
        .I2(v1_next21_out[9]),
        .I3(v1_next22_out[9]),
        .O(\v1[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \v1[8]_i_5 
       (.I0(p_1_in),
        .I1(v1_next1[8]),
        .I2(v1_next21_out[8]),
        .I3(v1_next22_out[8]),
        .O(\v1[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[8]_i_6 
       (.I0(v1_next22_out[11]),
        .I1(v1_next21_out[11]),
        .I2(v1_next1[11]),
        .I3(\data_in_reg[63] [11]),
        .I4(p_1_in),
        .I5(v1_reg[11]),
        .O(\v1[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[8]_i_7 
       (.I0(v1_next22_out[10]),
        .I1(v1_next21_out[10]),
        .I2(v1_next1[10]),
        .I3(\data_in_reg[63] [10]),
        .I4(p_1_in),
        .I5(v1_reg[10]),
        .O(\v1[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[8]_i_8 
       (.I0(v1_next22_out[9]),
        .I1(v1_next21_out[9]),
        .I2(v1_next1[9]),
        .I3(\data_in_reg[63] [9]),
        .I4(p_1_in),
        .I5(v1_reg[9]),
        .O(\v1[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969FF009696FF00)) 
    \v1[8]_i_9 
       (.I0(v1_next22_out[8]),
        .I1(v1_next21_out[8]),
        .I2(v1_next1[8]),
        .I3(\data_in_reg[63] [8]),
        .I4(p_1_in),
        .I5(v1_reg[8]),
        .O(\v1[8]_i_9_n_0 ));
  CARRY4 v1_next2__93_carry
       (.CI(1'b0),
        .CO({v1_next2__93_carry_n_0,v1_next2__93_carry_n_1,v1_next2__93_carry_n_2,v1_next2__93_carry_n_3}),
        .CYINIT(1'b0),
        .DI({v0_next[2:0],1'b0}),
        .O(v1_next22_out[6:3]),
        .S({v1_next2__93_carry_i_1_n_0,v1_next2__93_carry_i_2_n_0,v1_next2__93_carry_i_3_n_0,Q[35]}));
  CARRY4 v1_next2__93_carry__0
       (.CI(v1_next2__93_carry_n_0),
        .CO({v1_next2__93_carry__0_n_0,v1_next2__93_carry__0_n_1,v1_next2__93_carry__0_n_2,v1_next2__93_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(v0_next[6:3]),
        .O(v1_next22_out[10:7]),
        .S({v1_next2__93_carry__0_i_1_n_0,v1_next2__93_carry__0_i_2_n_0,v1_next2__93_carry__0_i_3_n_0,v1_next2__93_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2__93_carry__0_i_1
       (.I0(v0_next[6]),
        .I1(Q[42]),
        .O(v1_next2__93_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2__93_carry__0_i_2
       (.I0(v0_next[5]),
        .I1(Q[41]),
        .O(v1_next2__93_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2__93_carry__0_i_3
       (.I0(v0_next[4]),
        .I1(Q[40]),
        .O(v1_next2__93_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2__93_carry__0_i_4
       (.I0(v0_next[3]),
        .I1(Q[39]),
        .O(v1_next2__93_carry__0_i_4_n_0));
  CARRY4 v1_next2__93_carry__1
       (.CI(v1_next2__93_carry__0_n_0),
        .CO({v1_next2__93_carry__1_n_0,v1_next2__93_carry__1_n_1,v1_next2__93_carry__1_n_2,v1_next2__93_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(v0_next[10:7]),
        .O(v1_next22_out[14:11]),
        .S({v1_next2__93_carry__1_i_1_n_0,v1_next2__93_carry__1_i_2_n_0,v1_next2__93_carry__1_i_3_n_0,v1_next2__93_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2__93_carry__1_i_1
       (.I0(v0_next[10]),
        .I1(Q[46]),
        .O(v1_next2__93_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2__93_carry__1_i_2
       (.I0(v0_next[9]),
        .I1(Q[45]),
        .O(v1_next2__93_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2__93_carry__1_i_3
       (.I0(v0_next[8]),
        .I1(Q[44]),
        .O(v1_next2__93_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2__93_carry__1_i_4
       (.I0(v0_next[7]),
        .I1(Q[43]),
        .O(v1_next2__93_carry__1_i_4_n_0));
  CARRY4 v1_next2__93_carry__2
       (.CI(v1_next2__93_carry__1_n_0),
        .CO({v1_next2__93_carry__2_n_0,v1_next2__93_carry__2_n_1,v1_next2__93_carry__2_n_2,v1_next2__93_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(v0_next[14:11]),
        .O(v1_next22_out[18:15]),
        .S({v1_next2__93_carry__2_i_1_n_0,v1_next2__93_carry__2_i_2_n_0,v1_next2__93_carry__2_i_3_n_0,v1_next2__93_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2__93_carry__2_i_1
       (.I0(v0_next[14]),
        .I1(Q[50]),
        .O(v1_next2__93_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2__93_carry__2_i_2
       (.I0(v0_next[13]),
        .I1(Q[49]),
        .O(v1_next2__93_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2__93_carry__2_i_3
       (.I0(v0_next[12]),
        .I1(Q[48]),
        .O(v1_next2__93_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2__93_carry__2_i_4
       (.I0(v0_next[11]),
        .I1(Q[47]),
        .O(v1_next2__93_carry__2_i_4_n_0));
  CARRY4 v1_next2__93_carry__3
       (.CI(v1_next2__93_carry__2_n_0),
        .CO({v1_next2__93_carry__3_n_0,v1_next2__93_carry__3_n_1,v1_next2__93_carry__3_n_2,v1_next2__93_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(v0_next[18:15]),
        .O(v1_next22_out[22:19]),
        .S({v1_next2__93_carry__3_i_1_n_0,v1_next2__93_carry__3_i_2_n_0,v1_next2__93_carry__3_i_3_n_0,v1_next2__93_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2__93_carry__3_i_1
       (.I0(v0_next[18]),
        .I1(Q[54]),
        .O(v1_next2__93_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2__93_carry__3_i_2
       (.I0(v0_next[17]),
        .I1(Q[53]),
        .O(v1_next2__93_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2__93_carry__3_i_3
       (.I0(v0_next[16]),
        .I1(Q[52]),
        .O(v1_next2__93_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2__93_carry__3_i_4
       (.I0(v0_next[15]),
        .I1(Q[51]),
        .O(v1_next2__93_carry__3_i_4_n_0));
  CARRY4 v1_next2__93_carry__4
       (.CI(v1_next2__93_carry__3_n_0),
        .CO({v1_next2__93_carry__4_n_0,v1_next2__93_carry__4_n_1,v1_next2__93_carry__4_n_2,v1_next2__93_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(v0_next[22:19]),
        .O(v1_next22_out[26:23]),
        .S({v1_next2__93_carry__4_i_1_n_0,v1_next2__93_carry__4_i_2_n_0,v1_next2__93_carry__4_i_3_n_0,v1_next2__93_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2__93_carry__4_i_1
       (.I0(v0_next[22]),
        .I1(Q[58]),
        .O(v1_next2__93_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2__93_carry__4_i_2
       (.I0(v0_next[21]),
        .I1(Q[57]),
        .O(v1_next2__93_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2__93_carry__4_i_3
       (.I0(v0_next[20]),
        .I1(Q[56]),
        .O(v1_next2__93_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2__93_carry__4_i_4
       (.I0(v0_next[19]),
        .I1(Q[55]),
        .O(v1_next2__93_carry__4_i_4_n_0));
  CARRY4 v1_next2__93_carry__5
       (.CI(v1_next2__93_carry__4_n_0),
        .CO({v1_next2__93_carry__5_n_0,v1_next2__93_carry__5_n_1,v1_next2__93_carry__5_n_2,v1_next2__93_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(v0_next[26:23]),
        .O(v1_next22_out[30:27]),
        .S({v1_next2__93_carry__5_i_1_n_0,v1_next2__93_carry__5_i_2_n_0,v1_next2__93_carry__5_i_3_n_0,v1_next2__93_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2__93_carry__5_i_1
       (.I0(v0_next[26]),
        .I1(Q[62]),
        .O(v1_next2__93_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2__93_carry__5_i_2
       (.I0(v0_next[25]),
        .I1(Q[61]),
        .O(v1_next2__93_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2__93_carry__5_i_3
       (.I0(v0_next[24]),
        .I1(Q[60]),
        .O(v1_next2__93_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2__93_carry__5_i_4
       (.I0(v0_next[23]),
        .I1(Q[59]),
        .O(v1_next2__93_carry__5_i_4_n_0));
  CARRY4 v1_next2__93_carry__6
       (.CI(v1_next2__93_carry__5_n_0),
        .CO(NLW_v1_next2__93_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_v1_next2__93_carry__6_O_UNCONNECTED[3:1],v1_next22_out[31]}),
        .S({1'b0,1'b0,1'b0,v1_next2__93_carry__6_i_1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2__93_carry__6_i_1
       (.I0(Q[63]),
        .I1(v0_next[27]),
        .O(v1_next2__93_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2__93_carry_i_1
       (.I0(v0_next[2]),
        .I1(Q[38]),
        .O(v1_next2__93_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2__93_carry_i_2
       (.I0(v0_next[1]),
        .I1(Q[37]),
        .O(v1_next2__93_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2__93_carry_i_3
       (.I0(v0_next[0]),
        .I1(Q[36]),
        .O(v1_next2__93_carry_i_3_n_0));
  CARRY4 v1_next2_carry
       (.CI(1'b0),
        .CO({v1_next2_carry_n_0,v1_next2_carry_n_1,v1_next2_carry_n_2,v1_next2_carry_n_3}),
        .CYINIT(1'b0),
        .DI(v0_next[3:0]),
        .O(v1_next21_out[3:0]),
        .S({v1_next2_carry_i_1_n_0,v1_next2_carry_i_2_n_0,v1_next2_carry_i_3_n_0,v1_next2_carry_i_4_n_0}));
  CARRY4 v1_next2_carry__0
       (.CI(v1_next2_carry_n_0),
        .CO({v1_next2_carry__0_n_0,v1_next2_carry__0_n_1,v1_next2_carry__0_n_2,v1_next2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(v0_next[7:4]),
        .O(v1_next21_out[7:4]),
        .S({v1_next2_carry__0_i_1_n_0,v1_next2_carry__0_i_2_n_0,v1_next2_carry__0_i_3_n_0,v1_next2_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry__0_i_1
       (.I0(v0_next[7]),
        .I1(sum_next[7]),
        .O(v1_next2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry__0_i_2
       (.I0(v0_next[6]),
        .I1(sum_next[6]),
        .O(v1_next2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry__0_i_3
       (.I0(v0_next[5]),
        .I1(sum_next[5]),
        .O(v1_next2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry__0_i_4
       (.I0(v0_next[4]),
        .I1(sum_next[4]),
        .O(v1_next2_carry__0_i_4_n_0));
  CARRY4 v1_next2_carry__1
       (.CI(v1_next2_carry__0_n_0),
        .CO({v1_next2_carry__1_n_0,v1_next2_carry__1_n_1,v1_next2_carry__1_n_2,v1_next2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(v0_next[11:8]),
        .O(v1_next21_out[11:8]),
        .S({v1_next2_carry__1_i_1_n_0,v1_next2_carry__1_i_2_n_0,v1_next2_carry__1_i_3_n_0,v1_next2_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry__1_i_1
       (.I0(v0_next[11]),
        .I1(sum_next[11]),
        .O(v1_next2_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry__1_i_2
       (.I0(v0_next[10]),
        .I1(sum_next[10]),
        .O(v1_next2_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry__1_i_3
       (.I0(v0_next[9]),
        .I1(sum_next[9]),
        .O(v1_next2_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry__1_i_4
       (.I0(v0_next[8]),
        .I1(sum_next[8]),
        .O(v1_next2_carry__1_i_4_n_0));
  CARRY4 v1_next2_carry__2
       (.CI(v1_next2_carry__1_n_0),
        .CO({v1_next2_carry__2_n_0,v1_next2_carry__2_n_1,v1_next2_carry__2_n_2,v1_next2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(v0_next[15:12]),
        .O(v1_next21_out[15:12]),
        .S({v1_next2_carry__2_i_1_n_0,v1_next2_carry__2_i_2_n_0,v1_next2_carry__2_i_3_n_0,v1_next2_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry__2_i_1
       (.I0(v0_next[15]),
        .I1(sum_next[15]),
        .O(v1_next2_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry__2_i_2
       (.I0(v0_next[14]),
        .I1(sum_next[14]),
        .O(v1_next2_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry__2_i_3
       (.I0(v0_next[13]),
        .I1(sum_next[13]),
        .O(v1_next2_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry__2_i_4
       (.I0(v0_next[12]),
        .I1(sum_next[12]),
        .O(v1_next2_carry__2_i_4_n_0));
  CARRY4 v1_next2_carry__3
       (.CI(v1_next2_carry__2_n_0),
        .CO({v1_next2_carry__3_n_0,v1_next2_carry__3_n_1,v1_next2_carry__3_n_2,v1_next2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(v0_next[19:16]),
        .O(v1_next21_out[19:16]),
        .S({v1_next2_carry__3_i_1_n_0,v1_next2_carry__3_i_2_n_0,v1_next2_carry__3_i_3_n_0,v1_next2_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry__3_i_1
       (.I0(v0_next[19]),
        .I1(sum_next[19]),
        .O(v1_next2_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry__3_i_2
       (.I0(v0_next[18]),
        .I1(sum_next[18]),
        .O(v1_next2_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry__3_i_3
       (.I0(v0_next[17]),
        .I1(sum_next[17]),
        .O(v1_next2_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry__3_i_4
       (.I0(v0_next[16]),
        .I1(sum_next[16]),
        .O(v1_next2_carry__3_i_4_n_0));
  CARRY4 v1_next2_carry__4
       (.CI(v1_next2_carry__3_n_0),
        .CO({v1_next2_carry__4_n_0,v1_next2_carry__4_n_1,v1_next2_carry__4_n_2,v1_next2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(v0_next[23:20]),
        .O(v1_next21_out[23:20]),
        .S({v1_next2_carry__4_i_1_n_0,v1_next2_carry__4_i_2_n_0,v1_next2_carry__4_i_3_n_0,v1_next2_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry__4_i_1
       (.I0(v0_next[23]),
        .I1(sum_next[23]),
        .O(v1_next2_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry__4_i_2
       (.I0(v0_next[22]),
        .I1(sum_next[22]),
        .O(v1_next2_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry__4_i_3
       (.I0(v0_next[21]),
        .I1(sum_next[21]),
        .O(v1_next2_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry__4_i_4
       (.I0(v0_next[20]),
        .I1(sum_next[20]),
        .O(v1_next2_carry__4_i_4_n_0));
  CARRY4 v1_next2_carry__5
       (.CI(v1_next2_carry__4_n_0),
        .CO({v1_next2_carry__5_n_0,v1_next2_carry__5_n_1,v1_next2_carry__5_n_2,v1_next2_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(v0_next[27:24]),
        .O(v1_next21_out[27:24]),
        .S({v1_next2_carry__5_i_1_n_0,v1_next2_carry__5_i_2_n_0,v1_next2_carry__5_i_3_n_0,v1_next2_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry__5_i_1
       (.I0(v0_next[27]),
        .I1(sum_next[27]),
        .O(v1_next2_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry__5_i_2
       (.I0(v0_next[26]),
        .I1(sum_next[26]),
        .O(v1_next2_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry__5_i_3
       (.I0(v0_next[25]),
        .I1(sum_next[25]),
        .O(v1_next2_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry__5_i_4
       (.I0(v0_next[24]),
        .I1(sum_next[24]),
        .O(v1_next2_carry__5_i_4_n_0));
  CARRY4 v1_next2_carry__6
       (.CI(v1_next2_carry__5_n_0),
        .CO({NLW_v1_next2_carry__6_CO_UNCONNECTED[3],v1_next2_carry__6_n_1,v1_next2_carry__6_n_2,v1_next2_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,v0_next[30:28]}),
        .O(v1_next21_out[31:28]),
        .S({v1_next2_carry__6_i_1_n_0,v1_next2_carry__6_i_2_n_0,v1_next2_carry__6_i_3_n_0,v1_next2_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry__6_i_1
       (.I0(sum_next[31]),
        .I1(v0_next[31]),
        .O(v1_next2_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry__6_i_2
       (.I0(v0_next[30]),
        .I1(sum_next[30]),
        .O(v1_next2_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry__6_i_3
       (.I0(v0_next[29]),
        .I1(sum_next[29]),
        .O(v1_next2_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry__6_i_4
       (.I0(v0_next[28]),
        .I1(sum_next[28]),
        .O(v1_next2_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry_i_1
       (.I0(v0_next[3]),
        .I1(sum_next[3]),
        .O(v1_next2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry_i_2
       (.I0(v0_next[2]),
        .I1(sum_next[2]),
        .O(v1_next2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next2_carry_i_3
       (.I0(v0_next[1]),
        .I1(sum_next[1]),
        .O(v1_next2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    v1_next2_carry_i_4
       (.I0(v0_next[0]),
        .I1(sum_reg[0]),
        .O(v1_next2_carry_i_4_n_0));
  CARRY4 v1_next_carry
       (.CI(1'b0),
        .CO({v1_next_carry_n_0,v1_next_carry_n_1,v1_next_carry_n_2,v1_next_carry_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg[3:0]),
        .O(v1_next[3:0]),
        .S({v1_next_carry_i_1_n_0,v1_next_carry_i_2_n_0,v1_next_carry_i_3_n_0,v1_next_carry_i_4_n_0}));
  CARRY4 v1_next_carry__0
       (.CI(v1_next_carry_n_0),
        .CO({v1_next_carry__0_n_0,v1_next_carry__0_n_1,v1_next_carry__0_n_2,v1_next_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg[7:4]),
        .O(v1_next[7:4]),
        .S({v1_next_carry__0_i_1_n_0,v1_next_carry__0_i_2_n_0,v1_next_carry__0_i_3_n_0,v1_next_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry__0_i_1
       (.I0(v1_reg[7]),
        .I1(v1_next1[7]),
        .I2(v1_next21_out[7]),
        .I3(v1_next22_out[7]),
        .O(v1_next_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry__0_i_2
       (.I0(v1_reg[6]),
        .I1(v1_next1[6]),
        .I2(v1_next21_out[6]),
        .I3(v1_next22_out[6]),
        .O(v1_next_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry__0_i_3
       (.I0(v1_reg[5]),
        .I1(v1_next1[5]),
        .I2(v1_next21_out[5]),
        .I3(v1_next22_out[5]),
        .O(v1_next_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry__0_i_4
       (.I0(v1_reg[4]),
        .I1(v1_next1[4]),
        .I2(v1_next21_out[4]),
        .I3(v1_next22_out[4]),
        .O(v1_next_carry__0_i_4_n_0));
  CARRY4 v1_next_carry__0_i_5
       (.CI(v1_next_carry_i_5_n_0),
        .CO({v1_next_carry__0_i_5_n_0,v1_next_carry__0_i_5_n_1,v1_next_carry__0_i_5_n_2,v1_next_carry__0_i_5_n_3}),
        .CYINIT(1'b0),
        .DI(v0_next[12:9]),
        .O(v1_next1[7:4]),
        .S({v1_next_carry__0_i_6_n_0,v1_next_carry__0_i_7_n_0,v1_next_carry__0_i_8_n_0,v1_next_carry__0_i_9_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next_carry__0_i_6
       (.I0(v0_next[12]),
        .I1(Q[7]),
        .O(v1_next_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next_carry__0_i_7
       (.I0(v0_next[11]),
        .I1(Q[6]),
        .O(v1_next_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next_carry__0_i_8
       (.I0(v0_next[10]),
        .I1(Q[5]),
        .O(v1_next_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next_carry__0_i_9
       (.I0(v0_next[9]),
        .I1(Q[4]),
        .O(v1_next_carry__0_i_9_n_0));
  CARRY4 v1_next_carry__1
       (.CI(v1_next_carry__0_n_0),
        .CO({v1_next_carry__1_n_0,v1_next_carry__1_n_1,v1_next_carry__1_n_2,v1_next_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg[11:8]),
        .O(v1_next[11:8]),
        .S({v1_next_carry__1_i_1_n_0,v1_next_carry__1_i_2_n_0,v1_next_carry__1_i_3_n_0,v1_next_carry__1_i_4_n_0}));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry__1_i_1
       (.I0(v1_reg[11]),
        .I1(v1_next1[11]),
        .I2(v1_next21_out[11]),
        .I3(v1_next22_out[11]),
        .O(v1_next_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry__1_i_2
       (.I0(v1_reg[10]),
        .I1(v1_next1[10]),
        .I2(v1_next21_out[10]),
        .I3(v1_next22_out[10]),
        .O(v1_next_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry__1_i_3
       (.I0(v1_reg[9]),
        .I1(v1_next1[9]),
        .I2(v1_next21_out[9]),
        .I3(v1_next22_out[9]),
        .O(v1_next_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry__1_i_4
       (.I0(v1_reg[8]),
        .I1(v1_next1[8]),
        .I2(v1_next21_out[8]),
        .I3(v1_next22_out[8]),
        .O(v1_next_carry__1_i_4_n_0));
  CARRY4 v1_next_carry__1_i_5
       (.CI(v1_next_carry__0_i_5_n_0),
        .CO({v1_next_carry__1_i_5_n_0,v1_next_carry__1_i_5_n_1,v1_next_carry__1_i_5_n_2,v1_next_carry__1_i_5_n_3}),
        .CYINIT(1'b0),
        .DI(v0_next[16:13]),
        .O(v1_next1[11:8]),
        .S({v1_next_carry__1_i_6_n_0,v1_next_carry__1_i_7_n_0,v1_next_carry__1_i_8_n_0,v1_next_carry__1_i_9_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next_carry__1_i_6
       (.I0(v0_next[16]),
        .I1(Q[11]),
        .O(v1_next_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next_carry__1_i_7
       (.I0(v0_next[15]),
        .I1(Q[10]),
        .O(v1_next_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next_carry__1_i_8
       (.I0(v0_next[14]),
        .I1(Q[9]),
        .O(v1_next_carry__1_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next_carry__1_i_9
       (.I0(v0_next[13]),
        .I1(Q[8]),
        .O(v1_next_carry__1_i_9_n_0));
  CARRY4 v1_next_carry__2
       (.CI(v1_next_carry__1_n_0),
        .CO({v1_next_carry__2_n_0,v1_next_carry__2_n_1,v1_next_carry__2_n_2,v1_next_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg[15:12]),
        .O(v1_next[15:12]),
        .S({v1_next_carry__2_i_1_n_0,v1_next_carry__2_i_2_n_0,v1_next_carry__2_i_3_n_0,v1_next_carry__2_i_4_n_0}));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry__2_i_1
       (.I0(v1_reg[15]),
        .I1(v1_next1[15]),
        .I2(v1_next21_out[15]),
        .I3(v1_next22_out[15]),
        .O(v1_next_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry__2_i_2
       (.I0(v1_reg[14]),
        .I1(v1_next1[14]),
        .I2(v1_next21_out[14]),
        .I3(v1_next22_out[14]),
        .O(v1_next_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry__2_i_3
       (.I0(v1_reg[13]),
        .I1(v1_next1[13]),
        .I2(v1_next21_out[13]),
        .I3(v1_next22_out[13]),
        .O(v1_next_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry__2_i_4
       (.I0(v1_reg[12]),
        .I1(v1_next1[12]),
        .I2(v1_next21_out[12]),
        .I3(v1_next22_out[12]),
        .O(v1_next_carry__2_i_4_n_0));
  CARRY4 v1_next_carry__2_i_5
       (.CI(v1_next_carry__1_i_5_n_0),
        .CO({v1_next_carry__2_i_5_n_0,v1_next_carry__2_i_5_n_1,v1_next_carry__2_i_5_n_2,v1_next_carry__2_i_5_n_3}),
        .CYINIT(1'b0),
        .DI(v0_next[20:17]),
        .O(v1_next1[15:12]),
        .S({v1_next_carry__2_i_6_n_0,v1_next_carry__2_i_7_n_0,v1_next_carry__2_i_8_n_0,v1_next_carry__2_i_9_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next_carry__2_i_6
       (.I0(v0_next[20]),
        .I1(Q[15]),
        .O(v1_next_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next_carry__2_i_7
       (.I0(v0_next[19]),
        .I1(Q[14]),
        .O(v1_next_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next_carry__2_i_8
       (.I0(v0_next[18]),
        .I1(Q[13]),
        .O(v1_next_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next_carry__2_i_9
       (.I0(v0_next[17]),
        .I1(Q[12]),
        .O(v1_next_carry__2_i_9_n_0));
  CARRY4 v1_next_carry__3
       (.CI(v1_next_carry__2_n_0),
        .CO({v1_next_carry__3_n_0,v1_next_carry__3_n_1,v1_next_carry__3_n_2,v1_next_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg[19:16]),
        .O(v1_next[19:16]),
        .S({v1_next_carry__3_i_1_n_0,v1_next_carry__3_i_2_n_0,v1_next_carry__3_i_3_n_0,v1_next_carry__3_i_4_n_0}));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry__3_i_1
       (.I0(v1_reg[19]),
        .I1(v1_next1[19]),
        .I2(v1_next21_out[19]),
        .I3(v1_next22_out[19]),
        .O(v1_next_carry__3_i_1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry__3_i_2
       (.I0(v1_reg[18]),
        .I1(v1_next1[18]),
        .I2(v1_next21_out[18]),
        .I3(v1_next22_out[18]),
        .O(v1_next_carry__3_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry__3_i_3
       (.I0(v1_reg[17]),
        .I1(v1_next1[17]),
        .I2(v1_next21_out[17]),
        .I3(v1_next22_out[17]),
        .O(v1_next_carry__3_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry__3_i_4
       (.I0(v1_reg[16]),
        .I1(v1_next1[16]),
        .I2(v1_next21_out[16]),
        .I3(v1_next22_out[16]),
        .O(v1_next_carry__3_i_4_n_0));
  CARRY4 v1_next_carry__3_i_5
       (.CI(v1_next_carry__2_i_5_n_0),
        .CO({v1_next_carry__3_i_5_n_0,v1_next_carry__3_i_5_n_1,v1_next_carry__3_i_5_n_2,v1_next_carry__3_i_5_n_3}),
        .CYINIT(1'b0),
        .DI(v0_next[24:21]),
        .O(v1_next1[19:16]),
        .S({v1_next_carry__3_i_6_n_0,v1_next_carry__3_i_7_n_0,v1_next_carry__3_i_8_n_0,v1_next_carry__3_i_9_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next_carry__3_i_6
       (.I0(v0_next[24]),
        .I1(Q[19]),
        .O(v1_next_carry__3_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next_carry__3_i_7
       (.I0(v0_next[23]),
        .I1(Q[18]),
        .O(v1_next_carry__3_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next_carry__3_i_8
       (.I0(v0_next[22]),
        .I1(Q[17]),
        .O(v1_next_carry__3_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next_carry__3_i_9
       (.I0(v0_next[21]),
        .I1(Q[16]),
        .O(v1_next_carry__3_i_9_n_0));
  CARRY4 v1_next_carry__4
       (.CI(v1_next_carry__3_n_0),
        .CO({v1_next_carry__4_n_0,v1_next_carry__4_n_1,v1_next_carry__4_n_2,v1_next_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg[23:20]),
        .O(v1_next[23:20]),
        .S({v1_next_carry__4_i_1_n_0,v1_next_carry__4_i_2_n_0,v1_next_carry__4_i_3_n_0,v1_next_carry__4_i_4_n_0}));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry__4_i_1
       (.I0(v1_reg[23]),
        .I1(v1_next1[23]),
        .I2(v1_next21_out[23]),
        .I3(v1_next22_out[23]),
        .O(v1_next_carry__4_i_1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry__4_i_2
       (.I0(v1_reg[22]),
        .I1(v1_next1[22]),
        .I2(v1_next21_out[22]),
        .I3(v1_next22_out[22]),
        .O(v1_next_carry__4_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry__4_i_3
       (.I0(v1_reg[21]),
        .I1(v1_next1[21]),
        .I2(v1_next21_out[21]),
        .I3(v1_next22_out[21]),
        .O(v1_next_carry__4_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry__4_i_4
       (.I0(v1_reg[20]),
        .I1(v1_next1[20]),
        .I2(v1_next21_out[20]),
        .I3(v1_next22_out[20]),
        .O(v1_next_carry__4_i_4_n_0));
  CARRY4 v1_next_carry__4_i_5
       (.CI(v1_next_carry__3_i_5_n_0),
        .CO({v1_next_carry__4_i_5_n_0,v1_next_carry__4_i_5_n_1,v1_next_carry__4_i_5_n_2,v1_next_carry__4_i_5_n_3}),
        .CYINIT(1'b0),
        .DI(v0_next[28:25]),
        .O(v1_next1[23:20]),
        .S({v1_next_carry__4_i_6_n_0,v1_next_carry__4_i_7_n_0,v1_next_carry__4_i_8_n_0,v1_next_carry__4_i_9_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next_carry__4_i_6
       (.I0(v0_next[28]),
        .I1(Q[23]),
        .O(v1_next_carry__4_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next_carry__4_i_7
       (.I0(v0_next[27]),
        .I1(Q[22]),
        .O(v1_next_carry__4_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next_carry__4_i_8
       (.I0(v0_next[26]),
        .I1(Q[21]),
        .O(v1_next_carry__4_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next_carry__4_i_9
       (.I0(v0_next[25]),
        .I1(Q[20]),
        .O(v1_next_carry__4_i_9_n_0));
  CARRY4 v1_next_carry__5
       (.CI(v1_next_carry__4_n_0),
        .CO({v1_next_carry__5_n_0,v1_next_carry__5_n_1,v1_next_carry__5_n_2,v1_next_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg[27:24]),
        .O(v1_next[27:24]),
        .S({v1_next_carry__5_i_1_n_0,v1_next_carry__5_i_2_n_0,v1_next_carry__5_i_3_n_0,v1_next_carry__5_i_4_n_0}));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry__5_i_1
       (.I0(v1_reg[27]),
        .I1(v1_next1[27]),
        .I2(v1_next21_out[27]),
        .I3(v1_next22_out[27]),
        .O(v1_next_carry__5_i_1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry__5_i_2
       (.I0(v1_reg[26]),
        .I1(v1_next1[26]),
        .I2(v1_next21_out[26]),
        .I3(v1_next22_out[26]),
        .O(v1_next_carry__5_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry__5_i_3
       (.I0(v1_reg[25]),
        .I1(v1_next1[25]),
        .I2(v1_next21_out[25]),
        .I3(v1_next22_out[25]),
        .O(v1_next_carry__5_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry__5_i_4
       (.I0(v1_reg[24]),
        .I1(v1_next1[24]),
        .I2(v1_next21_out[24]),
        .I3(v1_next22_out[24]),
        .O(v1_next_carry__5_i_4_n_0));
  CARRY4 v1_next_carry__5_i_5
       (.CI(v1_next_carry__4_i_5_n_0),
        .CO({v1_next_carry__5_i_5_n_0,v1_next_carry__5_i_5_n_1,v1_next_carry__5_i_5_n_2,v1_next_carry__5_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,v0_next[31:29]}),
        .O(v1_next1[27:24]),
        .S({Q[27],v1_next_carry__5_i_6_n_0,v1_next_carry__5_i_7_n_0,v1_next_carry__5_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next_carry__5_i_6
       (.I0(v0_next[31]),
        .I1(Q[26]),
        .O(v1_next_carry__5_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next_carry__5_i_7
       (.I0(v0_next[30]),
        .I1(Q[25]),
        .O(v1_next_carry__5_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next_carry__5_i_8
       (.I0(v0_next[29]),
        .I1(Q[24]),
        .O(v1_next_carry__5_i_8_n_0));
  CARRY4 v1_next_carry__6
       (.CI(v1_next_carry__5_n_0),
        .CO({NLW_v1_next_carry__6_CO_UNCONNECTED[3],v1_next_carry__6_n_1,v1_next_carry__6_n_2,v1_next_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,v1_reg[30:28]}),
        .O(v1_next[31:28]),
        .S({v1_next_carry__6_i_1_n_0,v1_next_carry__6_i_2_n_0,v1_next_carry__6_i_3_n_0,v1_next_carry__6_i_4_n_0}));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry__6_i_1
       (.I0(v1_next21_out[31]),
        .I1(v1_next1[31]),
        .I2(v1_next22_out[31]),
        .I3(v1_reg[31]),
        .O(v1_next_carry__6_i_1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry__6_i_2
       (.I0(v1_reg[30]),
        .I1(v1_next1[30]),
        .I2(v1_next21_out[30]),
        .I3(v1_next22_out[30]),
        .O(v1_next_carry__6_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry__6_i_3
       (.I0(v1_reg[29]),
        .I1(v1_next1[29]),
        .I2(v1_next21_out[29]),
        .I3(v1_next22_out[29]),
        .O(v1_next_carry__6_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry__6_i_4
       (.I0(v1_reg[28]),
        .I1(v1_next1[28]),
        .I2(v1_next21_out[28]),
        .I3(v1_next22_out[28]),
        .O(v1_next_carry__6_i_4_n_0));
  CARRY4 v1_next_carry__6_i_5
       (.CI(v1_next_carry__5_i_5_n_0),
        .CO({NLW_v1_next_carry__6_i_5_CO_UNCONNECTED[3],v1_next_carry__6_i_5_n_1,v1_next_carry__6_i_5_n_2,v1_next_carry__6_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(v1_next1[31:28]),
        .S(Q[31:28]));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry_i_1
       (.I0(v1_reg[3]),
        .I1(v1_next1[3]),
        .I2(v1_next21_out[3]),
        .I3(v1_next22_out[3]),
        .O(v1_next_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry_i_2
       (.I0(v1_reg[2]),
        .I1(v1_next1[2]),
        .I2(v1_next21_out[2]),
        .I3(Q[34]),
        .O(v1_next_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry_i_3
       (.I0(v1_reg[1]),
        .I1(v1_next1[1]),
        .I2(v1_next21_out[1]),
        .I3(Q[33]),
        .O(v1_next_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v1_next_carry_i_4
       (.I0(v1_reg[0]),
        .I1(v1_next1[0]),
        .I2(v1_next21_out[0]),
        .I3(Q[32]),
        .O(v1_next_carry_i_4_n_0));
  CARRY4 v1_next_carry_i_5
       (.CI(1'b0),
        .CO({v1_next_carry_i_5_n_0,v1_next_carry_i_5_n_1,v1_next_carry_i_5_n_2,v1_next_carry_i_5_n_3}),
        .CYINIT(1'b0),
        .DI(v0_next[8:5]),
        .O(v1_next1[3:0]),
        .S({v1_next_carry_i_6_n_0,v1_next_carry_i_7_n_0,v1_next_carry_i_8_n_0,v1_next_carry_i_9_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next_carry_i_6
       (.I0(v0_next[8]),
        .I1(Q[3]),
        .O(v1_next_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next_carry_i_7
       (.I0(v0_next[7]),
        .I1(Q[2]),
        .O(v1_next_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next_carry_i_8
       (.I0(v0_next[6]),
        .I1(Q[1]),
        .O(v1_next_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_next_carry_i_9
       (.I0(v0_next[5]),
        .I1(Q[0]),
        .O(v1_next_carry_i_9_n_0));
  FDCE \v1_reg[0] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[0]_i_1_n_7 ),
        .Q(v1_reg[0]));
  CARRY4 \v1_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\v1_reg[0]_i_1_n_0 ,\v1_reg[0]_i_1_n_1 ,\v1_reg[0]_i_1_n_2 ,\v1_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\v1[0]_i_2_n_0 ,\v1[0]_i_3_n_0 ,\v1[0]_i_4_n_0 ,\v1[0]_i_5_n_0 }),
        .O({\v1_reg[0]_i_1_n_4 ,\v1_reg[0]_i_1_n_5 ,\v1_reg[0]_i_1_n_6 ,\v1_reg[0]_i_1_n_7 }),
        .S({\v1[0]_i_6_n_0 ,\v1[0]_i_7_n_0 ,\v1[0]_i_8_n_0 ,\v1[0]_i_9_n_0 }));
  FDCE \v1_reg[10] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[8]_i_1_n_5 ),
        .Q(v1_reg[10]));
  FDCE \v1_reg[11] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[8]_i_1_n_4 ),
        .Q(v1_reg[11]));
  FDCE \v1_reg[12] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[12]_i_1_n_7 ),
        .Q(v1_reg[12]));
  CARRY4 \v1_reg[12]_i_1 
       (.CI(\v1_reg[8]_i_1_n_0 ),
        .CO({\v1_reg[12]_i_1_n_0 ,\v1_reg[12]_i_1_n_1 ,\v1_reg[12]_i_1_n_2 ,\v1_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\v1[12]_i_2_n_0 ,\v1[12]_i_3_n_0 ,\v1[12]_i_4_n_0 ,\v1[12]_i_5_n_0 }),
        .O({\v1_reg[12]_i_1_n_4 ,\v1_reg[12]_i_1_n_5 ,\v1_reg[12]_i_1_n_6 ,\v1_reg[12]_i_1_n_7 }),
        .S({\v1[12]_i_6_n_0 ,\v1[12]_i_7_n_0 ,\v1[12]_i_8_n_0 ,\v1[12]_i_9_n_0 }));
  FDCE \v1_reg[13] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[12]_i_1_n_6 ),
        .Q(v1_reg[13]));
  FDCE \v1_reg[14] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[12]_i_1_n_5 ),
        .Q(v1_reg[14]));
  FDCE \v1_reg[15] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[12]_i_1_n_4 ),
        .Q(v1_reg[15]));
  FDCE \v1_reg[16] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[16]_i_1_n_7 ),
        .Q(v1_reg[16]));
  CARRY4 \v1_reg[16]_i_1 
       (.CI(\v1_reg[12]_i_1_n_0 ),
        .CO({\v1_reg[16]_i_1_n_0 ,\v1_reg[16]_i_1_n_1 ,\v1_reg[16]_i_1_n_2 ,\v1_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\v1[16]_i_2_n_0 ,\v1[16]_i_3_n_0 ,\v1[16]_i_4_n_0 ,\v1[16]_i_5_n_0 }),
        .O({\v1_reg[16]_i_1_n_4 ,\v1_reg[16]_i_1_n_5 ,\v1_reg[16]_i_1_n_6 ,\v1_reg[16]_i_1_n_7 }),
        .S({\v1[16]_i_6_n_0 ,\v1[16]_i_7_n_0 ,\v1[16]_i_8_n_0 ,\v1[16]_i_9_n_0 }));
  FDCE \v1_reg[17] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[16]_i_1_n_6 ),
        .Q(v1_reg[17]));
  FDCE \v1_reg[18] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[16]_i_1_n_5 ),
        .Q(v1_reg[18]));
  FDCE \v1_reg[19] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[16]_i_1_n_4 ),
        .Q(v1_reg[19]));
  FDCE \v1_reg[1] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[0]_i_1_n_6 ),
        .Q(v1_reg[1]));
  FDCE \v1_reg[20] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[20]_i_1_n_7 ),
        .Q(v1_reg[20]));
  CARRY4 \v1_reg[20]_i_1 
       (.CI(\v1_reg[16]_i_1_n_0 ),
        .CO({\v1_reg[20]_i_1_n_0 ,\v1_reg[20]_i_1_n_1 ,\v1_reg[20]_i_1_n_2 ,\v1_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\v1[20]_i_2_n_0 ,\v1[20]_i_3_n_0 ,\v1[20]_i_4_n_0 ,\v1[20]_i_5_n_0 }),
        .O({\v1_reg[20]_i_1_n_4 ,\v1_reg[20]_i_1_n_5 ,\v1_reg[20]_i_1_n_6 ,\v1_reg[20]_i_1_n_7 }),
        .S({\v1[20]_i_6_n_0 ,\v1[20]_i_7_n_0 ,\v1[20]_i_8_n_0 ,\v1[20]_i_9_n_0 }));
  FDCE \v1_reg[21] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[20]_i_1_n_6 ),
        .Q(v1_reg[21]));
  FDCE \v1_reg[22] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[20]_i_1_n_5 ),
        .Q(v1_reg[22]));
  FDCE \v1_reg[23] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[20]_i_1_n_4 ),
        .Q(v1_reg[23]));
  FDCE \v1_reg[24] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[24]_i_1_n_7 ),
        .Q(v1_reg[24]));
  CARRY4 \v1_reg[24]_i_1 
       (.CI(\v1_reg[20]_i_1_n_0 ),
        .CO({\v1_reg[24]_i_1_n_0 ,\v1_reg[24]_i_1_n_1 ,\v1_reg[24]_i_1_n_2 ,\v1_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\v1[24]_i_2_n_0 ,\v1[24]_i_3_n_0 ,\v1[24]_i_4_n_0 ,\v1[24]_i_5_n_0 }),
        .O({\v1_reg[24]_i_1_n_4 ,\v1_reg[24]_i_1_n_5 ,\v1_reg[24]_i_1_n_6 ,\v1_reg[24]_i_1_n_7 }),
        .S({\v1[24]_i_6_n_0 ,\v1[24]_i_7_n_0 ,\v1[24]_i_8_n_0 ,\v1[24]_i_9_n_0 }));
  FDCE \v1_reg[25] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[24]_i_1_n_6 ),
        .Q(v1_reg[25]));
  FDCE \v1_reg[26] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[24]_i_1_n_5 ),
        .Q(v1_reg[26]));
  FDCE \v1_reg[27] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[24]_i_1_n_4 ),
        .Q(v1_reg[27]));
  FDCE \v1_reg[28] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[28]_i_1_n_7 ),
        .Q(v1_reg[28]));
  CARRY4 \v1_reg[28]_i_1 
       (.CI(\v1_reg[24]_i_1_n_0 ),
        .CO({\NLW_v1_reg[28]_i_1_CO_UNCONNECTED [3],\v1_reg[28]_i_1_n_1 ,\v1_reg[28]_i_1_n_2 ,\v1_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\v1[28]_i_2_n_0 ,\v1[28]_i_3_n_0 ,\v1[28]_i_4_n_0 }),
        .O({\v1_reg[28]_i_1_n_4 ,\v1_reg[28]_i_1_n_5 ,\v1_reg[28]_i_1_n_6 ,\v1_reg[28]_i_1_n_7 }),
        .S({\v1[28]_i_5_n_0 ,\v1[28]_i_6_n_0 ,\v1[28]_i_7_n_0 ,\v1[28]_i_8_n_0 }));
  FDCE \v1_reg[29] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[28]_i_1_n_6 ),
        .Q(v1_reg[29]));
  FDCE \v1_reg[2] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[0]_i_1_n_5 ),
        .Q(v1_reg[2]));
  FDCE \v1_reg[30] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[28]_i_1_n_5 ),
        .Q(v1_reg[30]));
  FDCE \v1_reg[31] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[28]_i_1_n_4 ),
        .Q(v1_reg[31]));
  FDCE \v1_reg[3] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[0]_i_1_n_4 ),
        .Q(v1_reg[3]));
  FDCE \v1_reg[4] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[4]_i_1_n_7 ),
        .Q(v1_reg[4]));
  CARRY4 \v1_reg[4]_i_1 
       (.CI(\v1_reg[0]_i_1_n_0 ),
        .CO({\v1_reg[4]_i_1_n_0 ,\v1_reg[4]_i_1_n_1 ,\v1_reg[4]_i_1_n_2 ,\v1_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\v1[4]_i_2_n_0 ,\v1[4]_i_3_n_0 ,\v1[4]_i_4_n_0 ,\v1[4]_i_5_n_0 }),
        .O({\v1_reg[4]_i_1_n_4 ,\v1_reg[4]_i_1_n_5 ,\v1_reg[4]_i_1_n_6 ,\v1_reg[4]_i_1_n_7 }),
        .S({\v1[4]_i_6_n_0 ,\v1[4]_i_7_n_0 ,\v1[4]_i_8_n_0 ,\v1[4]_i_9_n_0 }));
  FDCE \v1_reg[5] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[4]_i_1_n_6 ),
        .Q(v1_reg[5]));
  FDCE \v1_reg[6] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[4]_i_1_n_5 ),
        .Q(v1_reg[6]));
  FDCE \v1_reg[7] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[4]_i_1_n_4 ),
        .Q(v1_reg[7]));
  FDCE \v1_reg[8] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[8]_i_1_n_7 ),
        .Q(v1_reg[8]));
  CARRY4 \v1_reg[8]_i_1 
       (.CI(\v1_reg[4]_i_1_n_0 ),
        .CO({\v1_reg[8]_i_1_n_0 ,\v1_reg[8]_i_1_n_1 ,\v1_reg[8]_i_1_n_2 ,\v1_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\v1[8]_i_2_n_0 ,\v1[8]_i_3_n_0 ,\v1[8]_i_4_n_0 ,\v1[8]_i_5_n_0 }),
        .O({\v1_reg[8]_i_1_n_4 ,\v1_reg[8]_i_1_n_5 ,\v1_reg[8]_i_1_n_6 ,\v1_reg[8]_i_1_n_7 }),
        .S({\v1[8]_i_6_n_0 ,\v1[8]_i_7_n_0 ,\v1[8]_i_8_n_0 ,\v1[8]_i_9_n_0 }));
  FDCE \v1_reg[9] 
       (.C(ACLK),
        .CE(round),
        .CLR(clear),
        .D(\v1_reg[8]_i_1_n_6 ),
        .Q(v1_reg[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
