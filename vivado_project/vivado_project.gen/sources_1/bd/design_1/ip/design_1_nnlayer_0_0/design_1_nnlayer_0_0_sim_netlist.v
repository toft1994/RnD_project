// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Mar 16 13:56:00 2022
// Host        : DESKTOP-IFL7HB3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/jespe/Desktop/Uni_Civil_10_Semester/RnD/RnD_project/Vivado_project/Vivado_project.gen/sources_1/bd/design_1/ip/design_1_nnlayer_0_0/design_1_nnlayer_0_0_sim_netlist.v
// Design      : design_1_nnlayer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_nnlayer_0_0,nnlayer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "nnlayer,Vivado 2021.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module design_1_nnlayer_0_0
   (ap_local_block,
    s_axi_control_AWADDR,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_BRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_ARADDR,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt);
  output ap_local_block;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [17:0]s_axi_control_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) output [1:0]s_axi_control_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) input [17:0]s_axi_control_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 18, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_control_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [17:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [17:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire NLW_inst_ap_local_block_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_control_BRESP_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_control_RRESP_UNCONNECTED;

  assign ap_local_block = \<const0> ;
  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_S_AXI_CONTROL_ADDR_WIDTH = "18" *) 
  (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_state1 = "8'b00000001" *) 
  (* ap_ST_fsm_state2 = "8'b00000010" *) 
  (* ap_ST_fsm_state3 = "8'b00000100" *) 
  (* ap_ST_fsm_state4 = "8'b00001000" *) 
  (* ap_ST_fsm_state5 = "8'b00010000" *) 
  (* ap_ST_fsm_state6 = "8'b00100000" *) 
  (* ap_ST_fsm_state7 = "8'b01000000" *) 
  (* ap_ST_fsm_state8 = "8'b10000000" *) 
  design_1_nnlayer_0_0_nnlayer inst
       (.ap_clk(ap_clk),
        .ap_local_block(NLW_inst_ap_local_block_UNCONNECTED),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR),
        .s_axi_control_AWREADY(s_axi_control_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BRESP(NLW_inst_s_axi_control_BRESP_UNCONNECTED[1:0]),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RRESP(NLW_inst_s_axi_control_RRESP_UNCONNECTED[1:0]),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WREADY(s_axi_control_WREADY),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
endmodule

(* C_S_AXI_CONTROL_ADDR_WIDTH = "18" *) (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ORIG_REF_NAME = "nnlayer" *) 
(* ap_ST_fsm_state1 = "8'b00000001" *) (* ap_ST_fsm_state2 = "8'b00000010" *) (* ap_ST_fsm_state3 = "8'b00000100" *) 
(* ap_ST_fsm_state4 = "8'b00001000" *) (* ap_ST_fsm_state5 = "8'b00010000" *) (* ap_ST_fsm_state6 = "8'b00100000" *) 
(* ap_ST_fsm_state7 = "8'b01000000" *) (* ap_ST_fsm_state8 = "8'b10000000" *) (* hls_module = "yes" *) 
module design_1_nnlayer_0_0_nnlayer
   (ap_local_block,
    ap_clk,
    ap_rst_n,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_AWADDR,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_ARADDR,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_BRESP,
    interrupt);
  output ap_local_block;
  input ap_clk;
  input ap_rst_n;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [17:0]s_axi_control_AWADDR;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  input [17:0]s_axi_control_ARADDR;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  output [1:0]s_axi_control_BRESP;
  output interrupt;

  wire \<const0> ;
  wire \ap_CS_fsm_reg_n_3_[4] ;
  wire ap_CS_fsm_state1;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state6;
  wire ap_CS_fsm_state7;
  wire ap_CS_fsm_state8;
  wire ap_NS_fsm1;
  wire [7:0]ap_NS_fsm__0;
  wire ap_clk;
  wire ap_done;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire [31:0]bound_reg_156;
  wire control_s_axi_U_n_4;
  wire control_s_axi_U_n_45;
  wire control_s_axi_U_n_46;
  wire control_s_axi_U_n_49;
  wire control_s_axi_U_n_5;
  wire control_s_axi_U_n_50;
  wire control_s_axi_U_n_68;
  wire control_s_axi_U_n_69;
  wire control_s_axi_U_n_70;
  wire control_s_axi_U_n_71;
  wire control_s_axi_U_n_72;
  wire control_s_axi_U_n_73;
  wire control_s_axi_U_n_74;
  wire control_s_axi_U_n_75;
  wire control_s_axi_U_n_76;
  wire grp_fu_130_ce;
  wire [15:0]grp_fu_130_p00;
  wire [15:0]grp_fu_130_p10;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_n_25;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_n_26;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_output_r_ce0;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg;
  wire [7:1]grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_bias_address0;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_n_15;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg;
  wire [7:0]grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_input_r_address0;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_39;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_40;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_41;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_42;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_43;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_44;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_45;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_46;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_48;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_49;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_50;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_51;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_52;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_53;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_62;
  wire [15:0]grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_output_r_d0;
  wire [15:0]grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_ce0;
  wire icmp_ln10_reg_109;
  wire icmp_ln33_fu_87_p2;
  wire \icmp_ln47_reg_152_reg_n_3_[0] ;
  wire [15:0]input_r_q0;
  wire int_isr10_out;
  wire int_isr7_out;
  wire [31:24]\int_output_r/p_1_in ;
  wire [3:1]int_output_r_be0;
  wire interrupt;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_10;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_11;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_12;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_13;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_14;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_15;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_16;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_17;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_18;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_19;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_20;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_21;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_22;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_23;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_24;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_25;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_26;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_27;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_28;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_29;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_3;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_30;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_31;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_32;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_33;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_34;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_4;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_5;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_6;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_7;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_8;
  wire mul_mul_16ns_16ns_32_4_1_U12_n_9;
  wire [15:0]numOfOutNeurons_read_reg_136;
  wire [7:1]output_r_address0;
  wire output_r_address01;
  wire output_r_ce0;
  wire [15:0]output_r_q0;
  wire [17:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [17:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [15:0]weights_q0;
  wire [7:0]zext_ln34_reg_119_reg;

  assign ap_local_block = \<const0> ;
  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm__0[0]),
        .Q(ap_CS_fsm_state1),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm__0[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm__0[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state3),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state4),
        .Q(\ap_CS_fsm_reg_n_3_[4] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm__0[5]),
        .Q(ap_CS_fsm_state6),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm__0[6]),
        .Q(ap_CS_fsm_state7),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm__0[7]),
        .Q(ap_CS_fsm_state8),
        .R(ap_rst_n_inv));
  FDRE \bound_reg_156_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_34),
        .Q(bound_reg_156[0]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_24),
        .Q(bound_reg_156[10]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_23),
        .Q(bound_reg_156[11]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_22),
        .Q(bound_reg_156[12]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_21),
        .Q(bound_reg_156[13]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_20),
        .Q(bound_reg_156[14]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_19),
        .Q(bound_reg_156[15]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_18),
        .Q(bound_reg_156[16]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_17),
        .Q(bound_reg_156[17]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_16),
        .Q(bound_reg_156[18]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_15),
        .Q(bound_reg_156[19]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_33),
        .Q(bound_reg_156[1]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_14),
        .Q(bound_reg_156[20]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_13),
        .Q(bound_reg_156[21]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[22] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_12),
        .Q(bound_reg_156[22]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[23] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_11),
        .Q(bound_reg_156[23]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[24] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_10),
        .Q(bound_reg_156[24]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[25] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_9),
        .Q(bound_reg_156[25]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[26] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_8),
        .Q(bound_reg_156[26]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[27] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_7),
        .Q(bound_reg_156[27]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[28] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_6),
        .Q(bound_reg_156[28]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[29] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_5),
        .Q(bound_reg_156[29]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_32),
        .Q(bound_reg_156[2]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[30] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_4),
        .Q(bound_reg_156[30]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[31] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_3),
        .Q(bound_reg_156[31]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_31),
        .Q(bound_reg_156[3]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_30),
        .Q(bound_reg_156[4]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_29),
        .Q(bound_reg_156[5]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_28),
        .Q(bound_reg_156[6]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_27),
        .Q(bound_reg_156[7]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_26),
        .Q(bound_reg_156[8]),
        .R(1'b0));
  FDRE \bound_reg_156_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(mul_mul_16ns_16ns_32_4_1_U12_n_25),
        .Q(bound_reg_156[9]),
        .R(1'b0));
  design_1_nnlayer_0_0_nnlayer_control_s_axi control_s_axi_U
       (.A(weights_q0),
        .ADDRBWRADDR(output_r_address0),
        .B(input_r_q0),
        .CO(icmp_ln33_fu_87_p2),
        .D(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_bias_address0),
        .DIBDI(\int_output_r/p_1_in ),
        .Q({ap_CS_fsm_state8,ap_CS_fsm_state6,ap_CS_fsm_state4,ap_CS_fsm_state3,ap_CS_fsm_state1}),
        .SR(ap_rst_n_inv),
        .WEBWE({int_output_r_be0[3],int_output_r_be0[1]}),
        .\ap_CS_fsm_reg[0] (control_s_axi_U_n_76),
        .ap_NS_fsm1(ap_NS_fsm1),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .ce0(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_52),
        .grp_fu_130_ce(grp_fu_130_ce),
        .grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_input_r_address0(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_input_r_address0),
        .grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0),
        .grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_ce0(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_ce0),
        .icmp_ln10_reg_109(icmp_ln10_reg_109),
        .\icmp_ln10_reg_109_reg[0] (control_s_axi_U_n_50),
        .\icmp_ln47_reg_152_reg[0] (\icmp_ln47_reg_152_reg_n_3_[0] ),
        .\int_activation_reg[2]_0 (control_s_axi_U_n_49),
        .int_ap_start_reg_0(ap_NS_fsm__0[0]),
        .\int_bias_shift0_reg[0]_0 (control_s_axi_U_n_5),
        .\int_bias_shift0_reg[0]_1 (control_s_axi_U_n_68),
        .\int_bias_shift0_reg[0]_2 (control_s_axi_U_n_69),
        .\int_bias_shift0_reg[0]_3 (control_s_axi_U_n_70),
        .\int_bias_shift0_reg[0]_4 (control_s_axi_U_n_71),
        .\int_bias_shift0_reg[0]_5 (control_s_axi_U_n_72),
        .\int_bias_shift0_reg[0]_6 (control_s_axi_U_n_73),
        .\int_bias_shift0_reg[0]_7 (control_s_axi_U_n_74),
        .\int_bias_shift0_reg[0]_8 (control_s_axi_U_n_75),
        .\int_bias_shift0_reg[0]_9 (grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_n_15),
        .\int_ier_reg[1]_0 ({control_s_axi_U_n_45,control_s_axi_U_n_46}),
        .int_isr10_out(int_isr10_out),
        .int_isr7_out(int_isr7_out),
        .\int_numOfInNeurons_reg[15]_0 (grp_fu_130_p00),
        .\int_numOfOutNeurons_reg[15]_0 (grp_fu_130_p10),
        .\int_output_r_shift0_reg[0]_0 (control_s_axi_U_n_4),
        .\int_output_r_shift0_reg[0]_1 (grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_n_25),
        .interrupt(interrupt),
        .mem_reg(output_r_q0),
        .mem_reg_0(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_53),
        .mem_reg_1(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_output_r_d0),
        .mem_reg_1_0_1(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_49),
        .mem_reg_2_0_3(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_50),
        .mem_reg_3_0_5(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_51),
        .output_r_address01(output_r_address01),
        .output_r_ce0(output_r_ce0),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR),
        .s_axi_control_AWREADY(s_axi_control_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WREADY(s_axi_control_WREADY),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
  design_1_nnlayer_0_0_nnlayer_nnlayer_Pipeline_VITIS_LOOP_10_1 grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110
       (.ADDRBWRADDR(output_r_address0),
        .D(output_r_q0[15]),
        .DIBDI(\int_output_r/p_1_in ),
        .Q({ap_CS_fsm_state8,ap_CS_fsm_state7}),
        .SR(ap_rst_n_inv),
        .WEBWE({int_output_r_be0[3],int_output_r_be0[1]}),
        .\ap_CS_fsm_reg[6] (grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_n_26),
        .\ap_CS_fsm_reg[7] (\icmp_ln47_reg_152_reg_n_3_[0] ),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_rst_n(ap_rst_n),
        .grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_output_r_ce0(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_output_r_ce0),
        .icmp_ln10_reg_109(icmp_ln10_reg_109),
        .int_isr10_out(int_isr10_out),
        .int_isr7_out(int_isr7_out),
        .\int_isr_reg[1] ({control_s_axi_U_n_45,control_s_axi_U_n_46}),
        .\int_output_r_shift0_reg[0] (grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_n_25),
        .\int_output_r_shift0_reg[0]_0 (control_s_axi_U_n_4),
        .mem_reg(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_39),
        .mem_reg_0(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_40),
        .mem_reg_1(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_41),
        .mem_reg_10(control_s_axi_U_n_71),
        .mem_reg_11(control_s_axi_U_n_72),
        .mem_reg_12(control_s_axi_U_n_73),
        .mem_reg_13(control_s_axi_U_n_74),
        .mem_reg_14(control_s_axi_U_n_75),
        .mem_reg_15(control_s_axi_U_n_68),
        .mem_reg_16(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_46),
        .mem_reg_2(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_42),
        .mem_reg_3(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_43),
        .mem_reg_4(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_44),
        .mem_reg_5(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_45),
        .mem_reg_6(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_48),
        .mem_reg_7(control_s_axi_U_n_50),
        .mem_reg_8(control_s_axi_U_n_69),
        .mem_reg_9(control_s_axi_U_n_70),
        .output_r_address01(output_r_address01),
        .output_r_ce0(output_r_ce0));
  FDRE #(
    .INIT(1'b0)) 
    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_n_26),
        .Q(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .R(ap_rst_n_inv));
  design_1_nnlayer_0_0_nnlayer_nnlayer_Pipeline_VITIS_LOOP_33_1 grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88
       (.CO(icmp_ln33_fu_87_p2),
        .D(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_bias_address0),
        .Q({ap_CS_fsm_state2,ap_CS_fsm_state1}),
        .SR(ap_rst_n_inv),
        .ap_NS_fsm1(ap_NS_fsm1),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg_reg(ap_NS_fsm__0[2:1]),
        .icmp_ln33_fu_87_p2_carry__0_0(numOfOutNeurons_read_reg_136),
        .\int_bias_shift0_reg[0] (control_s_axi_U_n_5),
        .\outNeurons_fu_42_reg[0]_0 (grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_n_15),
        .\zext_ln34_reg_119_reg[7]_0 (zext_ln34_reg_119_reg));
  FDRE #(
    .INIT(1'b0)) 
    grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(control_s_axi_U_n_76),
        .Q(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .R(ap_rst_n_inv));
  design_1_nnlayer_0_0_nnlayer_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3 grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98
       (.A(weights_q0),
        .B(input_r_q0),
        .D(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_output_r_d0),
        .Q({ap_CS_fsm_state8,ap_CS_fsm_state7,ap_CS_fsm_state6,\ap_CS_fsm_reg_n_3_[4] ,ap_CS_fsm_state4,ap_CS_fsm_state2}),
        .SR(ap_rst_n_inv),
        .\ap_CS_fsm_reg[3] (grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_62),
        .\ap_CS_fsm_reg[5] (grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_48),
        .\ap_CS_fsm_reg[6] (ap_NS_fsm__0[7:5]),
        .\ap_CS_fsm_reg[6]_0 (\icmp_ln47_reg_152_reg_n_3_[0] ),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_enable_reg_pp0_iter0_reg_reg_0(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_49),
        .ap_enable_reg_pp0_iter0_reg_reg_1(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_50),
        .ap_enable_reg_pp0_iter0_reg_reg_2(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_51),
        .ap_enable_reg_pp0_iter0_reg_reg_3(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_53),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_rst_n(ap_rst_n),
        .ce0(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_52),
        .grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_output_r_ce0(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_output_r_ce0),
        .grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg),
        .grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_input_r_address0(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_input_r_address0),
        .grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0),
        .grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_ce0(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_ce0),
        .\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 (bound_reg_156),
        .mem_reg(zext_ln34_reg_119_reg),
        .\output_r_addr_reg_406_reg[0]_0 (grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_46),
        .\output_r_addr_reg_406_reg[1]_0 (grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_39),
        .\output_r_addr_reg_406_reg[2]_0 (grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_40),
        .\output_r_addr_reg_406_reg[3]_0 (grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_41),
        .\output_r_addr_reg_406_reg[4]_0 (grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_42),
        .\output_r_addr_reg_406_reg[5]_0 (grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_43),
        .\output_r_addr_reg_406_reg[6]_0 (grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_44),
        .\output_r_addr_reg_406_reg[7]_0 (grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_45),
        .output_r_address01(output_r_address01),
        .output_r_ce0(output_r_ce0),
        .\output_r_load_reg_426_reg[15]_0 (output_r_q0),
        .\weightIndexAdded_fu_78_reg[15]_0 (numOfOutNeurons_read_reg_136));
  FDRE #(
    .INIT(1'b0)) 
    grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_n_62),
        .Q(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg),
        .R(ap_rst_n_inv));
  FDRE \icmp_ln47_reg_152_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(control_s_axi_U_n_49),
        .Q(\icmp_ln47_reg_152_reg_n_3_[0] ),
        .R(1'b0));
  design_1_nnlayer_0_0_nnlayer_mul_mul_16ns_16ns_32_4_1 mul_mul_16ns_16ns_32_4_1_U12
       (.D({mul_mul_16ns_16ns_32_4_1_U12_n_3,mul_mul_16ns_16ns_32_4_1_U12_n_4,mul_mul_16ns_16ns_32_4_1_U12_n_5,mul_mul_16ns_16ns_32_4_1_U12_n_6,mul_mul_16ns_16ns_32_4_1_U12_n_7,mul_mul_16ns_16ns_32_4_1_U12_n_8,mul_mul_16ns_16ns_32_4_1_U12_n_9,mul_mul_16ns_16ns_32_4_1_U12_n_10,mul_mul_16ns_16ns_32_4_1_U12_n_11,mul_mul_16ns_16ns_32_4_1_U12_n_12,mul_mul_16ns_16ns_32_4_1_U12_n_13,mul_mul_16ns_16ns_32_4_1_U12_n_14,mul_mul_16ns_16ns_32_4_1_U12_n_15,mul_mul_16ns_16ns_32_4_1_U12_n_16,mul_mul_16ns_16ns_32_4_1_U12_n_17,mul_mul_16ns_16ns_32_4_1_U12_n_18,mul_mul_16ns_16ns_32_4_1_U12_n_19,mul_mul_16ns_16ns_32_4_1_U12_n_20,mul_mul_16ns_16ns_32_4_1_U12_n_21,mul_mul_16ns_16ns_32_4_1_U12_n_22,mul_mul_16ns_16ns_32_4_1_U12_n_23,mul_mul_16ns_16ns_32_4_1_U12_n_24,mul_mul_16ns_16ns_32_4_1_U12_n_25,mul_mul_16ns_16ns_32_4_1_U12_n_26,mul_mul_16ns_16ns_32_4_1_U12_n_27,mul_mul_16ns_16ns_32_4_1_U12_n_28,mul_mul_16ns_16ns_32_4_1_U12_n_29,mul_mul_16ns_16ns_32_4_1_U12_n_30,mul_mul_16ns_16ns_32_4_1_U12_n_31,mul_mul_16ns_16ns_32_4_1_U12_n_32,mul_mul_16ns_16ns_32_4_1_U12_n_33,mul_mul_16ns_16ns_32_4_1_U12_n_34}),
        .ap_clk(ap_clk),
        .grp_fu_130_ce(grp_fu_130_ce),
        .p_reg_reg(grp_fu_130_p10),
        .p_reg_reg_0(grp_fu_130_p00));
  FDRE \numOfOutNeurons_read_reg_136_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(grp_fu_130_p10[0]),
        .Q(numOfOutNeurons_read_reg_136[0]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_136_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(grp_fu_130_p10[10]),
        .Q(numOfOutNeurons_read_reg_136[10]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_136_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(grp_fu_130_p10[11]),
        .Q(numOfOutNeurons_read_reg_136[11]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_136_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(grp_fu_130_p10[12]),
        .Q(numOfOutNeurons_read_reg_136[12]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_136_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(grp_fu_130_p10[13]),
        .Q(numOfOutNeurons_read_reg_136[13]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_136_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(grp_fu_130_p10[14]),
        .Q(numOfOutNeurons_read_reg_136[14]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_136_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(grp_fu_130_p10[15]),
        .Q(numOfOutNeurons_read_reg_136[15]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_136_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(grp_fu_130_p10[1]),
        .Q(numOfOutNeurons_read_reg_136[1]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_136_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(grp_fu_130_p10[2]),
        .Q(numOfOutNeurons_read_reg_136[2]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_136_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(grp_fu_130_p10[3]),
        .Q(numOfOutNeurons_read_reg_136[3]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_136_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(grp_fu_130_p10[4]),
        .Q(numOfOutNeurons_read_reg_136[4]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_136_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(grp_fu_130_p10[5]),
        .Q(numOfOutNeurons_read_reg_136[5]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_136_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(grp_fu_130_p10[6]),
        .Q(numOfOutNeurons_read_reg_136[6]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_136_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(grp_fu_130_p10[7]),
        .Q(numOfOutNeurons_read_reg_136[7]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_136_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(grp_fu_130_p10[8]),
        .Q(numOfOutNeurons_read_reg_136[8]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_136_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(grp_fu_130_p10[9]),
        .Q(numOfOutNeurons_read_reg_136[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "nnlayer_control_s_axi" *) 
module design_1_nnlayer_0_0_nnlayer_control_s_axi
   (SR,
    \int_output_r_shift0_reg[0]_0 ,
    \int_bias_shift0_reg[0]_0 ,
    grp_fu_130_ce,
    ap_start,
    int_ap_start_reg_0,
    \int_numOfOutNeurons_reg[15]_0 ,
    \int_numOfInNeurons_reg[15]_0 ,
    s_axi_control_WREADY,
    s_axi_control_RVALID,
    s_axi_control_ARREADY,
    s_axi_control_AWREADY,
    \int_ier_reg[1]_0 ,
    interrupt,
    s_axi_control_BVALID,
    \int_activation_reg[2]_0 ,
    \icmp_ln10_reg_109_reg[0] ,
    mem_reg,
    output_r_address01,
    \int_bias_shift0_reg[0]_1 ,
    \int_bias_shift0_reg[0]_2 ,
    \int_bias_shift0_reg[0]_3 ,
    \int_bias_shift0_reg[0]_4 ,
    \int_bias_shift0_reg[0]_5 ,
    \int_bias_shift0_reg[0]_6 ,
    \int_bias_shift0_reg[0]_7 ,
    \int_bias_shift0_reg[0]_8 ,
    \ap_CS_fsm_reg[0] ,
    s_axi_control_RDATA,
    B,
    A,
    ap_clk,
    mem_reg_0,
    grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_input_r_address0,
    s_axi_control_WDATA,
    output_r_ce0,
    ADDRBWRADDR,
    DIBDI,
    WEBWE,
    grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg,
    D,
    grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_ce0,
    grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0,
    \int_output_r_shift0_reg[0]_1 ,
    \int_bias_shift0_reg[0]_9 ,
    Q,
    ap_NS_fsm1,
    ap_rst_n,
    ap_done,
    s_axi_control_ARADDR,
    s_axi_control_ARVALID,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    s_axi_control_AWVALID,
    s_axi_control_BREADY,
    s_axi_control_RREADY,
    s_axi_control_AWADDR,
    \icmp_ln47_reg_152_reg[0] ,
    icmp_ln10_reg_109,
    mem_reg_1,
    CO,
    mem_reg_1_0_1,
    mem_reg_2_0_3,
    mem_reg_3_0_5,
    ce0,
    int_isr10_out,
    int_isr7_out);
  output [0:0]SR;
  output \int_output_r_shift0_reg[0]_0 ;
  output \int_bias_shift0_reg[0]_0 ;
  output grp_fu_130_ce;
  output ap_start;
  output [0:0]int_ap_start_reg_0;
  output [15:0]\int_numOfOutNeurons_reg[15]_0 ;
  output [15:0]\int_numOfInNeurons_reg[15]_0 ;
  output s_axi_control_WREADY;
  output s_axi_control_RVALID;
  output s_axi_control_ARREADY;
  output s_axi_control_AWREADY;
  output [1:0]\int_ier_reg[1]_0 ;
  output interrupt;
  output s_axi_control_BVALID;
  output \int_activation_reg[2]_0 ;
  output \icmp_ln10_reg_109_reg[0] ;
  output [15:0]mem_reg;
  output output_r_address01;
  output \int_bias_shift0_reg[0]_1 ;
  output \int_bias_shift0_reg[0]_2 ;
  output \int_bias_shift0_reg[0]_3 ;
  output \int_bias_shift0_reg[0]_4 ;
  output \int_bias_shift0_reg[0]_5 ;
  output \int_bias_shift0_reg[0]_6 ;
  output \int_bias_shift0_reg[0]_7 ;
  output \int_bias_shift0_reg[0]_8 ;
  output \ap_CS_fsm_reg[0] ;
  output [31:0]s_axi_control_RDATA;
  output [15:0]B;
  output [15:0]A;
  input ap_clk;
  input mem_reg_0;
  input [7:0]grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_input_r_address0;
  input [31:0]s_axi_control_WDATA;
  input output_r_ce0;
  input [6:0]ADDRBWRADDR;
  input [7:0]DIBDI;
  input [1:0]WEBWE;
  input grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg;
  input [6:0]D;
  input grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_ce0;
  input [15:0]grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0;
  input \int_output_r_shift0_reg[0]_1 ;
  input \int_bias_shift0_reg[0]_9 ;
  input [4:0]Q;
  input ap_NS_fsm1;
  input ap_rst_n;
  input ap_done;
  input [17:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_AWVALID;
  input s_axi_control_BREADY;
  input s_axi_control_RREADY;
  input [17:0]s_axi_control_AWADDR;
  input \icmp_ln47_reg_152_reg[0] ;
  input icmp_ln10_reg_109;
  input [15:0]mem_reg_1;
  input [0:0]CO;
  input mem_reg_1_0_1;
  input mem_reg_2_0_3;
  input mem_reg_3_0_5;
  input ce0;
  input int_isr10_out;
  input int_isr7_out;

  wire [15:0]A;
  wire [6:0]ADDRBWRADDR;
  wire [15:0]B;
  wire [0:0]CO;
  wire [6:0]D;
  wire [7:0]DIBDI;
  wire [4:0]Q;
  wire [0:0]SR;
  wire [1:0]WEBWE;
  wire [7:0]activation;
  wire \ap_CS_fsm_reg[0] ;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_start;
  wire ar_hs__0;
  wire auto_restart_status_i_1_n_3;
  wire auto_restart_status_reg_n_3;
  wire aw_hs;
  wire ce0;
  wire grp_fu_130_ce;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg;
  wire [7:0]grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_input_r_address0;
  wire [15:0]grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_ce0;
  wire icmp_ln10_reg_109;
  wire \icmp_ln10_reg_109_reg[0] ;
  wire \icmp_ln47_reg_152[0]_i_2_n_3 ;
  wire \icmp_ln47_reg_152_reg[0] ;
  wire \int_activation[0]_i_1_n_3 ;
  wire \int_activation[1]_i_1_n_3 ;
  wire \int_activation[2]_i_1_n_3 ;
  wire \int_activation[3]_i_1_n_3 ;
  wire \int_activation[4]_i_1_n_3 ;
  wire \int_activation[5]_i_1_n_3 ;
  wire \int_activation[6]_i_1_n_3 ;
  wire \int_activation[7]_i_1_n_3 ;
  wire \int_activation[7]_i_2_n_3 ;
  wire \int_activation_reg[2]_0 ;
  wire int_ap_ready__0;
  wire int_ap_ready_i_1_n_3;
  wire int_ap_start_i_10_n_3;
  wire int_ap_start_i_1_n_3;
  wire int_ap_start_i_3_n_3;
  wire int_ap_start_i_4_n_3;
  wire int_ap_start_i_6_n_3;
  wire int_ap_start_i_9_n_3;
  wire [0:0]int_ap_start_reg_0;
  wire int_auto_restart_i_1_n_3;
  wire int_bias_n_10;
  wire int_bias_n_11;
  wire int_bias_n_12;
  wire int_bias_n_13;
  wire int_bias_n_14;
  wire int_bias_n_15;
  wire int_bias_n_16;
  wire int_bias_n_17;
  wire int_bias_n_18;
  wire int_bias_n_19;
  wire int_bias_n_20;
  wire int_bias_n_21;
  wire int_bias_n_22;
  wire int_bias_n_23;
  wire int_bias_n_24;
  wire int_bias_n_25;
  wire int_bias_n_26;
  wire int_bias_n_27;
  wire int_bias_n_28;
  wire int_bias_n_29;
  wire int_bias_n_3;
  wire int_bias_n_30;
  wire int_bias_n_31;
  wire int_bias_n_32;
  wire int_bias_n_33;
  wire int_bias_n_4;
  wire int_bias_n_5;
  wire int_bias_n_58;
  wire int_bias_n_6;
  wire int_bias_n_7;
  wire int_bias_n_8;
  wire int_bias_n_9;
  wire int_bias_read;
  wire int_bias_read0;
  wire int_bias_read_i_2_n_3;
  wire int_bias_read_i_3_n_3;
  wire \int_bias_shift0_reg[0]_0 ;
  wire \int_bias_shift0_reg[0]_1 ;
  wire \int_bias_shift0_reg[0]_2 ;
  wire \int_bias_shift0_reg[0]_3 ;
  wire \int_bias_shift0_reg[0]_4 ;
  wire \int_bias_shift0_reg[0]_5 ;
  wire \int_bias_shift0_reg[0]_6 ;
  wire \int_bias_shift0_reg[0]_7 ;
  wire \int_bias_shift0_reg[0]_8 ;
  wire \int_bias_shift0_reg[0]_9 ;
  wire int_bias_write0;
  wire int_bias_write_i_1_n_3;
  wire int_bias_write_i_3_n_3;
  wire int_bias_write_reg_n_3;
  wire int_gie_i_1_n_3;
  wire int_gie_reg_n_3;
  wire int_ier12_out;
  wire [1:0]\int_ier_reg[1]_0 ;
  wire \int_ier_reg_n_3_[2] ;
  wire \int_ier_reg_n_3_[3] ;
  wire \int_ier_reg_n_3_[4] ;
  wire \int_ier_reg_n_3_[5] ;
  wire int_input_r_n_52;
  wire int_input_r_n_53;
  wire int_input_r_n_54;
  wire int_input_r_n_55;
  wire int_input_r_n_56;
  wire int_input_r_n_57;
  wire int_input_r_n_58;
  wire int_input_r_n_59;
  wire int_input_r_n_60;
  wire int_input_r_n_61;
  wire int_input_r_n_62;
  wire int_input_r_n_63;
  wire int_input_r_n_64;
  wire int_input_r_n_65;
  wire int_input_r_n_66;
  wire [31:0]int_input_r_q0;
  wire [31:6]int_input_r_q1;
  wire int_input_r_read;
  wire int_input_r_read0;
  wire \int_input_r_shift0_reg_n_3_[0] ;
  wire int_input_r_write0;
  wire int_input_r_write_i_1_n_3;
  wire int_input_r_write_i_3_n_3;
  wire int_input_r_write_i_4_n_3;
  wire int_input_r_write_i_5_n_3;
  wire int_input_r_write_reg_n_3;
  wire int_isr10_out;
  wire int_isr7_out;
  wire \int_isr[0]_i_1_n_3 ;
  wire \int_isr[1]_i_1_n_3 ;
  wire \int_isr[5]_i_1_n_3 ;
  wire \int_isr_reg_n_3_[0] ;
  wire \int_isr_reg_n_3_[1] ;
  wire \int_isr_reg_n_3_[5] ;
  wire [15:0]int_numOfInNeurons0;
  wire \int_numOfInNeurons[15]_i_1_n_3 ;
  wire \int_numOfInNeurons[15]_i_3_n_3 ;
  wire [15:0]\int_numOfInNeurons_reg[15]_0 ;
  wire [15:0]int_numOfOutNeurons0;
  wire \int_numOfOutNeurons[15]_i_1_n_3 ;
  wire [15:0]\int_numOfOutNeurons_reg[15]_0 ;
  wire [31:0]int_output_r_q1;
  wire int_output_r_read;
  wire int_output_r_read0;
  wire \int_output_r_shift0_reg[0]_0 ;
  wire \int_output_r_shift0_reg[0]_1 ;
  wire int_output_r_write0;
  wire int_output_r_write_i_1_n_3;
  wire int_output_r_write_reg_n_3;
  wire int_task_ap_done0__10;
  wire int_task_ap_done__0;
  wire int_task_ap_done_i_1_n_3;
  wire int_task_ap_done_i_3_n_3;
  wire int_task_ap_done_i_4_n_3;
  wire [31:0]int_weights_q0;
  wire [31:0]int_weights_q1;
  wire int_weights_read;
  wire int_weights_read0;
  wire \int_weights_shift0_reg_n_3_[0] ;
  wire int_weights_write_i_1_n_3;
  wire int_weights_write_reg_n_3;
  wire interrupt;
  wire [15:0]mem_reg;
  wire mem_reg_0;
  wire [15:0]mem_reg_1;
  wire mem_reg_1_0_1;
  wire mem_reg_2_0_3;
  wire mem_reg_3_0_5;
  wire output_r_address01;
  wire output_r_ce0;
  wire [15:0]output_r_d0;
  wire p_35_in;
  wire [7:2]p_3_in;
  wire \rdata[0]_i_4_n_3 ;
  wire \rdata[0]_i_5_n_3 ;
  wire \rdata[15]_i_2_n_3 ;
  wire \rdata[15]_i_5_n_3 ;
  wire \rdata[15]_i_6_n_3 ;
  wire \rdata[15]_i_7_n_3 ;
  wire \rdata[15]_i_8_n_3 ;
  wire \rdata[1]_i_4_n_3 ;
  wire \rdata[1]_i_5_n_3 ;
  wire \rdata[2]_i_3_n_3 ;
  wire \rdata[2]_i_4_n_3 ;
  wire \rdata[31]_i_1_n_3 ;
  wire \rdata[31]_i_3_n_3 ;
  wire \rdata[3]_i_3_n_3 ;
  wire \rdata[3]_i_4_n_3 ;
  wire \rdata[4]_i_2_n_3 ;
  wire \rdata[4]_i_3_n_3 ;
  wire \rdata[5]_i_3_n_3 ;
  wire \rdata[5]_i_4_n_3 ;
  wire \rdata[5]_i_5_n_3 ;
  wire \rdata[5]_i_6_n_3 ;
  wire \rdata[5]_i_7_n_3 ;
  wire \rdata[5]_i_8_n_3 ;
  wire \rdata[6]_i_3_n_3 ;
  wire \rdata[6]_i_4_n_3 ;
  wire \rdata[6]_i_6_n_3 ;
  wire \rdata[6]_i_7_n_3 ;
  wire \rdata[6]_i_8_n_3 ;
  wire \rdata[6]_i_9_n_3 ;
  wire \rdata[7]_i_4_n_3 ;
  wire \rdata[7]_i_5_n_3 ;
  wire \rdata[7]_i_6_n_3 ;
  wire [1:0]rstate;
  wire \rstate[0]_i_1_n_3 ;
  wire [17:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [17:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire \waddr_reg_n_3_[0] ;
  wire \waddr_reg_n_3_[10] ;
  wire \waddr_reg_n_3_[11] ;
  wire \waddr_reg_n_3_[12] ;
  wire \waddr_reg_n_3_[13] ;
  wire \waddr_reg_n_3_[14] ;
  wire \waddr_reg_n_3_[15] ;
  wire \waddr_reg_n_3_[16] ;
  wire \waddr_reg_n_3_[17] ;
  wire \waddr_reg_n_3_[1] ;
  wire \waddr_reg_n_3_[2] ;
  wire \waddr_reg_n_3_[3] ;
  wire \waddr_reg_n_3_[4] ;
  wire \waddr_reg_n_3_[5] ;
  wire \waddr_reg_n_3_[6] ;
  wire \waddr_reg_n_3_[7] ;
  wire \waddr_reg_n_3_[8] ;
  wire \waddr_reg_n_3_[9] ;
  wire [1:0]wstate;
  wire \wstate[0]_i_1_n_3 ;
  wire \wstate[1]_i_1_n_3 ;

  LUT4 #(
    .INIT(16'hF444)) 
    \ap_CS_fsm[0]_i_1__0 
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(ap_done),
        .I3(Q[4]),
        .O(int_ap_start_reg_0));
  LUT4 #(
    .INIT(16'hEFAA)) 
    auto_restart_status_i_1
       (.I0(p_3_in[7]),
        .I1(ap_start),
        .I2(Q[0]),
        .I3(auto_restart_status_reg_n_3),
        .O(auto_restart_status_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    auto_restart_status_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(auto_restart_status_i_1_n_3),
        .Q(auto_restart_status_reg_n_3),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg_i_1
       (.I0(Q[0]),
        .I1(ap_start),
        .I2(CO),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .O(\ap_CS_fsm_reg[0] ));
  LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
    \icmp_ln47_reg_152[0]_i_1 
       (.I0(activation[2]),
        .I1(activation[1]),
        .I2(activation[0]),
        .I3(\icmp_ln47_reg_152[0]_i_2_n_3 ),
        .I4(Q[0]),
        .I5(\icmp_ln47_reg_152_reg[0] ),
        .O(\int_activation_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \icmp_ln47_reg_152[0]_i_2 
       (.I0(activation[3]),
        .I1(activation[4]),
        .I2(activation[5]),
        .I3(activation[6]),
        .I4(activation[7]),
        .I5(Q[0]),
        .O(\icmp_ln47_reg_152[0]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_activation[0]_i_1 
       (.I0(activation[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[0]),
        .O(\int_activation[0]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_activation[1]_i_1 
       (.I0(activation[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[1]),
        .O(\int_activation[1]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_activation[2]_i_1 
       (.I0(activation[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[2]),
        .O(\int_activation[2]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_activation[3]_i_1 
       (.I0(activation[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[3]),
        .O(\int_activation[3]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_activation[4]_i_1 
       (.I0(activation[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[4]),
        .O(\int_activation[4]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_activation[5]_i_1 
       (.I0(activation[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[5]),
        .O(\int_activation[5]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_activation[6]_i_1 
       (.I0(activation[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[6]),
        .O(\int_activation[6]_i_1_n_3 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \int_activation[7]_i_1 
       (.I0(\waddr_reg_n_3_[2] ),
        .I1(\waddr_reg_n_3_[3] ),
        .I2(\waddr_reg_n_3_[5] ),
        .I3(\waddr_reg_n_3_[4] ),
        .I4(\int_numOfInNeurons[15]_i_3_n_3 ),
        .O(\int_activation[7]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_activation[7]_i_2 
       (.I0(activation[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[7]),
        .O(\int_activation[7]_i_2_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[0] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_3 ),
        .D(\int_activation[0]_i_1_n_3 ),
        .Q(activation[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[1] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_3 ),
        .D(\int_activation[1]_i_1_n_3 ),
        .Q(activation[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[2] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_3 ),
        .D(\int_activation[2]_i_1_n_3 ),
        .Q(activation[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[3] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_3 ),
        .D(\int_activation[3]_i_1_n_3 ),
        .Q(activation[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[4] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_3 ),
        .D(\int_activation[4]_i_1_n_3 ),
        .Q(activation[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[5] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_3 ),
        .D(\int_activation[5]_i_1_n_3 ),
        .Q(activation[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[6] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_3 ),
        .D(\int_activation[6]_i_1_n_3 ),
        .Q(activation[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[7] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_3 ),
        .D(\int_activation[7]_i_2_n_3 ),
        .Q(activation[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    int_ap_idle_i_1
       (.I0(Q[0]),
        .I1(ap_start),
        .O(ap_idle));
  FDRE int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(p_3_in[2]),
        .R(SR));
  LUT4 #(
    .INIT(16'h4F44)) 
    int_ap_ready_i_1
       (.I0(p_3_in[7]),
        .I1(ap_done),
        .I2(int_task_ap_done0__10),
        .I3(int_ap_ready__0),
        .O(int_ap_ready_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_ready_i_1_n_3),
        .Q(int_ap_ready__0),
        .R(SR));
  LUT6 #(
    .INIT(64'hFBBBBBBBF8888888)) 
    int_ap_start_i_1
       (.I0(p_3_in[7]),
        .I1(ap_done),
        .I2(int_ap_start_i_3_n_3),
        .I3(int_ap_start_i_4_n_3),
        .I4(s_axi_control_WDATA[0]),
        .I5(ap_start),
        .O(int_ap_start_i_1_n_3));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    int_ap_start_i_10
       (.I0(\waddr_reg_n_3_[12] ),
        .I1(\waddr_reg_n_3_[13] ),
        .I2(\waddr_reg_n_3_[14] ),
        .I3(\waddr_reg_n_3_[15] ),
        .I4(\waddr_reg_n_3_[17] ),
        .I5(\waddr_reg_n_3_[16] ),
        .O(int_ap_start_i_10_n_3));
  LUT5 #(
    .INIT(32'h02000000)) 
    int_ap_start_i_3
       (.I0(s_axi_control_WSTRB[0]),
        .I1(\waddr_reg_n_3_[4] ),
        .I2(\waddr_reg_n_3_[5] ),
        .I3(p_35_in),
        .I4(int_ap_start_i_6_n_3),
        .O(int_ap_start_i_3_n_3));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    int_ap_start_i_4
       (.I0(\waddr_reg_n_3_[2] ),
        .I1(\waddr_reg_n_3_[3] ),
        .O(int_ap_start_i_4_n_3));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    int_ap_start_i_6
       (.I0(int_ap_start_i_9_n_3),
        .I1(\waddr_reg_n_3_[1] ),
        .I2(\waddr_reg_n_3_[0] ),
        .I3(\waddr_reg_n_3_[7] ),
        .I4(\waddr_reg_n_3_[6] ),
        .I5(int_ap_start_i_10_n_3),
        .O(int_ap_start_i_6_n_3));
  LUT4 #(
    .INIT(16'h0001)) 
    int_ap_start_i_9
       (.I0(\waddr_reg_n_3_[11] ),
        .I1(\waddr_reg_n_3_[10] ),
        .I2(\waddr_reg_n_3_[9] ),
        .I3(\waddr_reg_n_3_[8] ),
        .O(int_ap_start_i_9_n_3));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_3),
        .Q(ap_start),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    int_auto_restart_i_1
       (.I0(s_axi_control_WDATA[7]),
        .I1(\waddr_reg_n_3_[3] ),
        .I2(\waddr_reg_n_3_[2] ),
        .I3(int_ap_start_i_3_n_3),
        .I4(p_3_in[7]),
        .O(int_auto_restart_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_3),
        .Q(p_3_in[7]),
        .R(SR));
  design_1_nnlayer_0_0_nnlayer_control_s_axi_ram int_bias
       (.D(D),
        .DIBDI({output_r_d0[7:0],output_r_d0[15:8]}),
        .DOADO({int_input_r_q1[31:16],int_input_r_q1[6]}),
        .Q(Q[3]),
        .ap_clk(ap_clk),
        .ar_hs__0(ar_hs__0),
        .grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .int_bias_read(int_bias_read),
        .int_bias_read_reg(int_bias_n_31),
        .int_bias_read_reg_0(int_bias_n_32),
        .int_bias_read_reg_1(int_bias_n_33),
        .int_bias_read_reg_2(int_bias_n_58),
        .\int_bias_shift0_reg[0] (\int_bias_shift0_reg[0]_1 ),
        .\int_bias_shift0_reg[0]_0 (\int_bias_shift0_reg[0]_2 ),
        .\int_bias_shift0_reg[0]_1 (\int_bias_shift0_reg[0]_3 ),
        .\int_bias_shift0_reg[0]_2 (\int_bias_shift0_reg[0]_4 ),
        .\int_bias_shift0_reg[0]_3 (\int_bias_shift0_reg[0]_5 ),
        .\int_bias_shift0_reg[0]_4 (\int_bias_shift0_reg[0]_6 ),
        .\int_bias_shift0_reg[0]_5 (\int_bias_shift0_reg[0]_7 ),
        .\int_bias_shift0_reg[0]_6 (\int_bias_shift0_reg[0]_8 ),
        .int_input_r_read(int_input_r_read),
        .int_output_r_read(int_output_r_read),
        .mem_reg_0({int_bias_n_3,int_bias_n_4,int_bias_n_5,int_bias_n_6,int_bias_n_7,int_bias_n_8,int_bias_n_9,int_bias_n_10,int_bias_n_11,int_bias_n_12,int_bias_n_13,int_bias_n_14,int_bias_n_15,int_bias_n_16,int_bias_n_17,int_bias_n_18,int_bias_n_19,int_bias_n_20,int_bias_n_21,int_bias_n_22,int_bias_n_23,int_bias_n_24,int_bias_n_25,int_bias_n_26,int_bias_n_27,int_bias_n_28,int_bias_n_29,int_bias_n_30}),
        .mem_reg_1(int_bias_write_reg_n_3),
        .mem_reg_2(mem_reg_1),
        .mem_reg_3(\int_bias_shift0_reg[0]_0 ),
        .mem_reg_4(output_r_address01),
        .mem_reg_5({\waddr_reg_n_3_[8] ,\waddr_reg_n_3_[7] ,\waddr_reg_n_3_[6] ,\waddr_reg_n_3_[5] ,\waddr_reg_n_3_[4] ,\waddr_reg_n_3_[3] ,\waddr_reg_n_3_[2] }),
        .p_35_in(p_35_in),
        .q1(int_weights_q1),
        .\rdata_reg[0] (\rdata[15]_i_2_n_3 ),
        .\rdata_reg[0]_0 (int_input_r_n_52),
        .\rdata_reg[10] (int_input_r_n_61),
        .\rdata_reg[11] (int_input_r_n_62),
        .\rdata_reg[12] (int_input_r_n_63),
        .\rdata_reg[13] (int_input_r_n_64),
        .\rdata_reg[14] (int_input_r_n_65),
        .\rdata_reg[15] (int_input_r_n_66),
        .\rdata_reg[1] (int_input_r_n_53),
        .\rdata_reg[31] (int_output_r_q1),
        .\rdata_reg[6] (\rdata[6]_i_3_n_3 ),
        .\rdata_reg[6]_0 (\rdata[6]_i_4_n_3 ),
        .\rdata_reg[7] (int_input_r_n_58),
        .\rdata_reg[8] (int_input_r_n_59),
        .\rdata_reg[9] (int_input_r_n_60),
        .rstate(rstate),
        .s_axi_control_ARADDR(s_axi_control_ARADDR[8:2]),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .wstate(wstate));
  LUT6 #(
    .INIT(64'h0044004000400040)) 
    int_bias_read_i_1
       (.I0(int_bias_read_i_2_n_3),
        .I1(ar_hs__0),
        .I2(int_bias_read_i_3_n_3),
        .I3(s_axi_control_ARADDR[17]),
        .I4(s_axi_control_ARADDR[10]),
        .I5(s_axi_control_ARADDR[9]),
        .O(int_bias_read0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    int_bias_read_i_2
       (.I0(s_axi_control_ARADDR[11]),
        .I1(s_axi_control_ARADDR[13]),
        .I2(s_axi_control_ARADDR[12]),
        .I3(s_axi_control_ARADDR[14]),
        .I4(s_axi_control_ARADDR[15]),
        .I5(s_axi_control_ARADDR[16]),
        .O(int_bias_read_i_2_n_3));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    int_bias_read_i_3
       (.I0(s_axi_control_ARADDR[12]),
        .I1(s_axi_control_ARADDR[13]),
        .I2(s_axi_control_ARADDR[11]),
        .I3(s_axi_control_ARADDR[15]),
        .I4(s_axi_control_ARADDR[14]),
        .I5(s_axi_control_ARADDR[16]),
        .O(int_bias_read_i_3_n_3));
  FDRE int_bias_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_bias_read0),
        .Q(int_bias_read),
        .R(SR));
  FDRE \int_bias_shift0_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_bias_shift0_reg[0]_9 ),
        .Q(\int_bias_shift0_reg[0]_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'hFEFFFFFFAAAAAAAA)) 
    int_bias_write_i_1
       (.I0(int_bias_write0),
        .I1(ar_hs__0),
        .I2(wstate[1]),
        .I3(wstate[0]),
        .I4(s_axi_control_WVALID),
        .I5(int_bias_write_reg_n_3),
        .O(int_bias_write_i_1_n_3));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hEA00)) 
    int_bias_write_i_2
       (.I0(int_bias_write_i_3_n_3),
        .I1(s_axi_control_AWADDR[10]),
        .I2(s_axi_control_AWADDR[9]),
        .I3(int_input_r_write_i_3_n_3),
        .O(int_bias_write0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    int_bias_write_i_3
       (.I0(int_input_r_write_i_5_n_3),
        .I1(s_axi_control_AWADDR[15]),
        .I2(s_axi_control_AWADDR[16]),
        .I3(s_axi_control_AWADDR[17]),
        .I4(s_axi_control_AWADDR[14]),
        .O(int_bias_write_i_3_n_3));
  FDRE int_bias_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_bias_write_i_1_n_3),
        .Q(int_bias_write_reg_n_3),
        .R(SR));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    int_gie_i_1
       (.I0(s_axi_control_WDATA[0]),
        .I1(\waddr_reg_n_3_[3] ),
        .I2(\waddr_reg_n_3_[2] ),
        .I3(int_ap_start_i_3_n_3),
        .I4(int_gie_reg_n_3),
        .O(int_gie_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_3),
        .Q(int_gie_reg_n_3),
        .R(SR));
  LUT3 #(
    .INIT(8'h40)) 
    \int_ier[5]_i_1 
       (.I0(\waddr_reg_n_3_[2] ),
        .I1(\waddr_reg_n_3_[3] ),
        .I2(int_ap_start_i_3_n_3),
        .O(int_ier12_out));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(int_ier12_out),
        .D(s_axi_control_WDATA[0]),
        .Q(\int_ier_reg[1]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(int_ier12_out),
        .D(s_axi_control_WDATA[1]),
        .Q(\int_ier_reg[1]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[2] 
       (.C(ap_clk),
        .CE(int_ier12_out),
        .D(s_axi_control_WDATA[2]),
        .Q(\int_ier_reg_n_3_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[3] 
       (.C(ap_clk),
        .CE(int_ier12_out),
        .D(s_axi_control_WDATA[3]),
        .Q(\int_ier_reg_n_3_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[4] 
       (.C(ap_clk),
        .CE(int_ier12_out),
        .D(s_axi_control_WDATA[4]),
        .Q(\int_ier_reg_n_3_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[5] 
       (.C(ap_clk),
        .CE(int_ier12_out),
        .D(s_axi_control_WDATA[5]),
        .Q(\int_ier_reg_n_3_[5] ),
        .R(SR));
  design_1_nnlayer_0_0_nnlayer_control_s_axi_ram_2 int_input_r
       (.D({int_input_r_n_54,int_input_r_n_55,int_input_r_n_56,int_input_r_n_57}),
        .DOADO({int_input_r_q1[31:16],int_input_r_q1[6]}),
        .DOBDO(int_input_r_q0),
        .Q({\waddr_reg_n_3_[8] ,\waddr_reg_n_3_[7] ,\waddr_reg_n_3_[6] ,\waddr_reg_n_3_[5] ,\waddr_reg_n_3_[4] ,\waddr_reg_n_3_[3] ,\waddr_reg_n_3_[2] }),
        .ap_clk(ap_clk),
        .ar_hs__0(ar_hs__0),
        .grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_input_r_address0(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_input_r_address0[7:1]),
        .int_input_r_read(int_input_r_read),
        .\int_numOfInNeurons_reg[10] (int_input_r_n_61),
        .\int_numOfInNeurons_reg[11] (int_input_r_n_62),
        .\int_numOfInNeurons_reg[12] (int_input_r_n_63),
        .\int_numOfInNeurons_reg[13] (int_input_r_n_64),
        .\int_numOfInNeurons_reg[14] (int_input_r_n_65),
        .\int_numOfInNeurons_reg[15] (int_input_r_n_66),
        .\int_numOfInNeurons_reg[8] (int_input_r_n_59),
        .\int_numOfInNeurons_reg[9] (int_input_r_n_60),
        .mem_reg_0(int_input_r_n_52),
        .mem_reg_1(int_input_r_n_53),
        .mem_reg_2(int_input_r_n_58),
        .mem_reg_3(mem_reg_0),
        .mem_reg_4(int_input_r_write_reg_n_3),
        .p_35_in(p_35_in),
        .\rdata_reg[0] (\rdata[0]_i_4_n_3 ),
        .\rdata_reg[0]_0 (\rdata[15]_i_6_n_3 ),
        .\rdata_reg[0]_1 (\rdata[0]_i_5_n_3 ),
        .\rdata_reg[0]_2 (\rdata[7]_i_6_n_3 ),
        .\rdata_reg[15] (\int_numOfInNeurons_reg[15]_0 [15:8]),
        .\rdata_reg[15]_0 (\int_numOfOutNeurons_reg[15]_0 [15:8]),
        .\rdata_reg[1] (\rdata[1]_i_4_n_3 ),
        .\rdata_reg[1]_0 (\rdata[1]_i_5_n_3 ),
        .\rdata_reg[2] (\rdata[5]_i_4_n_3 ),
        .\rdata_reg[2]_0 (int_bias_n_31),
        .\rdata_reg[2]_1 (\rdata[2]_i_3_n_3 ),
        .\rdata_reg[3] (int_bias_n_32),
        .\rdata_reg[3]_0 (\rdata[3]_i_3_n_3 ),
        .\rdata_reg[4] (\rdata[4]_i_2_n_3 ),
        .\rdata_reg[4]_0 (\rdata[4]_i_3_n_3 ),
        .\rdata_reg[4]_1 (int_bias_n_58),
        .\rdata_reg[5] (int_bias_n_33),
        .\rdata_reg[5]_0 (\rdata[5]_i_3_n_3 ),
        .\rdata_reg[7] (\rdata[7]_i_4_n_3 ),
        .\rdata_reg[7]_0 (\rdata[7]_i_5_n_3 ),
        .\rdata_reg[8] (\rdata[15]_i_5_n_3 ),
        .\rdata_reg[8]_0 (\rdata[15]_i_7_n_3 ),
        .rstate(rstate),
        .s_axi_control_ARADDR(s_axi_control_ARADDR[8:2]),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .wstate(wstate));
  LUT6 #(
    .INIT(64'h00000000000E0000)) 
    int_input_r_read_i_1
       (.I0(s_axi_control_ARADDR[9]),
        .I1(int_bias_read_i_3_n_3),
        .I2(s_axi_control_ARADDR[10]),
        .I3(s_axi_control_ARADDR[17]),
        .I4(ar_hs__0),
        .I5(int_bias_read_i_2_n_3),
        .O(int_input_r_read0));
  FDRE int_input_r_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_input_r_read0),
        .Q(int_input_r_read),
        .R(SR));
  FDRE \int_input_r_shift0_reg[0] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_ce0),
        .D(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_input_r_address0[0]),
        .Q(\int_input_r_shift0_reg_n_3_[0] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hFEFFFFFFAAAAAAAA)) 
    int_input_r_write_i_1
       (.I0(int_input_r_write0),
        .I1(ar_hs__0),
        .I2(wstate[1]),
        .I3(wstate[0]),
        .I4(s_axi_control_WVALID),
        .I5(int_input_r_write_reg_n_3),
        .O(int_input_r_write_i_1_n_3));
  LUT4 #(
    .INIT(16'h4440)) 
    int_input_r_write_i_2
       (.I0(s_axi_control_AWADDR[10]),
        .I1(int_input_r_write_i_3_n_3),
        .I2(s_axi_control_AWADDR[9]),
        .I3(int_input_r_write_i_4_n_3),
        .O(int_input_r_write0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    int_input_r_write_i_3
       (.I0(aw_hs),
        .I1(s_axi_control_AWADDR[14]),
        .I2(s_axi_control_AWADDR[15]),
        .I3(s_axi_control_AWADDR[17]),
        .I4(s_axi_control_AWADDR[16]),
        .I5(int_input_r_write_i_5_n_3),
        .O(int_input_r_write_i_3_n_3));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    int_input_r_write_i_4
       (.I0(s_axi_control_AWADDR[14]),
        .I1(s_axi_control_AWADDR[17]),
        .I2(s_axi_control_AWADDR[16]),
        .I3(s_axi_control_AWADDR[15]),
        .I4(int_input_r_write_i_5_n_3),
        .I5(s_axi_control_AWADDR[10]),
        .O(int_input_r_write_i_4_n_3));
  LUT3 #(
    .INIT(8'hFE)) 
    int_input_r_write_i_5
       (.I0(s_axi_control_AWADDR[12]),
        .I1(s_axi_control_AWADDR[11]),
        .I2(s_axi_control_AWADDR[13]),
        .O(int_input_r_write_i_5_n_3));
  FDRE int_input_r_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_input_r_write_i_1_n_3),
        .Q(int_input_r_write_reg_n_3),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFF8000)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(int_ap_start_i_3_n_3),
        .I2(\waddr_reg_n_3_[2] ),
        .I3(\waddr_reg_n_3_[3] ),
        .I4(int_isr10_out),
        .I5(\int_isr_reg_n_3_[0] ),
        .O(\int_isr[0]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFF8000)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(int_ap_start_i_3_n_3),
        .I2(\waddr_reg_n_3_[2] ),
        .I3(\waddr_reg_n_3_[3] ),
        .I4(int_isr7_out),
        .I5(\int_isr_reg_n_3_[1] ),
        .O(\int_isr[1]_i_1_n_3 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \int_isr[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(\waddr_reg_n_3_[3] ),
        .I2(\waddr_reg_n_3_[2] ),
        .I3(int_ap_start_i_3_n_3),
        .I4(\int_isr_reg_n_3_[5] ),
        .O(\int_isr[5]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_3 ),
        .Q(\int_isr_reg_n_3_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_3 ),
        .Q(\int_isr_reg_n_3_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[5]_i_1_n_3 ),
        .Q(\int_isr_reg_n_3_[5] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfInNeurons[0]_i_1 
       (.I0(\int_numOfInNeurons_reg[15]_0 [0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[0]),
        .O(int_numOfInNeurons0[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [10]),
        .O(int_numOfInNeurons0[10]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [11]),
        .O(int_numOfInNeurons0[11]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [12]),
        .O(int_numOfInNeurons0[12]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [13]),
        .O(int_numOfInNeurons0[13]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [14]),
        .O(int_numOfInNeurons0[14]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \int_numOfInNeurons[15]_i_1 
       (.I0(\waddr_reg_n_3_[3] ),
        .I1(\waddr_reg_n_3_[2] ),
        .I2(\int_numOfInNeurons[15]_i_3_n_3 ),
        .I3(\waddr_reg_n_3_[4] ),
        .I4(\waddr_reg_n_3_[5] ),
        .O(\int_numOfInNeurons[15]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[15]_i_2 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [15]),
        .O(int_numOfInNeurons0[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \int_numOfInNeurons[15]_i_3 
       (.I0(int_ap_start_i_6_n_3),
        .I1(ar_hs__0),
        .I2(wstate[1]),
        .I3(wstate[0]),
        .I4(s_axi_control_WVALID),
        .O(\int_numOfInNeurons[15]_i_3_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfInNeurons[1]_i_1 
       (.I0(\int_numOfInNeurons_reg[15]_0 [1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[1]),
        .O(int_numOfInNeurons0[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfInNeurons[2]_i_1 
       (.I0(\int_numOfInNeurons_reg[15]_0 [2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[2]),
        .O(int_numOfInNeurons0[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfInNeurons[3]_i_1 
       (.I0(\int_numOfInNeurons_reg[15]_0 [3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[3]),
        .O(int_numOfInNeurons0[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfInNeurons[4]_i_1 
       (.I0(\int_numOfInNeurons_reg[15]_0 [4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[4]),
        .O(int_numOfInNeurons0[4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfInNeurons[5]_i_1 
       (.I0(\int_numOfInNeurons_reg[15]_0 [5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[5]),
        .O(int_numOfInNeurons0[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfInNeurons[6]_i_1 
       (.I0(\int_numOfInNeurons_reg[15]_0 [6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[6]),
        .O(int_numOfInNeurons0[6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfInNeurons[7]_i_1 
       (.I0(\int_numOfInNeurons_reg[15]_0 [7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[7]),
        .O(int_numOfInNeurons0[7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [8]),
        .O(int_numOfInNeurons0[8]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [9]),
        .O(int_numOfInNeurons0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[0] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[0]),
        .Q(\int_numOfInNeurons_reg[15]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[10] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[10]),
        .Q(\int_numOfInNeurons_reg[15]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[11] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[11]),
        .Q(\int_numOfInNeurons_reg[15]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[12] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[12]),
        .Q(\int_numOfInNeurons_reg[15]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[13] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[13]),
        .Q(\int_numOfInNeurons_reg[15]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[14] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[14]),
        .Q(\int_numOfInNeurons_reg[15]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[15] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[15]),
        .Q(\int_numOfInNeurons_reg[15]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[1] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[1]),
        .Q(\int_numOfInNeurons_reg[15]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[2] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[2]),
        .Q(\int_numOfInNeurons_reg[15]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[3] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[3]),
        .Q(\int_numOfInNeurons_reg[15]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[4] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[4]),
        .Q(\int_numOfInNeurons_reg[15]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[5] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[5]),
        .Q(\int_numOfInNeurons_reg[15]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[6] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[6]),
        .Q(\int_numOfInNeurons_reg[15]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[7] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[7]),
        .Q(\int_numOfInNeurons_reg[15]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[8] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[8]),
        .Q(\int_numOfInNeurons_reg[15]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[9] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[9]),
        .Q(\int_numOfInNeurons_reg[15]_0 [9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfOutNeurons[0]_i_1 
       (.I0(\int_numOfOutNeurons_reg[15]_0 [0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[0]),
        .O(int_numOfOutNeurons0[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [10]),
        .O(int_numOfOutNeurons0[10]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [11]),
        .O(int_numOfOutNeurons0[11]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [12]),
        .O(int_numOfOutNeurons0[12]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [13]),
        .O(int_numOfOutNeurons0[13]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [14]),
        .O(int_numOfOutNeurons0[14]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \int_numOfOutNeurons[15]_i_1 
       (.I0(\waddr_reg_n_3_[2] ),
        .I1(\waddr_reg_n_3_[3] ),
        .I2(\int_numOfInNeurons[15]_i_3_n_3 ),
        .I3(\waddr_reg_n_3_[4] ),
        .I4(\waddr_reg_n_3_[5] ),
        .O(\int_numOfOutNeurons[15]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[15]_i_2 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [15]),
        .O(int_numOfOutNeurons0[15]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfOutNeurons[1]_i_1 
       (.I0(\int_numOfOutNeurons_reg[15]_0 [1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[1]),
        .O(int_numOfOutNeurons0[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfOutNeurons[2]_i_1 
       (.I0(\int_numOfOutNeurons_reg[15]_0 [2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[2]),
        .O(int_numOfOutNeurons0[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfOutNeurons[3]_i_1 
       (.I0(\int_numOfOutNeurons_reg[15]_0 [3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[3]),
        .O(int_numOfOutNeurons0[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfOutNeurons[4]_i_1 
       (.I0(\int_numOfOutNeurons_reg[15]_0 [4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[4]),
        .O(int_numOfOutNeurons0[4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfOutNeurons[5]_i_1 
       (.I0(\int_numOfOutNeurons_reg[15]_0 [5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[5]),
        .O(int_numOfOutNeurons0[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfOutNeurons[6]_i_1 
       (.I0(\int_numOfOutNeurons_reg[15]_0 [6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[6]),
        .O(int_numOfOutNeurons0[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfOutNeurons[7]_i_1 
       (.I0(\int_numOfOutNeurons_reg[15]_0 [7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[7]),
        .O(int_numOfOutNeurons0[7]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [8]),
        .O(int_numOfOutNeurons0[8]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [9]),
        .O(int_numOfOutNeurons0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[0] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[0]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[10] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[10]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[11] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[11]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[12] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[12]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[13] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[13]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[14] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[14]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[15] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[15]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[1] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[1]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[2] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[2]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[3] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[3]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[4] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[4]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[5] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[5]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[6] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[6]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[7] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[7]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[8] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[8]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[9] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[9]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [9]),
        .R(SR));
  design_1_nnlayer_0_0_nnlayer_control_s_axi_ram__parameterized0 int_output_r
       (.ADDRBWRADDR(ADDRBWRADDR),
        .DIBDI({DIBDI,output_r_d0[7:0],output_r_d0[15:8]}),
        .Q(Q[4]),
        .WEBWE(WEBWE),
        .ap_clk(ap_clk),
        .ar_hs__0(ar_hs__0),
        .icmp_ln10_reg_109(icmp_ln10_reg_109),
        .\icmp_ln10_reg_109_reg[0] (\icmp_ln10_reg_109_reg[0] ),
        .mem_reg_0(int_output_r_q1),
        .mem_reg_1(mem_reg),
        .mem_reg_2(int_output_r_write_reg_n_3),
        .mem_reg_3(\icmp_ln47_reg_152_reg[0] ),
        .mem_reg_4({\waddr_reg_n_3_[8] ,\waddr_reg_n_3_[7] ,\waddr_reg_n_3_[6] ,\waddr_reg_n_3_[5] ,\waddr_reg_n_3_[4] ,\waddr_reg_n_3_[3] ,\waddr_reg_n_3_[2] }),
        .output_r_address01(output_r_address01),
        .output_r_ce0(output_r_ce0),
        .\output_r_load_reg_426_reg[0] (\int_output_r_shift0_reg[0]_0 ),
        .p_35_in(p_35_in),
        .rstate(rstate),
        .s_axi_control_ARADDR(s_axi_control_ARADDR[8:2]),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .wstate(wstate));
  LUT6 #(
    .INIT(64'h0000000004044400)) 
    int_output_r_read_i_1
       (.I0(int_bias_read_i_2_n_3),
        .I1(ar_hs__0),
        .I2(s_axi_control_ARADDR[9]),
        .I3(int_bias_read_i_3_n_3),
        .I4(s_axi_control_ARADDR[10]),
        .I5(s_axi_control_ARADDR[17]),
        .O(int_output_r_read0));
  FDRE int_output_r_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_output_r_read0),
        .Q(int_output_r_read),
        .R(SR));
  FDRE \int_output_r_shift0_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_output_r_shift0_reg[0]_1 ),
        .Q(\int_output_r_shift0_reg[0]_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'hFEFFFFFFAAAAAAAA)) 
    int_output_r_write_i_1
       (.I0(int_output_r_write0),
        .I1(ar_hs__0),
        .I2(wstate[1]),
        .I3(wstate[0]),
        .I4(s_axi_control_WVALID),
        .I5(int_output_r_write_reg_n_3),
        .O(int_output_r_write_i_1_n_3));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h2A00)) 
    int_output_r_write_i_2
       (.I0(int_input_r_write_i_4_n_3),
        .I1(s_axi_control_AWADDR[10]),
        .I2(s_axi_control_AWADDR[9]),
        .I3(int_input_r_write_i_3_n_3),
        .O(int_output_r_write0));
  FDRE int_output_r_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_output_r_write_i_1_n_3),
        .Q(int_output_r_write_reg_n_3),
        .R(SR));
  LUT6 #(
    .INIT(64'h2E22FFFF2E222E22)) 
    int_task_ap_done_i_1
       (.I0(ap_done),
        .I1(auto_restart_status_reg_n_3),
        .I2(p_3_in[2]),
        .I3(ap_idle),
        .I4(int_task_ap_done0__10),
        .I5(int_task_ap_done__0),
        .O(int_task_ap_done_i_1_n_3));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    int_task_ap_done_i_2
       (.I0(ar_hs__0),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(int_task_ap_done_i_3_n_3),
        .I5(int_task_ap_done_i_4_n_3),
        .O(int_task_ap_done0__10));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    int_task_ap_done_i_3
       (.I0(int_bias_read_i_2_n_3),
        .I1(s_axi_control_ARADDR[9]),
        .I2(s_axi_control_ARADDR[10]),
        .I3(s_axi_control_ARADDR[17]),
        .O(int_task_ap_done_i_3_n_3));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    int_task_ap_done_i_4
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[6]),
        .I2(s_axi_control_ARADDR[7]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(int_task_ap_done_i_4_n_3));
  FDRE #(
    .INIT(1'b0)) 
    int_task_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_task_ap_done_i_1_n_3),
        .Q(int_task_ap_done__0),
        .R(SR));
  design_1_nnlayer_0_0_nnlayer_control_s_axi_ram__parameterized1 int_weights
       (.Q({\waddr_reg_n_3_[16] ,\waddr_reg_n_3_[15] ,\waddr_reg_n_3_[14] ,\waddr_reg_n_3_[13] ,\waddr_reg_n_3_[12] ,\waddr_reg_n_3_[11] ,\waddr_reg_n_3_[10] ,\waddr_reg_n_3_[9] ,\waddr_reg_n_3_[8] ,\waddr_reg_n_3_[7] ,\waddr_reg_n_3_[6] ,\waddr_reg_n_3_[5] ,\waddr_reg_n_3_[4] ,\waddr_reg_n_3_[3] ,\waddr_reg_n_3_[2] }),
        .ap_clk(ap_clk),
        .ar_hs__0(ar_hs__0),
        .ce0(ce0),
        .grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0[15:1]),
        .mem_reg_1_0_1_0(mem_reg_1_0_1),
        .mem_reg_2_0_3_0(mem_reg_2_0_3),
        .mem_reg_3_0_2_0(int_weights_write_reg_n_3),
        .mem_reg_3_0_5_0(mem_reg_3_0_5),
        .q0(int_weights_q0),
        .q1(int_weights_q1),
        .rstate(rstate),
        .s_axi_control_ARADDR(s_axi_control_ARADDR[16:2]),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .wstate(wstate));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    int_weights_read_i_1
       (.I0(s_axi_control_ARADDR[17]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[0]),
        .I3(rstate[1]),
        .O(int_weights_read0));
  FDRE int_weights_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_weights_read0),
        .Q(int_weights_read),
        .R(SR));
  FDRE \int_weights_shift0_reg[0] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_ce0),
        .D(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0[0]),
        .Q(\int_weights_shift0_reg_n_3_[0] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
    int_weights_write_i_1
       (.I0(wstate[1]),
        .I1(wstate[0]),
        .I2(s_axi_control_AWVALID),
        .I3(s_axi_control_AWADDR[17]),
        .I4(p_35_in),
        .I5(int_weights_write_reg_n_3),
        .O(int_weights_write_i_1_n_3));
  FDRE int_weights_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_weights_write_i_1_n_3),
        .Q(int_weights_write_reg_n_3),
        .R(SR));
  LUT4 #(
    .INIT(16'hFE00)) 
    interrupt_INST_0
       (.I0(\int_isr_reg_n_3_[0] ),
        .I1(\int_isr_reg_n_3_[1] ),
        .I2(\int_isr_reg_n_3_[5] ),
        .I3(int_gie_reg_n_3),
        .O(interrupt));
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    p_reg_reg_i_1
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(ap_NS_fsm1),
        .O(grp_fu_130_ce));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_10
       (.I0(int_input_r_q0[22]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[6]),
        .O(B[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_11
       (.I0(int_input_r_q0[21]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[5]),
        .O(B[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_12
       (.I0(int_input_r_q0[20]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[4]),
        .O(B[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_13
       (.I0(int_input_r_q0[19]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[3]),
        .O(B[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_14
       (.I0(int_input_r_q0[18]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[2]),
        .O(B[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_15
       (.I0(int_input_r_q0[17]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[1]),
        .O(B[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_16
       (.I0(int_input_r_q0[16]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[0]),
        .O(B[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_17
       (.I0(int_weights_q0[31]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[15]),
        .O(A[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_18
       (.I0(int_weights_q0[30]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[14]),
        .O(A[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_19
       (.I0(int_weights_q0[29]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[13]),
        .O(A[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_1__0
       (.I0(int_input_r_q0[31]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[15]),
        .O(B[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_2
       (.I0(int_input_r_q0[30]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[14]),
        .O(B[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_20
       (.I0(int_weights_q0[28]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[12]),
        .O(A[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_21
       (.I0(int_weights_q0[27]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[11]),
        .O(A[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_22
       (.I0(int_weights_q0[26]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[10]),
        .O(A[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_23
       (.I0(int_weights_q0[25]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[9]),
        .O(A[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_24
       (.I0(int_weights_q0[24]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[8]),
        .O(A[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_25
       (.I0(int_weights_q0[23]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[7]),
        .O(A[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_26
       (.I0(int_weights_q0[22]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[6]),
        .O(A[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_27
       (.I0(int_weights_q0[21]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[5]),
        .O(A[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_28
       (.I0(int_weights_q0[20]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[4]),
        .O(A[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_29
       (.I0(int_weights_q0[19]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[3]),
        .O(A[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_3
       (.I0(int_input_r_q0[29]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[13]),
        .O(B[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_30
       (.I0(int_weights_q0[18]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[2]),
        .O(A[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_31
       (.I0(int_weights_q0[17]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[1]),
        .O(A[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_32
       (.I0(int_weights_q0[16]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[0]),
        .O(A[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_4
       (.I0(int_input_r_q0[28]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[12]),
        .O(B[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_5
       (.I0(int_input_r_q0[27]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[11]),
        .O(B[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_6
       (.I0(int_input_r_q0[26]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[10]),
        .O(B[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_7
       (.I0(int_input_r_q0[25]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[9]),
        .O(B[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_8
       (.I0(int_input_r_q0[24]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[8]),
        .O(B[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_9
       (.I0(int_input_r_q0[23]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[7]),
        .O(B[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[0]_i_4 
       (.I0(\rdata[6]_i_6_n_3 ),
        .I1(activation[0]),
        .I2(\rdata[6]_i_7_n_3 ),
        .I3(\int_numOfInNeurons_reg[15]_0 [0]),
        .I4(\int_numOfOutNeurons_reg[15]_0 [0]),
        .I5(\rdata[6]_i_8_n_3 ),
        .O(\rdata[0]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'hCFFAC0FACF0AC00A)) 
    \rdata[0]_i_5 
       (.I0(ap_start),
        .I1(\int_isr_reg_n_3_[0] ),
        .I2(\rdata[5]_i_5_n_3 ),
        .I3(\rdata[5]_i_6_n_3 ),
        .I4(int_gie_reg_n_3),
        .I5(\int_ier_reg[1]_0 [0]),
        .O(\rdata[0]_i_5_n_3 ));
  LUT4 #(
    .INIT(16'hAAAE)) 
    \rdata[15]_i_2 
       (.I0(int_input_r_read),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[0]),
        .I3(rstate[1]),
        .O(\rdata[15]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \rdata[15]_i_5 
       (.I0(\rdata[7]_i_6_n_3 ),
        .I1(\rdata[15]_i_8_n_3 ),
        .I2(s_axi_control_ARADDR[9]),
        .I3(int_bias_read_i_2_n_3),
        .I4(\rdata[6]_i_9_n_3 ),
        .I5(\rdata[6]_i_7_n_3 ),
        .O(\rdata[15]_i_5_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hAAA2)) 
    \rdata[15]_i_6 
       (.I0(int_input_r_read),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[0]),
        .I3(rstate[1]),
        .O(\rdata[15]_i_6_n_3 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \rdata[15]_i_7 
       (.I0(\rdata[6]_i_8_n_3 ),
        .I1(\rdata[7]_i_6_n_3 ),
        .I2(\rdata[15]_i_8_n_3 ),
        .I3(s_axi_control_ARADDR[9]),
        .I4(int_bias_read_i_2_n_3),
        .I5(\rdata[6]_i_9_n_3 ),
        .O(\rdata[15]_i_7_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rdata[15]_i_8 
       (.I0(s_axi_control_ARADDR[10]),
        .I1(s_axi_control_ARADDR[17]),
        .O(\rdata[15]_i_8_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[1]_i_4 
       (.I0(\rdata[6]_i_6_n_3 ),
        .I1(activation[1]),
        .I2(\rdata[6]_i_7_n_3 ),
        .I3(\int_numOfInNeurons_reg[15]_0 [1]),
        .I4(\int_numOfOutNeurons_reg[15]_0 [1]),
        .I5(\rdata[6]_i_8_n_3 ),
        .O(\rdata[1]_i_4_n_3 ));
  LUT5 #(
    .INIT(32'hFA0C0A0C)) 
    \rdata[1]_i_5 
       (.I0(\int_ier_reg[1]_0 [1]),
        .I1(int_task_ap_done__0),
        .I2(\rdata[5]_i_6_n_3 ),
        .I3(\rdata[5]_i_5_n_3 ),
        .I4(\int_isr_reg_n_3_[1] ),
        .O(\rdata[1]_i_5_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFF8880000F888)) 
    \rdata[2]_i_3 
       (.I0(\rdata[6]_i_6_n_3 ),
        .I1(\int_ier_reg_n_3_[2] ),
        .I2(p_3_in[2]),
        .I3(\rdata[6]_i_7_n_3 ),
        .I4(\rdata[7]_i_6_n_3 ),
        .I5(\rdata[2]_i_4_n_3 ),
        .O(\rdata[2]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[2]_i_4 
       (.I0(\rdata[6]_i_6_n_3 ),
        .I1(activation[2]),
        .I2(\rdata[6]_i_7_n_3 ),
        .I3(\int_numOfInNeurons_reg[15]_0 [2]),
        .I4(\int_numOfOutNeurons_reg[15]_0 [2]),
        .I5(\rdata[6]_i_8_n_3 ),
        .O(\rdata[2]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFEFFFE)) 
    \rdata[31]_i_1 
       (.I0(int_weights_read),
        .I1(int_input_r_read),
        .I2(\rdata[31]_i_3_n_3 ),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[0]),
        .I5(rstate[1]),
        .O(\rdata[31]_i_1_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rdata[31]_i_3 
       (.I0(int_bias_read),
        .I1(int_output_r_read),
        .O(\rdata[31]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFF8880000F888)) 
    \rdata[3]_i_3 
       (.I0(\rdata[6]_i_6_n_3 ),
        .I1(\int_ier_reg_n_3_[3] ),
        .I2(int_ap_ready__0),
        .I3(\rdata[6]_i_7_n_3 ),
        .I4(\rdata[7]_i_6_n_3 ),
        .I5(\rdata[3]_i_4_n_3 ),
        .O(\rdata[3]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[3]_i_4 
       (.I0(\rdata[6]_i_6_n_3 ),
        .I1(activation[3]),
        .I2(\rdata[6]_i_7_n_3 ),
        .I3(\int_numOfInNeurons_reg[15]_0 [3]),
        .I4(\int_numOfOutNeurons_reg[15]_0 [3]),
        .I5(\rdata[6]_i_8_n_3 ),
        .O(\rdata[3]_i_4_n_3 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \rdata[4]_i_2 
       (.I0(\int_ier_reg_n_3_[4] ),
        .I1(\rdata[5]_i_4_n_3 ),
        .I2(\rdata[7]_i_6_n_3 ),
        .I3(\rdata[6]_i_6_n_3 ),
        .O(\rdata[4]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'h2A0A280822022000)) 
    \rdata[4]_i_3 
       (.I0(\rdata[6]_i_4_n_3 ),
        .I1(\rdata[5]_i_5_n_3 ),
        .I2(\rdata[5]_i_6_n_3 ),
        .I3(\int_numOfOutNeurons_reg[15]_0 [4]),
        .I4(\int_numOfInNeurons_reg[15]_0 [4]),
        .I5(activation[4]),
        .O(\rdata[4]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFA8200000A820)) 
    \rdata[5]_i_3 
       (.I0(\rdata[5]_i_5_n_3 ),
        .I1(\rdata[5]_i_6_n_3 ),
        .I2(\int_ier_reg_n_3_[5] ),
        .I3(\int_isr_reg_n_3_[5] ),
        .I4(\rdata[7]_i_6_n_3 ),
        .I5(\rdata[5]_i_7_n_3 ),
        .O(\rdata[5]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \rdata[5]_i_4 
       (.I0(\rdata[5]_i_8_n_3 ),
        .I1(int_bias_read_i_2_n_3),
        .I2(ar_hs__0),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[7]),
        .I5(s_axi_control_ARADDR[6]),
        .O(\rdata[5]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE2)) 
    \rdata[5]_i_5 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[5]_i_5_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFC)) 
    \rdata[5]_i_6 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[0]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[5]_i_6_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[5]_i_7 
       (.I0(\rdata[6]_i_6_n_3 ),
        .I1(activation[5]),
        .I2(\rdata[6]_i_7_n_3 ),
        .I3(\int_numOfInNeurons_reg[15]_0 [5]),
        .I4(\int_numOfOutNeurons_reg[15]_0 [5]),
        .I5(\rdata[6]_i_8_n_3 ),
        .O(\rdata[5]_i_7_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rdata[5]_i_8 
       (.I0(s_axi_control_ARADDR[17]),
        .I1(s_axi_control_ARADDR[10]),
        .I2(s_axi_control_ARADDR[9]),
        .O(\rdata[5]_i_8_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[6]_i_3 
       (.I0(\rdata[6]_i_6_n_3 ),
        .I1(activation[6]),
        .I2(\rdata[6]_i_7_n_3 ),
        .I3(\int_numOfInNeurons_reg[15]_0 [6]),
        .I4(\int_numOfOutNeurons_reg[15]_0 [6]),
        .I5(\rdata[6]_i_8_n_3 ),
        .O(\rdata[6]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \rdata[6]_i_4 
       (.I0(\rdata[6]_i_9_n_3 ),
        .I1(int_bias_read_i_2_n_3),
        .I2(s_axi_control_ARADDR[9]),
        .I3(s_axi_control_ARADDR[10]),
        .I4(s_axi_control_ARADDR[17]),
        .I5(\rdata[7]_i_6_n_3 ),
        .O(\rdata[6]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'h0000000100000002)) 
    \rdata[6]_i_6 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[1]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[3]),
        .O(\rdata[6]_i_6_n_3 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \rdata[6]_i_7 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[0]),
        .I2(s_axi_control_ARADDR[1]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[3]),
        .O(\rdata[6]_i_7_n_3 ));
  LUT6 #(
    .INIT(64'h0001000000000100)) 
    \rdata[6]_i_8 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[0]),
        .I2(s_axi_control_ARADDR[1]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[3]),
        .O(\rdata[6]_i_8_n_3 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \rdata[6]_i_9 
       (.I0(s_axi_control_ARADDR[6]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[8]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[0]),
        .I5(rstate[1]),
        .O(\rdata[6]_i_9_n_3 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \rdata[7]_i_4 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[0]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(p_3_in[7]),
        .I5(\rdata[6]_i_7_n_3 ),
        .O(\rdata[7]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[7]_i_5 
       (.I0(\rdata[6]_i_6_n_3 ),
        .I1(activation[7]),
        .I2(\rdata[6]_i_7_n_3 ),
        .I3(\int_numOfInNeurons_reg[15]_0 [7]),
        .I4(\int_numOfOutNeurons_reg[15]_0 [7]),
        .I5(\rdata[6]_i_8_n_3 ),
        .O(\rdata[7]_i_5_n_3 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rdata[7]_i_6 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[0]),
        .I3(s_axi_control_ARADDR[1]),
        .O(\rdata[7]_i_6_n_3 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_30),
        .Q(s_axi_control_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_24),
        .Q(s_axi_control_RDATA[10]),
        .R(1'b0));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_23),
        .Q(s_axi_control_RDATA[11]),
        .R(1'b0));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_22),
        .Q(s_axi_control_RDATA[12]),
        .R(1'b0));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_21),
        .Q(s_axi_control_RDATA[13]),
        .R(1'b0));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_20),
        .Q(s_axi_control_RDATA[14]),
        .R(1'b0));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_19),
        .Q(s_axi_control_RDATA[15]),
        .R(1'b0));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_18),
        .Q(s_axi_control_RDATA[16]),
        .R(1'b0));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_17),
        .Q(s_axi_control_RDATA[17]),
        .R(1'b0));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_16),
        .Q(s_axi_control_RDATA[18]),
        .R(1'b0));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_15),
        .Q(s_axi_control_RDATA[19]),
        .R(1'b0));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_29),
        .Q(s_axi_control_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_14),
        .Q(s_axi_control_RDATA[20]),
        .R(1'b0));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_13),
        .Q(s_axi_control_RDATA[21]),
        .R(1'b0));
  FDRE \rdata_reg[22] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_12),
        .Q(s_axi_control_RDATA[22]),
        .R(1'b0));
  FDRE \rdata_reg[23] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_11),
        .Q(s_axi_control_RDATA[23]),
        .R(1'b0));
  FDRE \rdata_reg[24] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_10),
        .Q(s_axi_control_RDATA[24]),
        .R(1'b0));
  FDRE \rdata_reg[25] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_9),
        .Q(s_axi_control_RDATA[25]),
        .R(1'b0));
  FDRE \rdata_reg[26] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_8),
        .Q(s_axi_control_RDATA[26]),
        .R(1'b0));
  FDRE \rdata_reg[27] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_7),
        .Q(s_axi_control_RDATA[27]),
        .R(1'b0));
  FDRE \rdata_reg[28] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_6),
        .Q(s_axi_control_RDATA[28]),
        .R(1'b0));
  FDRE \rdata_reg[29] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_5),
        .Q(s_axi_control_RDATA[29]),
        .R(1'b0));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_input_r_n_57),
        .Q(s_axi_control_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[30] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_4),
        .Q(s_axi_control_RDATA[30]),
        .R(1'b0));
  FDRE \rdata_reg[31] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_3),
        .Q(s_axi_control_RDATA[31]),
        .R(1'b0));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_input_r_n_56),
        .Q(s_axi_control_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_input_r_n_55),
        .Q(s_axi_control_RDATA[4]),
        .R(1'b0));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_input_r_n_54),
        .Q(s_axi_control_RDATA[5]),
        .R(1'b0));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_28),
        .Q(s_axi_control_RDATA[6]),
        .R(1'b0));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_27),
        .Q(s_axi_control_RDATA[7]),
        .R(1'b0));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_26),
        .Q(s_axi_control_RDATA[8]),
        .R(1'b0));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_25),
        .Q(s_axi_control_RDATA[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00007F2A)) 
    \rstate[0]_i_1 
       (.I0(rstate[0]),
        .I1(s_axi_control_RVALID),
        .I2(s_axi_control_RREADY),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .O(\rstate[0]_i_1_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rstate[1]_i_1 
       (.I0(ap_rst_n),
        .O(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rstate_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\rstate[0]_i_1_n_3 ),
        .Q(rstate[0]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(rstate[1]),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_control_ARREADY_INST_0
       (.I0(rstate[1]),
        .I1(rstate[0]),
        .O(s_axi_control_ARREADY));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_control_AWREADY_INST_0
       (.I0(wstate[1]),
        .I1(wstate[0]),
        .O(s_axi_control_AWREADY));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_control_BVALID_INST_0
       (.I0(wstate[1]),
        .I1(wstate[0]),
        .O(s_axi_control_BVALID));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    s_axi_control_RVALID_INST_0
       (.I0(rstate[0]),
        .I1(rstate[1]),
        .I2(int_weights_read),
        .I3(int_input_r_read),
        .I4(int_output_r_read),
        .I5(int_bias_read),
        .O(s_axi_control_RVALID));
  LUT5 #(
    .INIT(32'h44444404)) 
    s_axi_control_WREADY_INST_0
       (.I0(wstate[1]),
        .I1(wstate[0]),
        .I2(s_axi_control_ARVALID),
        .I3(rstate[0]),
        .I4(rstate[1]),
        .O(s_axi_control_WREADY));
  LUT3 #(
    .INIT(8'h10)) 
    \waddr[17]_i_1 
       (.I0(wstate[1]),
        .I1(wstate[0]),
        .I2(s_axi_control_AWVALID),
        .O(aw_hs));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[0]),
        .Q(\waddr_reg_n_3_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[10] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[10]),
        .Q(\waddr_reg_n_3_[10] ),
        .R(1'b0));
  FDRE \waddr_reg[11] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[11]),
        .Q(\waddr_reg_n_3_[11] ),
        .R(1'b0));
  FDRE \waddr_reg[12] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[12]),
        .Q(\waddr_reg_n_3_[12] ),
        .R(1'b0));
  FDRE \waddr_reg[13] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[13]),
        .Q(\waddr_reg_n_3_[13] ),
        .R(1'b0));
  FDRE \waddr_reg[14] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[14]),
        .Q(\waddr_reg_n_3_[14] ),
        .R(1'b0));
  FDRE \waddr_reg[15] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[15]),
        .Q(\waddr_reg_n_3_[15] ),
        .R(1'b0));
  FDRE \waddr_reg[16] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[16]),
        .Q(\waddr_reg_n_3_[16] ),
        .R(1'b0));
  FDRE \waddr_reg[17] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[17]),
        .Q(\waddr_reg_n_3_[17] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[1]),
        .Q(\waddr_reg_n_3_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[2]),
        .Q(\waddr_reg_n_3_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[3]),
        .Q(\waddr_reg_n_3_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[4]),
        .Q(\waddr_reg_n_3_[4] ),
        .R(1'b0));
  FDRE \waddr_reg[5] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[5]),
        .Q(\waddr_reg_n_3_[5] ),
        .R(1'b0));
  FDRE \waddr_reg[6] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[6]),
        .Q(\waddr_reg_n_3_[6] ),
        .R(1'b0));
  FDRE \waddr_reg[7] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[7]),
        .Q(\waddr_reg_n_3_[7] ),
        .R(1'b0));
  FDRE \waddr_reg[8] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[8]),
        .Q(\waddr_reg_n_3_[8] ),
        .R(1'b0));
  FDRE \waddr_reg[9] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[9]),
        .Q(\waddr_reg_n_3_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h0000DDF0)) 
    \wstate[0]_i_1 
       (.I0(s_axi_control_WVALID),
        .I1(ar_hs__0),
        .I2(s_axi_control_AWVALID),
        .I3(wstate[0]),
        .I4(wstate[1]),
        .O(\wstate[0]_i_1_n_3 ));
  LUT5 #(
    .INIT(32'h050005C0)) 
    \wstate[1]_i_1 
       (.I0(s_axi_control_BREADY),
        .I1(s_axi_control_WVALID),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .I4(ar_hs__0),
        .O(\wstate[1]_i_1_n_3 ));
  FDSE #(
    .INIT(1'b1)) 
    \wstate_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\wstate[0]_i_1_n_3 ),
        .Q(wstate[0]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\wstate[1]_i_1_n_3 ),
        .Q(wstate[1]),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "nnlayer_control_s_axi_ram" *) 
module design_1_nnlayer_0_0_nnlayer_control_s_axi_ram
   (mem_reg_0,
    int_bias_read_reg,
    int_bias_read_reg_0,
    int_bias_read_reg_1,
    DIBDI,
    \int_bias_shift0_reg[0] ,
    \int_bias_shift0_reg[0]_0 ,
    \int_bias_shift0_reg[0]_1 ,
    \int_bias_shift0_reg[0]_2 ,
    \int_bias_shift0_reg[0]_3 ,
    \int_bias_shift0_reg[0]_4 ,
    \int_bias_shift0_reg[0]_5 ,
    \int_bias_shift0_reg[0]_6 ,
    int_bias_read_reg_2,
    ap_clk,
    grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg,
    D,
    s_axi_control_WDATA,
    \rdata_reg[0] ,
    \rdata_reg[0]_0 ,
    \rdata_reg[1] ,
    \rdata_reg[7] ,
    DOADO,
    \rdata_reg[6] ,
    \rdata_reg[6]_0 ,
    ar_hs__0,
    int_input_r_read,
    \rdata_reg[8] ,
    \rdata_reg[9] ,
    \rdata_reg[10] ,
    \rdata_reg[11] ,
    \rdata_reg[12] ,
    \rdata_reg[13] ,
    \rdata_reg[14] ,
    \rdata_reg[15] ,
    rstate,
    s_axi_control_ARVALID,
    mem_reg_1,
    s_axi_control_WVALID,
    wstate,
    s_axi_control_WSTRB,
    p_35_in,
    int_bias_read,
    q1,
    \rdata_reg[31] ,
    int_output_r_read,
    mem_reg_2,
    Q,
    mem_reg_3,
    mem_reg_4,
    s_axi_control_ARADDR,
    mem_reg_5);
  output [27:0]mem_reg_0;
  output int_bias_read_reg;
  output int_bias_read_reg_0;
  output int_bias_read_reg_1;
  output [15:0]DIBDI;
  output \int_bias_shift0_reg[0] ;
  output \int_bias_shift0_reg[0]_0 ;
  output \int_bias_shift0_reg[0]_1 ;
  output \int_bias_shift0_reg[0]_2 ;
  output \int_bias_shift0_reg[0]_3 ;
  output \int_bias_shift0_reg[0]_4 ;
  output \int_bias_shift0_reg[0]_5 ;
  output \int_bias_shift0_reg[0]_6 ;
  output int_bias_read_reg_2;
  input ap_clk;
  input grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg;
  input [6:0]D;
  input [31:0]s_axi_control_WDATA;
  input \rdata_reg[0] ;
  input \rdata_reg[0]_0 ;
  input \rdata_reg[1] ;
  input \rdata_reg[7] ;
  input [16:0]DOADO;
  input \rdata_reg[6] ;
  input \rdata_reg[6]_0 ;
  input ar_hs__0;
  input int_input_r_read;
  input \rdata_reg[8] ;
  input \rdata_reg[9] ;
  input \rdata_reg[10] ;
  input \rdata_reg[11] ;
  input \rdata_reg[12] ;
  input \rdata_reg[13] ;
  input \rdata_reg[14] ;
  input \rdata_reg[15] ;
  input [1:0]rstate;
  input s_axi_control_ARVALID;
  input mem_reg_1;
  input s_axi_control_WVALID;
  input [1:0]wstate;
  input [3:0]s_axi_control_WSTRB;
  input p_35_in;
  input int_bias_read;
  input [31:0]q1;
  input [31:0]\rdata_reg[31] ;
  input int_output_r_read;
  input [15:0]mem_reg_2;
  input [0:0]Q;
  input mem_reg_3;
  input mem_reg_4;
  input [6:0]s_axi_control_ARADDR;
  input [6:0]mem_reg_5;

  wire [6:0]D;
  wire [15:0]DIBDI;
  wire [16:0]DOADO;
  wire [0:0]Q;
  wire ap_clk;
  wire ar_hs__0;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg;
  wire [3:0]int_bias_be1;
  wire int_bias_ce1;
  wire [31:0]int_bias_q0;
  wire [31:0]int_bias_q1;
  wire int_bias_read;
  wire int_bias_read_reg;
  wire int_bias_read_reg_0;
  wire int_bias_read_reg_1;
  wire int_bias_read_reg_2;
  wire \int_bias_shift0_reg[0] ;
  wire \int_bias_shift0_reg[0]_0 ;
  wire \int_bias_shift0_reg[0]_1 ;
  wire \int_bias_shift0_reg[0]_2 ;
  wire \int_bias_shift0_reg[0]_3 ;
  wire \int_bias_shift0_reg[0]_4 ;
  wire \int_bias_shift0_reg[0]_5 ;
  wire \int_bias_shift0_reg[0]_6 ;
  wire int_input_r_read;
  wire int_output_r_read;
  wire [27:0]mem_reg_0;
  wire mem_reg_1;
  wire [15:0]mem_reg_2;
  wire mem_reg_3;
  wire mem_reg_4;
  wire [6:0]mem_reg_5;
  wire mem_reg_i_2__0_n_3;
  wire mem_reg_i_3_n_3;
  wire mem_reg_i_4_n_3;
  wire mem_reg_i_5_n_3;
  wire mem_reg_i_6_n_3;
  wire mem_reg_i_7_n_3;
  wire mem_reg_i_8_n_3;
  wire [31:24]p_1_in;
  wire p_35_in;
  wire [31:0]q1;
  wire \rdata[0]_i_2_n_3 ;
  wire \rdata[10]_i_2_n_3 ;
  wire \rdata[11]_i_2_n_3 ;
  wire \rdata[12]_i_2_n_3 ;
  wire \rdata[13]_i_2_n_3 ;
  wire \rdata[14]_i_2_n_3 ;
  wire \rdata[15]_i_3_n_3 ;
  wire \rdata[16]_i_2_n_3 ;
  wire \rdata[17]_i_2_n_3 ;
  wire \rdata[18]_i_2_n_3 ;
  wire \rdata[19]_i_2_n_3 ;
  wire \rdata[1]_i_2_n_3 ;
  wire \rdata[20]_i_2_n_3 ;
  wire \rdata[21]_i_2_n_3 ;
  wire \rdata[22]_i_2_n_3 ;
  wire \rdata[23]_i_2_n_3 ;
  wire \rdata[24]_i_2_n_3 ;
  wire \rdata[25]_i_2_n_3 ;
  wire \rdata[26]_i_2_n_3 ;
  wire \rdata[27]_i_2_n_3 ;
  wire \rdata[28]_i_2_n_3 ;
  wire \rdata[29]_i_2_n_3 ;
  wire \rdata[30]_i_2_n_3 ;
  wire \rdata[31]_i_4_n_3 ;
  wire \rdata[6]_i_2_n_3 ;
  wire \rdata[7]_i_2_n_3 ;
  wire \rdata[8]_i_2_n_3 ;
  wire \rdata[9]_i_2_n_3 ;
  wire \rdata_reg[0] ;
  wire \rdata_reg[0]_0 ;
  wire \rdata_reg[10] ;
  wire \rdata_reg[11] ;
  wire \rdata_reg[12] ;
  wire \rdata_reg[13] ;
  wire \rdata_reg[14] ;
  wire \rdata_reg[15] ;
  wire \rdata_reg[1] ;
  wire [31:0]\rdata_reg[31] ;
  wire \rdata_reg[6] ;
  wire \rdata_reg[6]_0 ;
  wire \rdata_reg[7] ;
  wire \rdata_reg[8] ;
  wire \rdata_reg[9] ;
  wire [1:0]rstate;
  wire [6:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [1:0]wstate;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_bias/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "896" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,mem_reg_i_2__0_n_3,mem_reg_i_3_n_3,mem_reg_i_4_n_3,mem_reg_i_5_n_3,mem_reg_i_6_n_3,mem_reg_i_7_n_3,mem_reg_i_8_n_3,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,D,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI({p_1_in,s_axi_control_WDATA[23:0]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(int_bias_q1),
        .DOBDO(int_bias_q0),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_bias_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA(int_bias_be1),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h888888F8)) 
    mem_reg_i_1
       (.I0(mem_reg_1),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(rstate[0]),
        .I4(rstate[1]),
        .O(int_bias_ce1));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_16__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_1),
        .I3(s_axi_control_WDATA[31]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_17
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_1),
        .I3(s_axi_control_WDATA[30]),
        .O(p_1_in[30]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_18
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_1),
        .I3(s_axi_control_WDATA[29]),
        .O(p_1_in[29]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_19
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_1),
        .I3(s_axi_control_WDATA[28]),
        .O(p_1_in[28]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_20
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_1),
        .I3(s_axi_control_WDATA[27]),
        .O(p_1_in[27]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_21
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_1),
        .I3(s_axi_control_WDATA[26]),
        .O(p_1_in[26]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_22
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_1),
        .I3(s_axi_control_WDATA[25]),
        .O(p_1_in[25]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_23
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_1),
        .I3(s_axi_control_WDATA[24]),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    mem_reg_i_24
       (.I0(mem_reg_1),
        .I1(s_axi_control_WVALID),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .I4(ar_hs__0),
        .I5(s_axi_control_WSTRB[3]),
        .O(int_bias_be1[3]));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    mem_reg_i_25__0
       (.I0(mem_reg_1),
        .I1(s_axi_control_WVALID),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .I4(ar_hs__0),
        .I5(s_axi_control_WSTRB[2]),
        .O(int_bias_be1[2]));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    mem_reg_i_26__0
       (.I0(mem_reg_1),
        .I1(s_axi_control_WVALID),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .I4(ar_hs__0),
        .I5(s_axi_control_WSTRB[1]),
        .O(int_bias_be1[1]));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    mem_reg_i_27__0
       (.I0(mem_reg_1),
        .I1(s_axi_control_WVALID),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .I4(ar_hs__0),
        .I5(s_axi_control_WSTRB[0]),
        .O(int_bias_be1[0]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_2__0
       (.I0(s_axi_control_ARADDR[6]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_5[6]),
        .O(mem_reg_i_2__0_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_3
       (.I0(s_axi_control_ARADDR[5]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_5[5]),
        .O(mem_reg_i_3_n_3));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    mem_reg_i_33
       (.I0(mem_reg_2[7]),
        .I1(Q),
        .I2(int_bias_q0[7]),
        .I3(int_bias_q0[23]),
        .I4(mem_reg_3),
        .I5(mem_reg_4),
        .O(DIBDI[15]));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    mem_reg_i_34
       (.I0(mem_reg_2[6]),
        .I1(Q),
        .I2(int_bias_q0[6]),
        .I3(int_bias_q0[22]),
        .I4(mem_reg_3),
        .I5(mem_reg_4),
        .O(DIBDI[14]));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    mem_reg_i_35
       (.I0(mem_reg_2[5]),
        .I1(Q),
        .I2(int_bias_q0[5]),
        .I3(int_bias_q0[21]),
        .I4(mem_reg_3),
        .I5(mem_reg_4),
        .O(DIBDI[13]));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    mem_reg_i_36
       (.I0(mem_reg_2[4]),
        .I1(Q),
        .I2(int_bias_q0[4]),
        .I3(int_bias_q0[20]),
        .I4(mem_reg_3),
        .I5(mem_reg_4),
        .O(DIBDI[12]));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    mem_reg_i_37
       (.I0(mem_reg_2[3]),
        .I1(Q),
        .I2(int_bias_q0[3]),
        .I3(int_bias_q0[19]),
        .I4(mem_reg_3),
        .I5(mem_reg_4),
        .O(DIBDI[11]));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    mem_reg_i_38
       (.I0(mem_reg_2[2]),
        .I1(Q),
        .I2(int_bias_q0[2]),
        .I3(int_bias_q0[18]),
        .I4(mem_reg_3),
        .I5(mem_reg_4),
        .O(DIBDI[10]));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    mem_reg_i_39
       (.I0(mem_reg_2[1]),
        .I1(Q),
        .I2(int_bias_q0[1]),
        .I3(int_bias_q0[17]),
        .I4(mem_reg_3),
        .I5(mem_reg_4),
        .O(DIBDI[9]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_4
       (.I0(s_axi_control_ARADDR[4]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_5[4]),
        .O(mem_reg_i_4_n_3));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    mem_reg_i_40
       (.I0(mem_reg_2[0]),
        .I1(Q),
        .I2(int_bias_q0[0]),
        .I3(int_bias_q0[16]),
        .I4(mem_reg_3),
        .I5(mem_reg_4),
        .O(DIBDI[8]));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    mem_reg_i_41
       (.I0(mem_reg_2[15]),
        .I1(Q),
        .I2(int_bias_q0[15]),
        .I3(int_bias_q0[31]),
        .I4(mem_reg_3),
        .I5(mem_reg_4),
        .O(DIBDI[7]));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    mem_reg_i_42
       (.I0(mem_reg_2[14]),
        .I1(Q),
        .I2(int_bias_q0[14]),
        .I3(int_bias_q0[30]),
        .I4(mem_reg_3),
        .I5(mem_reg_4),
        .O(DIBDI[6]));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    mem_reg_i_43
       (.I0(mem_reg_2[13]),
        .I1(Q),
        .I2(int_bias_q0[13]),
        .I3(int_bias_q0[29]),
        .I4(mem_reg_3),
        .I5(mem_reg_4),
        .O(DIBDI[5]));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    mem_reg_i_44
       (.I0(mem_reg_2[12]),
        .I1(Q),
        .I2(int_bias_q0[12]),
        .I3(int_bias_q0[28]),
        .I4(mem_reg_3),
        .I5(mem_reg_4),
        .O(DIBDI[4]));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    mem_reg_i_45
       (.I0(mem_reg_2[11]),
        .I1(Q),
        .I2(int_bias_q0[11]),
        .I3(int_bias_q0[27]),
        .I4(mem_reg_3),
        .I5(mem_reg_4),
        .O(DIBDI[3]));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    mem_reg_i_46
       (.I0(mem_reg_2[10]),
        .I1(Q),
        .I2(int_bias_q0[10]),
        .I3(int_bias_q0[26]),
        .I4(mem_reg_3),
        .I5(mem_reg_4),
        .O(DIBDI[2]));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    mem_reg_i_47
       (.I0(mem_reg_2[9]),
        .I1(Q),
        .I2(int_bias_q0[9]),
        .I3(int_bias_q0[25]),
        .I4(mem_reg_3),
        .I5(mem_reg_4),
        .O(DIBDI[1]));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    mem_reg_i_48
       (.I0(mem_reg_2[8]),
        .I1(Q),
        .I2(int_bias_q0[8]),
        .I3(int_bias_q0[24]),
        .I4(mem_reg_3),
        .I5(mem_reg_4),
        .O(DIBDI[0]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_5
       (.I0(s_axi_control_ARADDR[3]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_5[3]),
        .O(mem_reg_i_5_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_6
       (.I0(s_axi_control_ARADDR[2]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_5[2]),
        .O(mem_reg_i_6_n_3));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_69
       (.I0(mem_reg_3),
        .I1(int_bias_q0[31]),
        .I2(int_bias_q0[15]),
        .I3(Q),
        .I4(mem_reg_2[15]),
        .O(\int_bias_shift0_reg[0] ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_7
       (.I0(s_axi_control_ARADDR[1]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_5[1]),
        .O(mem_reg_i_7_n_3));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_70
       (.I0(mem_reg_3),
        .I1(int_bias_q0[30]),
        .I2(int_bias_q0[14]),
        .I3(Q),
        .I4(mem_reg_2[14]),
        .O(\int_bias_shift0_reg[0]_6 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_71
       (.I0(mem_reg_3),
        .I1(int_bias_q0[29]),
        .I2(int_bias_q0[13]),
        .I3(Q),
        .I4(mem_reg_2[13]),
        .O(\int_bias_shift0_reg[0]_5 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_72
       (.I0(mem_reg_3),
        .I1(int_bias_q0[28]),
        .I2(int_bias_q0[12]),
        .I3(Q),
        .I4(mem_reg_2[12]),
        .O(\int_bias_shift0_reg[0]_4 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_73
       (.I0(mem_reg_3),
        .I1(int_bias_q0[27]),
        .I2(int_bias_q0[11]),
        .I3(Q),
        .I4(mem_reg_2[11]),
        .O(\int_bias_shift0_reg[0]_3 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_74
       (.I0(mem_reg_3),
        .I1(int_bias_q0[26]),
        .I2(int_bias_q0[10]),
        .I3(Q),
        .I4(mem_reg_2[10]),
        .O(\int_bias_shift0_reg[0]_2 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_75
       (.I0(mem_reg_3),
        .I1(int_bias_q0[25]),
        .I2(int_bias_q0[9]),
        .I3(Q),
        .I4(mem_reg_2[9]),
        .O(\int_bias_shift0_reg[0]_1 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_76
       (.I0(mem_reg_3),
        .I1(int_bias_q0[24]),
        .I2(int_bias_q0[8]),
        .I3(Q),
        .I4(mem_reg_2[8]),
        .O(\int_bias_shift0_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_8
       (.I0(s_axi_control_ARADDR[0]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_5[0]),
        .O(mem_reg_i_8_n_3));
  LUT5 #(
    .INIT(32'hFF00D8D8)) 
    \rdata[0]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[0]),
        .I2(q1[0]),
        .I3(\rdata_reg[31] [0]),
        .I4(int_output_r_read),
        .O(\rdata[0]_i_2_n_3 ));
  LUT5 #(
    .INIT(32'hFF00D8D8)) 
    \rdata[10]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[10]),
        .I2(q1[10]),
        .I3(\rdata_reg[31] [10]),
        .I4(int_output_r_read),
        .O(\rdata[10]_i_2_n_3 ));
  LUT5 #(
    .INIT(32'hFF00D8D8)) 
    \rdata[11]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[11]),
        .I2(q1[11]),
        .I3(\rdata_reg[31] [11]),
        .I4(int_output_r_read),
        .O(\rdata[11]_i_2_n_3 ));
  LUT5 #(
    .INIT(32'hFF00D8D8)) 
    \rdata[12]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[12]),
        .I2(q1[12]),
        .I3(\rdata_reg[31] [12]),
        .I4(int_output_r_read),
        .O(\rdata[12]_i_2_n_3 ));
  LUT5 #(
    .INIT(32'hFF00D8D8)) 
    \rdata[13]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[13]),
        .I2(q1[13]),
        .I3(\rdata_reg[31] [13]),
        .I4(int_output_r_read),
        .O(\rdata[13]_i_2_n_3 ));
  LUT5 #(
    .INIT(32'hFF00D8D8)) 
    \rdata[14]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[14]),
        .I2(q1[14]),
        .I3(\rdata_reg[31] [14]),
        .I4(int_output_r_read),
        .O(\rdata[14]_i_2_n_3 ));
  LUT5 #(
    .INIT(32'hFF00D8D8)) 
    \rdata[15]_i_3 
       (.I0(int_bias_read),
        .I1(int_bias_q1[15]),
        .I2(q1[15]),
        .I3(\rdata_reg[31] [15]),
        .I4(int_output_r_read),
        .O(\rdata[15]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[16]_i_1 
       (.I0(\rdata[16]_i_2_n_3 ),
        .I1(DOADO[1]),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(s_axi_control_ARVALID),
        .I5(int_input_r_read),
        .O(mem_reg_0[12]));
  LUT5 #(
    .INIT(32'h00FF2727)) 
    \rdata[16]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[16]),
        .I2(q1[16]),
        .I3(\rdata_reg[31] [16]),
        .I4(int_output_r_read),
        .O(\rdata[16]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[17]_i_1 
       (.I0(\rdata[17]_i_2_n_3 ),
        .I1(DOADO[2]),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(s_axi_control_ARVALID),
        .I5(int_input_r_read),
        .O(mem_reg_0[13]));
  LUT5 #(
    .INIT(32'h00FF2727)) 
    \rdata[17]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[17]),
        .I2(q1[17]),
        .I3(\rdata_reg[31] [17]),
        .I4(int_output_r_read),
        .O(\rdata[17]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[18]_i_1 
       (.I0(\rdata[18]_i_2_n_3 ),
        .I1(DOADO[3]),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(s_axi_control_ARVALID),
        .I5(int_input_r_read),
        .O(mem_reg_0[14]));
  LUT5 #(
    .INIT(32'h00FF2727)) 
    \rdata[18]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[18]),
        .I2(q1[18]),
        .I3(\rdata_reg[31] [18]),
        .I4(int_output_r_read),
        .O(\rdata[18]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[19]_i_1 
       (.I0(\rdata[19]_i_2_n_3 ),
        .I1(DOADO[4]),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(s_axi_control_ARVALID),
        .I5(int_input_r_read),
        .O(mem_reg_0[15]));
  LUT5 #(
    .INIT(32'h00FF2727)) 
    \rdata[19]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[19]),
        .I2(q1[19]),
        .I3(\rdata_reg[31] [19]),
        .I4(int_output_r_read),
        .O(\rdata[19]_i_2_n_3 ));
  LUT5 #(
    .INIT(32'hFF00D8D8)) 
    \rdata[1]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[1]),
        .I2(q1[1]),
        .I3(\rdata_reg[31] [1]),
        .I4(int_output_r_read),
        .O(\rdata[1]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[20]_i_1 
       (.I0(\rdata[20]_i_2_n_3 ),
        .I1(DOADO[5]),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(s_axi_control_ARVALID),
        .I5(int_input_r_read),
        .O(mem_reg_0[16]));
  LUT5 #(
    .INIT(32'h00FF2727)) 
    \rdata[20]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[20]),
        .I2(q1[20]),
        .I3(\rdata_reg[31] [20]),
        .I4(int_output_r_read),
        .O(\rdata[20]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[21]_i_1 
       (.I0(\rdata[21]_i_2_n_3 ),
        .I1(DOADO[6]),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(s_axi_control_ARVALID),
        .I5(int_input_r_read),
        .O(mem_reg_0[17]));
  LUT5 #(
    .INIT(32'h00FF2727)) 
    \rdata[21]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[21]),
        .I2(q1[21]),
        .I3(\rdata_reg[31] [21]),
        .I4(int_output_r_read),
        .O(\rdata[21]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[22]_i_1 
       (.I0(\rdata[22]_i_2_n_3 ),
        .I1(DOADO[7]),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(s_axi_control_ARVALID),
        .I5(int_input_r_read),
        .O(mem_reg_0[18]));
  LUT5 #(
    .INIT(32'h00FF2727)) 
    \rdata[22]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[22]),
        .I2(q1[22]),
        .I3(\rdata_reg[31] [22]),
        .I4(int_output_r_read),
        .O(\rdata[22]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[23]_i_1 
       (.I0(\rdata[23]_i_2_n_3 ),
        .I1(DOADO[8]),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(s_axi_control_ARVALID),
        .I5(int_input_r_read),
        .O(mem_reg_0[19]));
  LUT5 #(
    .INIT(32'h00FF2727)) 
    \rdata[23]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[23]),
        .I2(q1[23]),
        .I3(\rdata_reg[31] [23]),
        .I4(int_output_r_read),
        .O(\rdata[23]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[24]_i_1 
       (.I0(\rdata[24]_i_2_n_3 ),
        .I1(DOADO[9]),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(s_axi_control_ARVALID),
        .I5(int_input_r_read),
        .O(mem_reg_0[20]));
  LUT5 #(
    .INIT(32'h00FF2727)) 
    \rdata[24]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[24]),
        .I2(q1[24]),
        .I3(\rdata_reg[31] [24]),
        .I4(int_output_r_read),
        .O(\rdata[24]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[25]_i_1 
       (.I0(\rdata[25]_i_2_n_3 ),
        .I1(DOADO[10]),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(s_axi_control_ARVALID),
        .I5(int_input_r_read),
        .O(mem_reg_0[21]));
  LUT5 #(
    .INIT(32'h00FF2727)) 
    \rdata[25]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[25]),
        .I2(q1[25]),
        .I3(\rdata_reg[31] [25]),
        .I4(int_output_r_read),
        .O(\rdata[25]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[26]_i_1 
       (.I0(\rdata[26]_i_2_n_3 ),
        .I1(DOADO[11]),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(s_axi_control_ARVALID),
        .I5(int_input_r_read),
        .O(mem_reg_0[22]));
  LUT5 #(
    .INIT(32'h00FF2727)) 
    \rdata[26]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[26]),
        .I2(q1[26]),
        .I3(\rdata_reg[31] [26]),
        .I4(int_output_r_read),
        .O(\rdata[26]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[27]_i_1 
       (.I0(\rdata[27]_i_2_n_3 ),
        .I1(DOADO[12]),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(s_axi_control_ARVALID),
        .I5(int_input_r_read),
        .O(mem_reg_0[23]));
  LUT5 #(
    .INIT(32'h00FF2727)) 
    \rdata[27]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[27]),
        .I2(q1[27]),
        .I3(\rdata_reg[31] [27]),
        .I4(int_output_r_read),
        .O(\rdata[27]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[28]_i_1 
       (.I0(\rdata[28]_i_2_n_3 ),
        .I1(DOADO[13]),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(s_axi_control_ARVALID),
        .I5(int_input_r_read),
        .O(mem_reg_0[24]));
  LUT5 #(
    .INIT(32'h00FF2727)) 
    \rdata[28]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[28]),
        .I2(q1[28]),
        .I3(\rdata_reg[31] [28]),
        .I4(int_output_r_read),
        .O(\rdata[28]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[29]_i_1 
       (.I0(\rdata[29]_i_2_n_3 ),
        .I1(DOADO[14]),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(s_axi_control_ARVALID),
        .I5(int_input_r_read),
        .O(mem_reg_0[25]));
  LUT5 #(
    .INIT(32'h00FF2727)) 
    \rdata[29]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[29]),
        .I2(q1[29]),
        .I3(\rdata_reg[31] [29]),
        .I4(int_output_r_read),
        .O(\rdata[29]_i_2_n_3 ));
  LUT5 #(
    .INIT(32'h00FF2727)) 
    \rdata[2]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[2]),
        .I2(q1[2]),
        .I3(\rdata_reg[31] [2]),
        .I4(int_output_r_read),
        .O(int_bias_read_reg));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[30]_i_1 
       (.I0(\rdata[30]_i_2_n_3 ),
        .I1(DOADO[15]),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(s_axi_control_ARVALID),
        .I5(int_input_r_read),
        .O(mem_reg_0[26]));
  LUT5 #(
    .INIT(32'h00FF2727)) 
    \rdata[30]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[30]),
        .I2(q1[30]),
        .I3(\rdata_reg[31] [30]),
        .I4(int_output_r_read),
        .O(\rdata[30]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[31]_i_2 
       (.I0(\rdata[31]_i_4_n_3 ),
        .I1(DOADO[16]),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(s_axi_control_ARVALID),
        .I5(int_input_r_read),
        .O(mem_reg_0[27]));
  LUT5 #(
    .INIT(32'h00FF2727)) 
    \rdata[31]_i_4 
       (.I0(int_bias_read),
        .I1(int_bias_q1[31]),
        .I2(q1[31]),
        .I3(\rdata_reg[31] [31]),
        .I4(int_output_r_read),
        .O(\rdata[31]_i_4_n_3 ));
  LUT5 #(
    .INIT(32'h00FF2727)) 
    \rdata[3]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[3]),
        .I2(q1[3]),
        .I3(\rdata_reg[31] [3]),
        .I4(int_output_r_read),
        .O(int_bias_read_reg_0));
  LUT5 #(
    .INIT(32'hFF00D8D8)) 
    \rdata[4]_i_4 
       (.I0(int_bias_read),
        .I1(int_bias_q1[4]),
        .I2(q1[4]),
        .I3(\rdata_reg[31] [4]),
        .I4(int_output_r_read),
        .O(int_bias_read_reg_2));
  LUT5 #(
    .INIT(32'h00FF2727)) 
    \rdata[5]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[5]),
        .I2(q1[5]),
        .I3(\rdata_reg[31] [5]),
        .I4(int_output_r_read),
        .O(int_bias_read_reg_1));
  LUT6 #(
    .INIT(64'hF000FCCCF0005555)) 
    \rdata[6]_i_1 
       (.I0(\rdata[6]_i_2_n_3 ),
        .I1(DOADO[0]),
        .I2(\rdata_reg[6] ),
        .I3(\rdata_reg[6]_0 ),
        .I4(ar_hs__0),
        .I5(int_input_r_read),
        .O(mem_reg_0[2]));
  LUT5 #(
    .INIT(32'h00FF2727)) 
    \rdata[6]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[6]),
        .I2(q1[6]),
        .I3(\rdata_reg[31] [6]),
        .I4(int_output_r_read),
        .O(\rdata[6]_i_2_n_3 ));
  LUT5 #(
    .INIT(32'hFF00D8D8)) 
    \rdata[7]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[7]),
        .I2(q1[7]),
        .I3(\rdata_reg[31] [7]),
        .I4(int_output_r_read),
        .O(\rdata[7]_i_2_n_3 ));
  LUT5 #(
    .INIT(32'hFF00D8D8)) 
    \rdata[8]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[8]),
        .I2(q1[8]),
        .I3(\rdata_reg[31] [8]),
        .I4(int_output_r_read),
        .O(\rdata[8]_i_2_n_3 ));
  LUT5 #(
    .INIT(32'hFF00D8D8)) 
    \rdata[9]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[9]),
        .I2(q1[9]),
        .I3(\rdata_reg[31] [9]),
        .I4(int_output_r_read),
        .O(\rdata[9]_i_2_n_3 ));
  MUXF7 \rdata_reg[0]_i_1 
       (.I0(\rdata[0]_i_2_n_3 ),
        .I1(\rdata_reg[0]_0 ),
        .O(mem_reg_0[0]),
        .S(\rdata_reg[0] ));
  MUXF7 \rdata_reg[10]_i_1 
       (.I0(\rdata[10]_i_2_n_3 ),
        .I1(\rdata_reg[10] ),
        .O(mem_reg_0[6]),
        .S(\rdata_reg[0] ));
  MUXF7 \rdata_reg[11]_i_1 
       (.I0(\rdata[11]_i_2_n_3 ),
        .I1(\rdata_reg[11] ),
        .O(mem_reg_0[7]),
        .S(\rdata_reg[0] ));
  MUXF7 \rdata_reg[12]_i_1 
       (.I0(\rdata[12]_i_2_n_3 ),
        .I1(\rdata_reg[12] ),
        .O(mem_reg_0[8]),
        .S(\rdata_reg[0] ));
  MUXF7 \rdata_reg[13]_i_1 
       (.I0(\rdata[13]_i_2_n_3 ),
        .I1(\rdata_reg[13] ),
        .O(mem_reg_0[9]),
        .S(\rdata_reg[0] ));
  MUXF7 \rdata_reg[14]_i_1 
       (.I0(\rdata[14]_i_2_n_3 ),
        .I1(\rdata_reg[14] ),
        .O(mem_reg_0[10]),
        .S(\rdata_reg[0] ));
  MUXF7 \rdata_reg[15]_i_1 
       (.I0(\rdata[15]_i_3_n_3 ),
        .I1(\rdata_reg[15] ),
        .O(mem_reg_0[11]),
        .S(\rdata_reg[0] ));
  MUXF7 \rdata_reg[1]_i_1 
       (.I0(\rdata[1]_i_2_n_3 ),
        .I1(\rdata_reg[1] ),
        .O(mem_reg_0[1]),
        .S(\rdata_reg[0] ));
  MUXF7 \rdata_reg[7]_i_1 
       (.I0(\rdata[7]_i_2_n_3 ),
        .I1(\rdata_reg[7] ),
        .O(mem_reg_0[3]),
        .S(\rdata_reg[0] ));
  MUXF7 \rdata_reg[8]_i_1 
       (.I0(\rdata[8]_i_2_n_3 ),
        .I1(\rdata_reg[8] ),
        .O(mem_reg_0[4]),
        .S(\rdata_reg[0] ));
  MUXF7 \rdata_reg[9]_i_1 
       (.I0(\rdata[9]_i_2_n_3 ),
        .I1(\rdata_reg[9] ),
        .O(mem_reg_0[5]),
        .S(\rdata_reg[0] ));
endmodule

(* ORIG_REF_NAME = "nnlayer_control_s_axi_ram" *) 
module design_1_nnlayer_0_0_nnlayer_control_s_axi_ram_2
   (DOADO,
    DOBDO,
    mem_reg_0,
    mem_reg_1,
    D,
    mem_reg_2,
    \int_numOfInNeurons_reg[8] ,
    \int_numOfInNeurons_reg[9] ,
    \int_numOfInNeurons_reg[10] ,
    \int_numOfInNeurons_reg[11] ,
    \int_numOfInNeurons_reg[12] ,
    \int_numOfInNeurons_reg[13] ,
    \int_numOfInNeurons_reg[14] ,
    \int_numOfInNeurons_reg[15] ,
    p_35_in,
    ap_clk,
    mem_reg_3,
    grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_input_r_address0,
    s_axi_control_WDATA,
    \rdata_reg[0] ,
    \rdata_reg[0]_0 ,
    \rdata_reg[0]_1 ,
    \rdata_reg[2] ,
    \rdata_reg[0]_2 ,
    \rdata_reg[1] ,
    \rdata_reg[1]_0 ,
    \rdata_reg[4] ,
    \rdata_reg[4]_0 ,
    int_input_r_read,
    ar_hs__0,
    \rdata_reg[4]_1 ,
    \rdata_reg[2]_0 ,
    \rdata_reg[2]_1 ,
    \rdata_reg[3] ,
    \rdata_reg[3]_0 ,
    \rdata_reg[5] ,
    \rdata_reg[5]_0 ,
    \rdata_reg[7] ,
    \rdata_reg[7]_0 ,
    \rdata_reg[8] ,
    \rdata_reg[15] ,
    \rdata_reg[15]_0 ,
    \rdata_reg[8]_0 ,
    mem_reg_4,
    s_axi_control_WVALID,
    s_axi_control_ARVALID,
    rstate,
    wstate,
    s_axi_control_WSTRB,
    s_axi_control_ARADDR,
    Q);
  output [16:0]DOADO;
  output [31:0]DOBDO;
  output mem_reg_0;
  output mem_reg_1;
  output [3:0]D;
  output mem_reg_2;
  output \int_numOfInNeurons_reg[8] ;
  output \int_numOfInNeurons_reg[9] ;
  output \int_numOfInNeurons_reg[10] ;
  output \int_numOfInNeurons_reg[11] ;
  output \int_numOfInNeurons_reg[12] ;
  output \int_numOfInNeurons_reg[13] ;
  output \int_numOfInNeurons_reg[14] ;
  output \int_numOfInNeurons_reg[15] ;
  output p_35_in;
  input ap_clk;
  input mem_reg_3;
  input [6:0]grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_input_r_address0;
  input [31:0]s_axi_control_WDATA;
  input \rdata_reg[0] ;
  input \rdata_reg[0]_0 ;
  input \rdata_reg[0]_1 ;
  input \rdata_reg[2] ;
  input \rdata_reg[0]_2 ;
  input \rdata_reg[1] ;
  input \rdata_reg[1]_0 ;
  input \rdata_reg[4] ;
  input \rdata_reg[4]_0 ;
  input int_input_r_read;
  input ar_hs__0;
  input \rdata_reg[4]_1 ;
  input \rdata_reg[2]_0 ;
  input \rdata_reg[2]_1 ;
  input \rdata_reg[3] ;
  input \rdata_reg[3]_0 ;
  input \rdata_reg[5] ;
  input \rdata_reg[5]_0 ;
  input \rdata_reg[7] ;
  input \rdata_reg[7]_0 ;
  input \rdata_reg[8] ;
  input [7:0]\rdata_reg[15] ;
  input [7:0]\rdata_reg[15]_0 ;
  input \rdata_reg[8]_0 ;
  input mem_reg_4;
  input s_axi_control_WVALID;
  input s_axi_control_ARVALID;
  input [1:0]rstate;
  input [1:0]wstate;
  input [3:0]s_axi_control_WSTRB;
  input [6:0]s_axi_control_ARADDR;
  input [6:0]Q;

  wire [3:0]D;
  wire [16:0]DOADO;
  wire [31:0]DOBDO;
  wire [6:0]Q;
  wire ap_clk;
  wire ar_hs__0;
  wire [6:0]grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_input_r_address0;
  wire [3:0]int_input_r_be1;
  wire int_input_r_ce1;
  wire [15:0]int_input_r_q1;
  wire int_input_r_read;
  wire \int_numOfInNeurons_reg[10] ;
  wire \int_numOfInNeurons_reg[11] ;
  wire \int_numOfInNeurons_reg[12] ;
  wire \int_numOfInNeurons_reg[13] ;
  wire \int_numOfInNeurons_reg[14] ;
  wire \int_numOfInNeurons_reg[15] ;
  wire \int_numOfInNeurons_reg[8] ;
  wire \int_numOfInNeurons_reg[9] ;
  wire mem_reg_0;
  wire mem_reg_1;
  wire mem_reg_2;
  wire mem_reg_3;
  wire mem_reg_4;
  wire mem_reg_i_3__1_n_3;
  wire mem_reg_i_4__1_n_3;
  wire mem_reg_i_5__1_n_3;
  wire mem_reg_i_6__1_n_3;
  wire mem_reg_i_7__1_n_3;
  wire mem_reg_i_8__1_n_3;
  wire mem_reg_i_9__1_n_3;
  wire [31:24]p_1_in;
  wire p_35_in;
  wire \rdata_reg[0] ;
  wire \rdata_reg[0]_0 ;
  wire \rdata_reg[0]_1 ;
  wire \rdata_reg[0]_2 ;
  wire [7:0]\rdata_reg[15] ;
  wire [7:0]\rdata_reg[15]_0 ;
  wire \rdata_reg[1] ;
  wire \rdata_reg[1]_0 ;
  wire \rdata_reg[2] ;
  wire \rdata_reg[2]_0 ;
  wire \rdata_reg[2]_1 ;
  wire \rdata_reg[3] ;
  wire \rdata_reg[3]_0 ;
  wire \rdata_reg[4] ;
  wire \rdata_reg[4]_0 ;
  wire \rdata_reg[4]_1 ;
  wire \rdata_reg[5] ;
  wire \rdata_reg[5]_0 ;
  wire \rdata_reg[7] ;
  wire \rdata_reg[7]_0 ;
  wire \rdata_reg[8] ;
  wire \rdata_reg[8]_0 ;
  wire [1:0]rstate;
  wire [6:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [1:0]wstate;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_input_r/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "896" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,mem_reg_i_3__1_n_3,mem_reg_i_4__1_n_3,mem_reg_i_5__1_n_3,mem_reg_i_6__1_n_3,mem_reg_i_7__1_n_3,mem_reg_i_8__1_n_3,mem_reg_i_9__1_n_3,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_input_r_address0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI({p_1_in,s_axi_control_WDATA[23:0]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({DOADO[16:1],int_input_r_q1[15:7],DOADO[0],int_input_r_q1[5:0]}),
        .DOBDO(DOBDO),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_input_r_ce1),
        .ENBWREN(mem_reg_3),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA(int_input_r_be1),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_12__1
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_4),
        .I3(s_axi_control_WDATA[31]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_13__1
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_4),
        .I3(s_axi_control_WDATA[30]),
        .O(p_1_in[30]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_14__1
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_4),
        .I3(s_axi_control_WDATA[29]),
        .O(p_1_in[29]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_15__1
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_4),
        .I3(s_axi_control_WDATA[28]),
        .O(p_1_in[28]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_16__1
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_4),
        .I3(s_axi_control_WDATA[27]),
        .O(p_1_in[27]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_17__1
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_4),
        .I3(s_axi_control_WDATA[26]),
        .O(p_1_in[26]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_18__1
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_4),
        .I3(s_axi_control_WDATA[25]),
        .O(p_1_in[25]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_19__1
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_4),
        .I3(s_axi_control_WDATA[24]),
        .O(p_1_in[24]));
  LUT5 #(
    .INIT(32'h888888F8)) 
    mem_reg_i_1__1
       (.I0(mem_reg_4),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(rstate[0]),
        .I4(rstate[1]),
        .O(int_input_r_ce1));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    mem_reg_i_20__1
       (.I0(mem_reg_4),
        .I1(s_axi_control_WVALID),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .I4(ar_hs__0),
        .I5(s_axi_control_WSTRB[3]),
        .O(int_input_r_be1[3]));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    mem_reg_i_21__1
       (.I0(mem_reg_4),
        .I1(s_axi_control_WVALID),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .I4(ar_hs__0),
        .I5(s_axi_control_WSTRB[2]),
        .O(int_input_r_be1[2]));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    mem_reg_i_22__1
       (.I0(mem_reg_4),
        .I1(s_axi_control_WVALID),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .I4(ar_hs__0),
        .I5(s_axi_control_WSTRB[1]),
        .O(int_input_r_be1[1]));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    mem_reg_i_23__1
       (.I0(mem_reg_4),
        .I1(s_axi_control_WVALID),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .I4(ar_hs__0),
        .I5(s_axi_control_WSTRB[0]),
        .O(int_input_r_be1[0]));
  LUT6 #(
    .INIT(64'h0808080808080008)) 
    mem_reg_i_25__1
       (.I0(s_axi_control_WVALID),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[0]),
        .I5(rstate[1]),
        .O(p_35_in));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_3__1
       (.I0(s_axi_control_ARADDR[6]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[6]),
        .O(mem_reg_i_3__1_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_4__1
       (.I0(s_axi_control_ARADDR[5]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[5]),
        .O(mem_reg_i_4__1_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_5__1
       (.I0(s_axi_control_ARADDR[4]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[4]),
        .O(mem_reg_i_5__1_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_6__1
       (.I0(s_axi_control_ARADDR[3]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[3]),
        .O(mem_reg_i_6__1_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_7__1
       (.I0(s_axi_control_ARADDR[2]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[2]),
        .O(mem_reg_i_7__1_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_8__1
       (.I0(s_axi_control_ARADDR[1]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[1]),
        .O(mem_reg_i_8__1_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_9__1
       (.I0(s_axi_control_ARADDR[0]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[0]),
        .O(mem_reg_i_9__1_n_3));
  LUT6 #(
    .INIT(64'hEAEAC0C0FFC0C0C0)) 
    \rdata[0]_i_3 
       (.I0(\rdata_reg[0] ),
        .I1(\rdata_reg[0]_0 ),
        .I2(int_input_r_q1[0]),
        .I3(\rdata_reg[0]_1 ),
        .I4(\rdata_reg[2] ),
        .I5(\rdata_reg[0]_2 ),
        .O(mem_reg_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[10]_i_3 
       (.I0(\rdata_reg[8] ),
        .I1(\rdata_reg[15] [2]),
        .I2(\rdata_reg[0]_0 ),
        .I3(int_input_r_q1[10]),
        .I4(\rdata_reg[15]_0 [2]),
        .I5(\rdata_reg[8]_0 ),
        .O(\int_numOfInNeurons_reg[10] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[11]_i_3 
       (.I0(\rdata_reg[8] ),
        .I1(\rdata_reg[15] [3]),
        .I2(\rdata_reg[0]_0 ),
        .I3(int_input_r_q1[11]),
        .I4(\rdata_reg[15]_0 [3]),
        .I5(\rdata_reg[8]_0 ),
        .O(\int_numOfInNeurons_reg[11] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[12]_i_3 
       (.I0(\rdata_reg[8] ),
        .I1(\rdata_reg[15] [4]),
        .I2(\rdata_reg[0]_0 ),
        .I3(int_input_r_q1[12]),
        .I4(\rdata_reg[15]_0 [4]),
        .I5(\rdata_reg[8]_0 ),
        .O(\int_numOfInNeurons_reg[12] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[13]_i_3 
       (.I0(\rdata_reg[8] ),
        .I1(\rdata_reg[15] [5]),
        .I2(\rdata_reg[0]_0 ),
        .I3(int_input_r_q1[13]),
        .I4(\rdata_reg[15]_0 [5]),
        .I5(\rdata_reg[8]_0 ),
        .O(\int_numOfInNeurons_reg[13] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[14]_i_3 
       (.I0(\rdata_reg[8] ),
        .I1(\rdata_reg[15] [6]),
        .I2(\rdata_reg[0]_0 ),
        .I3(int_input_r_q1[14]),
        .I4(\rdata_reg[15]_0 [6]),
        .I5(\rdata_reg[8]_0 ),
        .O(\int_numOfInNeurons_reg[14] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[15]_i_4 
       (.I0(\rdata_reg[8] ),
        .I1(\rdata_reg[15] [7]),
        .I2(\rdata_reg[0]_0 ),
        .I3(int_input_r_q1[15]),
        .I4(\rdata_reg[15]_0 [7]),
        .I5(\rdata_reg[8]_0 ),
        .O(\int_numOfInNeurons_reg[15] ));
  LUT6 #(
    .INIT(64'hF8F88888FF888888)) 
    \rdata[1]_i_3 
       (.I0(\rdata_reg[0]_0 ),
        .I1(int_input_r_q1[1]),
        .I2(\rdata_reg[1] ),
        .I3(\rdata_reg[1]_0 ),
        .I4(\rdata_reg[2] ),
        .I5(\rdata_reg[0]_2 ),
        .O(mem_reg_1));
  LUT6 #(
    .INIT(64'hF000FAAAF0003333)) 
    \rdata[2]_i_1 
       (.I0(int_input_r_q1[2]),
        .I1(\rdata_reg[2]_0 ),
        .I2(\rdata_reg[2]_1 ),
        .I3(\rdata_reg[2] ),
        .I4(ar_hs__0),
        .I5(int_input_r_read),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hF000FAAAF0003333)) 
    \rdata[3]_i_1 
       (.I0(int_input_r_q1[3]),
        .I1(\rdata_reg[3] ),
        .I2(\rdata_reg[3]_0 ),
        .I3(\rdata_reg[2] ),
        .I4(ar_hs__0),
        .I5(int_input_r_read),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFCFCFEFFFCFCFE00)) 
    \rdata[4]_i_1 
       (.I0(int_input_r_q1[4]),
        .I1(\rdata_reg[4] ),
        .I2(\rdata_reg[4]_0 ),
        .I3(int_input_r_read),
        .I4(ar_hs__0),
        .I5(\rdata_reg[4]_1 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hF000FAAAF0003333)) 
    \rdata[5]_i_1 
       (.I0(int_input_r_q1[5]),
        .I1(\rdata_reg[5] ),
        .I2(\rdata_reg[5]_0 ),
        .I3(\rdata_reg[2] ),
        .I4(ar_hs__0),
        .I5(int_input_r_read),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFF88888F8F88888)) 
    \rdata[7]_i_3 
       (.I0(\rdata_reg[0]_0 ),
        .I1(int_input_r_q1[7]),
        .I2(\rdata_reg[7] ),
        .I3(\rdata_reg[7]_0 ),
        .I4(\rdata_reg[2] ),
        .I5(\rdata_reg[0]_2 ),
        .O(mem_reg_2));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[8]_i_3 
       (.I0(\rdata_reg[8] ),
        .I1(\rdata_reg[15] [0]),
        .I2(\rdata_reg[0]_0 ),
        .I3(int_input_r_q1[8]),
        .I4(\rdata_reg[15]_0 [0]),
        .I5(\rdata_reg[8]_0 ),
        .O(\int_numOfInNeurons_reg[8] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[9]_i_3 
       (.I0(\rdata_reg[8] ),
        .I1(\rdata_reg[15] [1]),
        .I2(\rdata_reg[0]_0 ),
        .I3(int_input_r_q1[9]),
        .I4(\rdata_reg[15]_0 [1]),
        .I5(\rdata_reg[8]_0 ),
        .O(\int_numOfInNeurons_reg[9] ));
endmodule

(* ORIG_REF_NAME = "nnlayer_control_s_axi_ram" *) 
module design_1_nnlayer_0_0_nnlayer_control_s_axi_ram__parameterized0
   (mem_reg_0,
    \icmp_ln10_reg_109_reg[0] ,
    mem_reg_1,
    output_r_address01,
    ap_clk,
    output_r_ce0,
    ADDRBWRADDR,
    s_axi_control_WDATA,
    DIBDI,
    WEBWE,
    mem_reg_2,
    s_axi_control_WVALID,
    s_axi_control_ARVALID,
    rstate,
    wstate,
    ar_hs__0,
    s_axi_control_WSTRB,
    p_35_in,
    icmp_ln10_reg_109,
    \output_r_load_reg_426_reg[0] ,
    Q,
    mem_reg_3,
    s_axi_control_ARADDR,
    mem_reg_4);
  output [31:0]mem_reg_0;
  output \icmp_ln10_reg_109_reg[0] ;
  output [15:0]mem_reg_1;
  output output_r_address01;
  input ap_clk;
  input output_r_ce0;
  input [6:0]ADDRBWRADDR;
  input [31:0]s_axi_control_WDATA;
  input [23:0]DIBDI;
  input [1:0]WEBWE;
  input mem_reg_2;
  input s_axi_control_WVALID;
  input s_axi_control_ARVALID;
  input [1:0]rstate;
  input [1:0]wstate;
  input ar_hs__0;
  input [3:0]s_axi_control_WSTRB;
  input p_35_in;
  input icmp_ln10_reg_109;
  input \output_r_load_reg_426_reg[0] ;
  input [0:0]Q;
  input mem_reg_3;
  input [6:0]s_axi_control_ARADDR;
  input [6:0]mem_reg_4;

  wire [6:0]ADDRBWRADDR;
  wire [23:0]DIBDI;
  wire [0:0]Q;
  wire [1:0]WEBWE;
  wire ap_clk;
  wire ar_hs__0;
  wire icmp_ln10_reg_109;
  wire \icmp_ln10_reg_109_reg[0] ;
  wire [3:0]int_output_r_be1;
  wire int_output_r_ce1;
  wire [31:0]int_output_r_q0;
  wire [31:0]mem_reg_0;
  wire [15:0]mem_reg_1;
  wire mem_reg_2;
  wire mem_reg_3;
  wire [6:0]mem_reg_4;
  wire mem_reg_i_3__0_n_3;
  wire mem_reg_i_4__0_n_3;
  wire mem_reg_i_5__0_n_3;
  wire mem_reg_i_6__0_n_3;
  wire mem_reg_i_7__0_n_3;
  wire mem_reg_i_8__0_n_3;
  wire mem_reg_i_9__0_n_3;
  wire output_r_address01;
  wire output_r_ce0;
  wire \output_r_load_reg_426_reg[0] ;
  wire [31:24]p_2_in;
  wire p_35_in;
  wire [1:0]rstate;
  wire [6:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [1:0]wstate;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_output_r/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "896" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,mem_reg_i_3__0_n_3,mem_reg_i_4__0_n_3,mem_reg_i_5__0_n_3,mem_reg_i_6__0_n_3,mem_reg_i_7__0_n_3,mem_reg_i_8__0_n_3,mem_reg_i_9__0_n_3,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI({p_2_in,s_axi_control_WDATA[23:0]}),
        .DIBDI({DIBDI,DIBDI[15:8]}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(mem_reg_0),
        .DOBDO(int_output_r_q0),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_output_r_ce1),
        .ENBWREN(output_r_ce0),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA(int_output_r_be1),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,WEBWE[1],WEBWE,WEBWE[0]}));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_17__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_2),
        .I3(s_axi_control_WDATA[31]),
        .O(p_2_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_18__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_2),
        .I3(s_axi_control_WDATA[30]),
        .O(p_2_in[30]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_19__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_2),
        .I3(s_axi_control_WDATA[29]),
        .O(p_2_in[29]));
  LUT5 #(
    .INIT(32'h888888F8)) 
    mem_reg_i_1__0
       (.I0(mem_reg_2),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(rstate[0]),
        .I4(rstate[1]),
        .O(int_output_r_ce1));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_20__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_2),
        .I3(s_axi_control_WDATA[28]),
        .O(p_2_in[28]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_21__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_2),
        .I3(s_axi_control_WDATA[27]),
        .O(p_2_in[27]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_22__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_2),
        .I3(s_axi_control_WDATA[26]),
        .O(p_2_in[26]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_23__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_2),
        .I3(s_axi_control_WDATA[25]),
        .O(p_2_in[25]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_24__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_2),
        .I3(s_axi_control_WDATA[24]),
        .O(p_2_in[24]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_3__0
       (.I0(s_axi_control_ARADDR[6]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_4[6]),
        .O(mem_reg_i_3__0_n_3));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    mem_reg_i_49
       (.I0(mem_reg_2),
        .I1(s_axi_control_WVALID),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .I4(ar_hs__0),
        .I5(s_axi_control_WSTRB[3]),
        .O(int_output_r_be1[3]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_4__0
       (.I0(s_axi_control_ARADDR[5]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_4[5]),
        .O(mem_reg_i_4__0_n_3));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    mem_reg_i_50
       (.I0(mem_reg_2),
        .I1(s_axi_control_WVALID),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .I4(ar_hs__0),
        .I5(s_axi_control_WSTRB[2]),
        .O(int_output_r_be1[2]));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    mem_reg_i_51
       (.I0(mem_reg_2),
        .I1(s_axi_control_WVALID),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .I4(ar_hs__0),
        .I5(s_axi_control_WSTRB[1]),
        .O(int_output_r_be1[1]));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    mem_reg_i_52
       (.I0(mem_reg_2),
        .I1(s_axi_control_WVALID),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .I4(ar_hs__0),
        .I5(s_axi_control_WSTRB[0]),
        .O(int_output_r_be1[0]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_56
       (.I0(mem_reg_3),
        .I1(Q),
        .O(output_r_address01));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_5__0
       (.I0(s_axi_control_ARADDR[4]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_4[4]),
        .O(mem_reg_i_5__0_n_3));
  LUT6 #(
    .INIT(64'h4540000000000000)) 
    mem_reg_i_67
       (.I0(icmp_ln10_reg_109),
        .I1(int_output_r_q0[31]),
        .I2(\output_r_load_reg_426_reg[0] ),
        .I3(int_output_r_q0[15]),
        .I4(Q),
        .I5(mem_reg_3),
        .O(\icmp_ln10_reg_109_reg[0] ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_6__0
       (.I0(s_axi_control_ARADDR[3]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_4[3]),
        .O(mem_reg_i_6__0_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_7__0
       (.I0(s_axi_control_ARADDR[2]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_4[2]),
        .O(mem_reg_i_7__0_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_8__0
       (.I0(s_axi_control_ARADDR[1]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_4[1]),
        .O(mem_reg_i_8__0_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_9__0
       (.I0(s_axi_control_ARADDR[0]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_4[0]),
        .O(mem_reg_i_9__0_n_3));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_426[0]_i_1 
       (.I0(int_output_r_q0[16]),
        .I1(\output_r_load_reg_426_reg[0] ),
        .I2(int_output_r_q0[0]),
        .O(mem_reg_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_426[10]_i_1 
       (.I0(int_output_r_q0[26]),
        .I1(\output_r_load_reg_426_reg[0] ),
        .I2(int_output_r_q0[10]),
        .O(mem_reg_1[10]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_426[11]_i_1 
       (.I0(int_output_r_q0[27]),
        .I1(\output_r_load_reg_426_reg[0] ),
        .I2(int_output_r_q0[11]),
        .O(mem_reg_1[11]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_426[12]_i_1 
       (.I0(int_output_r_q0[28]),
        .I1(\output_r_load_reg_426_reg[0] ),
        .I2(int_output_r_q0[12]),
        .O(mem_reg_1[12]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_426[13]_i_1 
       (.I0(int_output_r_q0[29]),
        .I1(\output_r_load_reg_426_reg[0] ),
        .I2(int_output_r_q0[13]),
        .O(mem_reg_1[13]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_426[14]_i_1 
       (.I0(int_output_r_q0[30]),
        .I1(\output_r_load_reg_426_reg[0] ),
        .I2(int_output_r_q0[14]),
        .O(mem_reg_1[14]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_426[15]_i_2 
       (.I0(int_output_r_q0[31]),
        .I1(\output_r_load_reg_426_reg[0] ),
        .I2(int_output_r_q0[15]),
        .O(mem_reg_1[15]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_426[1]_i_1 
       (.I0(int_output_r_q0[17]),
        .I1(\output_r_load_reg_426_reg[0] ),
        .I2(int_output_r_q0[1]),
        .O(mem_reg_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_426[2]_i_1 
       (.I0(int_output_r_q0[18]),
        .I1(\output_r_load_reg_426_reg[0] ),
        .I2(int_output_r_q0[2]),
        .O(mem_reg_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_426[3]_i_1 
       (.I0(int_output_r_q0[19]),
        .I1(\output_r_load_reg_426_reg[0] ),
        .I2(int_output_r_q0[3]),
        .O(mem_reg_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_426[4]_i_1 
       (.I0(int_output_r_q0[20]),
        .I1(\output_r_load_reg_426_reg[0] ),
        .I2(int_output_r_q0[4]),
        .O(mem_reg_1[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_426[5]_i_1 
       (.I0(int_output_r_q0[21]),
        .I1(\output_r_load_reg_426_reg[0] ),
        .I2(int_output_r_q0[5]),
        .O(mem_reg_1[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_426[6]_i_1 
       (.I0(int_output_r_q0[22]),
        .I1(\output_r_load_reg_426_reg[0] ),
        .I2(int_output_r_q0[6]),
        .O(mem_reg_1[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_426[7]_i_1 
       (.I0(int_output_r_q0[23]),
        .I1(\output_r_load_reg_426_reg[0] ),
        .I2(int_output_r_q0[7]),
        .O(mem_reg_1[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_426[8]_i_1 
       (.I0(int_output_r_q0[24]),
        .I1(\output_r_load_reg_426_reg[0] ),
        .I2(int_output_r_q0[8]),
        .O(mem_reg_1[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_426[9]_i_1 
       (.I0(int_output_r_q0[25]),
        .I1(\output_r_load_reg_426_reg[0] ),
        .I2(int_output_r_q0[9]),
        .O(mem_reg_1[9]));
endmodule

(* ORIG_REF_NAME = "nnlayer_control_s_axi_ram" *) 
module design_1_nnlayer_0_0_nnlayer_control_s_axi_ram__parameterized1
   (ar_hs__0,
    q1,
    q0,
    s_axi_control_WDATA,
    s_axi_control_WVALID,
    wstate,
    mem_reg_3_0_2_0,
    s_axi_control_WSTRB,
    rstate,
    s_axi_control_ARVALID,
    s_axi_control_ARADDR,
    Q,
    ap_clk,
    mem_reg_1_0_1_0,
    grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0,
    mem_reg_2_0_3_0,
    mem_reg_3_0_5_0,
    ce0);
  output ar_hs__0;
  output [31:0]q1;
  output [31:0]q0;
  input [31:0]s_axi_control_WDATA;
  input s_axi_control_WVALID;
  input [1:0]wstate;
  input mem_reg_3_0_2_0;
  input [3:0]s_axi_control_WSTRB;
  input [1:0]rstate;
  input s_axi_control_ARVALID;
  input [14:0]s_axi_control_ARADDR;
  input [14:0]Q;
  input ap_clk;
  input mem_reg_1_0_1_0;
  input [14:0]grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0;
  input mem_reg_2_0_3_0;
  input mem_reg_3_0_5_0;
  input ce0;

  wire [14:0]Q;
  wire ap_clk;
  wire ar_hs__0;
  wire ce0;
  wire [14:0]grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0;
  wire [3:3]int_weights_be1;
  wire mem_reg_0_0_0_i_10_n_3;
  wire mem_reg_0_0_0_i_11_n_3;
  wire mem_reg_0_0_0_i_12_n_3;
  wire mem_reg_0_0_0_i_13_n_3;
  wire mem_reg_0_0_0_i_14_n_3;
  wire mem_reg_0_0_0_i_15_n_3;
  wire mem_reg_0_0_0_i_16_n_3;
  wire mem_reg_0_0_0_i_17_n_3;
  wire mem_reg_0_0_0_i_18_n_3;
  wire mem_reg_0_0_0_i_1_n_3;
  wire mem_reg_0_0_0_i_3_n_3;
  wire mem_reg_0_0_0_i_4_n_3;
  wire mem_reg_0_0_0_i_5_n_3;
  wire mem_reg_0_0_0_i_6_n_3;
  wire mem_reg_0_0_0_i_7_n_3;
  wire mem_reg_0_0_0_i_8_n_3;
  wire mem_reg_0_0_0_i_9_n_3;
  wire mem_reg_0_0_2_i_1_n_3;
  wire mem_reg_0_0_5_i_1_n_3;
  wire mem_reg_0_0_7_i_1_n_3;
  wire mem_reg_1_0_0_i_1_n_3;
  wire mem_reg_1_0_1_0;
  wire mem_reg_1_0_2_i_10_n_3;
  wire mem_reg_1_0_2_i_11_n_3;
  wire mem_reg_1_0_2_i_12_n_3;
  wire mem_reg_1_0_2_i_13_n_3;
  wire mem_reg_1_0_2_i_14_n_3;
  wire mem_reg_1_0_2_i_15_n_3;
  wire mem_reg_1_0_2_i_16_n_3;
  wire mem_reg_1_0_2_i_17_n_3;
  wire mem_reg_1_0_2_i_18_n_3;
  wire mem_reg_1_0_2_i_1_n_3;
  wire mem_reg_1_0_2_i_3_n_3;
  wire mem_reg_1_0_2_i_4_n_3;
  wire mem_reg_1_0_2_i_5_n_3;
  wire mem_reg_1_0_2_i_6_n_3;
  wire mem_reg_1_0_2_i_7_n_3;
  wire mem_reg_1_0_2_i_8_n_3;
  wire mem_reg_1_0_2_i_9_n_3;
  wire mem_reg_1_0_5_i_1_n_3;
  wire mem_reg_1_0_7_i_1_n_3;
  wire mem_reg_2_0_0_i_1_n_3;
  wire mem_reg_2_0_2_i_1_n_3;
  wire mem_reg_2_0_3_0;
  wire mem_reg_2_0_4_i_10_n_3;
  wire mem_reg_2_0_4_i_11_n_3;
  wire mem_reg_2_0_4_i_12_n_3;
  wire mem_reg_2_0_4_i_13_n_3;
  wire mem_reg_2_0_4_i_14_n_3;
  wire mem_reg_2_0_4_i_15_n_3;
  wire mem_reg_2_0_4_i_16_n_3;
  wire mem_reg_2_0_4_i_17_n_3;
  wire mem_reg_2_0_4_i_1_n_3;
  wire mem_reg_2_0_4_i_3_n_3;
  wire mem_reg_2_0_4_i_4_n_3;
  wire mem_reg_2_0_4_i_5_n_3;
  wire mem_reg_2_0_4_i_6_n_3;
  wire mem_reg_2_0_4_i_7_n_3;
  wire mem_reg_2_0_4_i_8_n_3;
  wire mem_reg_2_0_4_i_9_n_3;
  wire mem_reg_2_0_5_i_1_n_3;
  wire mem_reg_2_0_7_i_1_n_3;
  wire mem_reg_3_0_0_i_2_n_3;
  wire mem_reg_3_0_2_0;
  wire mem_reg_3_0_2_i_2_n_3;
  wire mem_reg_3_0_5_0;
  wire mem_reg_3_0_5_i_2_n_3;
  wire mem_reg_3_0_6_i_10_n_3;
  wire mem_reg_3_0_6_i_11_n_3;
  wire mem_reg_3_0_6_i_12_n_3;
  wire mem_reg_3_0_6_i_13_n_3;
  wire mem_reg_3_0_6_i_14_n_3;
  wire mem_reg_3_0_6_i_15_n_3;
  wire mem_reg_3_0_6_i_16_n_3;
  wire mem_reg_3_0_6_i_17_n_3;
  wire mem_reg_3_0_6_i_1_n_3;
  wire mem_reg_3_0_6_i_3_n_3;
  wire mem_reg_3_0_6_i_4_n_3;
  wire mem_reg_3_0_6_i_5_n_3;
  wire mem_reg_3_0_6_i_6_n_3;
  wire mem_reg_3_0_6_i_7_n_3;
  wire mem_reg_3_0_6_i_8_n_3;
  wire mem_reg_3_0_6_i_9_n_3;
  wire mem_reg_3_0_7_i_2_n_3;
  wire [31:24]p_1_in;
  wire [31:0]q0;
  wire [31:0]q1;
  wire [1:0]rstate;
  wire [14:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [1:0]wstate;
  wire NLW_mem_reg_0_0_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_0_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_0_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_0_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_0_0_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_0_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_0_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_0_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_0_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_0_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_0_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_1_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_0_1_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_0_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_0_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_0_1_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_0_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_0_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_0_2_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_2_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_0_2_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_0_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_0_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_0_2_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_0_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_0_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_0_3_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_3_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_0_3_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_0_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_0_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_0_3_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_0_4_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_0_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_0_4_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_4_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_0_4_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_0_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_0_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_0_4_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_0_5_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_0_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_0_5_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_5_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_0_5_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_0_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_0_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_0_5_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_0_6_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_0_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_0_6_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_6_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_0_6_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_0_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_0_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_0_6_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_0_7_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_0_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_0_7_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_7_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_0_7_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_0_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_0_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_0_7_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_0_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_0_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_0_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_0_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_0_0_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_0_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_0_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_0_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_0_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_0_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_0_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_1_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_0_1_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_0_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_0_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_0_1_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_0_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_0_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_0_2_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_2_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_0_2_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_0_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_0_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_0_2_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_0_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_0_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_0_3_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_3_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_0_3_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_0_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_0_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_0_3_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_0_4_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_0_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_0_4_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_4_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_0_4_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_0_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_0_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_0_4_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_0_5_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_0_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_0_5_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_5_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_0_5_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_0_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_0_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_0_5_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_0_6_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_0_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_0_6_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_6_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_0_6_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_0_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_0_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_0_6_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_0_7_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_0_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_0_7_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_7_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_0_7_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_0_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_0_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_0_7_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_0_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_2_0_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_2_0_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_0_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_0_0_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_0_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_0_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_0_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_0_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_2_0_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_2_0_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_1_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_0_1_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_0_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_0_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_0_1_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_0_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_2_0_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_2_0_2_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_2_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_0_2_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_0_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_0_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_0_2_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_0_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_2_0_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_2_0_3_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_3_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_0_3_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_0_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_0_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_0_3_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_0_4_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_2_0_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_2_0_4_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_4_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_0_4_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_0_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_0_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_0_4_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_0_5_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_2_0_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_2_0_5_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_5_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_0_5_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_0_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_0_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_0_5_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_0_6_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_2_0_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_2_0_6_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_6_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_0_6_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_0_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_0_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_0_6_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_0_7_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_2_0_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_2_0_7_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_7_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_0_7_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_0_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_0_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_0_7_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_0_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_3_0_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_3_0_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_0_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_0_0_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_0_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_0_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_0_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_0_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_3_0_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_3_0_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_1_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_0_1_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_0_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_0_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_0_1_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_0_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_3_0_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_3_0_2_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_2_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_0_2_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_0_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_0_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_0_2_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_0_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_3_0_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_3_0_3_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_3_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_0_3_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_0_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_0_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_0_3_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_0_4_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_3_0_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_3_0_4_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_4_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_0_4_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_0_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_0_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_0_4_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_0_5_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_3_0_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_3_0_5_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_5_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_0_5_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_0_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_0_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_0_5_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_0_6_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_3_0_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_3_0_6_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_6_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_0_6_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_0_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_0_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_0_6_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_0_7_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_3_0_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_3_0_7_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_7_SBITERR_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_0_7_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_0_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_0_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_0_7_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_0_0
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_3_n_3,mem_reg_0_0_0_i_4_n_3,mem_reg_0_0_0_i_5_n_3,mem_reg_0_0_0_i_6_n_3,mem_reg_0_0_0_i_7_n_3,mem_reg_0_0_0_i_8_n_3,mem_reg_0_0_0_i_9_n_3,mem_reg_0_0_0_i_10_n_3,mem_reg_0_0_0_i_11_n_3,mem_reg_0_0_0_i_12_n_3,mem_reg_0_0_0_i_13_n_3,mem_reg_0_0_0_i_14_n_3,mem_reg_0_0_0_i_15_n_3,mem_reg_0_0_0_i_16_n_3,mem_reg_0_0_0_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_0_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_0_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_0_0_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_0_0_0_DOADO_UNCONNECTED[31:1],q1[0]}),
        .DOBDO({NLW_mem_reg_0_0_0_DOBDO_UNCONNECTED[31:1],q0[0]}),
        .DOPADOP(NLW_mem_reg_0_0_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_0_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_0_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_0_0_i_1_n_3),
        .ENBWREN(mem_reg_1_0_1_0),
        .INJECTDBITERR(NLW_mem_reg_0_0_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_0_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_0_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_0_0_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_0_0_i_18_n_3,mem_reg_0_0_0_i_18_n_3,mem_reg_0_0_0_i_18_n_3,mem_reg_0_0_0_i_18_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h888888F8)) 
    mem_reg_0_0_0_i_1
       (.I0(s_axi_control_WVALID),
        .I1(mem_reg_3_0_2_0),
        .I2(s_axi_control_ARVALID),
        .I3(rstate[0]),
        .I4(rstate[1]),
        .O(mem_reg_0_0_0_i_1_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_10
       (.I0(s_axi_control_ARADDR[7]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[7]),
        .O(mem_reg_0_0_0_i_10_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_11
       (.I0(s_axi_control_ARADDR[6]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[6]),
        .O(mem_reg_0_0_0_i_11_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_12
       (.I0(s_axi_control_ARADDR[5]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[5]),
        .O(mem_reg_0_0_0_i_12_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_13
       (.I0(s_axi_control_ARADDR[4]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[4]),
        .O(mem_reg_0_0_0_i_13_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_14
       (.I0(s_axi_control_ARADDR[3]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[3]),
        .O(mem_reg_0_0_0_i_14_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_15
       (.I0(s_axi_control_ARADDR[2]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[2]),
        .O(mem_reg_0_0_0_i_15_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_16
       (.I0(s_axi_control_ARADDR[1]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[1]),
        .O(mem_reg_0_0_0_i_16_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_17
       (.I0(s_axi_control_ARADDR[0]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[0]),
        .O(mem_reg_0_0_0_i_17_n_3));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    mem_reg_0_0_0_i_18
       (.I0(s_axi_control_WVALID),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(ar_hs__0),
        .I4(mem_reg_3_0_2_0),
        .I5(s_axi_control_WSTRB[0]),
        .O(mem_reg_0_0_0_i_18_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_3
       (.I0(s_axi_control_ARADDR[14]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[14]),
        .O(mem_reg_0_0_0_i_3_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_4
       (.I0(s_axi_control_ARADDR[13]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[13]),
        .O(mem_reg_0_0_0_i_4_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_5
       (.I0(s_axi_control_ARADDR[12]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[12]),
        .O(mem_reg_0_0_0_i_5_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_6
       (.I0(s_axi_control_ARADDR[11]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[11]),
        .O(mem_reg_0_0_0_i_6_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_7
       (.I0(s_axi_control_ARADDR[10]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[10]),
        .O(mem_reg_0_0_0_i_7_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_8
       (.I0(s_axi_control_ARADDR[9]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[9]),
        .O(mem_reg_0_0_0_i_8_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_9
       (.I0(s_axi_control_ARADDR[8]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[8]),
        .O(mem_reg_0_0_0_i_9_n_3));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_0_1
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_3_n_3,mem_reg_0_0_0_i_4_n_3,mem_reg_0_0_0_i_5_n_3,mem_reg_0_0_0_i_6_n_3,mem_reg_0_0_0_i_7_n_3,mem_reg_0_0_0_i_8_n_3,mem_reg_0_0_0_i_9_n_3,mem_reg_0_0_0_i_10_n_3,mem_reg_0_0_0_i_11_n_3,mem_reg_0_0_0_i_12_n_3,mem_reg_0_0_0_i_13_n_3,mem_reg_0_0_0_i_14_n_3,mem_reg_0_0_0_i_15_n_3,mem_reg_0_0_0_i_16_n_3,mem_reg_0_0_0_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_0_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_0_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_0_0_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_0_0_1_DOADO_UNCONNECTED[31:1],q1[1]}),
        .DOBDO({NLW_mem_reg_0_0_1_DOBDO_UNCONNECTED[31:1],q0[1]}),
        .DOPADOP(NLW_mem_reg_0_0_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_0_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_0_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_0_0_i_1_n_3),
        .ENBWREN(mem_reg_1_0_1_0),
        .INJECTDBITERR(NLW_mem_reg_0_0_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_0_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_0_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_0_1_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_0_0_i_18_n_3,mem_reg_0_0_0_i_18_n_3,mem_reg_0_0_0_i_18_n_3,mem_reg_0_0_0_i_18_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_0_2
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_3_n_3,mem_reg_0_0_0_i_4_n_3,mem_reg_0_0_0_i_5_n_3,mem_reg_0_0_0_i_6_n_3,mem_reg_0_0_0_i_7_n_3,mem_reg_0_0_0_i_8_n_3,mem_reg_0_0_0_i_9_n_3,mem_reg_0_0_0_i_10_n_3,mem_reg_0_0_0_i_11_n_3,mem_reg_0_0_0_i_12_n_3,mem_reg_0_0_0_i_13_n_3,mem_reg_0_0_0_i_14_n_3,mem_reg_0_0_0_i_15_n_3,mem_reg_0_0_0_i_16_n_3,mem_reg_0_0_0_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_0_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_0_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_0_0_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_0_0_2_DOADO_UNCONNECTED[31:1],q1[2]}),
        .DOBDO({NLW_mem_reg_0_0_2_DOBDO_UNCONNECTED[31:1],q0[2]}),
        .DOPADOP(NLW_mem_reg_0_0_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_0_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_0_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_0_0_i_1_n_3),
        .ENBWREN(mem_reg_1_0_1_0),
        .INJECTDBITERR(NLW_mem_reg_0_0_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_0_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_0_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_0_2_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_0_2_i_1_n_3,mem_reg_0_0_2_i_1_n_3,mem_reg_0_0_0_i_18_n_3,mem_reg_0_0_0_i_18_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    mem_reg_0_0_2_i_1
       (.I0(s_axi_control_WVALID),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(ar_hs__0),
        .I4(mem_reg_3_0_2_0),
        .I5(s_axi_control_WSTRB[0]),
        .O(mem_reg_0_0_2_i_1_n_3));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_0_3
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_3_n_3,mem_reg_0_0_0_i_4_n_3,mem_reg_0_0_0_i_5_n_3,mem_reg_0_0_0_i_6_n_3,mem_reg_0_0_0_i_7_n_3,mem_reg_0_0_0_i_8_n_3,mem_reg_0_0_0_i_9_n_3,mem_reg_0_0_0_i_10_n_3,mem_reg_0_0_0_i_11_n_3,mem_reg_0_0_0_i_12_n_3,mem_reg_0_0_0_i_13_n_3,mem_reg_0_0_0_i_14_n_3,mem_reg_0_0_0_i_15_n_3,mem_reg_0_0_0_i_16_n_3,mem_reg_0_0_0_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_0_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_0_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_0_0_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[3]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_0_0_3_DOADO_UNCONNECTED[31:1],q1[3]}),
        .DOBDO({NLW_mem_reg_0_0_3_DOBDO_UNCONNECTED[31:1],q0[3]}),
        .DOPADOP(NLW_mem_reg_0_0_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_0_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_0_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_0_0_i_1_n_3),
        .ENBWREN(mem_reg_1_0_1_0),
        .INJECTDBITERR(NLW_mem_reg_0_0_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_0_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_0_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_0_3_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_0_2_i_1_n_3,mem_reg_0_0_2_i_1_n_3,mem_reg_0_0_2_i_1_n_3,mem_reg_0_0_2_i_1_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_0_4
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_3_n_3,mem_reg_0_0_0_i_4_n_3,mem_reg_0_0_0_i_5_n_3,mem_reg_0_0_0_i_6_n_3,mem_reg_0_0_0_i_7_n_3,mem_reg_0_0_0_i_8_n_3,mem_reg_0_0_0_i_9_n_3,mem_reg_0_0_0_i_10_n_3,mem_reg_0_0_0_i_11_n_3,mem_reg_0_0_0_i_12_n_3,mem_reg_0_0_0_i_13_n_3,mem_reg_0_0_0_i_14_n_3,mem_reg_0_0_0_i_15_n_3,mem_reg_0_0_0_i_16_n_3,mem_reg_0_0_0_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_0_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_0_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_0_0_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[4]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_0_0_4_DOADO_UNCONNECTED[31:1],q1[4]}),
        .DOBDO({NLW_mem_reg_0_0_4_DOBDO_UNCONNECTED[31:1],q0[4]}),
        .DOPADOP(NLW_mem_reg_0_0_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_0_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_0_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_0_0_i_1_n_3),
        .ENBWREN(mem_reg_1_0_1_0),
        .INJECTDBITERR(NLW_mem_reg_0_0_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_0_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_0_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_0_4_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_0_2_i_1_n_3,mem_reg_0_0_2_i_1_n_3,mem_reg_0_0_2_i_1_n_3,mem_reg_0_0_2_i_1_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_0_5
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_3_n_3,mem_reg_0_0_0_i_4_n_3,mem_reg_0_0_0_i_5_n_3,mem_reg_0_0_0_i_6_n_3,mem_reg_0_0_0_i_7_n_3,mem_reg_0_0_0_i_8_n_3,mem_reg_0_0_0_i_9_n_3,mem_reg_0_0_0_i_10_n_3,mem_reg_0_0_0_i_11_n_3,mem_reg_0_0_0_i_12_n_3,mem_reg_0_0_0_i_13_n_3,mem_reg_0_0_0_i_14_n_3,mem_reg_0_0_0_i_15_n_3,mem_reg_0_0_0_i_16_n_3,mem_reg_0_0_0_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_0_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_0_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_0_0_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[5]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_0_0_5_DOADO_UNCONNECTED[31:1],q1[5]}),
        .DOBDO({NLW_mem_reg_0_0_5_DOBDO_UNCONNECTED[31:1],q0[5]}),
        .DOPADOP(NLW_mem_reg_0_0_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_0_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_0_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_0_0_i_1_n_3),
        .ENBWREN(mem_reg_1_0_1_0),
        .INJECTDBITERR(NLW_mem_reg_0_0_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_0_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_0_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_0_5_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_0_5_i_1_n_3,mem_reg_0_0_5_i_1_n_3,mem_reg_0_0_5_i_1_n_3,mem_reg_0_0_5_i_1_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    mem_reg_0_0_5_i_1
       (.I0(s_axi_control_WVALID),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(ar_hs__0),
        .I4(mem_reg_3_0_2_0),
        .I5(s_axi_control_WSTRB[0]),
        .O(mem_reg_0_0_5_i_1_n_3));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_0_6
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_3_n_3,mem_reg_0_0_0_i_4_n_3,mem_reg_0_0_0_i_5_n_3,mem_reg_0_0_0_i_6_n_3,mem_reg_0_0_0_i_7_n_3,mem_reg_0_0_0_i_8_n_3,mem_reg_0_0_0_i_9_n_3,mem_reg_0_0_0_i_10_n_3,mem_reg_0_0_0_i_11_n_3,mem_reg_0_0_0_i_12_n_3,mem_reg_0_0_0_i_13_n_3,mem_reg_0_0_0_i_14_n_3,mem_reg_0_0_0_i_15_n_3,mem_reg_0_0_0_i_16_n_3,mem_reg_0_0_0_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_0_6_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_0_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_0_0_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[6]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_0_0_6_DOADO_UNCONNECTED[31:1],q1[6]}),
        .DOBDO({NLW_mem_reg_0_0_6_DOBDO_UNCONNECTED[31:1],q0[6]}),
        .DOPADOP(NLW_mem_reg_0_0_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_0_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_0_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_0_0_i_1_n_3),
        .ENBWREN(mem_reg_1_0_1_0),
        .INJECTDBITERR(NLW_mem_reg_0_0_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_0_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_0_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_0_6_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_0_5_i_1_n_3,mem_reg_0_0_5_i_1_n_3,mem_reg_0_0_5_i_1_n_3,mem_reg_0_0_5_i_1_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_0_7
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_3_n_3,mem_reg_0_0_0_i_4_n_3,mem_reg_0_0_0_i_5_n_3,mem_reg_0_0_0_i_6_n_3,mem_reg_0_0_0_i_7_n_3,mem_reg_0_0_0_i_8_n_3,mem_reg_0_0_0_i_9_n_3,mem_reg_0_0_0_i_10_n_3,mem_reg_0_0_0_i_11_n_3,mem_reg_0_0_0_i_12_n_3,mem_reg_0_0_0_i_13_n_3,mem_reg_0_0_0_i_14_n_3,mem_reg_0_0_0_i_15_n_3,mem_reg_0_0_0_i_16_n_3,mem_reg_0_0_0_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_0_7_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_0_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_0_0_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[7]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_0_0_7_DOADO_UNCONNECTED[31:1],q1[7]}),
        .DOBDO({NLW_mem_reg_0_0_7_DOBDO_UNCONNECTED[31:1],q0[7]}),
        .DOPADOP(NLW_mem_reg_0_0_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_0_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_0_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_0_0_i_1_n_3),
        .ENBWREN(mem_reg_1_0_1_0),
        .INJECTDBITERR(NLW_mem_reg_0_0_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_0_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_0_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_0_7_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_0_7_i_1_n_3,mem_reg_0_0_7_i_1_n_3,mem_reg_0_0_5_i_1_n_3,mem_reg_0_0_5_i_1_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    mem_reg_0_0_7_i_1
       (.I0(s_axi_control_WVALID),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(ar_hs__0),
        .I4(mem_reg_3_0_2_0),
        .I5(s_axi_control_WSTRB[0]),
        .O(mem_reg_0_0_7_i_1_n_3));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_1_0_0
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_3_n_3,mem_reg_0_0_0_i_4_n_3,mem_reg_0_0_0_i_5_n_3,mem_reg_0_0_0_i_6_n_3,mem_reg_0_0_0_i_7_n_3,mem_reg_0_0_0_i_8_n_3,mem_reg_0_0_0_i_9_n_3,mem_reg_0_0_0_i_10_n_3,mem_reg_0_0_0_i_11_n_3,mem_reg_0_0_0_i_12_n_3,mem_reg_0_0_0_i_13_n_3,mem_reg_0_0_0_i_14_n_3,mem_reg_0_0_0_i_15_n_3,mem_reg_0_0_0_i_16_n_3,mem_reg_0_0_0_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_1_0_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_0_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_1_0_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[8]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_1_0_0_DOADO_UNCONNECTED[31:1],q1[8]}),
        .DOBDO({NLW_mem_reg_1_0_0_DOBDO_UNCONNECTED[31:1],q0[8]}),
        .DOPADOP(NLW_mem_reg_1_0_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_0_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_0_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_0_0_i_1_n_3),
        .ENBWREN(mem_reg_1_0_1_0),
        .INJECTDBITERR(NLW_mem_reg_1_0_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_0_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_0_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_0_0_SBITERR_UNCONNECTED),
        .WEA({mem_reg_1_0_0_i_1_n_3,mem_reg_1_0_0_i_1_n_3,mem_reg_1_0_0_i_1_n_3,mem_reg_1_0_0_i_1_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    mem_reg_1_0_0_i_1
       (.I0(s_axi_control_WVALID),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(ar_hs__0),
        .I4(mem_reg_3_0_2_0),
        .I5(s_axi_control_WSTRB[1]),
        .O(mem_reg_1_0_0_i_1_n_3));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_1_0_1
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_3_n_3,mem_reg_0_0_0_i_4_n_3,mem_reg_0_0_0_i_5_n_3,mem_reg_0_0_0_i_6_n_3,mem_reg_0_0_0_i_7_n_3,mem_reg_0_0_0_i_8_n_3,mem_reg_0_0_0_i_9_n_3,mem_reg_0_0_0_i_10_n_3,mem_reg_0_0_0_i_11_n_3,mem_reg_0_0_0_i_12_n_3,mem_reg_0_0_0_i_13_n_3,mem_reg_0_0_0_i_14_n_3,mem_reg_0_0_0_i_15_n_3,mem_reg_0_0_0_i_16_n_3,mem_reg_0_0_0_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_1_0_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_0_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_1_0_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[9]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_1_0_1_DOADO_UNCONNECTED[31:1],q1[9]}),
        .DOBDO({NLW_mem_reg_1_0_1_DOBDO_UNCONNECTED[31:1],q0[9]}),
        .DOPADOP(NLW_mem_reg_1_0_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_0_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_0_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_0_0_i_1_n_3),
        .ENBWREN(mem_reg_1_0_1_0),
        .INJECTDBITERR(NLW_mem_reg_1_0_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_0_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_0_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_0_1_SBITERR_UNCONNECTED),
        .WEA({mem_reg_1_0_0_i_1_n_3,mem_reg_1_0_0_i_1_n_3,mem_reg_1_0_0_i_1_n_3,mem_reg_1_0_0_i_1_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_1_0_2
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_3_n_3,mem_reg_1_0_2_i_4_n_3,mem_reg_1_0_2_i_5_n_3,mem_reg_1_0_2_i_6_n_3,mem_reg_1_0_2_i_7_n_3,mem_reg_1_0_2_i_8_n_3,mem_reg_1_0_2_i_9_n_3,mem_reg_1_0_2_i_10_n_3,mem_reg_1_0_2_i_11_n_3,mem_reg_1_0_2_i_12_n_3,mem_reg_1_0_2_i_13_n_3,mem_reg_1_0_2_i_14_n_3,mem_reg_1_0_2_i_15_n_3,mem_reg_1_0_2_i_16_n_3,mem_reg_1_0_2_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_1_0_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_0_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_1_0_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[10]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_1_0_2_DOADO_UNCONNECTED[31:1],q1[10]}),
        .DOBDO({NLW_mem_reg_1_0_2_DOBDO_UNCONNECTED[31:1],q0[10]}),
        .DOPADOP(NLW_mem_reg_1_0_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_0_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_0_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_1_0_2_i_1_n_3),
        .ENBWREN(mem_reg_2_0_3_0),
        .INJECTDBITERR(NLW_mem_reg_1_0_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_0_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_0_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_0_2_SBITERR_UNCONNECTED),
        .WEA({mem_reg_1_0_2_i_18_n_3,mem_reg_1_0_2_i_18_n_3,mem_reg_1_0_0_i_1_n_3,mem_reg_1_0_0_i_1_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h888888F8)) 
    mem_reg_1_0_2_i_1
       (.I0(s_axi_control_WVALID),
        .I1(mem_reg_3_0_2_0),
        .I2(s_axi_control_ARVALID),
        .I3(rstate[0]),
        .I4(rstate[1]),
        .O(mem_reg_1_0_2_i_1_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_1_0_2_i_10
       (.I0(s_axi_control_ARADDR[7]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[7]),
        .O(mem_reg_1_0_2_i_10_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_1_0_2_i_11
       (.I0(s_axi_control_ARADDR[6]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[6]),
        .O(mem_reg_1_0_2_i_11_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_1_0_2_i_12
       (.I0(s_axi_control_ARADDR[5]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[5]),
        .O(mem_reg_1_0_2_i_12_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_1_0_2_i_13
       (.I0(s_axi_control_ARADDR[4]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[4]),
        .O(mem_reg_1_0_2_i_13_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_1_0_2_i_14
       (.I0(s_axi_control_ARADDR[3]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[3]),
        .O(mem_reg_1_0_2_i_14_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_1_0_2_i_15
       (.I0(s_axi_control_ARADDR[2]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[2]),
        .O(mem_reg_1_0_2_i_15_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_1_0_2_i_16
       (.I0(s_axi_control_ARADDR[1]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[1]),
        .O(mem_reg_1_0_2_i_16_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_1_0_2_i_17
       (.I0(s_axi_control_ARADDR[0]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[0]),
        .O(mem_reg_1_0_2_i_17_n_3));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    mem_reg_1_0_2_i_18
       (.I0(s_axi_control_WVALID),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(ar_hs__0),
        .I4(mem_reg_3_0_2_0),
        .I5(s_axi_control_WSTRB[1]),
        .O(mem_reg_1_0_2_i_18_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_1_0_2_i_3
       (.I0(s_axi_control_ARADDR[14]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[14]),
        .O(mem_reg_1_0_2_i_3_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_1_0_2_i_4
       (.I0(s_axi_control_ARADDR[13]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[13]),
        .O(mem_reg_1_0_2_i_4_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_1_0_2_i_5
       (.I0(s_axi_control_ARADDR[12]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[12]),
        .O(mem_reg_1_0_2_i_5_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_1_0_2_i_6
       (.I0(s_axi_control_ARADDR[11]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[11]),
        .O(mem_reg_1_0_2_i_6_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_1_0_2_i_7
       (.I0(s_axi_control_ARADDR[10]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[10]),
        .O(mem_reg_1_0_2_i_7_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_1_0_2_i_8
       (.I0(s_axi_control_ARADDR[9]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[9]),
        .O(mem_reg_1_0_2_i_8_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_1_0_2_i_9
       (.I0(s_axi_control_ARADDR[8]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[8]),
        .O(mem_reg_1_0_2_i_9_n_3));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_1_0_3
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_3_n_3,mem_reg_1_0_2_i_4_n_3,mem_reg_1_0_2_i_5_n_3,mem_reg_1_0_2_i_6_n_3,mem_reg_1_0_2_i_7_n_3,mem_reg_1_0_2_i_8_n_3,mem_reg_1_0_2_i_9_n_3,mem_reg_1_0_2_i_10_n_3,mem_reg_1_0_2_i_11_n_3,mem_reg_1_0_2_i_12_n_3,mem_reg_1_0_2_i_13_n_3,mem_reg_1_0_2_i_14_n_3,mem_reg_1_0_2_i_15_n_3,mem_reg_1_0_2_i_16_n_3,mem_reg_1_0_2_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_1_0_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_0_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_1_0_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[11]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_1_0_3_DOADO_UNCONNECTED[31:1],q1[11]}),
        .DOBDO({NLW_mem_reg_1_0_3_DOBDO_UNCONNECTED[31:1],q0[11]}),
        .DOPADOP(NLW_mem_reg_1_0_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_0_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_0_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_1_0_2_i_1_n_3),
        .ENBWREN(mem_reg_2_0_3_0),
        .INJECTDBITERR(NLW_mem_reg_1_0_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_0_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_0_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_0_3_SBITERR_UNCONNECTED),
        .WEA({mem_reg_1_0_2_i_18_n_3,mem_reg_1_0_2_i_18_n_3,mem_reg_1_0_2_i_18_n_3,mem_reg_1_0_2_i_18_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_1_0_4
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_3_n_3,mem_reg_1_0_2_i_4_n_3,mem_reg_1_0_2_i_5_n_3,mem_reg_1_0_2_i_6_n_3,mem_reg_1_0_2_i_7_n_3,mem_reg_1_0_2_i_8_n_3,mem_reg_1_0_2_i_9_n_3,mem_reg_1_0_2_i_10_n_3,mem_reg_1_0_2_i_11_n_3,mem_reg_1_0_2_i_12_n_3,mem_reg_1_0_2_i_13_n_3,mem_reg_1_0_2_i_14_n_3,mem_reg_1_0_2_i_15_n_3,mem_reg_1_0_2_i_16_n_3,mem_reg_1_0_2_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_1_0_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_0_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_1_0_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[12]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_1_0_4_DOADO_UNCONNECTED[31:1],q1[12]}),
        .DOBDO({NLW_mem_reg_1_0_4_DOBDO_UNCONNECTED[31:1],q0[12]}),
        .DOPADOP(NLW_mem_reg_1_0_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_0_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_0_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_1_0_2_i_1_n_3),
        .ENBWREN(mem_reg_2_0_3_0),
        .INJECTDBITERR(NLW_mem_reg_1_0_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_0_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_0_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_0_4_SBITERR_UNCONNECTED),
        .WEA({mem_reg_1_0_2_i_18_n_3,mem_reg_1_0_2_i_18_n_3,mem_reg_1_0_2_i_18_n_3,mem_reg_1_0_2_i_18_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_1_0_5
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_3_n_3,mem_reg_1_0_2_i_4_n_3,mem_reg_1_0_2_i_5_n_3,mem_reg_1_0_2_i_6_n_3,mem_reg_1_0_2_i_7_n_3,mem_reg_1_0_2_i_8_n_3,mem_reg_1_0_2_i_9_n_3,mem_reg_1_0_2_i_10_n_3,mem_reg_1_0_2_i_11_n_3,mem_reg_1_0_2_i_12_n_3,mem_reg_1_0_2_i_13_n_3,mem_reg_1_0_2_i_14_n_3,mem_reg_1_0_2_i_15_n_3,mem_reg_1_0_2_i_16_n_3,mem_reg_1_0_2_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_1_0_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_0_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_1_0_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[13]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_1_0_5_DOADO_UNCONNECTED[31:1],q1[13]}),
        .DOBDO({NLW_mem_reg_1_0_5_DOBDO_UNCONNECTED[31:1],q0[13]}),
        .DOPADOP(NLW_mem_reg_1_0_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_0_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_0_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_1_0_2_i_1_n_3),
        .ENBWREN(mem_reg_2_0_3_0),
        .INJECTDBITERR(NLW_mem_reg_1_0_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_0_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_0_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_0_5_SBITERR_UNCONNECTED),
        .WEA({mem_reg_1_0_5_i_1_n_3,mem_reg_1_0_5_i_1_n_3,mem_reg_1_0_5_i_1_n_3,mem_reg_1_0_5_i_1_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    mem_reg_1_0_5_i_1
       (.I0(s_axi_control_WVALID),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(ar_hs__0),
        .I4(mem_reg_3_0_2_0),
        .I5(s_axi_control_WSTRB[1]),
        .O(mem_reg_1_0_5_i_1_n_3));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_1_0_6
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_3_n_3,mem_reg_1_0_2_i_4_n_3,mem_reg_1_0_2_i_5_n_3,mem_reg_1_0_2_i_6_n_3,mem_reg_1_0_2_i_7_n_3,mem_reg_1_0_2_i_8_n_3,mem_reg_1_0_2_i_9_n_3,mem_reg_1_0_2_i_10_n_3,mem_reg_1_0_2_i_11_n_3,mem_reg_1_0_2_i_12_n_3,mem_reg_1_0_2_i_13_n_3,mem_reg_1_0_2_i_14_n_3,mem_reg_1_0_2_i_15_n_3,mem_reg_1_0_2_i_16_n_3,mem_reg_1_0_2_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_1_0_6_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_0_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_1_0_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[14]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_1_0_6_DOADO_UNCONNECTED[31:1],q1[14]}),
        .DOBDO({NLW_mem_reg_1_0_6_DOBDO_UNCONNECTED[31:1],q0[14]}),
        .DOPADOP(NLW_mem_reg_1_0_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_0_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_0_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_1_0_2_i_1_n_3),
        .ENBWREN(mem_reg_2_0_3_0),
        .INJECTDBITERR(NLW_mem_reg_1_0_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_0_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_0_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_0_6_SBITERR_UNCONNECTED),
        .WEA({mem_reg_1_0_5_i_1_n_3,mem_reg_1_0_5_i_1_n_3,mem_reg_1_0_5_i_1_n_3,mem_reg_1_0_5_i_1_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_1_0_7
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_3_n_3,mem_reg_1_0_2_i_4_n_3,mem_reg_1_0_2_i_5_n_3,mem_reg_1_0_2_i_6_n_3,mem_reg_1_0_2_i_7_n_3,mem_reg_1_0_2_i_8_n_3,mem_reg_1_0_2_i_9_n_3,mem_reg_1_0_2_i_10_n_3,mem_reg_1_0_2_i_11_n_3,mem_reg_1_0_2_i_12_n_3,mem_reg_1_0_2_i_13_n_3,mem_reg_1_0_2_i_14_n_3,mem_reg_1_0_2_i_15_n_3,mem_reg_1_0_2_i_16_n_3,mem_reg_1_0_2_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_1_0_7_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_0_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_1_0_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[15]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_1_0_7_DOADO_UNCONNECTED[31:1],q1[15]}),
        .DOBDO({NLW_mem_reg_1_0_7_DOBDO_UNCONNECTED[31:1],q0[15]}),
        .DOPADOP(NLW_mem_reg_1_0_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_0_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_0_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_1_0_2_i_1_n_3),
        .ENBWREN(mem_reg_2_0_3_0),
        .INJECTDBITERR(NLW_mem_reg_1_0_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_0_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_0_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_0_7_SBITERR_UNCONNECTED),
        .WEA({mem_reg_1_0_7_i_1_n_3,mem_reg_1_0_7_i_1_n_3,mem_reg_1_0_5_i_1_n_3,mem_reg_1_0_5_i_1_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    mem_reg_1_0_7_i_1
       (.I0(s_axi_control_WVALID),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(ar_hs__0),
        .I4(mem_reg_3_0_2_0),
        .I5(s_axi_control_WSTRB[1]),
        .O(mem_reg_1_0_7_i_1_n_3));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_2_0_0
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_3_n_3,mem_reg_1_0_2_i_4_n_3,mem_reg_1_0_2_i_5_n_3,mem_reg_1_0_2_i_6_n_3,mem_reg_1_0_2_i_7_n_3,mem_reg_1_0_2_i_8_n_3,mem_reg_1_0_2_i_9_n_3,mem_reg_1_0_2_i_10_n_3,mem_reg_1_0_2_i_11_n_3,mem_reg_1_0_2_i_12_n_3,mem_reg_1_0_2_i_13_n_3,mem_reg_1_0_2_i_14_n_3,mem_reg_1_0_2_i_15_n_3,mem_reg_1_0_2_i_16_n_3,mem_reg_1_0_2_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_2_0_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_2_0_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_2_0_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[16]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_2_0_0_DOADO_UNCONNECTED[31:1],q1[16]}),
        .DOBDO({NLW_mem_reg_2_0_0_DOBDO_UNCONNECTED[31:1],q0[16]}),
        .DOPADOP(NLW_mem_reg_2_0_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_0_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_0_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_1_0_2_i_1_n_3),
        .ENBWREN(mem_reg_2_0_3_0),
        .INJECTDBITERR(NLW_mem_reg_2_0_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_0_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_0_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_0_0_SBITERR_UNCONNECTED),
        .WEA({mem_reg_2_0_0_i_1_n_3,mem_reg_2_0_0_i_1_n_3,mem_reg_2_0_0_i_1_n_3,mem_reg_2_0_0_i_1_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    mem_reg_2_0_0_i_1
       (.I0(s_axi_control_WVALID),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(ar_hs__0),
        .I4(mem_reg_3_0_2_0),
        .I5(s_axi_control_WSTRB[2]),
        .O(mem_reg_2_0_0_i_1_n_3));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_2_0_1
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_3_n_3,mem_reg_1_0_2_i_4_n_3,mem_reg_1_0_2_i_5_n_3,mem_reg_1_0_2_i_6_n_3,mem_reg_1_0_2_i_7_n_3,mem_reg_1_0_2_i_8_n_3,mem_reg_1_0_2_i_9_n_3,mem_reg_1_0_2_i_10_n_3,mem_reg_1_0_2_i_11_n_3,mem_reg_1_0_2_i_12_n_3,mem_reg_1_0_2_i_13_n_3,mem_reg_1_0_2_i_14_n_3,mem_reg_1_0_2_i_15_n_3,mem_reg_1_0_2_i_16_n_3,mem_reg_1_0_2_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_2_0_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_2_0_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_2_0_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[17]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_2_0_1_DOADO_UNCONNECTED[31:1],q1[17]}),
        .DOBDO({NLW_mem_reg_2_0_1_DOBDO_UNCONNECTED[31:1],q0[17]}),
        .DOPADOP(NLW_mem_reg_2_0_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_0_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_0_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_1_0_2_i_1_n_3),
        .ENBWREN(mem_reg_2_0_3_0),
        .INJECTDBITERR(NLW_mem_reg_2_0_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_0_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_0_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_0_1_SBITERR_UNCONNECTED),
        .WEA({mem_reg_2_0_0_i_1_n_3,mem_reg_2_0_0_i_1_n_3,mem_reg_2_0_0_i_1_n_3,mem_reg_2_0_0_i_1_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_2_0_2
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_3_n_3,mem_reg_1_0_2_i_4_n_3,mem_reg_1_0_2_i_5_n_3,mem_reg_1_0_2_i_6_n_3,mem_reg_1_0_2_i_7_n_3,mem_reg_1_0_2_i_8_n_3,mem_reg_1_0_2_i_9_n_3,mem_reg_1_0_2_i_10_n_3,mem_reg_1_0_2_i_11_n_3,mem_reg_1_0_2_i_12_n_3,mem_reg_1_0_2_i_13_n_3,mem_reg_1_0_2_i_14_n_3,mem_reg_1_0_2_i_15_n_3,mem_reg_1_0_2_i_16_n_3,mem_reg_1_0_2_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_2_0_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_2_0_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_2_0_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[18]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_2_0_2_DOADO_UNCONNECTED[31:1],q1[18]}),
        .DOBDO({NLW_mem_reg_2_0_2_DOBDO_UNCONNECTED[31:1],q0[18]}),
        .DOPADOP(NLW_mem_reg_2_0_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_0_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_0_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_1_0_2_i_1_n_3),
        .ENBWREN(mem_reg_2_0_3_0),
        .INJECTDBITERR(NLW_mem_reg_2_0_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_0_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_0_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_0_2_SBITERR_UNCONNECTED),
        .WEA({mem_reg_2_0_2_i_1_n_3,mem_reg_2_0_2_i_1_n_3,mem_reg_2_0_0_i_1_n_3,mem_reg_2_0_0_i_1_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    mem_reg_2_0_2_i_1
       (.I0(s_axi_control_WVALID),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(ar_hs__0),
        .I4(mem_reg_3_0_2_0),
        .I5(s_axi_control_WSTRB[2]),
        .O(mem_reg_2_0_2_i_1_n_3));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_2_0_3
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_3_n_3,mem_reg_1_0_2_i_4_n_3,mem_reg_1_0_2_i_5_n_3,mem_reg_1_0_2_i_6_n_3,mem_reg_1_0_2_i_7_n_3,mem_reg_1_0_2_i_8_n_3,mem_reg_1_0_2_i_9_n_3,mem_reg_1_0_2_i_10_n_3,mem_reg_1_0_2_i_11_n_3,mem_reg_1_0_2_i_12_n_3,mem_reg_1_0_2_i_13_n_3,mem_reg_1_0_2_i_14_n_3,mem_reg_1_0_2_i_15_n_3,mem_reg_1_0_2_i_16_n_3,mem_reg_1_0_2_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_2_0_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_2_0_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_2_0_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[19]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_2_0_3_DOADO_UNCONNECTED[31:1],q1[19]}),
        .DOBDO({NLW_mem_reg_2_0_3_DOBDO_UNCONNECTED[31:1],q0[19]}),
        .DOPADOP(NLW_mem_reg_2_0_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_0_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_0_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_1_0_2_i_1_n_3),
        .ENBWREN(mem_reg_2_0_3_0),
        .INJECTDBITERR(NLW_mem_reg_2_0_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_0_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_0_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_0_3_SBITERR_UNCONNECTED),
        .WEA({mem_reg_2_0_2_i_1_n_3,mem_reg_2_0_2_i_1_n_3,mem_reg_2_0_2_i_1_n_3,mem_reg_2_0_2_i_1_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_2_0_4
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_3_n_3,mem_reg_2_0_4_i_4_n_3,mem_reg_2_0_4_i_5_n_3,mem_reg_2_0_4_i_6_n_3,mem_reg_2_0_4_i_7_n_3,mem_reg_2_0_4_i_8_n_3,mem_reg_2_0_4_i_9_n_3,mem_reg_2_0_4_i_10_n_3,mem_reg_2_0_4_i_11_n_3,mem_reg_2_0_4_i_12_n_3,mem_reg_2_0_4_i_13_n_3,mem_reg_2_0_4_i_14_n_3,mem_reg_2_0_4_i_15_n_3,mem_reg_2_0_4_i_16_n_3,mem_reg_2_0_4_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_2_0_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_2_0_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_2_0_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[20]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_2_0_4_DOADO_UNCONNECTED[31:1],q1[20]}),
        .DOBDO({NLW_mem_reg_2_0_4_DOBDO_UNCONNECTED[31:1],q0[20]}),
        .DOPADOP(NLW_mem_reg_2_0_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_0_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_0_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_2_0_4_i_1_n_3),
        .ENBWREN(mem_reg_3_0_5_0),
        .INJECTDBITERR(NLW_mem_reg_2_0_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_0_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_0_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_0_4_SBITERR_UNCONNECTED),
        .WEA({mem_reg_2_0_2_i_1_n_3,mem_reg_2_0_2_i_1_n_3,mem_reg_2_0_2_i_1_n_3,mem_reg_2_0_2_i_1_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h888888F8)) 
    mem_reg_2_0_4_i_1
       (.I0(s_axi_control_WVALID),
        .I1(mem_reg_3_0_2_0),
        .I2(s_axi_control_ARVALID),
        .I3(rstate[0]),
        .I4(rstate[1]),
        .O(mem_reg_2_0_4_i_1_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_2_0_4_i_10
       (.I0(s_axi_control_ARADDR[7]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[7]),
        .O(mem_reg_2_0_4_i_10_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_2_0_4_i_11
       (.I0(s_axi_control_ARADDR[6]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[6]),
        .O(mem_reg_2_0_4_i_11_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_2_0_4_i_12
       (.I0(s_axi_control_ARADDR[5]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[5]),
        .O(mem_reg_2_0_4_i_12_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_2_0_4_i_13
       (.I0(s_axi_control_ARADDR[4]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[4]),
        .O(mem_reg_2_0_4_i_13_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_2_0_4_i_14
       (.I0(s_axi_control_ARADDR[3]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[3]),
        .O(mem_reg_2_0_4_i_14_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_2_0_4_i_15
       (.I0(s_axi_control_ARADDR[2]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[2]),
        .O(mem_reg_2_0_4_i_15_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_2_0_4_i_16
       (.I0(s_axi_control_ARADDR[1]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[1]),
        .O(mem_reg_2_0_4_i_16_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_2_0_4_i_17
       (.I0(s_axi_control_ARADDR[0]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[0]),
        .O(mem_reg_2_0_4_i_17_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_2_0_4_i_3
       (.I0(s_axi_control_ARADDR[14]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[14]),
        .O(mem_reg_2_0_4_i_3_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_2_0_4_i_4
       (.I0(s_axi_control_ARADDR[13]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[13]),
        .O(mem_reg_2_0_4_i_4_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_2_0_4_i_5
       (.I0(s_axi_control_ARADDR[12]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[12]),
        .O(mem_reg_2_0_4_i_5_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_2_0_4_i_6
       (.I0(s_axi_control_ARADDR[11]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[11]),
        .O(mem_reg_2_0_4_i_6_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_2_0_4_i_7
       (.I0(s_axi_control_ARADDR[10]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[10]),
        .O(mem_reg_2_0_4_i_7_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_2_0_4_i_8
       (.I0(s_axi_control_ARADDR[9]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[9]),
        .O(mem_reg_2_0_4_i_8_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_2_0_4_i_9
       (.I0(s_axi_control_ARADDR[8]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[8]),
        .O(mem_reg_2_0_4_i_9_n_3));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_2_0_5
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_3_n_3,mem_reg_2_0_4_i_4_n_3,mem_reg_2_0_4_i_5_n_3,mem_reg_2_0_4_i_6_n_3,mem_reg_2_0_4_i_7_n_3,mem_reg_2_0_4_i_8_n_3,mem_reg_2_0_4_i_9_n_3,mem_reg_2_0_4_i_10_n_3,mem_reg_2_0_4_i_11_n_3,mem_reg_2_0_4_i_12_n_3,mem_reg_2_0_4_i_13_n_3,mem_reg_2_0_4_i_14_n_3,mem_reg_2_0_4_i_15_n_3,mem_reg_2_0_4_i_16_n_3,mem_reg_2_0_4_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_2_0_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_2_0_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_2_0_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[21]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_2_0_5_DOADO_UNCONNECTED[31:1],q1[21]}),
        .DOBDO({NLW_mem_reg_2_0_5_DOBDO_UNCONNECTED[31:1],q0[21]}),
        .DOPADOP(NLW_mem_reg_2_0_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_0_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_0_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_2_0_4_i_1_n_3),
        .ENBWREN(mem_reg_3_0_5_0),
        .INJECTDBITERR(NLW_mem_reg_2_0_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_0_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_0_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_0_5_SBITERR_UNCONNECTED),
        .WEA({mem_reg_2_0_5_i_1_n_3,mem_reg_2_0_5_i_1_n_3,mem_reg_2_0_5_i_1_n_3,mem_reg_2_0_5_i_1_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    mem_reg_2_0_5_i_1
       (.I0(s_axi_control_WVALID),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(ar_hs__0),
        .I4(mem_reg_3_0_2_0),
        .I5(s_axi_control_WSTRB[2]),
        .O(mem_reg_2_0_5_i_1_n_3));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_2_0_6
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_3_n_3,mem_reg_2_0_4_i_4_n_3,mem_reg_2_0_4_i_5_n_3,mem_reg_2_0_4_i_6_n_3,mem_reg_2_0_4_i_7_n_3,mem_reg_2_0_4_i_8_n_3,mem_reg_2_0_4_i_9_n_3,mem_reg_2_0_4_i_10_n_3,mem_reg_2_0_4_i_11_n_3,mem_reg_2_0_4_i_12_n_3,mem_reg_2_0_4_i_13_n_3,mem_reg_2_0_4_i_14_n_3,mem_reg_2_0_4_i_15_n_3,mem_reg_2_0_4_i_16_n_3,mem_reg_2_0_4_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_2_0_6_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_2_0_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_2_0_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[22]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_2_0_6_DOADO_UNCONNECTED[31:1],q1[22]}),
        .DOBDO({NLW_mem_reg_2_0_6_DOBDO_UNCONNECTED[31:1],q0[22]}),
        .DOPADOP(NLW_mem_reg_2_0_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_0_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_0_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_2_0_4_i_1_n_3),
        .ENBWREN(mem_reg_3_0_5_0),
        .INJECTDBITERR(NLW_mem_reg_2_0_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_0_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_0_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_0_6_SBITERR_UNCONNECTED),
        .WEA({mem_reg_2_0_5_i_1_n_3,mem_reg_2_0_5_i_1_n_3,mem_reg_2_0_5_i_1_n_3,mem_reg_2_0_5_i_1_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_2_0_7
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_3_n_3,mem_reg_2_0_4_i_4_n_3,mem_reg_2_0_4_i_5_n_3,mem_reg_2_0_4_i_6_n_3,mem_reg_2_0_4_i_7_n_3,mem_reg_2_0_4_i_8_n_3,mem_reg_2_0_4_i_9_n_3,mem_reg_2_0_4_i_10_n_3,mem_reg_2_0_4_i_11_n_3,mem_reg_2_0_4_i_12_n_3,mem_reg_2_0_4_i_13_n_3,mem_reg_2_0_4_i_14_n_3,mem_reg_2_0_4_i_15_n_3,mem_reg_2_0_4_i_16_n_3,mem_reg_2_0_4_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_2_0_7_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_2_0_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_2_0_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[23]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_2_0_7_DOADO_UNCONNECTED[31:1],q1[23]}),
        .DOBDO({NLW_mem_reg_2_0_7_DOBDO_UNCONNECTED[31:1],q0[23]}),
        .DOPADOP(NLW_mem_reg_2_0_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_0_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_0_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_2_0_4_i_1_n_3),
        .ENBWREN(mem_reg_3_0_5_0),
        .INJECTDBITERR(NLW_mem_reg_2_0_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_0_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_0_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_0_7_SBITERR_UNCONNECTED),
        .WEA({mem_reg_2_0_7_i_1_n_3,mem_reg_2_0_7_i_1_n_3,mem_reg_2_0_5_i_1_n_3,mem_reg_2_0_5_i_1_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    mem_reg_2_0_7_i_1
       (.I0(s_axi_control_WVALID),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(ar_hs__0),
        .I4(mem_reg_3_0_2_0),
        .I5(s_axi_control_WSTRB[2]),
        .O(mem_reg_2_0_7_i_1_n_3));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_3_0_0
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_3_n_3,mem_reg_2_0_4_i_4_n_3,mem_reg_2_0_4_i_5_n_3,mem_reg_2_0_4_i_6_n_3,mem_reg_2_0_4_i_7_n_3,mem_reg_2_0_4_i_8_n_3,mem_reg_2_0_4_i_9_n_3,mem_reg_2_0_4_i_10_n_3,mem_reg_2_0_4_i_11_n_3,mem_reg_2_0_4_i_12_n_3,mem_reg_2_0_4_i_13_n_3,mem_reg_2_0_4_i_14_n_3,mem_reg_2_0_4_i_15_n_3,mem_reg_2_0_4_i_16_n_3,mem_reg_2_0_4_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_3_0_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_3_0_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_0_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_1_in[24]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_3_0_0_DOADO_UNCONNECTED[31:1],q1[24]}),
        .DOBDO({NLW_mem_reg_3_0_0_DOBDO_UNCONNECTED[31:1],q0[24]}),
        .DOPADOP(NLW_mem_reg_3_0_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_0_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_0_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_2_0_4_i_1_n_3),
        .ENBWREN(mem_reg_3_0_5_0),
        .INJECTDBITERR(NLW_mem_reg_3_0_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_0_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_0_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_0_0_SBITERR_UNCONNECTED),
        .WEA({mem_reg_3_0_0_i_2_n_3,mem_reg_3_0_0_i_2_n_3,mem_reg_3_0_0_i_2_n_3,mem_reg_3_0_0_i_2_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_0_0_i_1
       (.I0(int_weights_be1),
        .I1(s_axi_control_WDATA[24]),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    mem_reg_3_0_0_i_2
       (.I0(s_axi_control_WVALID),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(ar_hs__0),
        .I4(mem_reg_3_0_2_0),
        .I5(s_axi_control_WSTRB[3]),
        .O(mem_reg_3_0_0_i_2_n_3));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    mem_reg_3_0_0_i_3
       (.I0(s_axi_control_WVALID),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(ar_hs__0),
        .I4(mem_reg_3_0_2_0),
        .I5(s_axi_control_WSTRB[3]),
        .O(int_weights_be1));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_3_0_1
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_3_n_3,mem_reg_2_0_4_i_4_n_3,mem_reg_2_0_4_i_5_n_3,mem_reg_2_0_4_i_6_n_3,mem_reg_2_0_4_i_7_n_3,mem_reg_2_0_4_i_8_n_3,mem_reg_2_0_4_i_9_n_3,mem_reg_2_0_4_i_10_n_3,mem_reg_2_0_4_i_11_n_3,mem_reg_2_0_4_i_12_n_3,mem_reg_2_0_4_i_13_n_3,mem_reg_2_0_4_i_14_n_3,mem_reg_2_0_4_i_15_n_3,mem_reg_2_0_4_i_16_n_3,mem_reg_2_0_4_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_3_0_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_3_0_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_0_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_1_in[25]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_3_0_1_DOADO_UNCONNECTED[31:1],q1[25]}),
        .DOBDO({NLW_mem_reg_3_0_1_DOBDO_UNCONNECTED[31:1],q0[25]}),
        .DOPADOP(NLW_mem_reg_3_0_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_0_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_0_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_2_0_4_i_1_n_3),
        .ENBWREN(mem_reg_3_0_5_0),
        .INJECTDBITERR(NLW_mem_reg_3_0_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_0_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_0_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_0_1_SBITERR_UNCONNECTED),
        .WEA({mem_reg_3_0_0_i_2_n_3,mem_reg_3_0_0_i_2_n_3,mem_reg_3_0_0_i_2_n_3,mem_reg_3_0_0_i_2_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_0_1_i_1
       (.I0(int_weights_be1),
        .I1(s_axi_control_WDATA[25]),
        .O(p_1_in[25]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_3_0_2
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_3_n_3,mem_reg_2_0_4_i_4_n_3,mem_reg_2_0_4_i_5_n_3,mem_reg_2_0_4_i_6_n_3,mem_reg_2_0_4_i_7_n_3,mem_reg_2_0_4_i_8_n_3,mem_reg_2_0_4_i_9_n_3,mem_reg_2_0_4_i_10_n_3,mem_reg_2_0_4_i_11_n_3,mem_reg_2_0_4_i_12_n_3,mem_reg_2_0_4_i_13_n_3,mem_reg_2_0_4_i_14_n_3,mem_reg_2_0_4_i_15_n_3,mem_reg_2_0_4_i_16_n_3,mem_reg_2_0_4_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_3_0_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_3_0_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_0_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_1_in[26]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_3_0_2_DOADO_UNCONNECTED[31:1],q1[26]}),
        .DOBDO({NLW_mem_reg_3_0_2_DOBDO_UNCONNECTED[31:1],q0[26]}),
        .DOPADOP(NLW_mem_reg_3_0_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_0_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_0_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_2_0_4_i_1_n_3),
        .ENBWREN(mem_reg_3_0_5_0),
        .INJECTDBITERR(NLW_mem_reg_3_0_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_0_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_0_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_0_2_SBITERR_UNCONNECTED),
        .WEA({mem_reg_3_0_2_i_2_n_3,mem_reg_3_0_2_i_2_n_3,mem_reg_3_0_0_i_2_n_3,mem_reg_3_0_0_i_2_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_0_2_i_1
       (.I0(int_weights_be1),
        .I1(s_axi_control_WDATA[26]),
        .O(p_1_in[26]));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    mem_reg_3_0_2_i_2
       (.I0(s_axi_control_WVALID),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(ar_hs__0),
        .I4(mem_reg_3_0_2_0),
        .I5(s_axi_control_WSTRB[3]),
        .O(mem_reg_3_0_2_i_2_n_3));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_3_0_3
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_3_n_3,mem_reg_2_0_4_i_4_n_3,mem_reg_2_0_4_i_5_n_3,mem_reg_2_0_4_i_6_n_3,mem_reg_2_0_4_i_7_n_3,mem_reg_2_0_4_i_8_n_3,mem_reg_2_0_4_i_9_n_3,mem_reg_2_0_4_i_10_n_3,mem_reg_2_0_4_i_11_n_3,mem_reg_2_0_4_i_12_n_3,mem_reg_2_0_4_i_13_n_3,mem_reg_2_0_4_i_14_n_3,mem_reg_2_0_4_i_15_n_3,mem_reg_2_0_4_i_16_n_3,mem_reg_2_0_4_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_3_0_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_3_0_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_0_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_1_in[27]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_3_0_3_DOADO_UNCONNECTED[31:1],q1[27]}),
        .DOBDO({NLW_mem_reg_3_0_3_DOBDO_UNCONNECTED[31:1],q0[27]}),
        .DOPADOP(NLW_mem_reg_3_0_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_0_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_0_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_2_0_4_i_1_n_3),
        .ENBWREN(mem_reg_3_0_5_0),
        .INJECTDBITERR(NLW_mem_reg_3_0_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_0_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_0_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_0_3_SBITERR_UNCONNECTED),
        .WEA({mem_reg_3_0_2_i_2_n_3,mem_reg_3_0_2_i_2_n_3,mem_reg_3_0_2_i_2_n_3,mem_reg_3_0_2_i_2_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_0_3_i_1
       (.I0(int_weights_be1),
        .I1(s_axi_control_WDATA[27]),
        .O(p_1_in[27]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_3_0_4
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_3_n_3,mem_reg_2_0_4_i_4_n_3,mem_reg_2_0_4_i_5_n_3,mem_reg_2_0_4_i_6_n_3,mem_reg_2_0_4_i_7_n_3,mem_reg_2_0_4_i_8_n_3,mem_reg_2_0_4_i_9_n_3,mem_reg_2_0_4_i_10_n_3,mem_reg_2_0_4_i_11_n_3,mem_reg_2_0_4_i_12_n_3,mem_reg_2_0_4_i_13_n_3,mem_reg_2_0_4_i_14_n_3,mem_reg_2_0_4_i_15_n_3,mem_reg_2_0_4_i_16_n_3,mem_reg_2_0_4_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_3_0_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_3_0_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_0_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_1_in[28]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_3_0_4_DOADO_UNCONNECTED[31:1],q1[28]}),
        .DOBDO({NLW_mem_reg_3_0_4_DOBDO_UNCONNECTED[31:1],q0[28]}),
        .DOPADOP(NLW_mem_reg_3_0_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_0_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_0_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_2_0_4_i_1_n_3),
        .ENBWREN(mem_reg_3_0_5_0),
        .INJECTDBITERR(NLW_mem_reg_3_0_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_0_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_0_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_0_4_SBITERR_UNCONNECTED),
        .WEA({mem_reg_3_0_2_i_2_n_3,mem_reg_3_0_2_i_2_n_3,mem_reg_3_0_2_i_2_n_3,mem_reg_3_0_2_i_2_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_0_4_i_1
       (.I0(int_weights_be1),
        .I1(s_axi_control_WDATA[28]),
        .O(p_1_in[28]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_3_0_5
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_3_n_3,mem_reg_2_0_4_i_4_n_3,mem_reg_2_0_4_i_5_n_3,mem_reg_2_0_4_i_6_n_3,mem_reg_2_0_4_i_7_n_3,mem_reg_2_0_4_i_8_n_3,mem_reg_2_0_4_i_9_n_3,mem_reg_2_0_4_i_10_n_3,mem_reg_2_0_4_i_11_n_3,mem_reg_2_0_4_i_12_n_3,mem_reg_2_0_4_i_13_n_3,mem_reg_2_0_4_i_14_n_3,mem_reg_2_0_4_i_15_n_3,mem_reg_2_0_4_i_16_n_3,mem_reg_2_0_4_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_3_0_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_3_0_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_0_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_1_in[29]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_3_0_5_DOADO_UNCONNECTED[31:1],q1[29]}),
        .DOBDO({NLW_mem_reg_3_0_5_DOBDO_UNCONNECTED[31:1],q0[29]}),
        .DOPADOP(NLW_mem_reg_3_0_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_0_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_0_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_2_0_4_i_1_n_3),
        .ENBWREN(mem_reg_3_0_5_0),
        .INJECTDBITERR(NLW_mem_reg_3_0_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_0_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_0_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_0_5_SBITERR_UNCONNECTED),
        .WEA({mem_reg_3_0_5_i_2_n_3,mem_reg_3_0_5_i_2_n_3,mem_reg_3_0_5_i_2_n_3,mem_reg_3_0_5_i_2_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_0_5_i_1
       (.I0(int_weights_be1),
        .I1(s_axi_control_WDATA[29]),
        .O(p_1_in[29]));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    mem_reg_3_0_5_i_2
       (.I0(s_axi_control_WVALID),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(ar_hs__0),
        .I4(mem_reg_3_0_2_0),
        .I5(s_axi_control_WSTRB[3]),
        .O(mem_reg_3_0_5_i_2_n_3));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_3_0_6
       (.ADDRARDADDR({1'b1,mem_reg_3_0_6_i_3_n_3,mem_reg_3_0_6_i_4_n_3,mem_reg_3_0_6_i_5_n_3,mem_reg_3_0_6_i_6_n_3,mem_reg_3_0_6_i_7_n_3,mem_reg_3_0_6_i_8_n_3,mem_reg_3_0_6_i_9_n_3,mem_reg_3_0_6_i_10_n_3,mem_reg_3_0_6_i_11_n_3,mem_reg_3_0_6_i_12_n_3,mem_reg_3_0_6_i_13_n_3,mem_reg_3_0_6_i_14_n_3,mem_reg_3_0_6_i_15_n_3,mem_reg_3_0_6_i_16_n_3,mem_reg_3_0_6_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_3_0_6_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_3_0_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_0_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_1_in[30]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_3_0_6_DOADO_UNCONNECTED[31:1],q1[30]}),
        .DOBDO({NLW_mem_reg_3_0_6_DOBDO_UNCONNECTED[31:1],q0[30]}),
        .DOPADOP(NLW_mem_reg_3_0_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_0_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_0_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_3_0_6_i_1_n_3),
        .ENBWREN(ce0),
        .INJECTDBITERR(NLW_mem_reg_3_0_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_0_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_0_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_0_6_SBITERR_UNCONNECTED),
        .WEA({mem_reg_3_0_5_i_2_n_3,mem_reg_3_0_5_i_2_n_3,mem_reg_3_0_5_i_2_n_3,mem_reg_3_0_5_i_2_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h888888F8)) 
    mem_reg_3_0_6_i_1
       (.I0(s_axi_control_WVALID),
        .I1(mem_reg_3_0_2_0),
        .I2(s_axi_control_ARVALID),
        .I3(rstate[0]),
        .I4(rstate[1]),
        .O(mem_reg_3_0_6_i_1_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_3_0_6_i_10
       (.I0(s_axi_control_ARADDR[7]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[7]),
        .O(mem_reg_3_0_6_i_10_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_3_0_6_i_11
       (.I0(s_axi_control_ARADDR[6]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[6]),
        .O(mem_reg_3_0_6_i_11_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_3_0_6_i_12
       (.I0(s_axi_control_ARADDR[5]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[5]),
        .O(mem_reg_3_0_6_i_12_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_3_0_6_i_13
       (.I0(s_axi_control_ARADDR[4]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[4]),
        .O(mem_reg_3_0_6_i_13_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_3_0_6_i_14
       (.I0(s_axi_control_ARADDR[3]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[3]),
        .O(mem_reg_3_0_6_i_14_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_3_0_6_i_15
       (.I0(s_axi_control_ARADDR[2]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[2]),
        .O(mem_reg_3_0_6_i_15_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_3_0_6_i_16
       (.I0(s_axi_control_ARADDR[1]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[1]),
        .O(mem_reg_3_0_6_i_16_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_3_0_6_i_17
       (.I0(s_axi_control_ARADDR[0]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[0]),
        .O(mem_reg_3_0_6_i_17_n_3));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_0_6_i_18
       (.I0(int_weights_be1),
        .I1(s_axi_control_WDATA[30]),
        .O(p_1_in[30]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_3_0_6_i_3
       (.I0(s_axi_control_ARADDR[14]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[14]),
        .O(mem_reg_3_0_6_i_3_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_3_0_6_i_4
       (.I0(s_axi_control_ARADDR[13]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[13]),
        .O(mem_reg_3_0_6_i_4_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_3_0_6_i_5
       (.I0(s_axi_control_ARADDR[12]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[12]),
        .O(mem_reg_3_0_6_i_5_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_3_0_6_i_6
       (.I0(s_axi_control_ARADDR[11]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[11]),
        .O(mem_reg_3_0_6_i_6_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_3_0_6_i_7
       (.I0(s_axi_control_ARADDR[10]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[10]),
        .O(mem_reg_3_0_6_i_7_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_3_0_6_i_8
       (.I0(s_axi_control_ARADDR[9]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[9]),
        .O(mem_reg_3_0_6_i_8_n_3));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_3_0_6_i_9
       (.I0(s_axi_control_ARADDR[8]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[8]),
        .O(mem_reg_3_0_6_i_9_n_3));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (15) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_3_0_7
       (.ADDRARDADDR({1'b1,mem_reg_3_0_6_i_3_n_3,mem_reg_3_0_6_i_4_n_3,mem_reg_3_0_6_i_5_n_3,mem_reg_3_0_6_i_6_n_3,mem_reg_3_0_6_i_7_n_3,mem_reg_3_0_6_i_8_n_3,mem_reg_3_0_6_i_9_n_3,mem_reg_3_0_6_i_10_n_3,mem_reg_3_0_6_i_11_n_3,mem_reg_3_0_6_i_12_n_3,mem_reg_3_0_6_i_13_n_3,mem_reg_3_0_6_i_14_n_3,mem_reg_3_0_6_i_15_n_3,mem_reg_3_0_6_i_16_n_3,mem_reg_3_0_6_i_17_n_3}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_3_0_7_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_3_0_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_0_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_1_in[31]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_3_0_7_DOADO_UNCONNECTED[31:1],q1[31]}),
        .DOBDO({NLW_mem_reg_3_0_7_DOBDO_UNCONNECTED[31:1],q0[31]}),
        .DOPADOP(NLW_mem_reg_3_0_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_0_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_0_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_3_0_6_i_1_n_3),
        .ENBWREN(ce0),
        .INJECTDBITERR(NLW_mem_reg_3_0_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_0_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_0_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_0_7_SBITERR_UNCONNECTED),
        .WEA({mem_reg_3_0_7_i_2_n_3,mem_reg_3_0_7_i_2_n_3,mem_reg_3_0_5_i_2_n_3,mem_reg_3_0_5_i_2_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_0_7_i_1
       (.I0(int_weights_be1),
        .I1(s_axi_control_WDATA[31]),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    mem_reg_3_0_7_i_2
       (.I0(s_axi_control_WVALID),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(ar_hs__0),
        .I4(mem_reg_3_0_2_0),
        .I5(s_axi_control_WSTRB[3]),
        .O(mem_reg_3_0_7_i_2_n_3));
  LUT3 #(
    .INIT(8'h10)) 
    \rdata[6]_i_5 
       (.I0(rstate[1]),
        .I1(rstate[0]),
        .I2(s_axi_control_ARVALID),
        .O(ar_hs__0));
endmodule

(* ORIG_REF_NAME = "nnlayer_flow_control_loop_pipe_sequential_init" *) 
module design_1_nnlayer_0_0_nnlayer_flow_control_loop_pipe_sequential_init
   (\ap_CS_fsm_reg[6] ,
    inNeurons_fu_740,
    SR,
    ap_clk,
    ap_rst_n,
    Q,
    ap_loop_exit_ready_pp0_iter1_reg,
    \ap_CS_fsm_reg[6]_0 ,
    grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg,
    \ap_CS_fsm_reg[7] ,
    ap_done,
    ap_enable_reg_pp0_iter0_reg);
  output [2:0]\ap_CS_fsm_reg[6] ;
  output inNeurons_fu_740;
  input [0:0]SR;
  input ap_clk;
  input ap_rst_n;
  input [1:0]Q;
  input ap_loop_exit_ready_pp0_iter1_reg;
  input \ap_CS_fsm_reg[6]_0 ;
  input grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg;
  input [3:0]\ap_CS_fsm_reg[7] ;
  input ap_done;
  input ap_enable_reg_pp0_iter0_reg;

  wire [1:0]Q;
  wire [0:0]SR;
  wire [2:0]\ap_CS_fsm_reg[6] ;
  wire \ap_CS_fsm_reg[6]_0 ;
  wire [3:0]\ap_CS_fsm_reg[7] ;
  wire ap_NS_fsm12_out;
  wire ap_clk;
  wire ap_done;
  wire ap_done_cache;
  wire ap_done_cache_i_1__0_n_3;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__0_n_3;
  wire ap_loop_init_int_i_2__0_n_3;
  wire ap_rst_n;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg;
  wire inNeurons_fu_740;

  LUT6 #(
    .INIT(64'hFFFFFFFF70007070)) 
    \ap_CS_fsm[5]_i_1 
       (.I0(ap_loop_exit_ready_pp0_iter1_reg),
        .I1(Q[1]),
        .I2(\ap_CS_fsm_reg[7] [1]),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg),
        .I4(ap_done_cache),
        .I5(\ap_CS_fsm_reg[7] [0]),
        .O(\ap_CS_fsm_reg[6] [0]));
  LUT6 #(
    .INIT(64'hAA00080008000800)) 
    \ap_CS_fsm[6]_i_1 
       (.I0(\ap_CS_fsm_reg[6]_0 ),
        .I1(ap_done_cache),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg),
        .I3(\ap_CS_fsm_reg[7] [1]),
        .I4(ap_loop_exit_ready_pp0_iter1_reg),
        .I5(Q[1]),
        .O(\ap_CS_fsm_reg[6] [1]));
  LUT5 #(
    .INIT(32'hEAFFEAEA)) 
    \ap_CS_fsm[7]_i_1 
       (.I0(\ap_CS_fsm_reg[7] [2]),
        .I1(\ap_CS_fsm_reg[7] [1]),
        .I2(ap_NS_fsm12_out),
        .I3(ap_done),
        .I4(\ap_CS_fsm_reg[7] [3]),
        .O(\ap_CS_fsm_reg[6] [2]));
  LUT6 #(
    .INIT(64'h0000000080F08080)) 
    \ap_CS_fsm[7]_i_2 
       (.I0(Q[1]),
        .I1(ap_loop_exit_ready_pp0_iter1_reg),
        .I2(\ap_CS_fsm_reg[7] [1]),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg),
        .I4(ap_done_cache),
        .I5(\ap_CS_fsm_reg[6]_0 ),
        .O(ap_NS_fsm12_out));
  LUT4 #(
    .INIT(16'h8F88)) 
    ap_done_cache_i_1__0
       (.I0(Q[1]),
        .I1(ap_loop_exit_ready_pp0_iter1_reg),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg),
        .I3(ap_done_cache),
        .O(ap_done_cache_i_1__0_n_3));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__0_n_3),
        .Q(ap_done_cache),
        .R(SR));
  LUT5 #(
    .INIT(32'hFF5D5D5D)) 
    ap_loop_init_int_i_1__0
       (.I0(ap_rst_n),
        .I1(ap_loop_init_int),
        .I2(ap_loop_init_int_i_2__0_n_3),
        .I3(Q[1]),
        .I4(ap_loop_exit_ready_pp0_iter1_reg),
        .O(ap_loop_init_int_i_1__0_n_3));
  LUT4 #(
    .INIT(16'hE200)) 
    ap_loop_init_int_i_2__0
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(Q[0]),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg),
        .I3(Q[1]),
        .O(ap_loop_init_int_i_2__0_n_3));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__0_n_3),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \outNeurons_fu_70[15]_i_1 
       (.I0(Q[0]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(inNeurons_fu_740));
endmodule

(* ORIG_REF_NAME = "nnlayer_flow_control_loop_pipe_sequential_init" *) 
module design_1_nnlayer_0_0_nnlayer_flow_control_loop_pipe_sequential_init_0
   (ap_rst_n_0,
    grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg_reg,
    ap_NS_fsm1,
    ap_loop_init_int_reg_0,
    E,
    icmp_ln33_fu_87_p2_carry__0,
    S,
    D,
    ap_sig_allocacmp_outNeurons_2,
    \numOfOutNeurons_read_reg_136_reg[15] ,
    ap_loop_init_int_reg_1,
    \outNeurons_fu_42_reg[4] ,
    \outNeurons_fu_42_reg[7] ,
    \outNeurons_fu_42_reg[0] ,
    SR,
    ap_clk,
    ap_rst_n,
    CO,
    grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg,
    ap_start,
    Q,
    \outNeurons_fu_42_reg[15] ,
    icmp_ln33_fu_87_p2_carry__0_0,
    \int_bias_shift0_reg[0] );
  output ap_rst_n_0;
  output [1:0]grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg_reg;
  output ap_NS_fsm1;
  output [0:0]ap_loop_init_int_reg_0;
  output [0:0]E;
  output [0:0]icmp_ln33_fu_87_p2_carry__0;
  output [3:0]S;
  output [7:0]D;
  output [7:0]ap_sig_allocacmp_outNeurons_2;
  output [1:0]\numOfOutNeurons_read_reg_136_reg[15] ;
  output [0:0]ap_loop_init_int_reg_1;
  output [3:0]\outNeurons_fu_42_reg[4] ;
  output [2:0]\outNeurons_fu_42_reg[7] ;
  output \outNeurons_fu_42_reg[0] ;
  input [0:0]SR;
  input ap_clk;
  input ap_rst_n;
  input [0:0]CO;
  input grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg;
  input ap_start;
  input [1:0]Q;
  input [15:0]\outNeurons_fu_42_reg[15] ;
  input [15:0]icmp_ln33_fu_87_p2_carry__0_0;
  input \int_bias_shift0_reg[0] ;

  wire [0:0]CO;
  wire [7:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1_n_3;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1_n_3;
  wire [0:0]ap_loop_init_int_reg_0;
  wire [0:0]ap_loop_init_int_reg_1;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire [7:0]ap_sig_allocacmp_outNeurons_2;
  wire ap_start;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg;
  wire [1:0]grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg_reg;
  wire [0:0]icmp_ln33_fu_87_p2_carry__0;
  wire [15:0]icmp_ln33_fu_87_p2_carry__0_0;
  wire icmp_ln33_fu_87_p2_carry__0_i_3_n_3;
  wire icmp_ln33_fu_87_p2_carry_i_5_n_3;
  wire icmp_ln33_fu_87_p2_carry_i_6_n_3;
  wire icmp_ln33_fu_87_p2_carry_i_7_n_3;
  wire icmp_ln33_fu_87_p2_carry_i_8_n_3;
  wire \int_bias_shift0_reg[0] ;
  wire [1:0]\numOfOutNeurons_read_reg_136_reg[15] ;
  wire \outNeurons_fu_42_reg[0] ;
  wire [15:0]\outNeurons_fu_42_reg[15] ;
  wire [3:0]\outNeurons_fu_42_reg[4] ;
  wire [2:0]\outNeurons_fu_42_reg[7] ;

  LUT6 #(
    .INIT(64'h88888F88FF888F88)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(ap_done_cache),
        .I3(Q[1]),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I5(CO),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hB080)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(CO),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(Q[1]),
        .I3(ap_done_cache),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ap_done_cache_i_1
       (.I0(CO),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(ap_done_cache),
        .O(ap_done_cache_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1_n_3),
        .Q(ap_done_cache),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h20)) 
    ap_enable_reg_pp0_iter1_i_1__1
       (.I0(ap_rst_n),
        .I1(CO),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .O(ap_rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hF5DD)) 
    ap_loop_init_int_i_1
       (.I0(ap_rst_n),
        .I1(ap_loop_init_int),
        .I2(CO),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .O(ap_loop_init_int_i_1_n_3));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1_n_3),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6A55)) 
    icmp_ln33_fu_87_p2_carry__0_i_1
       (.I0(icmp_ln33_fu_87_p2_carry__0_0[15]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I3(\outNeurons_fu_42_reg[15] [15]),
        .O(\numOfOutNeurons_read_reg_136_reg[15] [1]));
  LUT5 #(
    .INIT(32'h2A0080AA)) 
    icmp_ln33_fu_87_p2_carry__0_i_2
       (.I0(icmp_ln33_fu_87_p2_carry__0_i_3_n_3),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I3(\outNeurons_fu_42_reg[15] [14]),
        .I4(icmp_ln33_fu_87_p2_carry__0_0[14]),
        .O(\numOfOutNeurons_read_reg_136_reg[15] [0]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln33_fu_87_p2_carry__0_i_3
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(\outNeurons_fu_42_reg[15] [12]),
        .I3(icmp_ln33_fu_87_p2_carry__0_0[12]),
        .I4(\outNeurons_fu_42_reg[15] [13]),
        .I5(icmp_ln33_fu_87_p2_carry__0_0[13]),
        .O(icmp_ln33_fu_87_p2_carry__0_i_3_n_3));
  LUT5 #(
    .INIT(32'h2A0080AA)) 
    icmp_ln33_fu_87_p2_carry_i_1
       (.I0(icmp_ln33_fu_87_p2_carry_i_5_n_3),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I3(\outNeurons_fu_42_reg[15] [11]),
        .I4(icmp_ln33_fu_87_p2_carry__0_0[11]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h2A0080AA)) 
    icmp_ln33_fu_87_p2_carry_i_2
       (.I0(icmp_ln33_fu_87_p2_carry_i_6_n_3),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I3(\outNeurons_fu_42_reg[15] [8]),
        .I4(icmp_ln33_fu_87_p2_carry__0_0[8]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h2A0080AA)) 
    icmp_ln33_fu_87_p2_carry_i_3
       (.I0(icmp_ln33_fu_87_p2_carry_i_7_n_3),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I3(\outNeurons_fu_42_reg[15] [5]),
        .I4(icmp_ln33_fu_87_p2_carry__0_0[5]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h2A0080AA)) 
    icmp_ln33_fu_87_p2_carry_i_4
       (.I0(icmp_ln33_fu_87_p2_carry_i_8_n_3),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I3(\outNeurons_fu_42_reg[15] [2]),
        .I4(icmp_ln33_fu_87_p2_carry__0_0[2]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln33_fu_87_p2_carry_i_5
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(\outNeurons_fu_42_reg[15] [9]),
        .I3(icmp_ln33_fu_87_p2_carry__0_0[9]),
        .I4(\outNeurons_fu_42_reg[15] [10]),
        .I5(icmp_ln33_fu_87_p2_carry__0_0[10]),
        .O(icmp_ln33_fu_87_p2_carry_i_5_n_3));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln33_fu_87_p2_carry_i_6
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(\outNeurons_fu_42_reg[15] [6]),
        .I3(icmp_ln33_fu_87_p2_carry__0_0[6]),
        .I4(\outNeurons_fu_42_reg[15] [7]),
        .I5(icmp_ln33_fu_87_p2_carry__0_0[7]),
        .O(icmp_ln33_fu_87_p2_carry_i_6_n_3));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln33_fu_87_p2_carry_i_7
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(\outNeurons_fu_42_reg[15] [3]),
        .I3(icmp_ln33_fu_87_p2_carry__0_0[3]),
        .I4(\outNeurons_fu_42_reg[15] [4]),
        .I5(icmp_ln33_fu_87_p2_carry__0_0[4]),
        .O(icmp_ln33_fu_87_p2_carry_i_7_n_3));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln33_fu_87_p2_carry_i_8
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(\outNeurons_fu_42_reg[15] [0]),
        .I3(icmp_ln33_fu_87_p2_carry__0_0[0]),
        .I4(\outNeurons_fu_42_reg[15] [1]),
        .I5(icmp_ln33_fu_87_p2_carry__0_0[1]),
        .O(icmp_ln33_fu_87_p2_carry_i_8_n_3));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \int_bias_shift0[0]_i_1 
       (.I0(\outNeurons_fu_42_reg[15] [0]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I3(\int_bias_shift0_reg[0] ),
        .O(\outNeurons_fu_42_reg[0] ));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_10
       (.I0(\outNeurons_fu_42_reg[15] [6]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(D[6]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_11
       (.I0(\outNeurons_fu_42_reg[15] [5]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(D[5]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_12
       (.I0(\outNeurons_fu_42_reg[15] [4]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(D[4]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_13
       (.I0(\outNeurons_fu_42_reg[15] [3]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(D[3]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_14
       (.I0(\outNeurons_fu_42_reg[15] [2]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(D[2]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_15
       (.I0(\outNeurons_fu_42_reg[15] [1]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(D[1]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_9
       (.I0(\outNeurons_fu_42_reg[15] [7]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(D[7]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_3_fu_93_p2_carry__0_i_1
       (.I0(\outNeurons_fu_42_reg[15] [8]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_outNeurons_2[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_3_fu_93_p2_carry__0_i_2
       (.I0(\outNeurons_fu_42_reg[15] [7]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\outNeurons_fu_42_reg[7] [2]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_3_fu_93_p2_carry__0_i_3
       (.I0(\outNeurons_fu_42_reg[15] [6]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\outNeurons_fu_42_reg[7] [1]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_3_fu_93_p2_carry__0_i_4
       (.I0(\outNeurons_fu_42_reg[15] [5]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\outNeurons_fu_42_reg[7] [0]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_3_fu_93_p2_carry__1_i_1
       (.I0(\outNeurons_fu_42_reg[15] [12]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_outNeurons_2[4]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_3_fu_93_p2_carry__1_i_2
       (.I0(\outNeurons_fu_42_reg[15] [11]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_outNeurons_2[3]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_3_fu_93_p2_carry__1_i_3
       (.I0(\outNeurons_fu_42_reg[15] [10]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_outNeurons_2[2]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_3_fu_93_p2_carry__1_i_4
       (.I0(\outNeurons_fu_42_reg[15] [9]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_outNeurons_2[1]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_3_fu_93_p2_carry__2_i_1
       (.I0(\outNeurons_fu_42_reg[15] [15]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_outNeurons_2[7]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_3_fu_93_p2_carry__2_i_2
       (.I0(\outNeurons_fu_42_reg[15] [14]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_outNeurons_2[6]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_3_fu_93_p2_carry__2_i_3
       (.I0(\outNeurons_fu_42_reg[15] [13]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_outNeurons_2[5]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_3_fu_93_p2_carry_i_1
       (.I0(\outNeurons_fu_42_reg[15] [4]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\outNeurons_fu_42_reg[4] [3]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_3_fu_93_p2_carry_i_2
       (.I0(\outNeurons_fu_42_reg[15] [3]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\outNeurons_fu_42_reg[4] [2]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_3_fu_93_p2_carry_i_3
       (.I0(\outNeurons_fu_42_reg[15] [2]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\outNeurons_fu_42_reg[4] [1]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_3_fu_93_p2_carry_i_4
       (.I0(\outNeurons_fu_42_reg[15] [1]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\outNeurons_fu_42_reg[4] [0]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \outNeurons_fu_42[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\outNeurons_fu_42_reg[15] [0]),
        .O(ap_loop_init_int_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \outNeurons_fu_42[15]_i_1 
       (.I0(ap_loop_init_int),
        .I1(CO),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .O(ap_loop_init_int_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \outNeurons_fu_42[15]_i_2 
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I1(CO),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    p_reg_reg_i_2
       (.I0(ap_done_cache),
        .I1(Q[1]),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I3(CO),
        .O(ap_NS_fsm1));
  LUT3 #(
    .INIT(8'h2A)) 
    \zext_ln34_reg_119[0]_i_1 
       (.I0(\outNeurons_fu_42_reg[15] [0]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \zext_ln34_reg_119[7]_i_1 
       (.I0(CO),
        .O(icmp_ln33_fu_87_p2_carry__0));
endmodule

(* ORIG_REF_NAME = "nnlayer_flow_control_loop_pipe_sequential_init" *) 
module design_1_nnlayer_0_0_nnlayer_flow_control_loop_pipe_sequential_init_1
   (ADDRBWRADDR,
    WEBWE,
    DIBDI,
    ap_rst_n_0,
    int_isr10_out,
    int_isr7_out,
    ap_done,
    \i_fu_46_reg[7] ,
    E,
    \i_fu_46_reg[6] ,
    ap_loop_init_int_reg_0,
    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg_reg,
    \ap_CS_fsm_reg[1] ,
    \int_output_r_shift0_reg[0] ,
    \ap_CS_fsm_reg[0] ,
    \ap_CS_fsm_reg[6] ,
    SR,
    ap_clk,
    Q,
    \i_fu_46_reg[8] ,
    mem_reg,
    output_r_address01,
    mem_reg_0,
    mem_reg_1,
    mem_reg_2,
    mem_reg_3,
    mem_reg_4,
    mem_reg_5,
    mem_reg_6,
    mem_reg_7,
    D,
    \icmp_ln10_reg_109_reg[0] ,
    ap_ready_int,
    mem_reg_8,
    mem_reg_9,
    mem_reg_10,
    mem_reg_11,
    mem_reg_12,
    mem_reg_13,
    mem_reg_14,
    mem_reg_15,
    mem_reg_16,
    mem_reg_17,
    ap_rst_n,
    ap_enable_reg_pp0_iter0_reg,
    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg,
    \ap_CS_fsm_reg[7] ,
    \ap_CS_fsm_reg[7]_0 ,
    \int_isr_reg[1] ,
    ap_enable_reg_pp0_iter0,
    int_ap_start_i_2_0,
    ap_enable_reg_pp0_iter1,
    output_r_ce0,
    \int_output_r_shift0_reg[0]_0 );
  output [6:0]ADDRBWRADDR;
  output [1:0]WEBWE;
  output [7:0]DIBDI;
  output ap_rst_n_0;
  output int_isr10_out;
  output int_isr7_out;
  output ap_done;
  output [7:0]\i_fu_46_reg[7] ;
  output [0:0]E;
  output [8:0]\i_fu_46_reg[6] ;
  output [0:0]ap_loop_init_int_reg_0;
  output [0:0]grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg_reg;
  output [1:0]\ap_CS_fsm_reg[1] ;
  output \int_output_r_shift0_reg[0] ;
  output \ap_CS_fsm_reg[0] ;
  output \ap_CS_fsm_reg[6] ;
  input [0:0]SR;
  input ap_clk;
  input [1:0]Q;
  input [8:0]\i_fu_46_reg[8] ;
  input [7:0]mem_reg;
  input output_r_address01;
  input mem_reg_0;
  input mem_reg_1;
  input mem_reg_2;
  input mem_reg_3;
  input mem_reg_4;
  input mem_reg_5;
  input mem_reg_6;
  input mem_reg_7;
  input [0:0]D;
  input \icmp_ln10_reg_109_reg[0] ;
  input ap_ready_int;
  input mem_reg_8;
  input mem_reg_9;
  input mem_reg_10;
  input mem_reg_11;
  input mem_reg_12;
  input mem_reg_13;
  input mem_reg_14;
  input mem_reg_15;
  input mem_reg_16;
  input mem_reg_17;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter0_reg;
  input grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg;
  input [1:0]\ap_CS_fsm_reg[7] ;
  input \ap_CS_fsm_reg[7]_0 ;
  input [1:0]\int_isr_reg[1] ;
  input ap_enable_reg_pp0_iter0;
  input int_ap_start_i_2_0;
  input ap_enable_reg_pp0_iter1;
  input output_r_ce0;
  input \int_output_r_shift0_reg[0]_0 ;

  wire [6:0]ADDRBWRADDR;
  wire [0:0]D;
  wire [7:0]DIBDI;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [1:0]WEBWE;
  wire \ap_CS_fsm[1]_i_3_n_3 ;
  wire \ap_CS_fsm[1]_i_4_n_3 ;
  wire \ap_CS_fsm_reg[0] ;
  wire [1:0]\ap_CS_fsm_reg[1] ;
  wire \ap_CS_fsm_reg[6] ;
  wire [1:0]\ap_CS_fsm_reg[7] ;
  wire \ap_CS_fsm_reg[7]_0 ;
  wire ap_clk;
  wire ap_done;
  wire ap_done_cache;
  wire ap_done_cache_i_1__1_n_3;
  wire ap_done_reg1;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__1_n_3;
  wire [0:0]ap_loop_init_int_reg_0;
  wire ap_ready_int;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_sig_allocacmp_i_11;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_ready;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg;
  wire [0:0]grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg_reg;
  wire \i_fu_46[8]_i_4_n_3 ;
  wire [8:0]\i_fu_46_reg[6] ;
  wire [7:0]\i_fu_46_reg[7] ;
  wire [8:0]\i_fu_46_reg[8] ;
  wire icmp_ln10_fu_72_p2;
  wire \icmp_ln10_reg_109_reg[0] ;
  wire int_ap_start_i_2_0;
  wire int_ap_start_i_8_n_3;
  wire int_isr10_out;
  wire int_isr7_out;
  wire \int_isr[0]_i_4_n_3 ;
  wire [1:0]\int_isr_reg[1] ;
  wire \int_output_r_shift0_reg[0] ;
  wire \int_output_r_shift0_reg[0]_0 ;
  wire [7:0]mem_reg;
  wire mem_reg_0;
  wire mem_reg_1;
  wire mem_reg_10;
  wire mem_reg_11;
  wire mem_reg_12;
  wire mem_reg_13;
  wire mem_reg_14;
  wire mem_reg_15;
  wire mem_reg_16;
  wire mem_reg_17;
  wire mem_reg_2;
  wire mem_reg_3;
  wire mem_reg_4;
  wire mem_reg_5;
  wire mem_reg_6;
  wire mem_reg_7;
  wire mem_reg_8;
  wire mem_reg_9;
  wire [0:0]output_r_address0;
  wire output_r_address01;
  wire output_r_ce0;

  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hC5FF)) 
    \ap_CS_fsm[0]_i_1__1 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(icmp_ln10_fu_72_p2),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .I3(Q[0]),
        .O(\ap_CS_fsm_reg[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h05445544)) 
    \ap_CS_fsm[1]_i_1__1 
       (.I0(Q[1]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(icmp_ln10_fu_72_p2),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .I4(Q[0]),
        .O(\ap_CS_fsm_reg[1] [1]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(\ap_CS_fsm[1]_i_3_n_3 ),
        .I1(\i_fu_46_reg[7] [3]),
        .I2(\i_fu_46_reg[7] [4]),
        .I3(\i_fu_46_reg[7] [0]),
        .I4(\i_fu_46_reg[7] [7]),
        .I5(\ap_CS_fsm[1]_i_4_n_3 ),
        .O(icmp_ln10_fu_72_p2));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hC000D555)) 
    \ap_CS_fsm[1]_i_3 
       (.I0(\i_fu_46_reg[8] [6]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(Q[0]),
        .I4(\i_fu_46_reg[8] [5]),
        .O(\ap_CS_fsm[1]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h0111111100000000)) 
    \ap_CS_fsm[1]_i_4 
       (.I0(\i_fu_46_reg[8] [1]),
        .I1(\i_fu_46_reg[8] [2]),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(Q[0]),
        .I5(\i_fu_46_reg[8] [8]),
        .O(\ap_CS_fsm[1]_i_4_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    ap_done_cache_i_1__1
       (.I0(Q[0]),
        .I1(icmp_ln10_fu_72_p2),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .I3(ap_done_cache),
        .O(ap_done_cache_i_1__1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__1_n_3),
        .Q(ap_done_cache),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h2200A0A0)) 
    ap_enable_reg_pp0_iter0_reg_i_1__0
       (.I0(ap_rst_n),
        .I1(icmp_ln10_fu_72_p2),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .I4(Q[0]),
        .O(ap_rst_n_0));
  LUT6 #(
    .INIT(64'hFF5DDDDD5D5DDDDD)) 
    ap_loop_init_int_i_1__1
       (.I0(ap_rst_n),
        .I1(ap_loop_init_int),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(icmp_ln10_fu_72_p2),
        .O(ap_loop_init_int_i_1__1_n_3));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__1_n_3),
        .Q(ap_loop_init_int),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hBAFA)) 
    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg_i_1
       (.I0(\ap_CS_fsm_reg[7] [0]),
        .I1(icmp_ln10_fu_72_p2),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .I3(Q[0]),
        .O(\ap_CS_fsm_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \i_fu_46[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\i_fu_46_reg[8] [0]),
        .O(\i_fu_46_reg[6] [0]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \i_fu_46[1]_i_1 
       (.I0(\i_fu_46_reg[8] [0]),
        .I1(ap_loop_init_int),
        .I2(\i_fu_46_reg[8] [1]),
        .O(\i_fu_46_reg[6] [1]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \i_fu_46[2]_i_1 
       (.I0(\i_fu_46_reg[8] [0]),
        .I1(\i_fu_46_reg[8] [1]),
        .I2(ap_loop_init_int),
        .I3(\i_fu_46_reg[8] [2]),
        .O(\i_fu_46_reg[6] [2]));
  LUT5 #(
    .INIT(32'h007F0080)) 
    \i_fu_46[3]_i_1 
       (.I0(\i_fu_46_reg[8] [1]),
        .I1(\i_fu_46_reg[8] [0]),
        .I2(\i_fu_46_reg[8] [2]),
        .I3(ap_sig_allocacmp_i_11),
        .I4(\i_fu_46_reg[8] [3]),
        .O(\i_fu_46_reg[6] [3]));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \i_fu_46[4]_i_1 
       (.I0(\i_fu_46_reg[8] [2]),
        .I1(\i_fu_46_reg[8] [0]),
        .I2(\i_fu_46_reg[8] [1]),
        .I3(\i_fu_46_reg[8] [3]),
        .I4(ap_sig_allocacmp_i_11),
        .I5(\i_fu_46_reg[8] [4]),
        .O(\i_fu_46_reg[6] [4]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \i_fu_46[5]_i_1 
       (.I0(\i_fu_46[8]_i_4_n_3 ),
        .I1(ap_loop_init_int),
        .I2(\i_fu_46_reg[8] [5]),
        .O(\i_fu_46_reg[6] [5]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \i_fu_46[6]_i_1 
       (.I0(\i_fu_46[8]_i_4_n_3 ),
        .I1(\i_fu_46_reg[8] [5]),
        .I2(ap_loop_init_int),
        .I3(\i_fu_46_reg[8] [6]),
        .O(\i_fu_46_reg[6] [6]));
  LUT5 #(
    .INIT(32'h007F0080)) 
    \i_fu_46[7]_i_1 
       (.I0(\i_fu_46_reg[8] [5]),
        .I1(\i_fu_46[8]_i_4_n_3 ),
        .I2(\i_fu_46_reg[8] [6]),
        .I3(ap_sig_allocacmp_i_11),
        .I4(\i_fu_46_reg[8] [7]),
        .O(\i_fu_46_reg[6] [7]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \i_fu_46[8]_i_1 
       (.I0(ap_loop_init_int),
        .I1(icmp_ln10_fu_72_p2),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .I3(Q[0]),
        .O(ap_loop_init_int_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \i_fu_46[8]_i_2 
       (.I0(icmp_ln10_fu_72_p2),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .I2(Q[0]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg_reg));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \i_fu_46[8]_i_3 
       (.I0(\i_fu_46_reg[8] [6]),
        .I1(\i_fu_46[8]_i_4_n_3 ),
        .I2(\i_fu_46_reg[8] [5]),
        .I3(\i_fu_46_reg[8] [7]),
        .I4(ap_sig_allocacmp_i_11),
        .I5(\i_fu_46_reg[8] [8]),
        .O(\i_fu_46_reg[6] [8]));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \i_fu_46[8]_i_4 
       (.I0(\i_fu_46_reg[8] [4]),
        .I1(\i_fu_46_reg[8] [2]),
        .I2(\i_fu_46_reg[8] [0]),
        .I3(ap_sig_allocacmp_i_11),
        .I4(\i_fu_46_reg[8] [1]),
        .I5(\i_fu_46_reg[8] [3]),
        .O(\i_fu_46[8]_i_4_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \icmp_ln10_reg_109[0]_i_1 
       (.I0(icmp_ln10_fu_72_p2),
        .I1(Q[0]),
        .I2(\icmp_ln10_reg_109_reg[0] ),
        .O(\ap_CS_fsm_reg[0] ));
  LUT6 #(
    .INIT(64'hFF00750075007500)) 
    int_ap_start_i_2
       (.I0(\ap_CS_fsm_reg[7]_0 ),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .I2(ap_done_cache),
        .I3(\ap_CS_fsm_reg[7] [1]),
        .I4(Q[0]),
        .I5(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_ready),
        .O(ap_done));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    int_ap_start_i_5
       (.I0(int_ap_start_i_2_0),
        .I1(\ap_CS_fsm[1]_i_4_n_3 ),
        .I2(\i_fu_46_reg[7] [7]),
        .I3(\i_fu_46_reg[7] [0]),
        .I4(int_ap_start_i_8_n_3),
        .I5(\ap_CS_fsm[1]_i_3_n_3 ),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_ready));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hC000D555)) 
    int_ap_start_i_8
       (.I0(\i_fu_46_reg[8] [4]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(Q[0]),
        .I4(\i_fu_46_reg[8] [3]),
        .O(int_ap_start_i_8_n_3));
  LUT6 #(
    .INIT(64'h88C8CCCC00000000)) 
    \int_isr[0]_i_2 
       (.I0(ap_done_reg1),
        .I1(\ap_CS_fsm_reg[7] [1]),
        .I2(ap_done_cache),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .I4(\ap_CS_fsm_reg[7]_0 ),
        .I5(\int_isr_reg[1] [0]),
        .O(int_isr10_out));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \int_isr[0]_i_3 
       (.I0(\ap_CS_fsm[1]_i_3_n_3 ),
        .I1(int_ap_start_i_8_n_3),
        .I2(\int_isr[0]_i_4_n_3 ),
        .I3(\ap_CS_fsm[1]_i_4_n_3 ),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(Q[0]),
        .O(ap_done_reg1));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hC000D555)) 
    \int_isr[0]_i_4 
       (.I0(\i_fu_46_reg[8] [7]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(Q[0]),
        .I4(\i_fu_46_reg[8] [0]),
        .O(\int_isr[0]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'h88C8CCCC00000000)) 
    \int_isr[1]_i_2 
       (.I0(ap_done_reg1),
        .I1(\ap_CS_fsm_reg[7] [1]),
        .I2(ap_done_cache),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .I4(\ap_CS_fsm_reg[7]_0 ),
        .I5(\int_isr_reg[1] [1]),
        .O(int_isr7_out));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_output_r_shift0[0]_i_1 
       (.I0(output_r_address0),
        .I1(output_r_ce0),
        .I2(\int_output_r_shift0_reg[0]_0 ),
        .O(\int_output_r_shift0_reg[0] ));
  LUT6 #(
    .INIT(64'hBA10FFFFBA100000)) 
    mem_reg_i_10__0
       (.I0(Q[1]),
        .I1(ap_sig_allocacmp_i_11),
        .I2(\i_fu_46_reg[8] [7]),
        .I3(mem_reg[7]),
        .I4(output_r_address01),
        .I5(mem_reg_6),
        .O(ADDRBWRADDR[6]));
  LUT6 #(
    .INIT(64'hBA10FFFFBA100000)) 
    mem_reg_i_11__0
       (.I0(Q[1]),
        .I1(ap_sig_allocacmp_i_11),
        .I2(\i_fu_46_reg[8] [6]),
        .I3(mem_reg[6]),
        .I4(output_r_address01),
        .I5(mem_reg_5),
        .O(ADDRBWRADDR[5]));
  LUT6 #(
    .INIT(64'hBA10FFFFBA100000)) 
    mem_reg_i_12__0
       (.I0(Q[1]),
        .I1(ap_sig_allocacmp_i_11),
        .I2(\i_fu_46_reg[8] [5]),
        .I3(mem_reg[5]),
        .I4(output_r_address01),
        .I5(mem_reg_4),
        .O(ADDRBWRADDR[4]));
  LUT6 #(
    .INIT(64'hBA10FFFFBA100000)) 
    mem_reg_i_13__0
       (.I0(Q[1]),
        .I1(ap_sig_allocacmp_i_11),
        .I2(\i_fu_46_reg[8] [4]),
        .I3(mem_reg[4]),
        .I4(output_r_address01),
        .I5(mem_reg_3),
        .O(ADDRBWRADDR[3]));
  LUT6 #(
    .INIT(64'hBA10FFFFBA100000)) 
    mem_reg_i_14__0
       (.I0(Q[1]),
        .I1(ap_sig_allocacmp_i_11),
        .I2(\i_fu_46_reg[8] [3]),
        .I3(mem_reg[3]),
        .I4(output_r_address01),
        .I5(mem_reg_2),
        .O(ADDRBWRADDR[2]));
  LUT6 #(
    .INIT(64'hBA10FFFFBA100000)) 
    mem_reg_i_15__0
       (.I0(Q[1]),
        .I1(ap_sig_allocacmp_i_11),
        .I2(\i_fu_46_reg[8] [2]),
        .I3(mem_reg[2]),
        .I4(output_r_address01),
        .I5(mem_reg_1),
        .O(ADDRBWRADDR[1]));
  LUT6 #(
    .INIT(64'hBA10FFFFBA100000)) 
    mem_reg_i_16
       (.I0(Q[1]),
        .I1(ap_sig_allocacmp_i_11),
        .I2(\i_fu_46_reg[8] [1]),
        .I3(mem_reg[1]),
        .I4(output_r_address01),
        .I5(mem_reg_0),
        .O(ADDRBWRADDR[0]));
  LUT6 #(
    .INIT(64'h0000A88800000000)) 
    mem_reg_i_25
       (.I0(output_r_address0),
        .I1(mem_reg_7),
        .I2(mem_reg_8),
        .I3(ap_ready_int),
        .I4(output_r_address01),
        .I5(mem_reg_16),
        .O(DIBDI[7]));
  LUT6 #(
    .INIT(64'h0000A88800000000)) 
    mem_reg_i_26
       (.I0(output_r_address0),
        .I1(mem_reg_7),
        .I2(mem_reg_8),
        .I3(ap_ready_int),
        .I4(output_r_address01),
        .I5(mem_reg_15),
        .O(DIBDI[6]));
  LUT6 #(
    .INIT(64'h0000A88800000000)) 
    mem_reg_i_27
       (.I0(output_r_address0),
        .I1(mem_reg_7),
        .I2(mem_reg_8),
        .I3(ap_ready_int),
        .I4(output_r_address01),
        .I5(mem_reg_14),
        .O(DIBDI[5]));
  LUT6 #(
    .INIT(64'h0000A88800000000)) 
    mem_reg_i_28
       (.I0(output_r_address0),
        .I1(mem_reg_7),
        .I2(mem_reg_8),
        .I3(ap_ready_int),
        .I4(output_r_address01),
        .I5(mem_reg_13),
        .O(DIBDI[4]));
  LUT6 #(
    .INIT(64'h0000A88800000000)) 
    mem_reg_i_29
       (.I0(output_r_address0),
        .I1(mem_reg_7),
        .I2(mem_reg_8),
        .I3(ap_ready_int),
        .I4(output_r_address01),
        .I5(mem_reg_12),
        .O(DIBDI[3]));
  LUT6 #(
    .INIT(64'h0000A88800000000)) 
    mem_reg_i_30
       (.I0(output_r_address0),
        .I1(mem_reg_7),
        .I2(mem_reg_8),
        .I3(ap_ready_int),
        .I4(output_r_address01),
        .I5(mem_reg_11),
        .O(DIBDI[2]));
  LUT6 #(
    .INIT(64'h0000A88800000000)) 
    mem_reg_i_31
       (.I0(output_r_address0),
        .I1(mem_reg_7),
        .I2(mem_reg_8),
        .I3(ap_ready_int),
        .I4(output_r_address01),
        .I5(mem_reg_10),
        .O(DIBDI[1]));
  LUT6 #(
    .INIT(64'h0000A88800000000)) 
    mem_reg_i_32
       (.I0(output_r_address0),
        .I1(mem_reg_7),
        .I2(mem_reg_8),
        .I3(ap_ready_int),
        .I4(output_r_address01),
        .I5(mem_reg_9),
        .O(DIBDI[0]));
  LUT6 #(
    .INIT(64'h8888A88888888888)) 
    mem_reg_i_53
       (.I0(output_r_address0),
        .I1(mem_reg_7),
        .I2(output_r_address01),
        .I3(D),
        .I4(\icmp_ln10_reg_109_reg[0] ),
        .I5(ap_ready_int),
        .O(WEBWE[1]));
  LUT6 #(
    .INIT(64'h00000000AAEAAAAA)) 
    mem_reg_i_54
       (.I0(mem_reg_7),
        .I1(output_r_address01),
        .I2(D),
        .I3(\icmp_ln10_reg_109_reg[0] ),
        .I4(ap_ready_int),
        .I5(output_r_address0),
        .O(WEBWE[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_58
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(Q[0]),
        .O(ap_sig_allocacmp_i_11));
  LUT6 #(
    .INIT(64'hBA10FFFFBA100000)) 
    mem_reg_i_66
       (.I0(Q[1]),
        .I1(ap_sig_allocacmp_i_11),
        .I2(\i_fu_46_reg[8] [0]),
        .I3(mem_reg[0]),
        .I4(output_r_address01),
        .I5(mem_reg_17),
        .O(output_r_address0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \output_r_addr_reg_113[0]_i_1 
       (.I0(\i_fu_46_reg[8] [0]),
        .I1(Q[0]),
        .I2(ap_loop_init_int),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .O(\i_fu_46_reg[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \output_r_addr_reg_113[1]_i_1 
       (.I0(\i_fu_46_reg[8] [1]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .O(\i_fu_46_reg[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \output_r_addr_reg_113[2]_i_1 
       (.I0(\i_fu_46_reg[8] [2]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .O(\i_fu_46_reg[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \output_r_addr_reg_113[3]_i_1 
       (.I0(\i_fu_46_reg[8] [3]),
        .I1(Q[0]),
        .I2(ap_loop_init_int),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .O(\i_fu_46_reg[7] [3]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \output_r_addr_reg_113[4]_i_1 
       (.I0(\i_fu_46_reg[8] [4]),
        .I1(Q[0]),
        .I2(ap_loop_init_int),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .O(\i_fu_46_reg[7] [4]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \output_r_addr_reg_113[5]_i_1 
       (.I0(\i_fu_46_reg[8] [5]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .O(\i_fu_46_reg[7] [5]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \output_r_addr_reg_113[6]_i_1 
       (.I0(\i_fu_46_reg[8] [6]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .O(\i_fu_46_reg[7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \output_r_addr_reg_113[7]_i_1 
       (.I0(Q[0]),
        .I1(icmp_ln10_fu_72_p2),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \output_r_addr_reg_113[7]_i_2 
       (.I0(\i_fu_46_reg[8] [7]),
        .I1(Q[0]),
        .I2(ap_loop_init_int),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .O(\i_fu_46_reg[7] [7]));
endmodule

(* ORIG_REF_NAME = "nnlayer_mac_muladd_16s_16s_24ns_24_4_1" *) 
module design_1_nnlayer_0_0_nnlayer_mac_muladd_16s_16s_24ns_24_4_1
   (D,
    ap_clk,
    B,
    A,
    Q,
    addr_cmp_reg_411_pp0_iter1_reg,
    p_reg_reg);
  output [15:0]D;
  input ap_clk;
  input [15:0]B;
  input [15:0]A;
  input [15:0]Q;
  input addr_cmp_reg_411_pp0_iter1_reg;
  input [15:0]p_reg_reg;

  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]D;
  wire [15:0]Q;
  wire addr_cmp_reg_411_pp0_iter1_reg;
  wire ap_clk;
  wire [15:0]p_reg_reg;

  design_1_nnlayer_0_0_nnlayer_mac_muladd_16s_16s_24ns_24_4_1_DSP48_0 nnlayer_mac_muladd_16s_16s_24ns_24_4_1_DSP48_0_U
       (.A(A),
        .B(B),
        .D(D),
        .Q(Q),
        .addr_cmp_reg_411_pp0_iter1_reg(addr_cmp_reg_411_pp0_iter1_reg),
        .ap_clk(ap_clk),
        .p_reg_reg_0(p_reg_reg));
endmodule

(* ORIG_REF_NAME = "nnlayer_mac_muladd_16s_16s_24ns_24_4_1_DSP48_0" *) 
module design_1_nnlayer_0_0_nnlayer_mac_muladd_16s_16s_24ns_24_4_1_DSP48_0
   (D,
    ap_clk,
    B,
    A,
    Q,
    addr_cmp_reg_411_pp0_iter1_reg,
    p_reg_reg_0);
  output [15:0]D;
  input ap_clk;
  input [15:0]B;
  input [15:0]A;
  input [15:0]Q;
  input addr_cmp_reg_411_pp0_iter1_reg;
  input [15:0]p_reg_reg_0;

  wire [15:0]A;
  wire [15:0]B;
  wire [23:8]C;
  wire [15:0]D;
  wire [15:0]Q;
  wire addr_cmp_reg_411_pp0_iter1_reg;
  wire ap_clk;
  wire [15:0]p_reg_reg_0;
  wire p_reg_reg_n_101;
  wire p_reg_reg_n_102;
  wire p_reg_reg_n_103;
  wire p_reg_reg_n_104;
  wire p_reg_reg_n_105;
  wire p_reg_reg_n_106;
  wire p_reg_reg_n_107;
  wire p_reg_reg_n_108;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:24]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({B[15],B[15],B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,C,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:24],D,p_reg_reg_n_101,p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105,p_reg_reg_n_106,p_reg_reg_n_107,p_reg_reg_n_108}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_33
       (.I0(Q[15]),
        .I1(addr_cmp_reg_411_pp0_iter1_reg),
        .I2(p_reg_reg_0[15]),
        .O(C[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_34
       (.I0(Q[14]),
        .I1(addr_cmp_reg_411_pp0_iter1_reg),
        .I2(p_reg_reg_0[14]),
        .O(C[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_35
       (.I0(Q[13]),
        .I1(addr_cmp_reg_411_pp0_iter1_reg),
        .I2(p_reg_reg_0[13]),
        .O(C[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_36
       (.I0(Q[12]),
        .I1(addr_cmp_reg_411_pp0_iter1_reg),
        .I2(p_reg_reg_0[12]),
        .O(C[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_37
       (.I0(Q[11]),
        .I1(addr_cmp_reg_411_pp0_iter1_reg),
        .I2(p_reg_reg_0[11]),
        .O(C[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_38
       (.I0(Q[10]),
        .I1(addr_cmp_reg_411_pp0_iter1_reg),
        .I2(p_reg_reg_0[10]),
        .O(C[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_39
       (.I0(Q[9]),
        .I1(addr_cmp_reg_411_pp0_iter1_reg),
        .I2(p_reg_reg_0[9]),
        .O(C[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_40
       (.I0(Q[8]),
        .I1(addr_cmp_reg_411_pp0_iter1_reg),
        .I2(p_reg_reg_0[8]),
        .O(C[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_41
       (.I0(Q[7]),
        .I1(addr_cmp_reg_411_pp0_iter1_reg),
        .I2(p_reg_reg_0[7]),
        .O(C[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_42
       (.I0(Q[6]),
        .I1(addr_cmp_reg_411_pp0_iter1_reg),
        .I2(p_reg_reg_0[6]),
        .O(C[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_43
       (.I0(Q[5]),
        .I1(addr_cmp_reg_411_pp0_iter1_reg),
        .I2(p_reg_reg_0[5]),
        .O(C[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_44
       (.I0(Q[4]),
        .I1(addr_cmp_reg_411_pp0_iter1_reg),
        .I2(p_reg_reg_0[4]),
        .O(C[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_45
       (.I0(Q[3]),
        .I1(addr_cmp_reg_411_pp0_iter1_reg),
        .I2(p_reg_reg_0[3]),
        .O(C[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_46
       (.I0(Q[2]),
        .I1(addr_cmp_reg_411_pp0_iter1_reg),
        .I2(p_reg_reg_0[2]),
        .O(C[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_47
       (.I0(Q[1]),
        .I1(addr_cmp_reg_411_pp0_iter1_reg),
        .I2(p_reg_reg_0[1]),
        .O(C[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_48
       (.I0(Q[0]),
        .I1(addr_cmp_reg_411_pp0_iter1_reg),
        .I2(p_reg_reg_0[0]),
        .O(C[8]));
endmodule

(* ORIG_REF_NAME = "nnlayer_mul_mul_16ns_16ns_32_4_1" *) 
module design_1_nnlayer_0_0_nnlayer_mul_mul_16ns_16ns_32_4_1
   (D,
    grp_fu_130_ce,
    ap_clk,
    p_reg_reg,
    p_reg_reg_0);
  output [31:0]D;
  input grp_fu_130_ce;
  input ap_clk;
  input [15:0]p_reg_reg;
  input [15:0]p_reg_reg_0;

  wire [31:0]D;
  wire ap_clk;
  wire grp_fu_130_ce;
  wire [15:0]p_reg_reg;
  wire [15:0]p_reg_reg_0;

  design_1_nnlayer_0_0_nnlayer_mul_mul_16ns_16ns_32_4_1_DSP48_1 nnlayer_mul_mul_16ns_16ns_32_4_1_DSP48_1_U
       (.D(D),
        .ap_clk(ap_clk),
        .grp_fu_130_ce(grp_fu_130_ce),
        .p_reg_reg_0(p_reg_reg),
        .p_reg_reg_1(p_reg_reg_0));
endmodule

(* ORIG_REF_NAME = "nnlayer_mul_mul_16ns_16ns_32_4_1_DSP48_1" *) 
module design_1_nnlayer_0_0_nnlayer_mul_mul_16ns_16ns_32_4_1_DSP48_1
   (D,
    grp_fu_130_ce,
    ap_clk,
    p_reg_reg_0,
    p_reg_reg_1);
  output [31:0]D;
  input grp_fu_130_ce;
  input ap_clk;
  input [15:0]p_reg_reg_0;
  input [15:0]p_reg_reg_1;

  wire [31:0]D;
  wire ap_clk;
  wire grp_fu_130_ce;
  wire [15:0]p_reg_reg_0;
  wire [15:0]p_reg_reg_1;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_reg_reg_1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,p_reg_reg_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(grp_fu_130_ce),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(grp_fu_130_ce),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(grp_fu_130_ce),
        .CEP(grp_fu_130_ce),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:32],D}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "nnlayer_nnlayer_Pipeline_VITIS_LOOP_10_1" *) 
module design_1_nnlayer_0_0_nnlayer_nnlayer_Pipeline_VITIS_LOOP_10_1
   (icmp_ln10_reg_109,
    ADDRBWRADDR,
    WEBWE,
    DIBDI,
    int_isr10_out,
    int_isr7_out,
    ap_done,
    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_output_r_ce0,
    \int_output_r_shift0_reg[0] ,
    \ap_CS_fsm_reg[6] ,
    SR,
    ap_clk,
    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg,
    ap_rst_n,
    output_r_address01,
    mem_reg,
    mem_reg_0,
    mem_reg_1,
    mem_reg_2,
    mem_reg_3,
    mem_reg_4,
    mem_reg_5,
    mem_reg_6,
    D,
    mem_reg_7,
    mem_reg_8,
    mem_reg_9,
    mem_reg_10,
    mem_reg_11,
    mem_reg_12,
    mem_reg_13,
    mem_reg_14,
    mem_reg_15,
    mem_reg_16,
    Q,
    \ap_CS_fsm_reg[7] ,
    \int_isr_reg[1] ,
    output_r_ce0,
    \int_output_r_shift0_reg[0]_0 );
  output icmp_ln10_reg_109;
  output [6:0]ADDRBWRADDR;
  output [1:0]WEBWE;
  output [7:0]DIBDI;
  output int_isr10_out;
  output int_isr7_out;
  output ap_done;
  output grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_output_r_ce0;
  output \int_output_r_shift0_reg[0] ;
  output \ap_CS_fsm_reg[6] ;
  input [0:0]SR;
  input ap_clk;
  input grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg;
  input ap_rst_n;
  input output_r_address01;
  input mem_reg;
  input mem_reg_0;
  input mem_reg_1;
  input mem_reg_2;
  input mem_reg_3;
  input mem_reg_4;
  input mem_reg_5;
  input mem_reg_6;
  input [0:0]D;
  input mem_reg_7;
  input mem_reg_8;
  input mem_reg_9;
  input mem_reg_10;
  input mem_reg_11;
  input mem_reg_12;
  input mem_reg_13;
  input mem_reg_14;
  input mem_reg_15;
  input mem_reg_16;
  input [1:0]Q;
  input \ap_CS_fsm_reg[7] ;
  input [1:0]\int_isr_reg[1] ;
  input output_r_ce0;
  input \int_output_r_shift0_reg[0]_0 ;

  wire [6:0]ADDRBWRADDR;
  wire [0:0]D;
  wire [7:0]DIBDI;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [1:0]WEBWE;
  wire ap_CS_fsm_pp0_stage1;
  wire \ap_CS_fsm_reg[6] ;
  wire \ap_CS_fsm_reg[7] ;
  wire \ap_CS_fsm_reg_n_3_[0] ;
  wire [1:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_done;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1__0_n_3;
  wire ap_ready_int;
  wire ap_rst_n;
  wire [7:0]ap_sig_allocacmp_i_1;
  wire flow_control_loop_pipe_sequential_init_U_n_20;
  wire flow_control_loop_pipe_sequential_init_U_n_42;
  wire flow_control_loop_pipe_sequential_init_U_n_47;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_output_r_ce0;
  wire [8:0]i_2_fu_78_p2;
  wire i_fu_46;
  wire \i_fu_46_reg_n_3_[0] ;
  wire \i_fu_46_reg_n_3_[1] ;
  wire \i_fu_46_reg_n_3_[2] ;
  wire \i_fu_46_reg_n_3_[3] ;
  wire \i_fu_46_reg_n_3_[4] ;
  wire \i_fu_46_reg_n_3_[5] ;
  wire \i_fu_46_reg_n_3_[6] ;
  wire \i_fu_46_reg_n_3_[7] ;
  wire \i_fu_46_reg_n_3_[8] ;
  wire icmp_ln10_reg_109;
  wire int_ap_start_i_7_n_3;
  wire int_isr10_out;
  wire int_isr7_out;
  wire [1:0]\int_isr_reg[1] ;
  wire \int_output_r_shift0_reg[0] ;
  wire \int_output_r_shift0_reg[0]_0 ;
  wire mem_reg;
  wire mem_reg_0;
  wire mem_reg_1;
  wire mem_reg_10;
  wire mem_reg_11;
  wire mem_reg_12;
  wire mem_reg_13;
  wire mem_reg_14;
  wire mem_reg_15;
  wire mem_reg_16;
  wire mem_reg_2;
  wire mem_reg_3;
  wire mem_reg_4;
  wire mem_reg_5;
  wire mem_reg_6;
  wire mem_reg_7;
  wire mem_reg_8;
  wire mem_reg_9;
  wire [7:0]output_r_addr_reg_113;
  wire output_r_addr_reg_1130;
  wire output_r_address01;
  wire output_r_ce0;

  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_3_[0] ),
        .S(SR));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_pp0_stage1),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_20),
        .Q(ap_enable_reg_pp0_iter0_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000DD00A0008800)) 
    ap_enable_reg_pp0_iter1_i_1__0
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(ap_enable_reg_pp0_iter0_reg),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .I3(ap_rst_n),
        .I4(\ap_CS_fsm_reg_n_3_[0] ),
        .I5(ap_enable_reg_pp0_iter1),
        .O(ap_enable_reg_pp0_iter1_i_1__0_n_3));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1__0_n_3),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ap_loop_init_int_i_2
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_3_[0] ),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .O(ap_enable_reg_pp0_iter0));
  design_1_nnlayer_0_0_nnlayer_flow_control_loop_pipe_sequential_init_1 flow_control_loop_pipe_sequential_init_U
       (.ADDRBWRADDR(ADDRBWRADDR),
        .D(D),
        .DIBDI(DIBDI),
        .E(output_r_addr_reg_1130),
        .Q({ap_CS_fsm_pp0_stage1,\ap_CS_fsm_reg_n_3_[0] }),
        .SR(SR),
        .WEBWE(WEBWE),
        .\ap_CS_fsm_reg[0] (flow_control_loop_pipe_sequential_init_U_n_47),
        .\ap_CS_fsm_reg[1] (ap_NS_fsm),
        .\ap_CS_fsm_reg[6] (\ap_CS_fsm_reg[6] ),
        .\ap_CS_fsm_reg[7] (Q),
        .\ap_CS_fsm_reg[7]_0 (\ap_CS_fsm_reg[7] ),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_loop_init_int_reg_0(flow_control_loop_pipe_sequential_init_U_n_42),
        .ap_ready_int(ap_ready_int),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(flow_control_loop_pipe_sequential_init_U_n_20),
        .grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg_reg(i_fu_46),
        .\i_fu_46_reg[6] (i_2_fu_78_p2),
        .\i_fu_46_reg[7] (ap_sig_allocacmp_i_1),
        .\i_fu_46_reg[8] ({\i_fu_46_reg_n_3_[8] ,\i_fu_46_reg_n_3_[7] ,\i_fu_46_reg_n_3_[6] ,\i_fu_46_reg_n_3_[5] ,\i_fu_46_reg_n_3_[4] ,\i_fu_46_reg_n_3_[3] ,\i_fu_46_reg_n_3_[2] ,\i_fu_46_reg_n_3_[1] ,\i_fu_46_reg_n_3_[0] }),
        .\icmp_ln10_reg_109_reg[0] (icmp_ln10_reg_109),
        .int_ap_start_i_2_0(int_ap_start_i_7_n_3),
        .int_isr10_out(int_isr10_out),
        .int_isr7_out(int_isr7_out),
        .\int_isr_reg[1] (\int_isr_reg[1] ),
        .\int_output_r_shift0_reg[0] (\int_output_r_shift0_reg[0] ),
        .\int_output_r_shift0_reg[0]_0 (\int_output_r_shift0_reg[0]_0 ),
        .mem_reg(output_r_addr_reg_113),
        .mem_reg_0(mem_reg),
        .mem_reg_1(mem_reg_0),
        .mem_reg_10(mem_reg_9),
        .mem_reg_11(mem_reg_10),
        .mem_reg_12(mem_reg_11),
        .mem_reg_13(mem_reg_12),
        .mem_reg_14(mem_reg_13),
        .mem_reg_15(mem_reg_14),
        .mem_reg_16(mem_reg_15),
        .mem_reg_17(mem_reg_16),
        .mem_reg_2(mem_reg_1),
        .mem_reg_3(mem_reg_2),
        .mem_reg_4(mem_reg_3),
        .mem_reg_5(mem_reg_4),
        .mem_reg_6(mem_reg_5),
        .mem_reg_7(mem_reg_6),
        .mem_reg_8(mem_reg_7),
        .mem_reg_9(mem_reg_8),
        .output_r_address01(output_r_address01),
        .output_r_ce0(output_r_ce0));
  FDRE \i_fu_46_reg[0] 
       (.C(ap_clk),
        .CE(i_fu_46),
        .D(i_2_fu_78_p2[0]),
        .Q(\i_fu_46_reg_n_3_[0] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_42));
  FDRE \i_fu_46_reg[1] 
       (.C(ap_clk),
        .CE(i_fu_46),
        .D(i_2_fu_78_p2[1]),
        .Q(\i_fu_46_reg_n_3_[1] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_42));
  FDRE \i_fu_46_reg[2] 
       (.C(ap_clk),
        .CE(i_fu_46),
        .D(i_2_fu_78_p2[2]),
        .Q(\i_fu_46_reg_n_3_[2] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_42));
  FDRE \i_fu_46_reg[3] 
       (.C(ap_clk),
        .CE(i_fu_46),
        .D(i_2_fu_78_p2[3]),
        .Q(\i_fu_46_reg_n_3_[3] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_42));
  FDRE \i_fu_46_reg[4] 
       (.C(ap_clk),
        .CE(i_fu_46),
        .D(i_2_fu_78_p2[4]),
        .Q(\i_fu_46_reg_n_3_[4] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_42));
  FDRE \i_fu_46_reg[5] 
       (.C(ap_clk),
        .CE(i_fu_46),
        .D(i_2_fu_78_p2[5]),
        .Q(\i_fu_46_reg_n_3_[5] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_42));
  FDRE \i_fu_46_reg[6] 
       (.C(ap_clk),
        .CE(i_fu_46),
        .D(i_2_fu_78_p2[6]),
        .Q(\i_fu_46_reg_n_3_[6] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_42));
  FDRE \i_fu_46_reg[7] 
       (.C(ap_clk),
        .CE(i_fu_46),
        .D(i_2_fu_78_p2[7]),
        .Q(\i_fu_46_reg_n_3_[7] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_42));
  FDRE \i_fu_46_reg[8] 
       (.C(ap_clk),
        .CE(i_fu_46),
        .D(i_2_fu_78_p2[8]),
        .Q(\i_fu_46_reg_n_3_[8] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_42));
  FDRE \icmp_ln10_reg_109_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_47),
        .Q(icmp_ln10_reg_109),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    int_ap_start_i_7
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_3_[0] ),
        .O(int_ap_start_i_7_n_3));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hFACAF0C0)) 
    mem_reg_i_57
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(\ap_CS_fsm_reg_n_3_[0] ),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .I4(ap_enable_reg_pp0_iter0_reg),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_output_r_ce0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    mem_reg_i_68
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(ap_enable_reg_pp0_iter0_reg),
        .I2(\ap_CS_fsm_reg_n_3_[0] ),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_ap_start_reg),
        .O(ap_ready_int));
  FDRE \output_r_addr_reg_113_reg[0] 
       (.C(ap_clk),
        .CE(output_r_addr_reg_1130),
        .D(ap_sig_allocacmp_i_1[0]),
        .Q(output_r_addr_reg_113[0]),
        .R(1'b0));
  FDRE \output_r_addr_reg_113_reg[1] 
       (.C(ap_clk),
        .CE(output_r_addr_reg_1130),
        .D(ap_sig_allocacmp_i_1[1]),
        .Q(output_r_addr_reg_113[1]),
        .R(1'b0));
  FDRE \output_r_addr_reg_113_reg[2] 
       (.C(ap_clk),
        .CE(output_r_addr_reg_1130),
        .D(ap_sig_allocacmp_i_1[2]),
        .Q(output_r_addr_reg_113[2]),
        .R(1'b0));
  FDRE \output_r_addr_reg_113_reg[3] 
       (.C(ap_clk),
        .CE(output_r_addr_reg_1130),
        .D(ap_sig_allocacmp_i_1[3]),
        .Q(output_r_addr_reg_113[3]),
        .R(1'b0));
  FDRE \output_r_addr_reg_113_reg[4] 
       (.C(ap_clk),
        .CE(output_r_addr_reg_1130),
        .D(ap_sig_allocacmp_i_1[4]),
        .Q(output_r_addr_reg_113[4]),
        .R(1'b0));
  FDRE \output_r_addr_reg_113_reg[5] 
       (.C(ap_clk),
        .CE(output_r_addr_reg_1130),
        .D(ap_sig_allocacmp_i_1[5]),
        .Q(output_r_addr_reg_113[5]),
        .R(1'b0));
  FDRE \output_r_addr_reg_113_reg[6] 
       (.C(ap_clk),
        .CE(output_r_addr_reg_1130),
        .D(ap_sig_allocacmp_i_1[6]),
        .Q(output_r_addr_reg_113[6]),
        .R(1'b0));
  FDRE \output_r_addr_reg_113_reg[7] 
       (.C(ap_clk),
        .CE(output_r_addr_reg_1130),
        .D(ap_sig_allocacmp_i_1[7]),
        .Q(output_r_addr_reg_113[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "nnlayer_nnlayer_Pipeline_VITIS_LOOP_33_1" *) 
module design_1_nnlayer_0_0_nnlayer_nnlayer_Pipeline_VITIS_LOOP_33_1
   (CO,
    D,
    ap_enable_reg_pp0_iter1,
    grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg_reg,
    ap_NS_fsm1,
    \outNeurons_fu_42_reg[0]_0 ,
    \zext_ln34_reg_119_reg[7]_0 ,
    SR,
    ap_clk,
    ap_rst_n,
    grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg,
    ap_start,
    Q,
    icmp_ln33_fu_87_p2_carry__0_0,
    \int_bias_shift0_reg[0] );
  output [0:0]CO;
  output [6:0]D;
  output ap_enable_reg_pp0_iter1;
  output [1:0]grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg_reg;
  output ap_NS_fsm1;
  output \outNeurons_fu_42_reg[0]_0 ;
  output [7:0]\zext_ln34_reg_119_reg[7]_0 ;
  input [0:0]SR;
  input ap_clk;
  input ap_rst_n;
  input grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg;
  input ap_start;
  input [1:0]Q;
  input [15:0]icmp_ln33_fu_87_p2_carry__0_0;
  input \int_bias_shift0_reg[0] ;

  wire [0:0]CO;
  wire [6:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n;
  wire [15:8]ap_sig_allocacmp_outNeurons_2;
  wire ap_start;
  wire flow_control_loop_pipe_sequential_init_U_n_10;
  wire flow_control_loop_pipe_sequential_init_U_n_11;
  wire flow_control_loop_pipe_sequential_init_U_n_12;
  wire flow_control_loop_pipe_sequential_init_U_n_13;
  wire flow_control_loop_pipe_sequential_init_U_n_3;
  wire flow_control_loop_pipe_sequential_init_U_n_30;
  wire flow_control_loop_pipe_sequential_init_U_n_31;
  wire flow_control_loop_pipe_sequential_init_U_n_33;
  wire flow_control_loop_pipe_sequential_init_U_n_34;
  wire flow_control_loop_pipe_sequential_init_U_n_35;
  wire flow_control_loop_pipe_sequential_init_U_n_36;
  wire flow_control_loop_pipe_sequential_init_U_n_37;
  wire flow_control_loop_pipe_sequential_init_U_n_38;
  wire flow_control_loop_pipe_sequential_init_U_n_39;
  wire flow_control_loop_pipe_sequential_init_U_n_7;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg;
  wire [1:0]grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg_reg;
  wire [0:0]grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_bias_address0;
  wire [15:0]icmp_ln33_fu_87_p2_carry__0_0;
  wire icmp_ln33_fu_87_p2_carry__0_n_6;
  wire icmp_ln33_fu_87_p2_carry_n_3;
  wire icmp_ln33_fu_87_p2_carry_n_4;
  wire icmp_ln33_fu_87_p2_carry_n_5;
  wire icmp_ln33_fu_87_p2_carry_n_6;
  wire \int_bias_shift0_reg[0] ;
  wire [15:0]outNeurons_3_fu_93_p2;
  wire outNeurons_3_fu_93_p2_carry__0_n_3;
  wire outNeurons_3_fu_93_p2_carry__0_n_4;
  wire outNeurons_3_fu_93_p2_carry__0_n_5;
  wire outNeurons_3_fu_93_p2_carry__0_n_6;
  wire outNeurons_3_fu_93_p2_carry__1_n_3;
  wire outNeurons_3_fu_93_p2_carry__1_n_4;
  wire outNeurons_3_fu_93_p2_carry__1_n_5;
  wire outNeurons_3_fu_93_p2_carry__1_n_6;
  wire outNeurons_3_fu_93_p2_carry__2_n_5;
  wire outNeurons_3_fu_93_p2_carry__2_n_6;
  wire outNeurons_3_fu_93_p2_carry_n_3;
  wire outNeurons_3_fu_93_p2_carry_n_4;
  wire outNeurons_3_fu_93_p2_carry_n_5;
  wire outNeurons_3_fu_93_p2_carry_n_6;
  wire outNeurons_fu_420;
  wire outNeurons_fu_421;
  wire \outNeurons_fu_42_reg[0]_0 ;
  wire \outNeurons_fu_42_reg_n_3_[0] ;
  wire \outNeurons_fu_42_reg_n_3_[10] ;
  wire \outNeurons_fu_42_reg_n_3_[11] ;
  wire \outNeurons_fu_42_reg_n_3_[12] ;
  wire \outNeurons_fu_42_reg_n_3_[13] ;
  wire \outNeurons_fu_42_reg_n_3_[14] ;
  wire \outNeurons_fu_42_reg_n_3_[15] ;
  wire \outNeurons_fu_42_reg_n_3_[1] ;
  wire \outNeurons_fu_42_reg_n_3_[2] ;
  wire \outNeurons_fu_42_reg_n_3_[3] ;
  wire \outNeurons_fu_42_reg_n_3_[4] ;
  wire \outNeurons_fu_42_reg_n_3_[5] ;
  wire \outNeurons_fu_42_reg_n_3_[6] ;
  wire \outNeurons_fu_42_reg_n_3_[7] ;
  wire \outNeurons_fu_42_reg_n_3_[8] ;
  wire \outNeurons_fu_42_reg_n_3_[9] ;
  wire [7:0]\zext_ln34_reg_119_reg[7]_0 ;
  wire [3:0]NLW_icmp_ln33_fu_87_p2_carry_O_UNCONNECTED;
  wire [3:2]NLW_icmp_ln33_fu_87_p2_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_icmp_ln33_fu_87_p2_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_outNeurons_3_fu_93_p2_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_outNeurons_3_fu_93_p2_carry__2_O_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_3),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  design_1_nnlayer_0_0_nnlayer_flow_control_loop_pipe_sequential_init_0 flow_control_loop_pipe_sequential_init_U
       (.CO(CO),
        .D({D,grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_bias_address0}),
        .E(outNeurons_fu_420),
        .Q(Q),
        .S({flow_control_loop_pipe_sequential_init_U_n_10,flow_control_loop_pipe_sequential_init_U_n_11,flow_control_loop_pipe_sequential_init_U_n_12,flow_control_loop_pipe_sequential_init_U_n_13}),
        .SR(SR),
        .ap_NS_fsm1(ap_NS_fsm1),
        .ap_clk(ap_clk),
        .ap_loop_init_int_reg_0(flow_control_loop_pipe_sequential_init_U_n_7),
        .ap_loop_init_int_reg_1(outNeurons_3_fu_93_p2[0]),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(flow_control_loop_pipe_sequential_init_U_n_3),
        .ap_sig_allocacmp_outNeurons_2(ap_sig_allocacmp_outNeurons_2),
        .ap_start(ap_start),
        .grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg),
        .grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg_reg(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_ap_start_reg_reg),
        .icmp_ln33_fu_87_p2_carry__0(outNeurons_fu_421),
        .icmp_ln33_fu_87_p2_carry__0_0(icmp_ln33_fu_87_p2_carry__0_0),
        .\int_bias_shift0_reg[0] (\int_bias_shift0_reg[0] ),
        .\numOfOutNeurons_read_reg_136_reg[15] ({flow_control_loop_pipe_sequential_init_U_n_30,flow_control_loop_pipe_sequential_init_U_n_31}),
        .\outNeurons_fu_42_reg[0] (\outNeurons_fu_42_reg[0]_0 ),
        .\outNeurons_fu_42_reg[15] ({\outNeurons_fu_42_reg_n_3_[15] ,\outNeurons_fu_42_reg_n_3_[14] ,\outNeurons_fu_42_reg_n_3_[13] ,\outNeurons_fu_42_reg_n_3_[12] ,\outNeurons_fu_42_reg_n_3_[11] ,\outNeurons_fu_42_reg_n_3_[10] ,\outNeurons_fu_42_reg_n_3_[9] ,\outNeurons_fu_42_reg_n_3_[8] ,\outNeurons_fu_42_reg_n_3_[7] ,\outNeurons_fu_42_reg_n_3_[6] ,\outNeurons_fu_42_reg_n_3_[5] ,\outNeurons_fu_42_reg_n_3_[4] ,\outNeurons_fu_42_reg_n_3_[3] ,\outNeurons_fu_42_reg_n_3_[2] ,\outNeurons_fu_42_reg_n_3_[1] ,\outNeurons_fu_42_reg_n_3_[0] }),
        .\outNeurons_fu_42_reg[4] ({flow_control_loop_pipe_sequential_init_U_n_33,flow_control_loop_pipe_sequential_init_U_n_34,flow_control_loop_pipe_sequential_init_U_n_35,flow_control_loop_pipe_sequential_init_U_n_36}),
        .\outNeurons_fu_42_reg[7] ({flow_control_loop_pipe_sequential_init_U_n_37,flow_control_loop_pipe_sequential_init_U_n_38,flow_control_loop_pipe_sequential_init_U_n_39}));
  CARRY4 icmp_ln33_fu_87_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln33_fu_87_p2_carry_n_3,icmp_ln33_fu_87_p2_carry_n_4,icmp_ln33_fu_87_p2_carry_n_5,icmp_ln33_fu_87_p2_carry_n_6}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln33_fu_87_p2_carry_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_10,flow_control_loop_pipe_sequential_init_U_n_11,flow_control_loop_pipe_sequential_init_U_n_12,flow_control_loop_pipe_sequential_init_U_n_13}));
  CARRY4 icmp_ln33_fu_87_p2_carry__0
       (.CI(icmp_ln33_fu_87_p2_carry_n_3),
        .CO({NLW_icmp_ln33_fu_87_p2_carry__0_CO_UNCONNECTED[3:2],CO,icmp_ln33_fu_87_p2_carry__0_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln33_fu_87_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,flow_control_loop_pipe_sequential_init_U_n_30,flow_control_loop_pipe_sequential_init_U_n_31}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 outNeurons_3_fu_93_p2_carry
       (.CI(1'b0),
        .CO({outNeurons_3_fu_93_p2_carry_n_3,outNeurons_3_fu_93_p2_carry_n_4,outNeurons_3_fu_93_p2_carry_n_5,outNeurons_3_fu_93_p2_carry_n_6}),
        .CYINIT(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_bias_address0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(outNeurons_3_fu_93_p2[4:1]),
        .S({flow_control_loop_pipe_sequential_init_U_n_33,flow_control_loop_pipe_sequential_init_U_n_34,flow_control_loop_pipe_sequential_init_U_n_35,flow_control_loop_pipe_sequential_init_U_n_36}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 outNeurons_3_fu_93_p2_carry__0
       (.CI(outNeurons_3_fu_93_p2_carry_n_3),
        .CO({outNeurons_3_fu_93_p2_carry__0_n_3,outNeurons_3_fu_93_p2_carry__0_n_4,outNeurons_3_fu_93_p2_carry__0_n_5,outNeurons_3_fu_93_p2_carry__0_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(outNeurons_3_fu_93_p2[8:5]),
        .S({ap_sig_allocacmp_outNeurons_2[8],flow_control_loop_pipe_sequential_init_U_n_37,flow_control_loop_pipe_sequential_init_U_n_38,flow_control_loop_pipe_sequential_init_U_n_39}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 outNeurons_3_fu_93_p2_carry__1
       (.CI(outNeurons_3_fu_93_p2_carry__0_n_3),
        .CO({outNeurons_3_fu_93_p2_carry__1_n_3,outNeurons_3_fu_93_p2_carry__1_n_4,outNeurons_3_fu_93_p2_carry__1_n_5,outNeurons_3_fu_93_p2_carry__1_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(outNeurons_3_fu_93_p2[12:9]),
        .S(ap_sig_allocacmp_outNeurons_2[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 outNeurons_3_fu_93_p2_carry__2
       (.CI(outNeurons_3_fu_93_p2_carry__1_n_3),
        .CO({NLW_outNeurons_3_fu_93_p2_carry__2_CO_UNCONNECTED[3:2],outNeurons_3_fu_93_p2_carry__2_n_5,outNeurons_3_fu_93_p2_carry__2_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_outNeurons_3_fu_93_p2_carry__2_O_UNCONNECTED[3],outNeurons_3_fu_93_p2[15:13]}),
        .S({1'b0,ap_sig_allocacmp_outNeurons_2[15:13]}));
  FDRE \outNeurons_fu_42_reg[0] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_3_fu_93_p2[0]),
        .Q(\outNeurons_fu_42_reg_n_3_[0] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_7));
  FDRE \outNeurons_fu_42_reg[10] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_3_fu_93_p2[10]),
        .Q(\outNeurons_fu_42_reg_n_3_[10] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_7));
  FDRE \outNeurons_fu_42_reg[11] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_3_fu_93_p2[11]),
        .Q(\outNeurons_fu_42_reg_n_3_[11] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_7));
  FDRE \outNeurons_fu_42_reg[12] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_3_fu_93_p2[12]),
        .Q(\outNeurons_fu_42_reg_n_3_[12] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_7));
  FDRE \outNeurons_fu_42_reg[13] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_3_fu_93_p2[13]),
        .Q(\outNeurons_fu_42_reg_n_3_[13] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_7));
  FDRE \outNeurons_fu_42_reg[14] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_3_fu_93_p2[14]),
        .Q(\outNeurons_fu_42_reg_n_3_[14] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_7));
  FDRE \outNeurons_fu_42_reg[15] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_3_fu_93_p2[15]),
        .Q(\outNeurons_fu_42_reg_n_3_[15] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_7));
  FDRE \outNeurons_fu_42_reg[1] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_3_fu_93_p2[1]),
        .Q(\outNeurons_fu_42_reg_n_3_[1] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_7));
  FDRE \outNeurons_fu_42_reg[2] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_3_fu_93_p2[2]),
        .Q(\outNeurons_fu_42_reg_n_3_[2] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_7));
  FDRE \outNeurons_fu_42_reg[3] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_3_fu_93_p2[3]),
        .Q(\outNeurons_fu_42_reg_n_3_[3] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_7));
  FDRE \outNeurons_fu_42_reg[4] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_3_fu_93_p2[4]),
        .Q(\outNeurons_fu_42_reg_n_3_[4] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_7));
  FDRE \outNeurons_fu_42_reg[5] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_3_fu_93_p2[5]),
        .Q(\outNeurons_fu_42_reg_n_3_[5] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_7));
  FDRE \outNeurons_fu_42_reg[6] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_3_fu_93_p2[6]),
        .Q(\outNeurons_fu_42_reg_n_3_[6] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_7));
  FDRE \outNeurons_fu_42_reg[7] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_3_fu_93_p2[7]),
        .Q(\outNeurons_fu_42_reg_n_3_[7] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_7));
  FDRE \outNeurons_fu_42_reg[8] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_3_fu_93_p2[8]),
        .Q(\outNeurons_fu_42_reg_n_3_[8] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_7));
  FDRE \outNeurons_fu_42_reg[9] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_3_fu_93_p2[9]),
        .Q(\outNeurons_fu_42_reg_n_3_[9] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_7));
  FDRE \zext_ln34_reg_119_reg[0] 
       (.C(ap_clk),
        .CE(outNeurons_fu_421),
        .D(grp_nnlayer_Pipeline_VITIS_LOOP_33_1_fu_88_bias_address0),
        .Q(\zext_ln34_reg_119_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \zext_ln34_reg_119_reg[1] 
       (.C(ap_clk),
        .CE(outNeurons_fu_421),
        .D(D[0]),
        .Q(\zext_ln34_reg_119_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \zext_ln34_reg_119_reg[2] 
       (.C(ap_clk),
        .CE(outNeurons_fu_421),
        .D(D[1]),
        .Q(\zext_ln34_reg_119_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \zext_ln34_reg_119_reg[3] 
       (.C(ap_clk),
        .CE(outNeurons_fu_421),
        .D(D[2]),
        .Q(\zext_ln34_reg_119_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \zext_ln34_reg_119_reg[4] 
       (.C(ap_clk),
        .CE(outNeurons_fu_421),
        .D(D[3]),
        .Q(\zext_ln34_reg_119_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \zext_ln34_reg_119_reg[5] 
       (.C(ap_clk),
        .CE(outNeurons_fu_421),
        .D(D[4]),
        .Q(\zext_ln34_reg_119_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \zext_ln34_reg_119_reg[6] 
       (.C(ap_clk),
        .CE(outNeurons_fu_421),
        .D(D[5]),
        .Q(\zext_ln34_reg_119_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \zext_ln34_reg_119_reg[7] 
       (.C(ap_clk),
        .CE(outNeurons_fu_421),
        .D(D[6]),
        .Q(\zext_ln34_reg_119_reg[7]_0 [7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "nnlayer_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3" *) 
module design_1_nnlayer_0_0_nnlayer_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3
   (D,
    grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0,
    \ap_CS_fsm_reg[6] ,
    grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_ce0,
    \output_r_addr_reg_406_reg[1]_0 ,
    \output_r_addr_reg_406_reg[2]_0 ,
    \output_r_addr_reg_406_reg[3]_0 ,
    \output_r_addr_reg_406_reg[4]_0 ,
    \output_r_addr_reg_406_reg[5]_0 ,
    \output_r_addr_reg_406_reg[6]_0 ,
    \output_r_addr_reg_406_reg[7]_0 ,
    \output_r_addr_reg_406_reg[0]_0 ,
    output_r_ce0,
    \ap_CS_fsm_reg[5] ,
    ap_enable_reg_pp0_iter0_reg_reg_0,
    ap_enable_reg_pp0_iter0_reg_reg_1,
    ap_enable_reg_pp0_iter0_reg_reg_2,
    ce0,
    ap_enable_reg_pp0_iter0_reg_reg_3,
    grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_input_r_address0,
    \ap_CS_fsm_reg[3] ,
    ap_clk,
    SR,
    B,
    A,
    ap_rst_n,
    \ap_CS_fsm_reg[6]_0 ,
    grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg,
    Q,
    ap_done,
    mem_reg,
    output_r_address01,
    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_output_r_ce0,
    ap_enable_reg_pp0_iter1,
    \icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 ,
    \weightIndexAdded_fu_78_reg[15]_0 ,
    \output_r_load_reg_426_reg[15]_0 );
  output [15:0]D;
  output [15:0]grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0;
  output [2:0]\ap_CS_fsm_reg[6] ;
  output grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_ce0;
  output \output_r_addr_reg_406_reg[1]_0 ;
  output \output_r_addr_reg_406_reg[2]_0 ;
  output \output_r_addr_reg_406_reg[3]_0 ;
  output \output_r_addr_reg_406_reg[4]_0 ;
  output \output_r_addr_reg_406_reg[5]_0 ;
  output \output_r_addr_reg_406_reg[6]_0 ;
  output \output_r_addr_reg_406_reg[7]_0 ;
  output \output_r_addr_reg_406_reg[0]_0 ;
  output output_r_ce0;
  output \ap_CS_fsm_reg[5] ;
  output ap_enable_reg_pp0_iter0_reg_reg_0;
  output ap_enable_reg_pp0_iter0_reg_reg_1;
  output ap_enable_reg_pp0_iter0_reg_reg_2;
  output ce0;
  output ap_enable_reg_pp0_iter0_reg_reg_3;
  output [7:0]grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_input_r_address0;
  output \ap_CS_fsm_reg[3] ;
  input ap_clk;
  input [0:0]SR;
  input [15:0]B;
  input [15:0]A;
  input ap_rst_n;
  input \ap_CS_fsm_reg[6]_0 ;
  input grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg;
  input [5:0]Q;
  input ap_done;
  input [7:0]mem_reg;
  input output_r_address01;
  input grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_output_r_ce0;
  input ap_enable_reg_pp0_iter1;
  input [31:0]\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 ;
  input [15:0]\weightIndexAdded_fu_78_reg[15]_0 ;
  input [15:0]\output_r_load_reg_426_reg[15]_0 ;

  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]D;
  wire [5:0]Q;
  wire [0:0]SR;
  wire add_ln42_fu_234_p2__0_carry__0_i_1_n_3;
  wire add_ln42_fu_234_p2__0_carry__0_i_2_n_3;
  wire add_ln42_fu_234_p2__0_carry__0_i_3_n_3;
  wire add_ln42_fu_234_p2__0_carry__0_i_4_n_3;
  wire add_ln42_fu_234_p2__0_carry__0_i_5_n_3;
  wire add_ln42_fu_234_p2__0_carry__0_i_6_n_3;
  wire add_ln42_fu_234_p2__0_carry__0_i_7_n_3;
  wire add_ln42_fu_234_p2__0_carry__0_i_8_n_3;
  wire add_ln42_fu_234_p2__0_carry__0_n_3;
  wire add_ln42_fu_234_p2__0_carry__0_n_4;
  wire add_ln42_fu_234_p2__0_carry__0_n_5;
  wire add_ln42_fu_234_p2__0_carry__0_n_6;
  wire add_ln42_fu_234_p2__0_carry__1_i_1_n_3;
  wire add_ln42_fu_234_p2__0_carry__1_i_2_n_3;
  wire add_ln42_fu_234_p2__0_carry__1_i_3_n_3;
  wire add_ln42_fu_234_p2__0_carry__1_i_4_n_3;
  wire add_ln42_fu_234_p2__0_carry__1_i_5_n_3;
  wire add_ln42_fu_234_p2__0_carry__1_i_6_n_3;
  wire add_ln42_fu_234_p2__0_carry__1_i_7_n_3;
  wire add_ln42_fu_234_p2__0_carry__1_i_8_n_3;
  wire add_ln42_fu_234_p2__0_carry__1_n_3;
  wire add_ln42_fu_234_p2__0_carry__1_n_4;
  wire add_ln42_fu_234_p2__0_carry__1_n_5;
  wire add_ln42_fu_234_p2__0_carry__1_n_6;
  wire add_ln42_fu_234_p2__0_carry__2_i_1_n_3;
  wire add_ln42_fu_234_p2__0_carry__2_i_2_n_3;
  wire add_ln42_fu_234_p2__0_carry__2_i_3_n_3;
  wire add_ln42_fu_234_p2__0_carry__2_i_4_n_3;
  wire add_ln42_fu_234_p2__0_carry__2_i_5_n_3;
  wire add_ln42_fu_234_p2__0_carry__2_i_6_n_3;
  wire add_ln42_fu_234_p2__0_carry__2_i_7_n_3;
  wire add_ln42_fu_234_p2__0_carry__2_i_8_n_3;
  wire add_ln42_fu_234_p2__0_carry__2_n_4;
  wire add_ln42_fu_234_p2__0_carry__2_n_5;
  wire add_ln42_fu_234_p2__0_carry__2_n_6;
  wire add_ln42_fu_234_p2__0_carry_i_1_n_3;
  wire add_ln42_fu_234_p2__0_carry_i_2_n_3;
  wire add_ln42_fu_234_p2__0_carry_i_3_n_3;
  wire add_ln42_fu_234_p2__0_carry_i_4_n_3;
  wire add_ln42_fu_234_p2__0_carry_i_5_n_3;
  wire add_ln42_fu_234_p2__0_carry_i_6_n_3;
  wire add_ln42_fu_234_p2__0_carry_i_7_n_3;
  wire add_ln42_fu_234_p2__0_carry_n_3;
  wire add_ln42_fu_234_p2__0_carry_n_4;
  wire add_ln42_fu_234_p2__0_carry_n_5;
  wire add_ln42_fu_234_p2__0_carry_n_6;
  wire addr_cmp_fu_253_p2;
  wire addr_cmp_fu_253_p2_carry__0_i_1_n_3;
  wire addr_cmp_fu_253_p2_carry__0_i_2_n_3;
  wire addr_cmp_fu_253_p2_carry__0_i_3_n_3;
  wire addr_cmp_fu_253_p2_carry__0_i_4_n_3;
  wire addr_cmp_fu_253_p2_carry__0_n_3;
  wire addr_cmp_fu_253_p2_carry__0_n_4;
  wire addr_cmp_fu_253_p2_carry__0_n_5;
  wire addr_cmp_fu_253_p2_carry__0_n_6;
  wire addr_cmp_fu_253_p2_carry__1_i_1_n_3;
  wire addr_cmp_fu_253_p2_carry__1_i_2_n_3;
  wire addr_cmp_fu_253_p2_carry__1_i_3_n_3;
  wire addr_cmp_fu_253_p2_carry__1_i_4_n_3;
  wire addr_cmp_fu_253_p2_carry__1_n_3;
  wire addr_cmp_fu_253_p2_carry__1_n_4;
  wire addr_cmp_fu_253_p2_carry__1_n_5;
  wire addr_cmp_fu_253_p2_carry__1_n_6;
  wire addr_cmp_fu_253_p2_carry__2_i_1_n_3;
  wire addr_cmp_fu_253_p2_carry__2_i_2_n_3;
  wire addr_cmp_fu_253_p2_carry__2_i_3_n_3;
  wire addr_cmp_fu_253_p2_carry__2_i_4_n_3;
  wire addr_cmp_fu_253_p2_carry__2_n_3;
  wire addr_cmp_fu_253_p2_carry__2_n_4;
  wire addr_cmp_fu_253_p2_carry__2_n_5;
  wire addr_cmp_fu_253_p2_carry__2_n_6;
  wire addr_cmp_fu_253_p2_carry__3_i_1_n_3;
  wire addr_cmp_fu_253_p2_carry__3_i_2_n_3;
  wire addr_cmp_fu_253_p2_carry__3_i_3_n_3;
  wire addr_cmp_fu_253_p2_carry__3_i_4_n_3;
  wire addr_cmp_fu_253_p2_carry__3_n_3;
  wire addr_cmp_fu_253_p2_carry__3_n_4;
  wire addr_cmp_fu_253_p2_carry__3_n_5;
  wire addr_cmp_fu_253_p2_carry__3_n_6;
  wire addr_cmp_fu_253_p2_carry__4_i_1_n_3;
  wire addr_cmp_fu_253_p2_carry__4_i_2_n_3;
  wire addr_cmp_fu_253_p2_carry__4_n_6;
  wire addr_cmp_fu_253_p2_carry_i_1_n_3;
  wire addr_cmp_fu_253_p2_carry_i_2_n_3;
  wire addr_cmp_fu_253_p2_carry_i_3_n_3;
  wire addr_cmp_fu_253_p2_carry_i_4_n_3;
  wire addr_cmp_fu_253_p2_carry_n_3;
  wire addr_cmp_fu_253_p2_carry_n_4;
  wire addr_cmp_fu_253_p2_carry_n_5;
  wire addr_cmp_fu_253_p2_carry_n_6;
  wire addr_cmp_reg_411;
  wire addr_cmp_reg_4110;
  wire addr_cmp_reg_411_pp0_iter1_reg;
  wire ap_CS_fsm_pp0_stage1;
  wire \ap_CS_fsm_reg[3] ;
  wire \ap_CS_fsm_reg[5] ;
  wire [2:0]\ap_CS_fsm_reg[6] ;
  wire \ap_CS_fsm_reg[6]_0 ;
  wire \ap_CS_fsm_reg_n_3_[0] ;
  wire [1:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_done;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter0_reg_reg_0;
  wire ap_enable_reg_pp0_iter0_reg_reg_1;
  wire ap_enable_reg_pp0_iter0_reg_reg_2;
  wire ap_enable_reg_pp0_iter0_reg_reg_3;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_0;
  wire ap_enable_reg_pp0_iter1_i_1_n_3;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter2_i_1_n_3;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_rst_n;
  wire ce0;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_output_r_ce0;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_ready;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg;
  wire [7:0]grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_input_r_address0;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_output_r_we0;
  wire [15:0]grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_ce0;
  wire i__carry__0_i_1_n_3;
  wire i__carry__0_i_2_n_3;
  wire i__carry__0_i_3_n_3;
  wire i__carry__0_i_4_n_3;
  wire i__carry__1_i_1_n_3;
  wire i__carry__1_i_2_n_3;
  wire i__carry__1_i_3_n_3;
  wire i__carry_i_1_n_3;
  wire i__carry_i_2_n_3;
  wire i__carry_i_3_n_3;
  wire i__carry_i_4_n_3;
  wire icmp_ln37_fu_169_p27_in;
  wire \icmp_ln37_fu_169_p2_inferred__0/i__carry__0_n_3 ;
  wire \icmp_ln37_fu_169_p2_inferred__0/i__carry__0_n_4 ;
  wire \icmp_ln37_fu_169_p2_inferred__0/i__carry__0_n_5 ;
  wire \icmp_ln37_fu_169_p2_inferred__0/i__carry__0_n_6 ;
  wire [31:0]\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 ;
  wire \icmp_ln37_fu_169_p2_inferred__0/i__carry__1_n_5 ;
  wire \icmp_ln37_fu_169_p2_inferred__0/i__carry__1_n_6 ;
  wire \icmp_ln37_fu_169_p2_inferred__0/i__carry_n_3 ;
  wire \icmp_ln37_fu_169_p2_inferred__0/i__carry_n_4 ;
  wire \icmp_ln37_fu_169_p2_inferred__0/i__carry_n_5 ;
  wire \icmp_ln37_fu_169_p2_inferred__0/i__carry_n_6 ;
  wire icmp_ln39_fu_189_p2_carry__0_i_1_n_3;
  wire icmp_ln39_fu_189_p2_carry__0_i_2_n_3;
  wire icmp_ln39_fu_189_p2_carry__0_n_6;
  wire icmp_ln39_fu_189_p2_carry_i_1_n_3;
  wire icmp_ln39_fu_189_p2_carry_i_2_n_3;
  wire icmp_ln39_fu_189_p2_carry_i_3_n_3;
  wire icmp_ln39_fu_189_p2_carry_i_4_n_3;
  wire icmp_ln39_fu_189_p2_carry_n_3;
  wire icmp_ln39_fu_189_p2_carry_n_4;
  wire icmp_ln39_fu_189_p2_carry_n_5;
  wire icmp_ln39_fu_189_p2_carry_n_6;
  wire [14:0]in;
  wire inNeurons_fu_740;
  wire inNeurons_fu_7400_out;
  wire \inNeurons_fu_74[0]_i_2_n_3 ;
  wire [7:0]inNeurons_fu_74_reg;
  wire \inNeurons_fu_74_reg[0]_i_1_n_10 ;
  wire \inNeurons_fu_74_reg[0]_i_1_n_3 ;
  wire \inNeurons_fu_74_reg[0]_i_1_n_4 ;
  wire \inNeurons_fu_74_reg[0]_i_1_n_5 ;
  wire \inNeurons_fu_74_reg[0]_i_1_n_6 ;
  wire \inNeurons_fu_74_reg[0]_i_1_n_7 ;
  wire \inNeurons_fu_74_reg[0]_i_1_n_8 ;
  wire \inNeurons_fu_74_reg[0]_i_1_n_9 ;
  wire \inNeurons_fu_74_reg[4]_i_1_n_10 ;
  wire \inNeurons_fu_74_reg[4]_i_1_n_4 ;
  wire \inNeurons_fu_74_reg[4]_i_1_n_5 ;
  wire \inNeurons_fu_74_reg[4]_i_1_n_6 ;
  wire \inNeurons_fu_74_reg[4]_i_1_n_7 ;
  wire \inNeurons_fu_74_reg[4]_i_1_n_8 ;
  wire \inNeurons_fu_74_reg[4]_i_1_n_9 ;
  wire \indvar_flatten_fu_82[0]_i_2_n_3 ;
  wire [31:0]indvar_flatten_fu_82_reg;
  wire \indvar_flatten_fu_82_reg[0]_i_1_n_10 ;
  wire \indvar_flatten_fu_82_reg[0]_i_1_n_3 ;
  wire \indvar_flatten_fu_82_reg[0]_i_1_n_4 ;
  wire \indvar_flatten_fu_82_reg[0]_i_1_n_5 ;
  wire \indvar_flatten_fu_82_reg[0]_i_1_n_6 ;
  wire \indvar_flatten_fu_82_reg[0]_i_1_n_7 ;
  wire \indvar_flatten_fu_82_reg[0]_i_1_n_8 ;
  wire \indvar_flatten_fu_82_reg[0]_i_1_n_9 ;
  wire \indvar_flatten_fu_82_reg[12]_i_1_n_10 ;
  wire \indvar_flatten_fu_82_reg[12]_i_1_n_3 ;
  wire \indvar_flatten_fu_82_reg[12]_i_1_n_4 ;
  wire \indvar_flatten_fu_82_reg[12]_i_1_n_5 ;
  wire \indvar_flatten_fu_82_reg[12]_i_1_n_6 ;
  wire \indvar_flatten_fu_82_reg[12]_i_1_n_7 ;
  wire \indvar_flatten_fu_82_reg[12]_i_1_n_8 ;
  wire \indvar_flatten_fu_82_reg[12]_i_1_n_9 ;
  wire \indvar_flatten_fu_82_reg[16]_i_1_n_10 ;
  wire \indvar_flatten_fu_82_reg[16]_i_1_n_3 ;
  wire \indvar_flatten_fu_82_reg[16]_i_1_n_4 ;
  wire \indvar_flatten_fu_82_reg[16]_i_1_n_5 ;
  wire \indvar_flatten_fu_82_reg[16]_i_1_n_6 ;
  wire \indvar_flatten_fu_82_reg[16]_i_1_n_7 ;
  wire \indvar_flatten_fu_82_reg[16]_i_1_n_8 ;
  wire \indvar_flatten_fu_82_reg[16]_i_1_n_9 ;
  wire \indvar_flatten_fu_82_reg[20]_i_1_n_10 ;
  wire \indvar_flatten_fu_82_reg[20]_i_1_n_3 ;
  wire \indvar_flatten_fu_82_reg[20]_i_1_n_4 ;
  wire \indvar_flatten_fu_82_reg[20]_i_1_n_5 ;
  wire \indvar_flatten_fu_82_reg[20]_i_1_n_6 ;
  wire \indvar_flatten_fu_82_reg[20]_i_1_n_7 ;
  wire \indvar_flatten_fu_82_reg[20]_i_1_n_8 ;
  wire \indvar_flatten_fu_82_reg[20]_i_1_n_9 ;
  wire \indvar_flatten_fu_82_reg[24]_i_1_n_10 ;
  wire \indvar_flatten_fu_82_reg[24]_i_1_n_3 ;
  wire \indvar_flatten_fu_82_reg[24]_i_1_n_4 ;
  wire \indvar_flatten_fu_82_reg[24]_i_1_n_5 ;
  wire \indvar_flatten_fu_82_reg[24]_i_1_n_6 ;
  wire \indvar_flatten_fu_82_reg[24]_i_1_n_7 ;
  wire \indvar_flatten_fu_82_reg[24]_i_1_n_8 ;
  wire \indvar_flatten_fu_82_reg[24]_i_1_n_9 ;
  wire \indvar_flatten_fu_82_reg[28]_i_1_n_10 ;
  wire \indvar_flatten_fu_82_reg[28]_i_1_n_4 ;
  wire \indvar_flatten_fu_82_reg[28]_i_1_n_5 ;
  wire \indvar_flatten_fu_82_reg[28]_i_1_n_6 ;
  wire \indvar_flatten_fu_82_reg[28]_i_1_n_7 ;
  wire \indvar_flatten_fu_82_reg[28]_i_1_n_8 ;
  wire \indvar_flatten_fu_82_reg[28]_i_1_n_9 ;
  wire \indvar_flatten_fu_82_reg[4]_i_1_n_10 ;
  wire \indvar_flatten_fu_82_reg[4]_i_1_n_3 ;
  wire \indvar_flatten_fu_82_reg[4]_i_1_n_4 ;
  wire \indvar_flatten_fu_82_reg[4]_i_1_n_5 ;
  wire \indvar_flatten_fu_82_reg[4]_i_1_n_6 ;
  wire \indvar_flatten_fu_82_reg[4]_i_1_n_7 ;
  wire \indvar_flatten_fu_82_reg[4]_i_1_n_8 ;
  wire \indvar_flatten_fu_82_reg[4]_i_1_n_9 ;
  wire \indvar_flatten_fu_82_reg[8]_i_1_n_10 ;
  wire \indvar_flatten_fu_82_reg[8]_i_1_n_3 ;
  wire \indvar_flatten_fu_82_reg[8]_i_1_n_4 ;
  wire \indvar_flatten_fu_82_reg[8]_i_1_n_5 ;
  wire \indvar_flatten_fu_82_reg[8]_i_1_n_6 ;
  wire \indvar_flatten_fu_82_reg[8]_i_1_n_7 ;
  wire \indvar_flatten_fu_82_reg[8]_i_1_n_8 ;
  wire \indvar_flatten_fu_82_reg[8]_i_1_n_9 ;
  wire [7:0]mem_reg;
  wire mem_reg_i_10__1_n_4;
  wire mem_reg_i_10__1_n_5;
  wire mem_reg_i_10__1_n_6;
  wire mem_reg_i_11__1_n_3;
  wire mem_reg_i_11__1_n_4;
  wire mem_reg_i_11__1_n_5;
  wire mem_reg_i_11__1_n_6;
  wire mem_reg_i_24__1_n_3;
  wire [15:0]outNeurons_1_fu_264_p2;
  wire [15:0]outNeurons_fu_70;
  wire \outNeurons_fu_70[12]_i_2_n_3 ;
  wire \outNeurons_fu_70[12]_i_3_n_3 ;
  wire \outNeurons_fu_70[12]_i_4_n_3 ;
  wire \outNeurons_fu_70[12]_i_5_n_3 ;
  wire \outNeurons_fu_70[15]_i_4_n_3 ;
  wire \outNeurons_fu_70[15]_i_5_n_3 ;
  wire \outNeurons_fu_70[15]_i_6_n_3 ;
  wire \outNeurons_fu_70[4]_i_2_n_3 ;
  wire \outNeurons_fu_70[4]_i_3_n_3 ;
  wire \outNeurons_fu_70[4]_i_4_n_3 ;
  wire \outNeurons_fu_70[4]_i_5_n_3 ;
  wire \outNeurons_fu_70[8]_i_2_n_3 ;
  wire \outNeurons_fu_70[8]_i_3_n_3 ;
  wire \outNeurons_fu_70[8]_i_4_n_3 ;
  wire \outNeurons_fu_70[8]_i_5_n_3 ;
  wire \outNeurons_fu_70_reg[12]_i_1_n_3 ;
  wire \outNeurons_fu_70_reg[12]_i_1_n_4 ;
  wire \outNeurons_fu_70_reg[12]_i_1_n_5 ;
  wire \outNeurons_fu_70_reg[12]_i_1_n_6 ;
  wire \outNeurons_fu_70_reg[15]_i_3_n_5 ;
  wire \outNeurons_fu_70_reg[15]_i_3_n_6 ;
  wire \outNeurons_fu_70_reg[4]_i_1_n_3 ;
  wire \outNeurons_fu_70_reg[4]_i_1_n_4 ;
  wire \outNeurons_fu_70_reg[4]_i_1_n_5 ;
  wire \outNeurons_fu_70_reg[4]_i_1_n_6 ;
  wire \outNeurons_fu_70_reg[8]_i_1_n_3 ;
  wire \outNeurons_fu_70_reg[8]_i_1_n_4 ;
  wire \outNeurons_fu_70_reg[8]_i_1_n_5 ;
  wire \outNeurons_fu_70_reg[8]_i_1_n_6 ;
  wire [7:0]output_r_addr_reg_406;
  wire [7:0]output_r_addr_reg_406_pp0_iter1_reg;
  wire \output_r_addr_reg_406_reg[0]_0 ;
  wire \output_r_addr_reg_406_reg[1]_0 ;
  wire \output_r_addr_reg_406_reg[2]_0 ;
  wire \output_r_addr_reg_406_reg[3]_0 ;
  wire \output_r_addr_reg_406_reg[4]_0 ;
  wire \output_r_addr_reg_406_reg[5]_0 ;
  wire \output_r_addr_reg_406_reg[6]_0 ;
  wire \output_r_addr_reg_406_reg[7]_0 ;
  wire output_r_address01;
  wire output_r_ce0;
  wire [15:0]output_r_load_reg_426;
  wire output_r_load_reg_4260;
  wire [15:0]\output_r_load_reg_426_reg[15]_0 ;
  wire p_0_in;
  wire [17:0]reuse_addr_reg_fu_62;
  wire [15:0]reuse_reg_fu_66;
  wire [15:0]select_ln30_fu_194_p3;
  wire \weightIndexAdded_fu_78[0]_i_6_n_3 ;
  wire \weightIndexAdded_fu_78[0]_i_7_n_3 ;
  wire \weightIndexAdded_fu_78[0]_i_8_n_3 ;
  wire \weightIndexAdded_fu_78[0]_i_9_n_3 ;
  wire \weightIndexAdded_fu_78[12]_i_5_n_3 ;
  wire \weightIndexAdded_fu_78[12]_i_6_n_3 ;
  wire \weightIndexAdded_fu_78[12]_i_7_n_3 ;
  wire \weightIndexAdded_fu_78[12]_i_8_n_3 ;
  wire \weightIndexAdded_fu_78[4]_i_6_n_3 ;
  wire \weightIndexAdded_fu_78[4]_i_7_n_3 ;
  wire \weightIndexAdded_fu_78[4]_i_8_n_3 ;
  wire \weightIndexAdded_fu_78[4]_i_9_n_3 ;
  wire \weightIndexAdded_fu_78[8]_i_6_n_3 ;
  wire \weightIndexAdded_fu_78[8]_i_7_n_3 ;
  wire \weightIndexAdded_fu_78[8]_i_8_n_3 ;
  wire \weightIndexAdded_fu_78[8]_i_9_n_3 ;
  wire [15:0]weightIndexAdded_fu_78_reg;
  wire \weightIndexAdded_fu_78_reg[0]_i_1_n_10 ;
  wire \weightIndexAdded_fu_78_reg[0]_i_1_n_3 ;
  wire \weightIndexAdded_fu_78_reg[0]_i_1_n_4 ;
  wire \weightIndexAdded_fu_78_reg[0]_i_1_n_5 ;
  wire \weightIndexAdded_fu_78_reg[0]_i_1_n_6 ;
  wire \weightIndexAdded_fu_78_reg[0]_i_1_n_7 ;
  wire \weightIndexAdded_fu_78_reg[0]_i_1_n_8 ;
  wire \weightIndexAdded_fu_78_reg[0]_i_1_n_9 ;
  wire \weightIndexAdded_fu_78_reg[12]_i_1_n_10 ;
  wire \weightIndexAdded_fu_78_reg[12]_i_1_n_4 ;
  wire \weightIndexAdded_fu_78_reg[12]_i_1_n_5 ;
  wire \weightIndexAdded_fu_78_reg[12]_i_1_n_6 ;
  wire \weightIndexAdded_fu_78_reg[12]_i_1_n_7 ;
  wire \weightIndexAdded_fu_78_reg[12]_i_1_n_8 ;
  wire \weightIndexAdded_fu_78_reg[12]_i_1_n_9 ;
  wire [15:0]\weightIndexAdded_fu_78_reg[15]_0 ;
  wire \weightIndexAdded_fu_78_reg[4]_i_1_n_10 ;
  wire \weightIndexAdded_fu_78_reg[4]_i_1_n_3 ;
  wire \weightIndexAdded_fu_78_reg[4]_i_1_n_4 ;
  wire \weightIndexAdded_fu_78_reg[4]_i_1_n_5 ;
  wire \weightIndexAdded_fu_78_reg[4]_i_1_n_6 ;
  wire \weightIndexAdded_fu_78_reg[4]_i_1_n_7 ;
  wire \weightIndexAdded_fu_78_reg[4]_i_1_n_8 ;
  wire \weightIndexAdded_fu_78_reg[4]_i_1_n_9 ;
  wire \weightIndexAdded_fu_78_reg[8]_i_1_n_10 ;
  wire \weightIndexAdded_fu_78_reg[8]_i_1_n_3 ;
  wire \weightIndexAdded_fu_78_reg[8]_i_1_n_4 ;
  wire \weightIndexAdded_fu_78_reg[8]_i_1_n_5 ;
  wire \weightIndexAdded_fu_78_reg[8]_i_1_n_6 ;
  wire \weightIndexAdded_fu_78_reg[8]_i_1_n_7 ;
  wire \weightIndexAdded_fu_78_reg[8]_i_1_n_8 ;
  wire \weightIndexAdded_fu_78_reg[8]_i_1_n_9 ;
  wire [3:3]NLW_add_ln42_fu_234_p2__0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_addr_cmp_fu_253_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_addr_cmp_fu_253_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_addr_cmp_fu_253_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_addr_cmp_fu_253_p2_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_addr_cmp_fu_253_p2_carry__3_O_UNCONNECTED;
  wire [3:2]NLW_addr_cmp_fu_253_p2_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_addr_cmp_fu_253_p2_carry__4_O_UNCONNECTED;
  wire [3:0]\NLW_icmp_ln37_fu_169_p2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_icmp_ln37_fu_169_p2_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_icmp_ln37_fu_169_p2_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_icmp_ln37_fu_169_p2_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]NLW_icmp_ln39_fu_189_p2_carry_O_UNCONNECTED;
  wire [3:2]NLW_icmp_ln39_fu_189_p2_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_icmp_ln39_fu_189_p2_carry__0_O_UNCONNECTED;
  wire [3:3]\NLW_inNeurons_fu_74_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_indvar_flatten_fu_82_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]NLW_mem_reg_i_10__1_CO_UNCONNECTED;
  wire [3:2]\NLW_outNeurons_fu_70_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_outNeurons_fu_70_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_weightIndexAdded_fu_78_reg[12]_i_1_CO_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln42_fu_234_p2__0_carry
       (.CI(1'b0),
        .CO({add_ln42_fu_234_p2__0_carry_n_3,add_ln42_fu_234_p2__0_carry_n_4,add_ln42_fu_234_p2__0_carry_n_5,add_ln42_fu_234_p2__0_carry_n_6}),
        .CYINIT(1'b0),
        .DI({add_ln42_fu_234_p2__0_carry_i_1_n_3,add_ln42_fu_234_p2__0_carry_i_2_n_3,add_ln42_fu_234_p2__0_carry_i_3_n_3,1'b0}),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0[3:0]),
        .S({add_ln42_fu_234_p2__0_carry_i_4_n_3,add_ln42_fu_234_p2__0_carry_i_5_n_3,add_ln42_fu_234_p2__0_carry_i_6_n_3,add_ln42_fu_234_p2__0_carry_i_7_n_3}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln42_fu_234_p2__0_carry__0
       (.CI(add_ln42_fu_234_p2__0_carry_n_3),
        .CO({add_ln42_fu_234_p2__0_carry__0_n_3,add_ln42_fu_234_p2__0_carry__0_n_4,add_ln42_fu_234_p2__0_carry__0_n_5,add_ln42_fu_234_p2__0_carry__0_n_6}),
        .CYINIT(1'b0),
        .DI({add_ln42_fu_234_p2__0_carry__0_i_1_n_3,add_ln42_fu_234_p2__0_carry__0_i_2_n_3,add_ln42_fu_234_p2__0_carry__0_i_3_n_3,add_ln42_fu_234_p2__0_carry__0_i_4_n_3}),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0[7:4]),
        .S({add_ln42_fu_234_p2__0_carry__0_i_5_n_3,add_ln42_fu_234_p2__0_carry__0_i_6_n_3,add_ln42_fu_234_p2__0_carry__0_i_7_n_3,add_ln42_fu_234_p2__0_carry__0_i_8_n_3}));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    add_ln42_fu_234_p2__0_carry__0_i_1
       (.I0(outNeurons_fu_70[6]),
        .I1(weightIndexAdded_fu_78_reg[6]),
        .I2(p_0_in),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [6]),
        .O(add_ln42_fu_234_p2__0_carry__0_i_1_n_3));
  LUT4 #(
    .INIT(16'hC808)) 
    add_ln42_fu_234_p2__0_carry__0_i_2
       (.I0(outNeurons_fu_70[5]),
        .I1(weightIndexAdded_fu_78_reg[5]),
        .I2(p_0_in),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [5]),
        .O(add_ln42_fu_234_p2__0_carry__0_i_2_n_3));
  LUT4 #(
    .INIT(16'hC808)) 
    add_ln42_fu_234_p2__0_carry__0_i_3
       (.I0(outNeurons_fu_70[4]),
        .I1(weightIndexAdded_fu_78_reg[4]),
        .I2(p_0_in),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [4]),
        .O(add_ln42_fu_234_p2__0_carry__0_i_3_n_3));
  LUT4 #(
    .INIT(16'hC808)) 
    add_ln42_fu_234_p2__0_carry__0_i_4
       (.I0(outNeurons_fu_70[3]),
        .I1(weightIndexAdded_fu_78_reg[3]),
        .I2(p_0_in),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [3]),
        .O(add_ln42_fu_234_p2__0_carry__0_i_4_n_3));
  (* HLUTNM = "lutpair1" *) 
  LUT5 #(
    .INIT(32'hC93936C6)) 
    add_ln42_fu_234_p2__0_carry__0_i_5
       (.I0(outNeurons_fu_70[7]),
        .I1(weightIndexAdded_fu_78_reg[7]),
        .I2(p_0_in),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [7]),
        .I4(add_ln42_fu_234_p2__0_carry__0_i_1_n_3),
        .O(add_ln42_fu_234_p2__0_carry__0_i_5_n_3));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'hC93936C6)) 
    add_ln42_fu_234_p2__0_carry__0_i_6
       (.I0(outNeurons_fu_70[6]),
        .I1(weightIndexAdded_fu_78_reg[6]),
        .I2(p_0_in),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [6]),
        .I4(add_ln42_fu_234_p2__0_carry__0_i_2_n_3),
        .O(add_ln42_fu_234_p2__0_carry__0_i_6_n_3));
  LUT5 #(
    .INIT(32'hC93936C6)) 
    add_ln42_fu_234_p2__0_carry__0_i_7
       (.I0(outNeurons_fu_70[5]),
        .I1(weightIndexAdded_fu_78_reg[5]),
        .I2(p_0_in),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [5]),
        .I4(add_ln42_fu_234_p2__0_carry__0_i_3_n_3),
        .O(add_ln42_fu_234_p2__0_carry__0_i_7_n_3));
  LUT5 #(
    .INIT(32'hC93936C6)) 
    add_ln42_fu_234_p2__0_carry__0_i_8
       (.I0(outNeurons_fu_70[4]),
        .I1(weightIndexAdded_fu_78_reg[4]),
        .I2(p_0_in),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [4]),
        .I4(add_ln42_fu_234_p2__0_carry__0_i_4_n_3),
        .O(add_ln42_fu_234_p2__0_carry__0_i_8_n_3));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln42_fu_234_p2__0_carry__1
       (.CI(add_ln42_fu_234_p2__0_carry__0_n_3),
        .CO({add_ln42_fu_234_p2__0_carry__1_n_3,add_ln42_fu_234_p2__0_carry__1_n_4,add_ln42_fu_234_p2__0_carry__1_n_5,add_ln42_fu_234_p2__0_carry__1_n_6}),
        .CYINIT(1'b0),
        .DI({add_ln42_fu_234_p2__0_carry__1_i_1_n_3,add_ln42_fu_234_p2__0_carry__1_i_2_n_3,add_ln42_fu_234_p2__0_carry__1_i_3_n_3,add_ln42_fu_234_p2__0_carry__1_i_4_n_3}),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0[11:8]),
        .S({add_ln42_fu_234_p2__0_carry__1_i_5_n_3,add_ln42_fu_234_p2__0_carry__1_i_6_n_3,add_ln42_fu_234_p2__0_carry__1_i_7_n_3,add_ln42_fu_234_p2__0_carry__1_i_8_n_3}));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    add_ln42_fu_234_p2__0_carry__1_i_1
       (.I0(outNeurons_fu_70[10]),
        .I1(weightIndexAdded_fu_78_reg[10]),
        .I2(p_0_in),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [10]),
        .O(add_ln42_fu_234_p2__0_carry__1_i_1_n_3));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    add_ln42_fu_234_p2__0_carry__1_i_2
       (.I0(outNeurons_fu_70[9]),
        .I1(weightIndexAdded_fu_78_reg[9]),
        .I2(p_0_in),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [9]),
        .O(add_ln42_fu_234_p2__0_carry__1_i_2_n_3));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    add_ln42_fu_234_p2__0_carry__1_i_3
       (.I0(outNeurons_fu_70[8]),
        .I1(weightIndexAdded_fu_78_reg[8]),
        .I2(p_0_in),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [8]),
        .O(add_ln42_fu_234_p2__0_carry__1_i_3_n_3));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    add_ln42_fu_234_p2__0_carry__1_i_4
       (.I0(outNeurons_fu_70[7]),
        .I1(weightIndexAdded_fu_78_reg[7]),
        .I2(p_0_in),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [7]),
        .O(add_ln42_fu_234_p2__0_carry__1_i_4_n_3));
  (* HLUTNM = "lutpair5" *) 
  LUT5 #(
    .INIT(32'hC93936C6)) 
    add_ln42_fu_234_p2__0_carry__1_i_5
       (.I0(outNeurons_fu_70[11]),
        .I1(weightIndexAdded_fu_78_reg[11]),
        .I2(p_0_in),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [11]),
        .I4(add_ln42_fu_234_p2__0_carry__1_i_1_n_3),
        .O(add_ln42_fu_234_p2__0_carry__1_i_5_n_3));
  (* HLUTNM = "lutpair4" *) 
  LUT5 #(
    .INIT(32'hC93936C6)) 
    add_ln42_fu_234_p2__0_carry__1_i_6
       (.I0(outNeurons_fu_70[10]),
        .I1(weightIndexAdded_fu_78_reg[10]),
        .I2(p_0_in),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [10]),
        .I4(add_ln42_fu_234_p2__0_carry__1_i_2_n_3),
        .O(add_ln42_fu_234_p2__0_carry__1_i_6_n_3));
  (* HLUTNM = "lutpair3" *) 
  LUT5 #(
    .INIT(32'hC93936C6)) 
    add_ln42_fu_234_p2__0_carry__1_i_7
       (.I0(outNeurons_fu_70[9]),
        .I1(weightIndexAdded_fu_78_reg[9]),
        .I2(p_0_in),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [9]),
        .I4(add_ln42_fu_234_p2__0_carry__1_i_3_n_3),
        .O(add_ln42_fu_234_p2__0_carry__1_i_7_n_3));
  (* HLUTNM = "lutpair2" *) 
  LUT5 #(
    .INIT(32'hC93936C6)) 
    add_ln42_fu_234_p2__0_carry__1_i_8
       (.I0(outNeurons_fu_70[8]),
        .I1(weightIndexAdded_fu_78_reg[8]),
        .I2(p_0_in),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [8]),
        .I4(add_ln42_fu_234_p2__0_carry__1_i_4_n_3),
        .O(add_ln42_fu_234_p2__0_carry__1_i_8_n_3));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln42_fu_234_p2__0_carry__2
       (.CI(add_ln42_fu_234_p2__0_carry__1_n_3),
        .CO({NLW_add_ln42_fu_234_p2__0_carry__2_CO_UNCONNECTED[3],add_ln42_fu_234_p2__0_carry__2_n_4,add_ln42_fu_234_p2__0_carry__2_n_5,add_ln42_fu_234_p2__0_carry__2_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,add_ln42_fu_234_p2__0_carry__2_i_1_n_3,add_ln42_fu_234_p2__0_carry__2_i_2_n_3,add_ln42_fu_234_p2__0_carry__2_i_3_n_3}),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_address0[15:12]),
        .S({add_ln42_fu_234_p2__0_carry__2_i_4_n_3,add_ln42_fu_234_p2__0_carry__2_i_5_n_3,add_ln42_fu_234_p2__0_carry__2_i_6_n_3,add_ln42_fu_234_p2__0_carry__2_i_7_n_3}));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    add_ln42_fu_234_p2__0_carry__2_i_1
       (.I0(outNeurons_fu_70[13]),
        .I1(weightIndexAdded_fu_78_reg[13]),
        .I2(p_0_in),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [13]),
        .O(add_ln42_fu_234_p2__0_carry__2_i_1_n_3));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    add_ln42_fu_234_p2__0_carry__2_i_2
       (.I0(outNeurons_fu_70[12]),
        .I1(weightIndexAdded_fu_78_reg[12]),
        .I2(p_0_in),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [12]),
        .O(add_ln42_fu_234_p2__0_carry__2_i_2_n_3));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    add_ln42_fu_234_p2__0_carry__2_i_3
       (.I0(outNeurons_fu_70[11]),
        .I1(weightIndexAdded_fu_78_reg[11]),
        .I2(p_0_in),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [11]),
        .O(add_ln42_fu_234_p2__0_carry__2_i_3_n_3));
  LUT6 #(
    .INIT(64'h77887788C03F3FC0)) 
    add_ln42_fu_234_p2__0_carry__2_i_4
       (.I0(\weightIndexAdded_fu_78_reg[15]_0 [14]),
        .I1(weightIndexAdded_fu_78_reg[14]),
        .I2(outNeurons_fu_70[14]),
        .I3(add_ln42_fu_234_p2__0_carry__2_i_8_n_3),
        .I4(outNeurons_fu_70[15]),
        .I5(p_0_in),
        .O(add_ln42_fu_234_p2__0_carry__2_i_4_n_3));
  LUT5 #(
    .INIT(32'h96999666)) 
    add_ln42_fu_234_p2__0_carry__2_i_5
       (.I0(add_ln42_fu_234_p2__0_carry__2_i_1_n_3),
        .I1(weightIndexAdded_fu_78_reg[14]),
        .I2(\weightIndexAdded_fu_78_reg[15]_0 [14]),
        .I3(p_0_in),
        .I4(outNeurons_fu_70[14]),
        .O(add_ln42_fu_234_p2__0_carry__2_i_5_n_3));
  (* HLUTNM = "lutpair7" *) 
  LUT5 #(
    .INIT(32'hC93936C6)) 
    add_ln42_fu_234_p2__0_carry__2_i_6
       (.I0(outNeurons_fu_70[13]),
        .I1(weightIndexAdded_fu_78_reg[13]),
        .I2(p_0_in),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [13]),
        .I4(add_ln42_fu_234_p2__0_carry__2_i_2_n_3),
        .O(add_ln42_fu_234_p2__0_carry__2_i_6_n_3));
  (* HLUTNM = "lutpair6" *) 
  LUT5 #(
    .INIT(32'hC93936C6)) 
    add_ln42_fu_234_p2__0_carry__2_i_7
       (.I0(outNeurons_fu_70[12]),
        .I1(weightIndexAdded_fu_78_reg[12]),
        .I2(p_0_in),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [12]),
        .I4(add_ln42_fu_234_p2__0_carry__2_i_3_n_3),
        .O(add_ln42_fu_234_p2__0_carry__2_i_7_n_3));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h78)) 
    add_ln42_fu_234_p2__0_carry__2_i_8
       (.I0(\weightIndexAdded_fu_78_reg[15]_0 [15]),
        .I1(p_0_in),
        .I2(weightIndexAdded_fu_78_reg[15]),
        .O(add_ln42_fu_234_p2__0_carry__2_i_8_n_3));
  LUT4 #(
    .INIT(16'hC808)) 
    add_ln42_fu_234_p2__0_carry_i_1
       (.I0(outNeurons_fu_70[2]),
        .I1(weightIndexAdded_fu_78_reg[2]),
        .I2(p_0_in),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [2]),
        .O(add_ln42_fu_234_p2__0_carry_i_1_n_3));
  LUT4 #(
    .INIT(16'hC808)) 
    add_ln42_fu_234_p2__0_carry_i_2
       (.I0(outNeurons_fu_70[1]),
        .I1(weightIndexAdded_fu_78_reg[1]),
        .I2(p_0_in),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [1]),
        .O(add_ln42_fu_234_p2__0_carry_i_2_n_3));
  LUT4 #(
    .INIT(16'hC808)) 
    add_ln42_fu_234_p2__0_carry_i_3
       (.I0(outNeurons_fu_70[0]),
        .I1(weightIndexAdded_fu_78_reg[0]),
        .I2(p_0_in),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [0]),
        .O(add_ln42_fu_234_p2__0_carry_i_3_n_3));
  LUT5 #(
    .INIT(32'hC93936C6)) 
    add_ln42_fu_234_p2__0_carry_i_4
       (.I0(outNeurons_fu_70[3]),
        .I1(weightIndexAdded_fu_78_reg[3]),
        .I2(p_0_in),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [3]),
        .I4(add_ln42_fu_234_p2__0_carry_i_1_n_3),
        .O(add_ln42_fu_234_p2__0_carry_i_4_n_3));
  LUT5 #(
    .INIT(32'hC93936C6)) 
    add_ln42_fu_234_p2__0_carry_i_5
       (.I0(outNeurons_fu_70[2]),
        .I1(weightIndexAdded_fu_78_reg[2]),
        .I2(p_0_in),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [2]),
        .I4(add_ln42_fu_234_p2__0_carry_i_2_n_3),
        .O(add_ln42_fu_234_p2__0_carry_i_5_n_3));
  LUT5 #(
    .INIT(32'hC93936C6)) 
    add_ln42_fu_234_p2__0_carry_i_6
       (.I0(outNeurons_fu_70[1]),
        .I1(weightIndexAdded_fu_78_reg[1]),
        .I2(p_0_in),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [1]),
        .I4(add_ln42_fu_234_p2__0_carry_i_3_n_3),
        .O(add_ln42_fu_234_p2__0_carry_i_6_n_3));
  LUT4 #(
    .INIT(16'h36C6)) 
    add_ln42_fu_234_p2__0_carry_i_7
       (.I0(outNeurons_fu_70[0]),
        .I1(weightIndexAdded_fu_78_reg[0]),
        .I2(p_0_in),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [0]),
        .O(add_ln42_fu_234_p2__0_carry_i_7_n_3));
  CARRY4 addr_cmp_fu_253_p2_carry
       (.CI(1'b0),
        .CO({addr_cmp_fu_253_p2_carry_n_3,addr_cmp_fu_253_p2_carry_n_4,addr_cmp_fu_253_p2_carry_n_5,addr_cmp_fu_253_p2_carry_n_6}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_addr_cmp_fu_253_p2_carry_O_UNCONNECTED[3:0]),
        .S({addr_cmp_fu_253_p2_carry_i_1_n_3,addr_cmp_fu_253_p2_carry_i_2_n_3,addr_cmp_fu_253_p2_carry_i_3_n_3,addr_cmp_fu_253_p2_carry_i_4_n_3}));
  CARRY4 addr_cmp_fu_253_p2_carry__0
       (.CI(addr_cmp_fu_253_p2_carry_n_3),
        .CO({addr_cmp_fu_253_p2_carry__0_n_3,addr_cmp_fu_253_p2_carry__0_n_4,addr_cmp_fu_253_p2_carry__0_n_5,addr_cmp_fu_253_p2_carry__0_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_addr_cmp_fu_253_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({addr_cmp_fu_253_p2_carry__0_i_1_n_3,addr_cmp_fu_253_p2_carry__0_i_2_n_3,addr_cmp_fu_253_p2_carry__0_i_3_n_3,addr_cmp_fu_253_p2_carry__0_i_4_n_3}));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_253_p2_carry__0_i_1
       (.I0(reuse_addr_reg_fu_62[17]),
        .O(addr_cmp_fu_253_p2_carry__0_i_1_n_3));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_253_p2_carry__0_i_2
       (.I0(reuse_addr_reg_fu_62[17]),
        .O(addr_cmp_fu_253_p2_carry__0_i_2_n_3));
  LUT4 #(
    .INIT(16'h002D)) 
    addr_cmp_fu_253_p2_carry__0_i_3
       (.I0(outNeurons_fu_70[15]),
        .I1(p_0_in),
        .I2(reuse_addr_reg_fu_62[15]),
        .I3(reuse_addr_reg_fu_62[17]),
        .O(addr_cmp_fu_253_p2_carry__0_i_3_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    addr_cmp_fu_253_p2_carry__0_i_4
       (.I0(reuse_addr_reg_fu_62[12]),
        .I1(select_ln30_fu_194_p3[12]),
        .I2(select_ln30_fu_194_p3[13]),
        .I3(reuse_addr_reg_fu_62[13]),
        .I4(select_ln30_fu_194_p3[14]),
        .I5(reuse_addr_reg_fu_62[14]),
        .O(addr_cmp_fu_253_p2_carry__0_i_4_n_3));
  CARRY4 addr_cmp_fu_253_p2_carry__1
       (.CI(addr_cmp_fu_253_p2_carry__0_n_3),
        .CO({addr_cmp_fu_253_p2_carry__1_n_3,addr_cmp_fu_253_p2_carry__1_n_4,addr_cmp_fu_253_p2_carry__1_n_5,addr_cmp_fu_253_p2_carry__1_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_addr_cmp_fu_253_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({addr_cmp_fu_253_p2_carry__1_i_1_n_3,addr_cmp_fu_253_p2_carry__1_i_2_n_3,addr_cmp_fu_253_p2_carry__1_i_3_n_3,addr_cmp_fu_253_p2_carry__1_i_4_n_3}));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_253_p2_carry__1_i_1
       (.I0(reuse_addr_reg_fu_62[17]),
        .O(addr_cmp_fu_253_p2_carry__1_i_1_n_3));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_253_p2_carry__1_i_2
       (.I0(reuse_addr_reg_fu_62[17]),
        .O(addr_cmp_fu_253_p2_carry__1_i_2_n_3));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_253_p2_carry__1_i_3
       (.I0(reuse_addr_reg_fu_62[17]),
        .O(addr_cmp_fu_253_p2_carry__1_i_3_n_3));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_253_p2_carry__1_i_4
       (.I0(reuse_addr_reg_fu_62[17]),
        .O(addr_cmp_fu_253_p2_carry__1_i_4_n_3));
  CARRY4 addr_cmp_fu_253_p2_carry__2
       (.CI(addr_cmp_fu_253_p2_carry__1_n_3),
        .CO({addr_cmp_fu_253_p2_carry__2_n_3,addr_cmp_fu_253_p2_carry__2_n_4,addr_cmp_fu_253_p2_carry__2_n_5,addr_cmp_fu_253_p2_carry__2_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_addr_cmp_fu_253_p2_carry__2_O_UNCONNECTED[3:0]),
        .S({addr_cmp_fu_253_p2_carry__2_i_1_n_3,addr_cmp_fu_253_p2_carry__2_i_2_n_3,addr_cmp_fu_253_p2_carry__2_i_3_n_3,addr_cmp_fu_253_p2_carry__2_i_4_n_3}));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_253_p2_carry__2_i_1
       (.I0(reuse_addr_reg_fu_62[17]),
        .O(addr_cmp_fu_253_p2_carry__2_i_1_n_3));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_253_p2_carry__2_i_2
       (.I0(reuse_addr_reg_fu_62[17]),
        .O(addr_cmp_fu_253_p2_carry__2_i_2_n_3));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_253_p2_carry__2_i_3
       (.I0(reuse_addr_reg_fu_62[17]),
        .O(addr_cmp_fu_253_p2_carry__2_i_3_n_3));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_253_p2_carry__2_i_4
       (.I0(reuse_addr_reg_fu_62[17]),
        .O(addr_cmp_fu_253_p2_carry__2_i_4_n_3));
  CARRY4 addr_cmp_fu_253_p2_carry__3
       (.CI(addr_cmp_fu_253_p2_carry__2_n_3),
        .CO({addr_cmp_fu_253_p2_carry__3_n_3,addr_cmp_fu_253_p2_carry__3_n_4,addr_cmp_fu_253_p2_carry__3_n_5,addr_cmp_fu_253_p2_carry__3_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_addr_cmp_fu_253_p2_carry__3_O_UNCONNECTED[3:0]),
        .S({addr_cmp_fu_253_p2_carry__3_i_1_n_3,addr_cmp_fu_253_p2_carry__3_i_2_n_3,addr_cmp_fu_253_p2_carry__3_i_3_n_3,addr_cmp_fu_253_p2_carry__3_i_4_n_3}));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_253_p2_carry__3_i_1
       (.I0(reuse_addr_reg_fu_62[17]),
        .O(addr_cmp_fu_253_p2_carry__3_i_1_n_3));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_253_p2_carry__3_i_2
       (.I0(reuse_addr_reg_fu_62[17]),
        .O(addr_cmp_fu_253_p2_carry__3_i_2_n_3));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_253_p2_carry__3_i_3
       (.I0(reuse_addr_reg_fu_62[17]),
        .O(addr_cmp_fu_253_p2_carry__3_i_3_n_3));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_253_p2_carry__3_i_4
       (.I0(reuse_addr_reg_fu_62[17]),
        .O(addr_cmp_fu_253_p2_carry__3_i_4_n_3));
  CARRY4 addr_cmp_fu_253_p2_carry__4
       (.CI(addr_cmp_fu_253_p2_carry__3_n_3),
        .CO({NLW_addr_cmp_fu_253_p2_carry__4_CO_UNCONNECTED[3:2],addr_cmp_fu_253_p2,addr_cmp_fu_253_p2_carry__4_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_addr_cmp_fu_253_p2_carry__4_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,addr_cmp_fu_253_p2_carry__4_i_1_n_3,addr_cmp_fu_253_p2_carry__4_i_2_n_3}));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_253_p2_carry__4_i_1
       (.I0(reuse_addr_reg_fu_62[17]),
        .O(addr_cmp_fu_253_p2_carry__4_i_1_n_3));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_253_p2_carry__4_i_2
       (.I0(reuse_addr_reg_fu_62[17]),
        .O(addr_cmp_fu_253_p2_carry__4_i_2_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    addr_cmp_fu_253_p2_carry_i_1
       (.I0(reuse_addr_reg_fu_62[9]),
        .I1(select_ln30_fu_194_p3[9]),
        .I2(select_ln30_fu_194_p3[10]),
        .I3(reuse_addr_reg_fu_62[10]),
        .I4(select_ln30_fu_194_p3[11]),
        .I5(reuse_addr_reg_fu_62[11]),
        .O(addr_cmp_fu_253_p2_carry_i_1_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    addr_cmp_fu_253_p2_carry_i_2
       (.I0(reuse_addr_reg_fu_62[6]),
        .I1(select_ln30_fu_194_p3[6]),
        .I2(select_ln30_fu_194_p3[7]),
        .I3(reuse_addr_reg_fu_62[7]),
        .I4(select_ln30_fu_194_p3[8]),
        .I5(reuse_addr_reg_fu_62[8]),
        .O(addr_cmp_fu_253_p2_carry_i_2_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    addr_cmp_fu_253_p2_carry_i_3
       (.I0(reuse_addr_reg_fu_62[3]),
        .I1(select_ln30_fu_194_p3[3]),
        .I2(select_ln30_fu_194_p3[4]),
        .I3(reuse_addr_reg_fu_62[4]),
        .I4(select_ln30_fu_194_p3[5]),
        .I5(reuse_addr_reg_fu_62[5]),
        .O(addr_cmp_fu_253_p2_carry_i_3_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    addr_cmp_fu_253_p2_carry_i_4
       (.I0(reuse_addr_reg_fu_62[0]),
        .I1(select_ln30_fu_194_p3[0]),
        .I2(select_ln30_fu_194_p3[1]),
        .I3(reuse_addr_reg_fu_62[1]),
        .I4(select_ln30_fu_194_p3[2]),
        .I5(reuse_addr_reg_fu_62[2]),
        .O(addr_cmp_fu_253_p2_carry_i_4_n_3));
  LUT2 #(
    .INIT(4'h2)) 
    \addr_cmp_reg_411[0]_i_1 
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(icmp_ln37_fu_169_p27_in),
        .O(addr_cmp_reg_4110));
  FDRE \addr_cmp_reg_411_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(addr_cmp_reg_411),
        .Q(addr_cmp_reg_411_pp0_iter1_reg),
        .R(1'b0));
  FDRE \addr_cmp_reg_411_reg[0] 
       (.C(ap_clk),
        .CE(addr_cmp_reg_4110),
        .D(addr_cmp_fu_253_p2),
        .Q(addr_cmp_reg_411),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_ready),
        .I1(ap_enable_reg_pp0_iter2),
        .I2(ap_enable_reg_pp0_iter1_0),
        .I3(ap_loop_exit_ready_pp0_iter1_reg),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg),
        .I5(\ap_CS_fsm_reg_n_3_[0] ),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \ap_CS_fsm[1]_i_1__0 
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_ready),
        .I1(ap_enable_reg_pp0_iter2),
        .I2(ap_enable_reg_pp0_iter1_0),
        .I3(ap_loop_exit_ready_pp0_iter1_reg),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg),
        .I5(ap_CS_fsm_pp0_stage1),
        .O(ap_NS_fsm[1]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_3_[0] ),
        .S(SR));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_pp0_stage1),
        .R(SR));
  LUT3 #(
    .INIT(8'hB8)) 
    ap_enable_reg_pp0_iter0_reg_i_1
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_3_[0] ),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .O(ap_enable_reg_pp0_iter0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0),
        .Q(ap_enable_reg_pp0_iter0_reg),
        .R(SR));
  LUT5 #(
    .INIT(32'h00A08888)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_rst_n),
        .I1(ap_enable_reg_pp0_iter1_0),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(icmp_ln37_fu_169_p27_in),
        .I4(ap_CS_fsm_pp0_stage1),
        .O(ap_enable_reg_pp0_iter1_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_3),
        .Q(ap_enable_reg_pp0_iter1_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    ap_enable_reg_pp0_iter2_i_1
       (.I0(ap_enable_reg_pp0_iter1_0),
        .I1(ap_CS_fsm_pp0_stage1),
        .I2(ap_enable_reg_pp0_iter2),
        .O(ap_enable_reg_pp0_iter2_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter2_i_1_n_3),
        .Q(ap_enable_reg_pp0_iter2),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h88800080)) 
    ap_loop_exit_ready_pp0_iter1_reg_i_1
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(icmp_ln37_fu_169_p27_in),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(\ap_CS_fsm_reg_n_3_[0] ),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_ready));
  FDRE ap_loop_exit_ready_pp0_iter1_reg_reg
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_ready),
        .Q(ap_loop_exit_ready_pp0_iter1_reg),
        .R(1'b0));
  design_1_nnlayer_0_0_nnlayer_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U
       (.Q({ap_CS_fsm_pp0_stage1,\ap_CS_fsm_reg_n_3_[0] }),
        .SR(SR),
        .\ap_CS_fsm_reg[6] (\ap_CS_fsm_reg[6] ),
        .\ap_CS_fsm_reg[6]_0 (\ap_CS_fsm_reg[6]_0 ),
        .\ap_CS_fsm_reg[7] (Q[5:2]),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_loop_exit_ready_pp0_iter1_reg(ap_loop_exit_ready_pp0_iter1_reg),
        .ap_rst_n(ap_rst_n),
        .grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg),
        .inNeurons_fu_740(inNeurons_fu_740));
  LUT6 #(
    .INIT(64'hAAAEEEEEEEEEEEEE)) 
    grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg_i_1
       (.I0(Q[1]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg),
        .I2(\ap_CS_fsm_reg_n_3_[0] ),
        .I3(ap_enable_reg_pp0_iter0_reg),
        .I4(icmp_ln37_fu_169_p27_in),
        .I5(ap_CS_fsm_pp0_stage1),
        .O(\ap_CS_fsm_reg[3] ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_1
       (.I0(indvar_flatten_fu_82_reg[21]),
        .I1(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [21]),
        .I2(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [22]),
        .I3(indvar_flatten_fu_82_reg[22]),
        .I4(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [23]),
        .I5(indvar_flatten_fu_82_reg[23]),
        .O(i__carry__0_i_1_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2
       (.I0(indvar_flatten_fu_82_reg[18]),
        .I1(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [18]),
        .I2(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [19]),
        .I3(indvar_flatten_fu_82_reg[19]),
        .I4(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [20]),
        .I5(indvar_flatten_fu_82_reg[20]),
        .O(i__carry__0_i_2_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_3
       (.I0(indvar_flatten_fu_82_reg[15]),
        .I1(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [15]),
        .I2(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [16]),
        .I3(indvar_flatten_fu_82_reg[16]),
        .I4(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [17]),
        .I5(indvar_flatten_fu_82_reg[17]),
        .O(i__carry__0_i_3_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_4
       (.I0(indvar_flatten_fu_82_reg[12]),
        .I1(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [12]),
        .I2(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [13]),
        .I3(indvar_flatten_fu_82_reg[13]),
        .I4(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [14]),
        .I5(indvar_flatten_fu_82_reg[14]),
        .O(i__carry__0_i_4_n_3));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_1
       (.I0(indvar_flatten_fu_82_reg[30]),
        .I1(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [30]),
        .I2(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [31]),
        .I3(indvar_flatten_fu_82_reg[31]),
        .O(i__carry__1_i_1_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_2
       (.I0(indvar_flatten_fu_82_reg[27]),
        .I1(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [27]),
        .I2(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [28]),
        .I3(indvar_flatten_fu_82_reg[28]),
        .I4(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [29]),
        .I5(indvar_flatten_fu_82_reg[29]),
        .O(i__carry__1_i_2_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_3
       (.I0(indvar_flatten_fu_82_reg[24]),
        .I1(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [24]),
        .I2(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [25]),
        .I3(indvar_flatten_fu_82_reg[25]),
        .I4(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [26]),
        .I5(indvar_flatten_fu_82_reg[26]),
        .O(i__carry__1_i_3_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1
       (.I0(indvar_flatten_fu_82_reg[9]),
        .I1(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [9]),
        .I2(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [10]),
        .I3(indvar_flatten_fu_82_reg[10]),
        .I4(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [11]),
        .I5(indvar_flatten_fu_82_reg[11]),
        .O(i__carry_i_1_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(indvar_flatten_fu_82_reg[6]),
        .I1(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [6]),
        .I2(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [7]),
        .I3(indvar_flatten_fu_82_reg[7]),
        .I4(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [8]),
        .I5(indvar_flatten_fu_82_reg[8]),
        .O(i__carry_i_2_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(indvar_flatten_fu_82_reg[3]),
        .I1(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [3]),
        .I2(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [4]),
        .I3(indvar_flatten_fu_82_reg[4]),
        .I4(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [5]),
        .I5(indvar_flatten_fu_82_reg[5]),
        .O(i__carry_i_3_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4
       (.I0(indvar_flatten_fu_82_reg[0]),
        .I1(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [0]),
        .I2(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [1]),
        .I3(indvar_flatten_fu_82_reg[1]),
        .I4(\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_0 [2]),
        .I5(indvar_flatten_fu_82_reg[2]),
        .O(i__carry_i_4_n_3));
  CARRY4 \icmp_ln37_fu_169_p2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\icmp_ln37_fu_169_p2_inferred__0/i__carry_n_3 ,\icmp_ln37_fu_169_p2_inferred__0/i__carry_n_4 ,\icmp_ln37_fu_169_p2_inferred__0/i__carry_n_5 ,\icmp_ln37_fu_169_p2_inferred__0/i__carry_n_6 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_icmp_ln37_fu_169_p2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_3,i__carry_i_2_n_3,i__carry_i_3_n_3,i__carry_i_4_n_3}));
  CARRY4 \icmp_ln37_fu_169_p2_inferred__0/i__carry__0 
       (.CI(\icmp_ln37_fu_169_p2_inferred__0/i__carry_n_3 ),
        .CO({\icmp_ln37_fu_169_p2_inferred__0/i__carry__0_n_3 ,\icmp_ln37_fu_169_p2_inferred__0/i__carry__0_n_4 ,\icmp_ln37_fu_169_p2_inferred__0/i__carry__0_n_5 ,\icmp_ln37_fu_169_p2_inferred__0/i__carry__0_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_icmp_ln37_fu_169_p2_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1_n_3,i__carry__0_i_2_n_3,i__carry__0_i_3_n_3,i__carry__0_i_4_n_3}));
  CARRY4 \icmp_ln37_fu_169_p2_inferred__0/i__carry__1 
       (.CI(\icmp_ln37_fu_169_p2_inferred__0/i__carry__0_n_3 ),
        .CO({\NLW_icmp_ln37_fu_169_p2_inferred__0/i__carry__1_CO_UNCONNECTED [3],icmp_ln37_fu_169_p27_in,\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_n_5 ,\icmp_ln37_fu_169_p2_inferred__0/i__carry__1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_icmp_ln37_fu_169_p2_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__1_i_1_n_3,i__carry__1_i_2_n_3,i__carry__1_i_3_n_3}));
  CARRY4 icmp_ln39_fu_189_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln39_fu_189_p2_carry_n_3,icmp_ln39_fu_189_p2_carry_n_4,icmp_ln39_fu_189_p2_carry_n_5,icmp_ln39_fu_189_p2_carry_n_6}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln39_fu_189_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln39_fu_189_p2_carry_i_1_n_3,icmp_ln39_fu_189_p2_carry_i_2_n_3,icmp_ln39_fu_189_p2_carry_i_3_n_3,icmp_ln39_fu_189_p2_carry_i_4_n_3}));
  CARRY4 icmp_ln39_fu_189_p2_carry__0
       (.CI(icmp_ln39_fu_189_p2_carry_n_3),
        .CO({NLW_icmp_ln39_fu_189_p2_carry__0_CO_UNCONNECTED[3:2],p_0_in,icmp_ln39_fu_189_p2_carry__0_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln39_fu_189_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,icmp_ln39_fu_189_p2_carry__0_i_1_n_3,icmp_ln39_fu_189_p2_carry__0_i_2_n_3}));
  LUT2 #(
    .INIT(4'h9)) 
    icmp_ln39_fu_189_p2_carry__0_i_1
       (.I0(\weightIndexAdded_fu_78_reg[15]_0 [15]),
        .I1(outNeurons_fu_70[15]),
        .O(icmp_ln39_fu_189_p2_carry__0_i_1_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln39_fu_189_p2_carry__0_i_2
       (.I0(outNeurons_fu_70[12]),
        .I1(\weightIndexAdded_fu_78_reg[15]_0 [12]),
        .I2(outNeurons_fu_70[13]),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [13]),
        .I4(outNeurons_fu_70[14]),
        .I5(\weightIndexAdded_fu_78_reg[15]_0 [14]),
        .O(icmp_ln39_fu_189_p2_carry__0_i_2_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln39_fu_189_p2_carry_i_1
       (.I0(outNeurons_fu_70[9]),
        .I1(\weightIndexAdded_fu_78_reg[15]_0 [9]),
        .I2(outNeurons_fu_70[10]),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [10]),
        .I4(outNeurons_fu_70[11]),
        .I5(\weightIndexAdded_fu_78_reg[15]_0 [11]),
        .O(icmp_ln39_fu_189_p2_carry_i_1_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln39_fu_189_p2_carry_i_2
       (.I0(outNeurons_fu_70[6]),
        .I1(\weightIndexAdded_fu_78_reg[15]_0 [6]),
        .I2(outNeurons_fu_70[7]),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [7]),
        .I4(outNeurons_fu_70[8]),
        .I5(\weightIndexAdded_fu_78_reg[15]_0 [8]),
        .O(icmp_ln39_fu_189_p2_carry_i_2_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln39_fu_189_p2_carry_i_3
       (.I0(outNeurons_fu_70[3]),
        .I1(\weightIndexAdded_fu_78_reg[15]_0 [3]),
        .I2(outNeurons_fu_70[4]),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [4]),
        .I4(outNeurons_fu_70[5]),
        .I5(\weightIndexAdded_fu_78_reg[15]_0 [5]),
        .O(icmp_ln39_fu_189_p2_carry_i_3_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln39_fu_189_p2_carry_i_4
       (.I0(outNeurons_fu_70[0]),
        .I1(\weightIndexAdded_fu_78_reg[15]_0 [0]),
        .I2(outNeurons_fu_70[1]),
        .I3(\weightIndexAdded_fu_78_reg[15]_0 [1]),
        .I4(outNeurons_fu_70[2]),
        .I5(\weightIndexAdded_fu_78_reg[15]_0 [2]),
        .O(icmp_ln39_fu_189_p2_carry_i_4_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    \inNeurons_fu_74[0]_i_2 
       (.I0(p_0_in),
        .I1(inNeurons_fu_74_reg[0]),
        .O(\inNeurons_fu_74[0]_i_2_n_3 ));
  FDRE \inNeurons_fu_74_reg[0] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\inNeurons_fu_74_reg[0]_i_1_n_10 ),
        .Q(inNeurons_fu_74_reg[0]),
        .R(inNeurons_fu_740));
  CARRY4 \inNeurons_fu_74_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\inNeurons_fu_74_reg[0]_i_1_n_3 ,\inNeurons_fu_74_reg[0]_i_1_n_4 ,\inNeurons_fu_74_reg[0]_i_1_n_5 ,\inNeurons_fu_74_reg[0]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_0_in}),
        .O({\inNeurons_fu_74_reg[0]_i_1_n_7 ,\inNeurons_fu_74_reg[0]_i_1_n_8 ,\inNeurons_fu_74_reg[0]_i_1_n_9 ,\inNeurons_fu_74_reg[0]_i_1_n_10 }),
        .S({inNeurons_fu_74_reg[3:1],\inNeurons_fu_74[0]_i_2_n_3 }));
  FDRE \inNeurons_fu_74_reg[1] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\inNeurons_fu_74_reg[0]_i_1_n_9 ),
        .Q(inNeurons_fu_74_reg[1]),
        .R(inNeurons_fu_740));
  FDRE \inNeurons_fu_74_reg[2] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\inNeurons_fu_74_reg[0]_i_1_n_8 ),
        .Q(inNeurons_fu_74_reg[2]),
        .R(inNeurons_fu_740));
  FDRE \inNeurons_fu_74_reg[3] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\inNeurons_fu_74_reg[0]_i_1_n_7 ),
        .Q(inNeurons_fu_74_reg[3]),
        .R(inNeurons_fu_740));
  FDRE \inNeurons_fu_74_reg[4] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\inNeurons_fu_74_reg[4]_i_1_n_10 ),
        .Q(inNeurons_fu_74_reg[4]),
        .R(inNeurons_fu_740));
  CARRY4 \inNeurons_fu_74_reg[4]_i_1 
       (.CI(\inNeurons_fu_74_reg[0]_i_1_n_3 ),
        .CO({\NLW_inNeurons_fu_74_reg[4]_i_1_CO_UNCONNECTED [3],\inNeurons_fu_74_reg[4]_i_1_n_4 ,\inNeurons_fu_74_reg[4]_i_1_n_5 ,\inNeurons_fu_74_reg[4]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\inNeurons_fu_74_reg[4]_i_1_n_7 ,\inNeurons_fu_74_reg[4]_i_1_n_8 ,\inNeurons_fu_74_reg[4]_i_1_n_9 ,\inNeurons_fu_74_reg[4]_i_1_n_10 }),
        .S(inNeurons_fu_74_reg[7:4]));
  FDRE \inNeurons_fu_74_reg[5] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\inNeurons_fu_74_reg[4]_i_1_n_9 ),
        .Q(inNeurons_fu_74_reg[5]),
        .R(inNeurons_fu_740));
  FDRE \inNeurons_fu_74_reg[6] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\inNeurons_fu_74_reg[4]_i_1_n_8 ),
        .Q(inNeurons_fu_74_reg[6]),
        .R(inNeurons_fu_740));
  FDRE \inNeurons_fu_74_reg[7] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\inNeurons_fu_74_reg[4]_i_1_n_7 ),
        .Q(inNeurons_fu_74_reg[7]),
        .R(inNeurons_fu_740));
  LUT1 #(
    .INIT(2'h1)) 
    \indvar_flatten_fu_82[0]_i_2 
       (.I0(indvar_flatten_fu_82_reg[0]),
        .O(\indvar_flatten_fu_82[0]_i_2_n_3 ));
  FDRE \indvar_flatten_fu_82_reg[0] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[0]_i_1_n_10 ),
        .Q(indvar_flatten_fu_82_reg[0]),
        .R(inNeurons_fu_740));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_fu_82_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\indvar_flatten_fu_82_reg[0]_i_1_n_3 ,\indvar_flatten_fu_82_reg[0]_i_1_n_4 ,\indvar_flatten_fu_82_reg[0]_i_1_n_5 ,\indvar_flatten_fu_82_reg[0]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\indvar_flatten_fu_82_reg[0]_i_1_n_7 ,\indvar_flatten_fu_82_reg[0]_i_1_n_8 ,\indvar_flatten_fu_82_reg[0]_i_1_n_9 ,\indvar_flatten_fu_82_reg[0]_i_1_n_10 }),
        .S({indvar_flatten_fu_82_reg[3:1],\indvar_flatten_fu_82[0]_i_2_n_3 }));
  FDRE \indvar_flatten_fu_82_reg[10] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[8]_i_1_n_8 ),
        .Q(indvar_flatten_fu_82_reg[10]),
        .R(inNeurons_fu_740));
  FDRE \indvar_flatten_fu_82_reg[11] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[8]_i_1_n_7 ),
        .Q(indvar_flatten_fu_82_reg[11]),
        .R(inNeurons_fu_740));
  FDRE \indvar_flatten_fu_82_reg[12] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[12]_i_1_n_10 ),
        .Q(indvar_flatten_fu_82_reg[12]),
        .R(inNeurons_fu_740));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_fu_82_reg[12]_i_1 
       (.CI(\indvar_flatten_fu_82_reg[8]_i_1_n_3 ),
        .CO({\indvar_flatten_fu_82_reg[12]_i_1_n_3 ,\indvar_flatten_fu_82_reg[12]_i_1_n_4 ,\indvar_flatten_fu_82_reg[12]_i_1_n_5 ,\indvar_flatten_fu_82_reg[12]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_fu_82_reg[12]_i_1_n_7 ,\indvar_flatten_fu_82_reg[12]_i_1_n_8 ,\indvar_flatten_fu_82_reg[12]_i_1_n_9 ,\indvar_flatten_fu_82_reg[12]_i_1_n_10 }),
        .S(indvar_flatten_fu_82_reg[15:12]));
  FDRE \indvar_flatten_fu_82_reg[13] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[12]_i_1_n_9 ),
        .Q(indvar_flatten_fu_82_reg[13]),
        .R(inNeurons_fu_740));
  FDRE \indvar_flatten_fu_82_reg[14] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[12]_i_1_n_8 ),
        .Q(indvar_flatten_fu_82_reg[14]),
        .R(inNeurons_fu_740));
  FDRE \indvar_flatten_fu_82_reg[15] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[12]_i_1_n_7 ),
        .Q(indvar_flatten_fu_82_reg[15]),
        .R(inNeurons_fu_740));
  FDRE \indvar_flatten_fu_82_reg[16] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[16]_i_1_n_10 ),
        .Q(indvar_flatten_fu_82_reg[16]),
        .R(inNeurons_fu_740));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_fu_82_reg[16]_i_1 
       (.CI(\indvar_flatten_fu_82_reg[12]_i_1_n_3 ),
        .CO({\indvar_flatten_fu_82_reg[16]_i_1_n_3 ,\indvar_flatten_fu_82_reg[16]_i_1_n_4 ,\indvar_flatten_fu_82_reg[16]_i_1_n_5 ,\indvar_flatten_fu_82_reg[16]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_fu_82_reg[16]_i_1_n_7 ,\indvar_flatten_fu_82_reg[16]_i_1_n_8 ,\indvar_flatten_fu_82_reg[16]_i_1_n_9 ,\indvar_flatten_fu_82_reg[16]_i_1_n_10 }),
        .S(indvar_flatten_fu_82_reg[19:16]));
  FDRE \indvar_flatten_fu_82_reg[17] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[16]_i_1_n_9 ),
        .Q(indvar_flatten_fu_82_reg[17]),
        .R(inNeurons_fu_740));
  FDRE \indvar_flatten_fu_82_reg[18] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[16]_i_1_n_8 ),
        .Q(indvar_flatten_fu_82_reg[18]),
        .R(inNeurons_fu_740));
  FDRE \indvar_flatten_fu_82_reg[19] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[16]_i_1_n_7 ),
        .Q(indvar_flatten_fu_82_reg[19]),
        .R(inNeurons_fu_740));
  FDRE \indvar_flatten_fu_82_reg[1] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[0]_i_1_n_9 ),
        .Q(indvar_flatten_fu_82_reg[1]),
        .R(inNeurons_fu_740));
  FDRE \indvar_flatten_fu_82_reg[20] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[20]_i_1_n_10 ),
        .Q(indvar_flatten_fu_82_reg[20]),
        .R(inNeurons_fu_740));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_fu_82_reg[20]_i_1 
       (.CI(\indvar_flatten_fu_82_reg[16]_i_1_n_3 ),
        .CO({\indvar_flatten_fu_82_reg[20]_i_1_n_3 ,\indvar_flatten_fu_82_reg[20]_i_1_n_4 ,\indvar_flatten_fu_82_reg[20]_i_1_n_5 ,\indvar_flatten_fu_82_reg[20]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_fu_82_reg[20]_i_1_n_7 ,\indvar_flatten_fu_82_reg[20]_i_1_n_8 ,\indvar_flatten_fu_82_reg[20]_i_1_n_9 ,\indvar_flatten_fu_82_reg[20]_i_1_n_10 }),
        .S(indvar_flatten_fu_82_reg[23:20]));
  FDRE \indvar_flatten_fu_82_reg[21] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[20]_i_1_n_9 ),
        .Q(indvar_flatten_fu_82_reg[21]),
        .R(inNeurons_fu_740));
  FDRE \indvar_flatten_fu_82_reg[22] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[20]_i_1_n_8 ),
        .Q(indvar_flatten_fu_82_reg[22]),
        .R(inNeurons_fu_740));
  FDRE \indvar_flatten_fu_82_reg[23] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[20]_i_1_n_7 ),
        .Q(indvar_flatten_fu_82_reg[23]),
        .R(inNeurons_fu_740));
  FDRE \indvar_flatten_fu_82_reg[24] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[24]_i_1_n_10 ),
        .Q(indvar_flatten_fu_82_reg[24]),
        .R(inNeurons_fu_740));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_fu_82_reg[24]_i_1 
       (.CI(\indvar_flatten_fu_82_reg[20]_i_1_n_3 ),
        .CO({\indvar_flatten_fu_82_reg[24]_i_1_n_3 ,\indvar_flatten_fu_82_reg[24]_i_1_n_4 ,\indvar_flatten_fu_82_reg[24]_i_1_n_5 ,\indvar_flatten_fu_82_reg[24]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_fu_82_reg[24]_i_1_n_7 ,\indvar_flatten_fu_82_reg[24]_i_1_n_8 ,\indvar_flatten_fu_82_reg[24]_i_1_n_9 ,\indvar_flatten_fu_82_reg[24]_i_1_n_10 }),
        .S(indvar_flatten_fu_82_reg[27:24]));
  FDRE \indvar_flatten_fu_82_reg[25] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[24]_i_1_n_9 ),
        .Q(indvar_flatten_fu_82_reg[25]),
        .R(inNeurons_fu_740));
  FDRE \indvar_flatten_fu_82_reg[26] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[24]_i_1_n_8 ),
        .Q(indvar_flatten_fu_82_reg[26]),
        .R(inNeurons_fu_740));
  FDRE \indvar_flatten_fu_82_reg[27] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[24]_i_1_n_7 ),
        .Q(indvar_flatten_fu_82_reg[27]),
        .R(inNeurons_fu_740));
  FDRE \indvar_flatten_fu_82_reg[28] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[28]_i_1_n_10 ),
        .Q(indvar_flatten_fu_82_reg[28]),
        .R(inNeurons_fu_740));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_fu_82_reg[28]_i_1 
       (.CI(\indvar_flatten_fu_82_reg[24]_i_1_n_3 ),
        .CO({\NLW_indvar_flatten_fu_82_reg[28]_i_1_CO_UNCONNECTED [3],\indvar_flatten_fu_82_reg[28]_i_1_n_4 ,\indvar_flatten_fu_82_reg[28]_i_1_n_5 ,\indvar_flatten_fu_82_reg[28]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_fu_82_reg[28]_i_1_n_7 ,\indvar_flatten_fu_82_reg[28]_i_1_n_8 ,\indvar_flatten_fu_82_reg[28]_i_1_n_9 ,\indvar_flatten_fu_82_reg[28]_i_1_n_10 }),
        .S(indvar_flatten_fu_82_reg[31:28]));
  FDRE \indvar_flatten_fu_82_reg[29] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[28]_i_1_n_9 ),
        .Q(indvar_flatten_fu_82_reg[29]),
        .R(inNeurons_fu_740));
  FDRE \indvar_flatten_fu_82_reg[2] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[0]_i_1_n_8 ),
        .Q(indvar_flatten_fu_82_reg[2]),
        .R(inNeurons_fu_740));
  FDRE \indvar_flatten_fu_82_reg[30] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[28]_i_1_n_8 ),
        .Q(indvar_flatten_fu_82_reg[30]),
        .R(inNeurons_fu_740));
  FDRE \indvar_flatten_fu_82_reg[31] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[28]_i_1_n_7 ),
        .Q(indvar_flatten_fu_82_reg[31]),
        .R(inNeurons_fu_740));
  FDRE \indvar_flatten_fu_82_reg[3] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[0]_i_1_n_7 ),
        .Q(indvar_flatten_fu_82_reg[3]),
        .R(inNeurons_fu_740));
  FDRE \indvar_flatten_fu_82_reg[4] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[4]_i_1_n_10 ),
        .Q(indvar_flatten_fu_82_reg[4]),
        .R(inNeurons_fu_740));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_fu_82_reg[4]_i_1 
       (.CI(\indvar_flatten_fu_82_reg[0]_i_1_n_3 ),
        .CO({\indvar_flatten_fu_82_reg[4]_i_1_n_3 ,\indvar_flatten_fu_82_reg[4]_i_1_n_4 ,\indvar_flatten_fu_82_reg[4]_i_1_n_5 ,\indvar_flatten_fu_82_reg[4]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_fu_82_reg[4]_i_1_n_7 ,\indvar_flatten_fu_82_reg[4]_i_1_n_8 ,\indvar_flatten_fu_82_reg[4]_i_1_n_9 ,\indvar_flatten_fu_82_reg[4]_i_1_n_10 }),
        .S(indvar_flatten_fu_82_reg[7:4]));
  FDRE \indvar_flatten_fu_82_reg[5] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[4]_i_1_n_9 ),
        .Q(indvar_flatten_fu_82_reg[5]),
        .R(inNeurons_fu_740));
  FDRE \indvar_flatten_fu_82_reg[6] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[4]_i_1_n_8 ),
        .Q(indvar_flatten_fu_82_reg[6]),
        .R(inNeurons_fu_740));
  FDRE \indvar_flatten_fu_82_reg[7] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[4]_i_1_n_7 ),
        .Q(indvar_flatten_fu_82_reg[7]),
        .R(inNeurons_fu_740));
  FDRE \indvar_flatten_fu_82_reg[8] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[8]_i_1_n_10 ),
        .Q(indvar_flatten_fu_82_reg[8]),
        .R(inNeurons_fu_740));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_fu_82_reg[8]_i_1 
       (.CI(\indvar_flatten_fu_82_reg[4]_i_1_n_3 ),
        .CO({\indvar_flatten_fu_82_reg[8]_i_1_n_3 ,\indvar_flatten_fu_82_reg[8]_i_1_n_4 ,\indvar_flatten_fu_82_reg[8]_i_1_n_5 ,\indvar_flatten_fu_82_reg[8]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_fu_82_reg[8]_i_1_n_7 ,\indvar_flatten_fu_82_reg[8]_i_1_n_8 ,\indvar_flatten_fu_82_reg[8]_i_1_n_9 ,\indvar_flatten_fu_82_reg[8]_i_1_n_10 }),
        .S(indvar_flatten_fu_82_reg[11:8]));
  FDRE \indvar_flatten_fu_82_reg[9] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\indvar_flatten_fu_82_reg[8]_i_1_n_9 ),
        .Q(indvar_flatten_fu_82_reg[9]),
        .R(inNeurons_fu_740));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \int_input_r_shift0[0]_i_1 
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(\ap_CS_fsm_reg_n_3_[0] ),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg),
        .I3(ap_CS_fsm_pp0_stage1),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_weights_ce0));
  design_1_nnlayer_0_0_nnlayer_mac_muladd_16s_16s_24ns_24_4_1 mac_muladd_16s_16s_24ns_24_4_1_U4
       (.A(A),
        .B(B),
        .D(D),
        .Q(reuse_reg_fu_66),
        .addr_cmp_reg_411_pp0_iter1_reg(addr_cmp_reg_411_pp0_iter1_reg),
        .ap_clk(ap_clk),
        .p_reg_reg(output_r_load_reg_426));
  LUT4 #(
    .INIT(16'hE200)) 
    mem_reg_0_0_0_i_2
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(\ap_CS_fsm_reg_n_3_[0] ),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg),
        .I3(ap_CS_fsm_pp0_stage1),
        .O(ap_enable_reg_pp0_iter0_reg_reg_0));
  LUT4 #(
    .INIT(16'hE200)) 
    mem_reg_1_0_2_i_2
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(\ap_CS_fsm_reg_n_3_[0] ),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg),
        .I3(ap_CS_fsm_pp0_stage1),
        .O(ap_enable_reg_pp0_iter0_reg_reg_1));
  LUT4 #(
    .INIT(16'hE200)) 
    mem_reg_2_0_4_i_2
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(\ap_CS_fsm_reg_n_3_[0] ),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg),
        .I3(ap_CS_fsm_pp0_stage1),
        .O(ap_enable_reg_pp0_iter0_reg_reg_2));
  LUT4 #(
    .INIT(16'hE200)) 
    mem_reg_3_0_6_i_2
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(\ap_CS_fsm_reg_n_3_[0] ),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg),
        .I3(ap_CS_fsm_pp0_stage1),
        .O(ce0));
  CARRY4 mem_reg_i_10__1
       (.CI(mem_reg_i_11__1_n_3),
        .CO({NLW_mem_reg_i_10__1_CO_UNCONNECTED[3],mem_reg_i_10__1_n_4,mem_reg_i_10__1_n_5,mem_reg_i_10__1_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_input_r_address0[7:4]),
        .S(inNeurons_fu_74_reg[7:4]));
  CARRY4 mem_reg_i_11__1
       (.CI(1'b0),
        .CO({mem_reg_i_11__1_n_3,mem_reg_i_11__1_n_4,mem_reg_i_11__1_n_5,mem_reg_i_11__1_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,inNeurons_fu_74_reg[0]}),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_input_r_address0[3:0]),
        .S({inNeurons_fu_74_reg[3:1],mem_reg_i_24__1_n_3}));
  LUT6 #(
    .INIT(64'hFFFFEAAAAAAAEAAA)) 
    mem_reg_i_2
       (.I0(\ap_CS_fsm_reg[5] ),
        .I1(ap_enable_reg_pp0_iter1_0),
        .I2(Q[3]),
        .I3(\ap_CS_fsm_reg_n_3_[0] ),
        .I4(output_r_address01),
        .I5(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_110_output_r_ce0),
        .O(output_r_ce0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_i_24__1
       (.I0(inNeurons_fu_74_reg[0]),
        .I1(p_0_in),
        .O(mem_reg_i_24__1_n_3));
  LUT4 #(
    .INIT(16'hE200)) 
    mem_reg_i_2__1
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(\ap_CS_fsm_reg_n_3_[0] ),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg),
        .I3(ap_CS_fsm_pp0_stage1),
        .O(ap_enable_reg_pp0_iter0_reg_reg_3));
  LUT6 #(
    .INIT(64'h00000000D5808080)) 
    mem_reg_i_55
       (.I0(Q[3]),
        .I1(ap_CS_fsm_pp0_stage1),
        .I2(ap_enable_reg_pp0_iter2),
        .I3(Q[0]),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(output_r_address01),
        .O(\ap_CS_fsm_reg[5] ));
  LUT6 #(
    .INIT(64'hF0CCAACCAACCAACC)) 
    mem_reg_i_59
       (.I0(output_r_addr_reg_406[7]),
        .I1(mem_reg[7]),
        .I2(output_r_addr_reg_406_pp0_iter1_reg[7]),
        .I3(Q[3]),
        .I4(ap_CS_fsm_pp0_stage1),
        .I5(ap_enable_reg_pp0_iter2),
        .O(\output_r_addr_reg_406_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hF0CCAACCAACCAACC)) 
    mem_reg_i_60
       (.I0(output_r_addr_reg_406[6]),
        .I1(mem_reg[6]),
        .I2(output_r_addr_reg_406_pp0_iter1_reg[6]),
        .I3(Q[3]),
        .I4(ap_CS_fsm_pp0_stage1),
        .I5(ap_enable_reg_pp0_iter2),
        .O(\output_r_addr_reg_406_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hF0CCAACCAACCAACC)) 
    mem_reg_i_61
       (.I0(output_r_addr_reg_406[5]),
        .I1(mem_reg[5]),
        .I2(output_r_addr_reg_406_pp0_iter1_reg[5]),
        .I3(Q[3]),
        .I4(ap_CS_fsm_pp0_stage1),
        .I5(ap_enable_reg_pp0_iter2),
        .O(\output_r_addr_reg_406_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hF0CCAACCAACCAACC)) 
    mem_reg_i_62
       (.I0(output_r_addr_reg_406[4]),
        .I1(mem_reg[4]),
        .I2(output_r_addr_reg_406_pp0_iter1_reg[4]),
        .I3(Q[3]),
        .I4(ap_CS_fsm_pp0_stage1),
        .I5(ap_enable_reg_pp0_iter2),
        .O(\output_r_addr_reg_406_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hF0CCAACCAACCAACC)) 
    mem_reg_i_63
       (.I0(output_r_addr_reg_406[3]),
        .I1(mem_reg[3]),
        .I2(output_r_addr_reg_406_pp0_iter1_reg[3]),
        .I3(Q[3]),
        .I4(ap_CS_fsm_pp0_stage1),
        .I5(ap_enable_reg_pp0_iter2),
        .O(\output_r_addr_reg_406_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hF0CCAACCAACCAACC)) 
    mem_reg_i_64
       (.I0(output_r_addr_reg_406[2]),
        .I1(mem_reg[2]),
        .I2(output_r_addr_reg_406_pp0_iter1_reg[2]),
        .I3(Q[3]),
        .I4(ap_CS_fsm_pp0_stage1),
        .I5(ap_enable_reg_pp0_iter2),
        .O(\output_r_addr_reg_406_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hF0CCAACCAACCAACC)) 
    mem_reg_i_65
       (.I0(output_r_addr_reg_406[1]),
        .I1(mem_reg[1]),
        .I2(output_r_addr_reg_406_pp0_iter1_reg[1]),
        .I3(Q[3]),
        .I4(ap_CS_fsm_pp0_stage1),
        .I5(ap_enable_reg_pp0_iter2),
        .O(\output_r_addr_reg_406_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hF0CCAACCAACCAACC)) 
    mem_reg_i_77
       (.I0(output_r_addr_reg_406[0]),
        .I1(mem_reg[0]),
        .I2(output_r_addr_reg_406_pp0_iter1_reg[0]),
        .I3(Q[3]),
        .I4(ap_CS_fsm_pp0_stage1),
        .I5(ap_enable_reg_pp0_iter2),
        .O(\output_r_addr_reg_406_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \outNeurons_fu_70[0]_i_1 
       (.I0(p_0_in),
        .I1(outNeurons_fu_70[0]),
        .O(outNeurons_1_fu_264_p2[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \outNeurons_fu_70[12]_i_2 
       (.I0(outNeurons_fu_70[12]),
        .I1(p_0_in),
        .O(\outNeurons_fu_70[12]_i_2_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \outNeurons_fu_70[12]_i_3 
       (.I0(outNeurons_fu_70[11]),
        .I1(p_0_in),
        .O(\outNeurons_fu_70[12]_i_3_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \outNeurons_fu_70[12]_i_4 
       (.I0(outNeurons_fu_70[10]),
        .I1(p_0_in),
        .O(\outNeurons_fu_70[12]_i_4_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \outNeurons_fu_70[12]_i_5 
       (.I0(outNeurons_fu_70[9]),
        .I1(p_0_in),
        .O(\outNeurons_fu_70[12]_i_5_n_3 ));
  LUT5 #(
    .INIT(32'h44400040)) 
    \outNeurons_fu_70[15]_i_2 
       (.I0(icmp_ln37_fu_169_p27_in),
        .I1(ap_CS_fsm_pp0_stage1),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(\ap_CS_fsm_reg_n_3_[0] ),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_ap_start_reg),
        .O(inNeurons_fu_7400_out));
  LUT2 #(
    .INIT(4'h2)) 
    \outNeurons_fu_70[15]_i_4 
       (.I0(outNeurons_fu_70[15]),
        .I1(p_0_in),
        .O(\outNeurons_fu_70[15]_i_4_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \outNeurons_fu_70[15]_i_5 
       (.I0(outNeurons_fu_70[14]),
        .I1(p_0_in),
        .O(\outNeurons_fu_70[15]_i_5_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \outNeurons_fu_70[15]_i_6 
       (.I0(outNeurons_fu_70[13]),
        .I1(p_0_in),
        .O(\outNeurons_fu_70[15]_i_6_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \outNeurons_fu_70[4]_i_2 
       (.I0(outNeurons_fu_70[4]),
        .I1(p_0_in),
        .O(\outNeurons_fu_70[4]_i_2_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \outNeurons_fu_70[4]_i_3 
       (.I0(outNeurons_fu_70[3]),
        .I1(p_0_in),
        .O(\outNeurons_fu_70[4]_i_3_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \outNeurons_fu_70[4]_i_4 
       (.I0(outNeurons_fu_70[2]),
        .I1(p_0_in),
        .O(\outNeurons_fu_70[4]_i_4_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \outNeurons_fu_70[4]_i_5 
       (.I0(outNeurons_fu_70[1]),
        .I1(p_0_in),
        .O(\outNeurons_fu_70[4]_i_5_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \outNeurons_fu_70[8]_i_2 
       (.I0(outNeurons_fu_70[8]),
        .I1(p_0_in),
        .O(\outNeurons_fu_70[8]_i_2_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \outNeurons_fu_70[8]_i_3 
       (.I0(outNeurons_fu_70[7]),
        .I1(p_0_in),
        .O(\outNeurons_fu_70[8]_i_3_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \outNeurons_fu_70[8]_i_4 
       (.I0(outNeurons_fu_70[6]),
        .I1(p_0_in),
        .O(\outNeurons_fu_70[8]_i_4_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \outNeurons_fu_70[8]_i_5 
       (.I0(outNeurons_fu_70[5]),
        .I1(p_0_in),
        .O(\outNeurons_fu_70[8]_i_5_n_3 ));
  FDRE \outNeurons_fu_70_reg[0] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(outNeurons_1_fu_264_p2[0]),
        .Q(outNeurons_fu_70[0]),
        .R(inNeurons_fu_740));
  FDRE \outNeurons_fu_70_reg[10] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(outNeurons_1_fu_264_p2[10]),
        .Q(outNeurons_fu_70[10]),
        .R(inNeurons_fu_740));
  FDRE \outNeurons_fu_70_reg[11] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(outNeurons_1_fu_264_p2[11]),
        .Q(outNeurons_fu_70[11]),
        .R(inNeurons_fu_740));
  FDRE \outNeurons_fu_70_reg[12] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(outNeurons_1_fu_264_p2[12]),
        .Q(outNeurons_fu_70[12]),
        .R(inNeurons_fu_740));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \outNeurons_fu_70_reg[12]_i_1 
       (.CI(\outNeurons_fu_70_reg[8]_i_1_n_3 ),
        .CO({\outNeurons_fu_70_reg[12]_i_1_n_3 ,\outNeurons_fu_70_reg[12]_i_1_n_4 ,\outNeurons_fu_70_reg[12]_i_1_n_5 ,\outNeurons_fu_70_reg[12]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(outNeurons_1_fu_264_p2[12:9]),
        .S({\outNeurons_fu_70[12]_i_2_n_3 ,\outNeurons_fu_70[12]_i_3_n_3 ,\outNeurons_fu_70[12]_i_4_n_3 ,\outNeurons_fu_70[12]_i_5_n_3 }));
  FDRE \outNeurons_fu_70_reg[13] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(outNeurons_1_fu_264_p2[13]),
        .Q(outNeurons_fu_70[13]),
        .R(inNeurons_fu_740));
  FDRE \outNeurons_fu_70_reg[14] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(outNeurons_1_fu_264_p2[14]),
        .Q(outNeurons_fu_70[14]),
        .R(inNeurons_fu_740));
  FDRE \outNeurons_fu_70_reg[15] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(outNeurons_1_fu_264_p2[15]),
        .Q(outNeurons_fu_70[15]),
        .R(inNeurons_fu_740));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \outNeurons_fu_70_reg[15]_i_3 
       (.CI(\outNeurons_fu_70_reg[12]_i_1_n_3 ),
        .CO({\NLW_outNeurons_fu_70_reg[15]_i_3_CO_UNCONNECTED [3:2],\outNeurons_fu_70_reg[15]_i_3_n_5 ,\outNeurons_fu_70_reg[15]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_outNeurons_fu_70_reg[15]_i_3_O_UNCONNECTED [3],outNeurons_1_fu_264_p2[15:13]}),
        .S({1'b0,\outNeurons_fu_70[15]_i_4_n_3 ,\outNeurons_fu_70[15]_i_5_n_3 ,\outNeurons_fu_70[15]_i_6_n_3 }));
  FDRE \outNeurons_fu_70_reg[1] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(outNeurons_1_fu_264_p2[1]),
        .Q(outNeurons_fu_70[1]),
        .R(inNeurons_fu_740));
  FDRE \outNeurons_fu_70_reg[2] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(outNeurons_1_fu_264_p2[2]),
        .Q(outNeurons_fu_70[2]),
        .R(inNeurons_fu_740));
  FDRE \outNeurons_fu_70_reg[3] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(outNeurons_1_fu_264_p2[3]),
        .Q(outNeurons_fu_70[3]),
        .R(inNeurons_fu_740));
  FDRE \outNeurons_fu_70_reg[4] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(outNeurons_1_fu_264_p2[4]),
        .Q(outNeurons_fu_70[4]),
        .R(inNeurons_fu_740));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \outNeurons_fu_70_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\outNeurons_fu_70_reg[4]_i_1_n_3 ,\outNeurons_fu_70_reg[4]_i_1_n_4 ,\outNeurons_fu_70_reg[4]_i_1_n_5 ,\outNeurons_fu_70_reg[4]_i_1_n_6 }),
        .CYINIT(select_ln30_fu_194_p3[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(outNeurons_1_fu_264_p2[4:1]),
        .S({\outNeurons_fu_70[4]_i_2_n_3 ,\outNeurons_fu_70[4]_i_3_n_3 ,\outNeurons_fu_70[4]_i_4_n_3 ,\outNeurons_fu_70[4]_i_5_n_3 }));
  FDRE \outNeurons_fu_70_reg[5] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(outNeurons_1_fu_264_p2[5]),
        .Q(outNeurons_fu_70[5]),
        .R(inNeurons_fu_740));
  FDRE \outNeurons_fu_70_reg[6] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(outNeurons_1_fu_264_p2[6]),
        .Q(outNeurons_fu_70[6]),
        .R(inNeurons_fu_740));
  FDRE \outNeurons_fu_70_reg[7] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(outNeurons_1_fu_264_p2[7]),
        .Q(outNeurons_fu_70[7]),
        .R(inNeurons_fu_740));
  FDRE \outNeurons_fu_70_reg[8] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(outNeurons_1_fu_264_p2[8]),
        .Q(outNeurons_fu_70[8]),
        .R(inNeurons_fu_740));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \outNeurons_fu_70_reg[8]_i_1 
       (.CI(\outNeurons_fu_70_reg[4]_i_1_n_3 ),
        .CO({\outNeurons_fu_70_reg[8]_i_1_n_3 ,\outNeurons_fu_70_reg[8]_i_1_n_4 ,\outNeurons_fu_70_reg[8]_i_1_n_5 ,\outNeurons_fu_70_reg[8]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(outNeurons_1_fu_264_p2[8:5]),
        .S({\outNeurons_fu_70[8]_i_2_n_3 ,\outNeurons_fu_70[8]_i_3_n_3 ,\outNeurons_fu_70[8]_i_4_n_3 ,\outNeurons_fu_70[8]_i_5_n_3 }));
  FDRE \outNeurons_fu_70_reg[9] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(outNeurons_1_fu_264_p2[9]),
        .Q(outNeurons_fu_70[9]),
        .R(inNeurons_fu_740));
  FDRE \output_r_addr_reg_406_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(output_r_addr_reg_406[0]),
        .Q(output_r_addr_reg_406_pp0_iter1_reg[0]),
        .R(1'b0));
  FDRE \output_r_addr_reg_406_pp0_iter1_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(output_r_addr_reg_406[1]),
        .Q(output_r_addr_reg_406_pp0_iter1_reg[1]),
        .R(1'b0));
  FDRE \output_r_addr_reg_406_pp0_iter1_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(output_r_addr_reg_406[2]),
        .Q(output_r_addr_reg_406_pp0_iter1_reg[2]),
        .R(1'b0));
  FDRE \output_r_addr_reg_406_pp0_iter1_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(output_r_addr_reg_406[3]),
        .Q(output_r_addr_reg_406_pp0_iter1_reg[3]),
        .R(1'b0));
  FDRE \output_r_addr_reg_406_pp0_iter1_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(output_r_addr_reg_406[4]),
        .Q(output_r_addr_reg_406_pp0_iter1_reg[4]),
        .R(1'b0));
  FDRE \output_r_addr_reg_406_pp0_iter1_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(output_r_addr_reg_406[5]),
        .Q(output_r_addr_reg_406_pp0_iter1_reg[5]),
        .R(1'b0));
  FDRE \output_r_addr_reg_406_pp0_iter1_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(output_r_addr_reg_406[6]),
        .Q(output_r_addr_reg_406_pp0_iter1_reg[6]),
        .R(1'b0));
  FDRE \output_r_addr_reg_406_pp0_iter1_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(output_r_addr_reg_406[7]),
        .Q(output_r_addr_reg_406_pp0_iter1_reg[7]),
        .R(1'b0));
  FDRE \output_r_addr_reg_406_reg[0] 
       (.C(ap_clk),
        .CE(addr_cmp_reg_4110),
        .D(select_ln30_fu_194_p3[0]),
        .Q(output_r_addr_reg_406[0]),
        .R(1'b0));
  FDRE \output_r_addr_reg_406_reg[1] 
       (.C(ap_clk),
        .CE(addr_cmp_reg_4110),
        .D(select_ln30_fu_194_p3[1]),
        .Q(output_r_addr_reg_406[1]),
        .R(1'b0));
  FDRE \output_r_addr_reg_406_reg[2] 
       (.C(ap_clk),
        .CE(addr_cmp_reg_4110),
        .D(select_ln30_fu_194_p3[2]),
        .Q(output_r_addr_reg_406[2]),
        .R(1'b0));
  FDRE \output_r_addr_reg_406_reg[3] 
       (.C(ap_clk),
        .CE(addr_cmp_reg_4110),
        .D(select_ln30_fu_194_p3[3]),
        .Q(output_r_addr_reg_406[3]),
        .R(1'b0));
  FDRE \output_r_addr_reg_406_reg[4] 
       (.C(ap_clk),
        .CE(addr_cmp_reg_4110),
        .D(select_ln30_fu_194_p3[4]),
        .Q(output_r_addr_reg_406[4]),
        .R(1'b0));
  FDRE \output_r_addr_reg_406_reg[5] 
       (.C(ap_clk),
        .CE(addr_cmp_reg_4110),
        .D(select_ln30_fu_194_p3[5]),
        .Q(output_r_addr_reg_406[5]),
        .R(1'b0));
  FDRE \output_r_addr_reg_406_reg[6] 
       (.C(ap_clk),
        .CE(addr_cmp_reg_4110),
        .D(select_ln30_fu_194_p3[6]),
        .Q(output_r_addr_reg_406[6]),
        .R(1'b0));
  FDRE \output_r_addr_reg_406_reg[7] 
       (.C(ap_clk),
        .CE(addr_cmp_reg_4110),
        .D(select_ln30_fu_194_p3[7]),
        .Q(output_r_addr_reg_406[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \output_r_load_reg_426[15]_i_1 
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(ap_enable_reg_pp0_iter1_0),
        .I2(addr_cmp_reg_411),
        .O(output_r_load_reg_4260));
  FDRE \output_r_load_reg_426_reg[0] 
       (.C(ap_clk),
        .CE(output_r_load_reg_4260),
        .D(\output_r_load_reg_426_reg[15]_0 [0]),
        .Q(output_r_load_reg_426[0]),
        .R(1'b0));
  FDRE \output_r_load_reg_426_reg[10] 
       (.C(ap_clk),
        .CE(output_r_load_reg_4260),
        .D(\output_r_load_reg_426_reg[15]_0 [10]),
        .Q(output_r_load_reg_426[10]),
        .R(1'b0));
  FDRE \output_r_load_reg_426_reg[11] 
       (.C(ap_clk),
        .CE(output_r_load_reg_4260),
        .D(\output_r_load_reg_426_reg[15]_0 [11]),
        .Q(output_r_load_reg_426[11]),
        .R(1'b0));
  FDRE \output_r_load_reg_426_reg[12] 
       (.C(ap_clk),
        .CE(output_r_load_reg_4260),
        .D(\output_r_load_reg_426_reg[15]_0 [12]),
        .Q(output_r_load_reg_426[12]),
        .R(1'b0));
  FDRE \output_r_load_reg_426_reg[13] 
       (.C(ap_clk),
        .CE(output_r_load_reg_4260),
        .D(\output_r_load_reg_426_reg[15]_0 [13]),
        .Q(output_r_load_reg_426[13]),
        .R(1'b0));
  FDRE \output_r_load_reg_426_reg[14] 
       (.C(ap_clk),
        .CE(output_r_load_reg_4260),
        .D(\output_r_load_reg_426_reg[15]_0 [14]),
        .Q(output_r_load_reg_426[14]),
        .R(1'b0));
  FDRE \output_r_load_reg_426_reg[15] 
       (.C(ap_clk),
        .CE(output_r_load_reg_4260),
        .D(\output_r_load_reg_426_reg[15]_0 [15]),
        .Q(output_r_load_reg_426[15]),
        .R(1'b0));
  FDRE \output_r_load_reg_426_reg[1] 
       (.C(ap_clk),
        .CE(output_r_load_reg_4260),
        .D(\output_r_load_reg_426_reg[15]_0 [1]),
        .Q(output_r_load_reg_426[1]),
        .R(1'b0));
  FDRE \output_r_load_reg_426_reg[2] 
       (.C(ap_clk),
        .CE(output_r_load_reg_4260),
        .D(\output_r_load_reg_426_reg[15]_0 [2]),
        .Q(output_r_load_reg_426[2]),
        .R(1'b0));
  FDRE \output_r_load_reg_426_reg[3] 
       (.C(ap_clk),
        .CE(output_r_load_reg_4260),
        .D(\output_r_load_reg_426_reg[15]_0 [3]),
        .Q(output_r_load_reg_426[3]),
        .R(1'b0));
  FDRE \output_r_load_reg_426_reg[4] 
       (.C(ap_clk),
        .CE(output_r_load_reg_4260),
        .D(\output_r_load_reg_426_reg[15]_0 [4]),
        .Q(output_r_load_reg_426[4]),
        .R(1'b0));
  FDRE \output_r_load_reg_426_reg[5] 
       (.C(ap_clk),
        .CE(output_r_load_reg_4260),
        .D(\output_r_load_reg_426_reg[15]_0 [5]),
        .Q(output_r_load_reg_426[5]),
        .R(1'b0));
  FDRE \output_r_load_reg_426_reg[6] 
       (.C(ap_clk),
        .CE(output_r_load_reg_4260),
        .D(\output_r_load_reg_426_reg[15]_0 [6]),
        .Q(output_r_load_reg_426[6]),
        .R(1'b0));
  FDRE \output_r_load_reg_426_reg[7] 
       (.C(ap_clk),
        .CE(output_r_load_reg_4260),
        .D(\output_r_load_reg_426_reg[15]_0 [7]),
        .Q(output_r_load_reg_426[7]),
        .R(1'b0));
  FDRE \output_r_load_reg_426_reg[8] 
       (.C(ap_clk),
        .CE(output_r_load_reg_4260),
        .D(\output_r_load_reg_426_reg[15]_0 [8]),
        .Q(output_r_load_reg_426[8]),
        .R(1'b0));
  FDRE \output_r_load_reg_426_reg[9] 
       (.C(ap_clk),
        .CE(output_r_load_reg_4260),
        .D(\output_r_load_reg_426_reg[15]_0 [9]),
        .Q(output_r_load_reg_426[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \reuse_addr_reg_fu_62[0]_i_1 
       (.I0(outNeurons_fu_70[0]),
        .I1(p_0_in),
        .O(select_ln30_fu_194_p3[0]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reuse_addr_reg_fu_62[10]_i_1 
       (.I0(outNeurons_fu_70[10]),
        .I1(p_0_in),
        .O(select_ln30_fu_194_p3[10]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reuse_addr_reg_fu_62[11]_i_1 
       (.I0(outNeurons_fu_70[11]),
        .I1(p_0_in),
        .O(select_ln30_fu_194_p3[11]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reuse_addr_reg_fu_62[12]_i_1 
       (.I0(outNeurons_fu_70[12]),
        .I1(p_0_in),
        .O(select_ln30_fu_194_p3[12]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reuse_addr_reg_fu_62[13]_i_1 
       (.I0(outNeurons_fu_70[13]),
        .I1(p_0_in),
        .O(select_ln30_fu_194_p3[13]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reuse_addr_reg_fu_62[14]_i_1 
       (.I0(outNeurons_fu_70[14]),
        .I1(p_0_in),
        .O(select_ln30_fu_194_p3[14]));
  LUT2 #(
    .INIT(4'h2)) 
    \reuse_addr_reg_fu_62[15]_i_1 
       (.I0(outNeurons_fu_70[15]),
        .I1(p_0_in),
        .O(select_ln30_fu_194_p3[15]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reuse_addr_reg_fu_62[1]_i_1 
       (.I0(outNeurons_fu_70[1]),
        .I1(p_0_in),
        .O(select_ln30_fu_194_p3[1]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reuse_addr_reg_fu_62[2]_i_1 
       (.I0(outNeurons_fu_70[2]),
        .I1(p_0_in),
        .O(select_ln30_fu_194_p3[2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reuse_addr_reg_fu_62[3]_i_1 
       (.I0(outNeurons_fu_70[3]),
        .I1(p_0_in),
        .O(select_ln30_fu_194_p3[3]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reuse_addr_reg_fu_62[4]_i_1 
       (.I0(outNeurons_fu_70[4]),
        .I1(p_0_in),
        .O(select_ln30_fu_194_p3[4]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reuse_addr_reg_fu_62[5]_i_1 
       (.I0(outNeurons_fu_70[5]),
        .I1(p_0_in),
        .O(select_ln30_fu_194_p3[5]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reuse_addr_reg_fu_62[6]_i_1 
       (.I0(outNeurons_fu_70[6]),
        .I1(p_0_in),
        .O(select_ln30_fu_194_p3[6]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reuse_addr_reg_fu_62[7]_i_1 
       (.I0(outNeurons_fu_70[7]),
        .I1(p_0_in),
        .O(select_ln30_fu_194_p3[7]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reuse_addr_reg_fu_62[8]_i_1 
       (.I0(outNeurons_fu_70[8]),
        .I1(p_0_in),
        .O(select_ln30_fu_194_p3[8]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reuse_addr_reg_fu_62[9]_i_1 
       (.I0(outNeurons_fu_70[9]),
        .I1(p_0_in),
        .O(select_ln30_fu_194_p3[9]));
  FDSE \reuse_addr_reg_fu_62_reg[0] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(select_ln30_fu_194_p3[0]),
        .Q(reuse_addr_reg_fu_62[0]),
        .S(inNeurons_fu_740));
  FDSE \reuse_addr_reg_fu_62_reg[10] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(select_ln30_fu_194_p3[10]),
        .Q(reuse_addr_reg_fu_62[10]),
        .S(inNeurons_fu_740));
  FDSE \reuse_addr_reg_fu_62_reg[11] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(select_ln30_fu_194_p3[11]),
        .Q(reuse_addr_reg_fu_62[11]),
        .S(inNeurons_fu_740));
  FDSE \reuse_addr_reg_fu_62_reg[12] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(select_ln30_fu_194_p3[12]),
        .Q(reuse_addr_reg_fu_62[12]),
        .S(inNeurons_fu_740));
  FDSE \reuse_addr_reg_fu_62_reg[13] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(select_ln30_fu_194_p3[13]),
        .Q(reuse_addr_reg_fu_62[13]),
        .S(inNeurons_fu_740));
  FDSE \reuse_addr_reg_fu_62_reg[14] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(select_ln30_fu_194_p3[14]),
        .Q(reuse_addr_reg_fu_62[14]),
        .S(inNeurons_fu_740));
  FDSE \reuse_addr_reg_fu_62_reg[15] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(select_ln30_fu_194_p3[15]),
        .Q(reuse_addr_reg_fu_62[15]),
        .S(inNeurons_fu_740));
  FDSE \reuse_addr_reg_fu_62_reg[17] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(1'b0),
        .Q(reuse_addr_reg_fu_62[17]),
        .S(inNeurons_fu_740));
  FDSE \reuse_addr_reg_fu_62_reg[1] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(select_ln30_fu_194_p3[1]),
        .Q(reuse_addr_reg_fu_62[1]),
        .S(inNeurons_fu_740));
  FDSE \reuse_addr_reg_fu_62_reg[2] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(select_ln30_fu_194_p3[2]),
        .Q(reuse_addr_reg_fu_62[2]),
        .S(inNeurons_fu_740));
  FDSE \reuse_addr_reg_fu_62_reg[3] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(select_ln30_fu_194_p3[3]),
        .Q(reuse_addr_reg_fu_62[3]),
        .S(inNeurons_fu_740));
  FDSE \reuse_addr_reg_fu_62_reg[4] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(select_ln30_fu_194_p3[4]),
        .Q(reuse_addr_reg_fu_62[4]),
        .S(inNeurons_fu_740));
  FDSE \reuse_addr_reg_fu_62_reg[5] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(select_ln30_fu_194_p3[5]),
        .Q(reuse_addr_reg_fu_62[5]),
        .S(inNeurons_fu_740));
  FDSE \reuse_addr_reg_fu_62_reg[6] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(select_ln30_fu_194_p3[6]),
        .Q(reuse_addr_reg_fu_62[6]),
        .S(inNeurons_fu_740));
  FDSE \reuse_addr_reg_fu_62_reg[7] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(select_ln30_fu_194_p3[7]),
        .Q(reuse_addr_reg_fu_62[7]),
        .S(inNeurons_fu_740));
  FDSE \reuse_addr_reg_fu_62_reg[8] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(select_ln30_fu_194_p3[8]),
        .Q(reuse_addr_reg_fu_62[8]),
        .S(inNeurons_fu_740));
  FDSE \reuse_addr_reg_fu_62_reg[9] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(select_ln30_fu_194_p3[9]),
        .Q(reuse_addr_reg_fu_62[9]),
        .S(inNeurons_fu_740));
  LUT2 #(
    .INIT(4'h8)) 
    \reuse_reg_fu_66[15]_i_1 
       (.I0(ap_enable_reg_pp0_iter2),
        .I1(ap_CS_fsm_pp0_stage1),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_output_r_we0));
  FDRE \reuse_reg_fu_66_reg[0] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_output_r_we0),
        .D(D[0]),
        .Q(reuse_reg_fu_66[0]),
        .R(inNeurons_fu_740));
  FDRE \reuse_reg_fu_66_reg[10] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_output_r_we0),
        .D(D[10]),
        .Q(reuse_reg_fu_66[10]),
        .R(inNeurons_fu_740));
  FDRE \reuse_reg_fu_66_reg[11] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_output_r_we0),
        .D(D[11]),
        .Q(reuse_reg_fu_66[11]),
        .R(inNeurons_fu_740));
  FDRE \reuse_reg_fu_66_reg[12] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_output_r_we0),
        .D(D[12]),
        .Q(reuse_reg_fu_66[12]),
        .R(inNeurons_fu_740));
  FDRE \reuse_reg_fu_66_reg[13] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_output_r_we0),
        .D(D[13]),
        .Q(reuse_reg_fu_66[13]),
        .R(inNeurons_fu_740));
  FDRE \reuse_reg_fu_66_reg[14] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_output_r_we0),
        .D(D[14]),
        .Q(reuse_reg_fu_66[14]),
        .R(inNeurons_fu_740));
  FDRE \reuse_reg_fu_66_reg[15] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_output_r_we0),
        .D(D[15]),
        .Q(reuse_reg_fu_66[15]),
        .R(inNeurons_fu_740));
  FDRE \reuse_reg_fu_66_reg[1] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_output_r_we0),
        .D(D[1]),
        .Q(reuse_reg_fu_66[1]),
        .R(inNeurons_fu_740));
  FDRE \reuse_reg_fu_66_reg[2] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_output_r_we0),
        .D(D[2]),
        .Q(reuse_reg_fu_66[2]),
        .R(inNeurons_fu_740));
  FDRE \reuse_reg_fu_66_reg[3] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_output_r_we0),
        .D(D[3]),
        .Q(reuse_reg_fu_66[3]),
        .R(inNeurons_fu_740));
  FDRE \reuse_reg_fu_66_reg[4] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_output_r_we0),
        .D(D[4]),
        .Q(reuse_reg_fu_66[4]),
        .R(inNeurons_fu_740));
  FDRE \reuse_reg_fu_66_reg[5] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_output_r_we0),
        .D(D[5]),
        .Q(reuse_reg_fu_66[5]),
        .R(inNeurons_fu_740));
  FDRE \reuse_reg_fu_66_reg[6] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_output_r_we0),
        .D(D[6]),
        .Q(reuse_reg_fu_66[6]),
        .R(inNeurons_fu_740));
  FDRE \reuse_reg_fu_66_reg[7] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_output_r_we0),
        .D(D[7]),
        .Q(reuse_reg_fu_66[7]),
        .R(inNeurons_fu_740));
  FDRE \reuse_reg_fu_66_reg[8] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_output_r_we0),
        .D(D[8]),
        .Q(reuse_reg_fu_66[8]),
        .R(inNeurons_fu_740));
  FDRE \reuse_reg_fu_66_reg[9] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3_fu_98_output_r_we0),
        .D(D[9]),
        .Q(reuse_reg_fu_66[9]),
        .R(inNeurons_fu_740));
  LUT2 #(
    .INIT(4'h8)) 
    \weightIndexAdded_fu_78[0]_i_2 
       (.I0(p_0_in),
        .I1(\weightIndexAdded_fu_78_reg[15]_0 [3]),
        .O(in[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \weightIndexAdded_fu_78[0]_i_3 
       (.I0(p_0_in),
        .I1(\weightIndexAdded_fu_78_reg[15]_0 [2]),
        .O(in[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \weightIndexAdded_fu_78[0]_i_4 
       (.I0(p_0_in),
        .I1(\weightIndexAdded_fu_78_reg[15]_0 [1]),
        .O(in[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \weightIndexAdded_fu_78[0]_i_5 
       (.I0(p_0_in),
        .I1(\weightIndexAdded_fu_78_reg[15]_0 [0]),
        .O(in[0]));
  LUT3 #(
    .INIT(8'h78)) 
    \weightIndexAdded_fu_78[0]_i_6 
       (.I0(\weightIndexAdded_fu_78_reg[15]_0 [3]),
        .I1(p_0_in),
        .I2(weightIndexAdded_fu_78_reg[3]),
        .O(\weightIndexAdded_fu_78[0]_i_6_n_3 ));
  LUT3 #(
    .INIT(8'h78)) 
    \weightIndexAdded_fu_78[0]_i_7 
       (.I0(\weightIndexAdded_fu_78_reg[15]_0 [2]),
        .I1(p_0_in),
        .I2(weightIndexAdded_fu_78_reg[2]),
        .O(\weightIndexAdded_fu_78[0]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'h78)) 
    \weightIndexAdded_fu_78[0]_i_8 
       (.I0(\weightIndexAdded_fu_78_reg[15]_0 [1]),
        .I1(p_0_in),
        .I2(weightIndexAdded_fu_78_reg[1]),
        .O(\weightIndexAdded_fu_78[0]_i_8_n_3 ));
  LUT3 #(
    .INIT(8'h78)) 
    \weightIndexAdded_fu_78[0]_i_9 
       (.I0(\weightIndexAdded_fu_78_reg[15]_0 [0]),
        .I1(p_0_in),
        .I2(weightIndexAdded_fu_78_reg[0]),
        .O(\weightIndexAdded_fu_78[0]_i_9_n_3 ));
  LUT2 #(
    .INIT(4'h8)) 
    \weightIndexAdded_fu_78[12]_i_2 
       (.I0(p_0_in),
        .I1(\weightIndexAdded_fu_78_reg[15]_0 [14]),
        .O(in[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \weightIndexAdded_fu_78[12]_i_3 
       (.I0(p_0_in),
        .I1(\weightIndexAdded_fu_78_reg[15]_0 [13]),
        .O(in[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \weightIndexAdded_fu_78[12]_i_4 
       (.I0(p_0_in),
        .I1(\weightIndexAdded_fu_78_reg[15]_0 [12]),
        .O(in[12]));
  LUT3 #(
    .INIT(8'h78)) 
    \weightIndexAdded_fu_78[12]_i_5 
       (.I0(\weightIndexAdded_fu_78_reg[15]_0 [15]),
        .I1(p_0_in),
        .I2(weightIndexAdded_fu_78_reg[15]),
        .O(\weightIndexAdded_fu_78[12]_i_5_n_3 ));
  LUT3 #(
    .INIT(8'h78)) 
    \weightIndexAdded_fu_78[12]_i_6 
       (.I0(\weightIndexAdded_fu_78_reg[15]_0 [14]),
        .I1(p_0_in),
        .I2(weightIndexAdded_fu_78_reg[14]),
        .O(\weightIndexAdded_fu_78[12]_i_6_n_3 ));
  LUT3 #(
    .INIT(8'h78)) 
    \weightIndexAdded_fu_78[12]_i_7 
       (.I0(\weightIndexAdded_fu_78_reg[15]_0 [13]),
        .I1(p_0_in),
        .I2(weightIndexAdded_fu_78_reg[13]),
        .O(\weightIndexAdded_fu_78[12]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'h78)) 
    \weightIndexAdded_fu_78[12]_i_8 
       (.I0(\weightIndexAdded_fu_78_reg[15]_0 [12]),
        .I1(p_0_in),
        .I2(weightIndexAdded_fu_78_reg[12]),
        .O(\weightIndexAdded_fu_78[12]_i_8_n_3 ));
  LUT2 #(
    .INIT(4'h8)) 
    \weightIndexAdded_fu_78[4]_i_2 
       (.I0(p_0_in),
        .I1(\weightIndexAdded_fu_78_reg[15]_0 [7]),
        .O(in[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \weightIndexAdded_fu_78[4]_i_3 
       (.I0(p_0_in),
        .I1(\weightIndexAdded_fu_78_reg[15]_0 [6]),
        .O(in[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \weightIndexAdded_fu_78[4]_i_4 
       (.I0(p_0_in),
        .I1(\weightIndexAdded_fu_78_reg[15]_0 [5]),
        .O(in[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \weightIndexAdded_fu_78[4]_i_5 
       (.I0(p_0_in),
        .I1(\weightIndexAdded_fu_78_reg[15]_0 [4]),
        .O(in[4]));
  LUT3 #(
    .INIT(8'h78)) 
    \weightIndexAdded_fu_78[4]_i_6 
       (.I0(\weightIndexAdded_fu_78_reg[15]_0 [7]),
        .I1(p_0_in),
        .I2(weightIndexAdded_fu_78_reg[7]),
        .O(\weightIndexAdded_fu_78[4]_i_6_n_3 ));
  LUT3 #(
    .INIT(8'h78)) 
    \weightIndexAdded_fu_78[4]_i_7 
       (.I0(\weightIndexAdded_fu_78_reg[15]_0 [6]),
        .I1(p_0_in),
        .I2(weightIndexAdded_fu_78_reg[6]),
        .O(\weightIndexAdded_fu_78[4]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'h78)) 
    \weightIndexAdded_fu_78[4]_i_8 
       (.I0(\weightIndexAdded_fu_78_reg[15]_0 [5]),
        .I1(p_0_in),
        .I2(weightIndexAdded_fu_78_reg[5]),
        .O(\weightIndexAdded_fu_78[4]_i_8_n_3 ));
  LUT3 #(
    .INIT(8'h78)) 
    \weightIndexAdded_fu_78[4]_i_9 
       (.I0(\weightIndexAdded_fu_78_reg[15]_0 [4]),
        .I1(p_0_in),
        .I2(weightIndexAdded_fu_78_reg[4]),
        .O(\weightIndexAdded_fu_78[4]_i_9_n_3 ));
  LUT2 #(
    .INIT(4'h8)) 
    \weightIndexAdded_fu_78[8]_i_2 
       (.I0(p_0_in),
        .I1(\weightIndexAdded_fu_78_reg[15]_0 [11]),
        .O(in[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \weightIndexAdded_fu_78[8]_i_3 
       (.I0(p_0_in),
        .I1(\weightIndexAdded_fu_78_reg[15]_0 [10]),
        .O(in[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \weightIndexAdded_fu_78[8]_i_4 
       (.I0(p_0_in),
        .I1(\weightIndexAdded_fu_78_reg[15]_0 [9]),
        .O(in[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \weightIndexAdded_fu_78[8]_i_5 
       (.I0(p_0_in),
        .I1(\weightIndexAdded_fu_78_reg[15]_0 [8]),
        .O(in[8]));
  LUT3 #(
    .INIT(8'h78)) 
    \weightIndexAdded_fu_78[8]_i_6 
       (.I0(\weightIndexAdded_fu_78_reg[15]_0 [11]),
        .I1(p_0_in),
        .I2(weightIndexAdded_fu_78_reg[11]),
        .O(\weightIndexAdded_fu_78[8]_i_6_n_3 ));
  LUT3 #(
    .INIT(8'h78)) 
    \weightIndexAdded_fu_78[8]_i_7 
       (.I0(\weightIndexAdded_fu_78_reg[15]_0 [10]),
        .I1(p_0_in),
        .I2(weightIndexAdded_fu_78_reg[10]),
        .O(\weightIndexAdded_fu_78[8]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'h78)) 
    \weightIndexAdded_fu_78[8]_i_8 
       (.I0(\weightIndexAdded_fu_78_reg[15]_0 [9]),
        .I1(p_0_in),
        .I2(weightIndexAdded_fu_78_reg[9]),
        .O(\weightIndexAdded_fu_78[8]_i_8_n_3 ));
  LUT3 #(
    .INIT(8'h78)) 
    \weightIndexAdded_fu_78[8]_i_9 
       (.I0(\weightIndexAdded_fu_78_reg[15]_0 [8]),
        .I1(p_0_in),
        .I2(weightIndexAdded_fu_78_reg[8]),
        .O(\weightIndexAdded_fu_78[8]_i_9_n_3 ));
  FDRE \weightIndexAdded_fu_78_reg[0] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\weightIndexAdded_fu_78_reg[0]_i_1_n_10 ),
        .Q(weightIndexAdded_fu_78_reg[0]),
        .R(inNeurons_fu_740));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \weightIndexAdded_fu_78_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\weightIndexAdded_fu_78_reg[0]_i_1_n_3 ,\weightIndexAdded_fu_78_reg[0]_i_1_n_4 ,\weightIndexAdded_fu_78_reg[0]_i_1_n_5 ,\weightIndexAdded_fu_78_reg[0]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI(in[3:0]),
        .O({\weightIndexAdded_fu_78_reg[0]_i_1_n_7 ,\weightIndexAdded_fu_78_reg[0]_i_1_n_8 ,\weightIndexAdded_fu_78_reg[0]_i_1_n_9 ,\weightIndexAdded_fu_78_reg[0]_i_1_n_10 }),
        .S({\weightIndexAdded_fu_78[0]_i_6_n_3 ,\weightIndexAdded_fu_78[0]_i_7_n_3 ,\weightIndexAdded_fu_78[0]_i_8_n_3 ,\weightIndexAdded_fu_78[0]_i_9_n_3 }));
  FDRE \weightIndexAdded_fu_78_reg[10] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\weightIndexAdded_fu_78_reg[8]_i_1_n_8 ),
        .Q(weightIndexAdded_fu_78_reg[10]),
        .R(inNeurons_fu_740));
  FDRE \weightIndexAdded_fu_78_reg[11] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\weightIndexAdded_fu_78_reg[8]_i_1_n_7 ),
        .Q(weightIndexAdded_fu_78_reg[11]),
        .R(inNeurons_fu_740));
  FDRE \weightIndexAdded_fu_78_reg[12] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\weightIndexAdded_fu_78_reg[12]_i_1_n_10 ),
        .Q(weightIndexAdded_fu_78_reg[12]),
        .R(inNeurons_fu_740));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \weightIndexAdded_fu_78_reg[12]_i_1 
       (.CI(\weightIndexAdded_fu_78_reg[8]_i_1_n_3 ),
        .CO({\NLW_weightIndexAdded_fu_78_reg[12]_i_1_CO_UNCONNECTED [3],\weightIndexAdded_fu_78_reg[12]_i_1_n_4 ,\weightIndexAdded_fu_78_reg[12]_i_1_n_5 ,\weightIndexAdded_fu_78_reg[12]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,in[14:12]}),
        .O({\weightIndexAdded_fu_78_reg[12]_i_1_n_7 ,\weightIndexAdded_fu_78_reg[12]_i_1_n_8 ,\weightIndexAdded_fu_78_reg[12]_i_1_n_9 ,\weightIndexAdded_fu_78_reg[12]_i_1_n_10 }),
        .S({\weightIndexAdded_fu_78[12]_i_5_n_3 ,\weightIndexAdded_fu_78[12]_i_6_n_3 ,\weightIndexAdded_fu_78[12]_i_7_n_3 ,\weightIndexAdded_fu_78[12]_i_8_n_3 }));
  FDRE \weightIndexAdded_fu_78_reg[13] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\weightIndexAdded_fu_78_reg[12]_i_1_n_9 ),
        .Q(weightIndexAdded_fu_78_reg[13]),
        .R(inNeurons_fu_740));
  FDRE \weightIndexAdded_fu_78_reg[14] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\weightIndexAdded_fu_78_reg[12]_i_1_n_8 ),
        .Q(weightIndexAdded_fu_78_reg[14]),
        .R(inNeurons_fu_740));
  FDRE \weightIndexAdded_fu_78_reg[15] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\weightIndexAdded_fu_78_reg[12]_i_1_n_7 ),
        .Q(weightIndexAdded_fu_78_reg[15]),
        .R(inNeurons_fu_740));
  FDRE \weightIndexAdded_fu_78_reg[1] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\weightIndexAdded_fu_78_reg[0]_i_1_n_9 ),
        .Q(weightIndexAdded_fu_78_reg[1]),
        .R(inNeurons_fu_740));
  FDRE \weightIndexAdded_fu_78_reg[2] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\weightIndexAdded_fu_78_reg[0]_i_1_n_8 ),
        .Q(weightIndexAdded_fu_78_reg[2]),
        .R(inNeurons_fu_740));
  FDRE \weightIndexAdded_fu_78_reg[3] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\weightIndexAdded_fu_78_reg[0]_i_1_n_7 ),
        .Q(weightIndexAdded_fu_78_reg[3]),
        .R(inNeurons_fu_740));
  FDRE \weightIndexAdded_fu_78_reg[4] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\weightIndexAdded_fu_78_reg[4]_i_1_n_10 ),
        .Q(weightIndexAdded_fu_78_reg[4]),
        .R(inNeurons_fu_740));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \weightIndexAdded_fu_78_reg[4]_i_1 
       (.CI(\weightIndexAdded_fu_78_reg[0]_i_1_n_3 ),
        .CO({\weightIndexAdded_fu_78_reg[4]_i_1_n_3 ,\weightIndexAdded_fu_78_reg[4]_i_1_n_4 ,\weightIndexAdded_fu_78_reg[4]_i_1_n_5 ,\weightIndexAdded_fu_78_reg[4]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI(in[7:4]),
        .O({\weightIndexAdded_fu_78_reg[4]_i_1_n_7 ,\weightIndexAdded_fu_78_reg[4]_i_1_n_8 ,\weightIndexAdded_fu_78_reg[4]_i_1_n_9 ,\weightIndexAdded_fu_78_reg[4]_i_1_n_10 }),
        .S({\weightIndexAdded_fu_78[4]_i_6_n_3 ,\weightIndexAdded_fu_78[4]_i_7_n_3 ,\weightIndexAdded_fu_78[4]_i_8_n_3 ,\weightIndexAdded_fu_78[4]_i_9_n_3 }));
  FDRE \weightIndexAdded_fu_78_reg[5] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\weightIndexAdded_fu_78_reg[4]_i_1_n_9 ),
        .Q(weightIndexAdded_fu_78_reg[5]),
        .R(inNeurons_fu_740));
  FDRE \weightIndexAdded_fu_78_reg[6] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\weightIndexAdded_fu_78_reg[4]_i_1_n_8 ),
        .Q(weightIndexAdded_fu_78_reg[6]),
        .R(inNeurons_fu_740));
  FDRE \weightIndexAdded_fu_78_reg[7] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\weightIndexAdded_fu_78_reg[4]_i_1_n_7 ),
        .Q(weightIndexAdded_fu_78_reg[7]),
        .R(inNeurons_fu_740));
  FDRE \weightIndexAdded_fu_78_reg[8] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\weightIndexAdded_fu_78_reg[8]_i_1_n_10 ),
        .Q(weightIndexAdded_fu_78_reg[8]),
        .R(inNeurons_fu_740));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \weightIndexAdded_fu_78_reg[8]_i_1 
       (.CI(\weightIndexAdded_fu_78_reg[4]_i_1_n_3 ),
        .CO({\weightIndexAdded_fu_78_reg[8]_i_1_n_3 ,\weightIndexAdded_fu_78_reg[8]_i_1_n_4 ,\weightIndexAdded_fu_78_reg[8]_i_1_n_5 ,\weightIndexAdded_fu_78_reg[8]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI(in[11:8]),
        .O({\weightIndexAdded_fu_78_reg[8]_i_1_n_7 ,\weightIndexAdded_fu_78_reg[8]_i_1_n_8 ,\weightIndexAdded_fu_78_reg[8]_i_1_n_9 ,\weightIndexAdded_fu_78_reg[8]_i_1_n_10 }),
        .S({\weightIndexAdded_fu_78[8]_i_6_n_3 ,\weightIndexAdded_fu_78[8]_i_7_n_3 ,\weightIndexAdded_fu_78[8]_i_8_n_3 ,\weightIndexAdded_fu_78[8]_i_9_n_3 }));
  FDRE \weightIndexAdded_fu_78_reg[9] 
       (.C(ap_clk),
        .CE(inNeurons_fu_7400_out),
        .D(\weightIndexAdded_fu_78_reg[8]_i_1_n_9 ),
        .Q(weightIndexAdded_fu_78_reg[9]),
        .R(inNeurons_fu_740));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
