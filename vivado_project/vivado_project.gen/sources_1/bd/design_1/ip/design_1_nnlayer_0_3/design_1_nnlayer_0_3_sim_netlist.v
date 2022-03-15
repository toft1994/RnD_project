// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Mar 15 14:50:47 2022
// Host        : DESKTOP-IFL7HB3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/jespe/Desktop/Uni_Civil_10_Semester/RnD/RnD_project/vivado_project/vivado_project.gen/sources_1/bd/design_1/ip/design_1_nnlayer_0_3/design_1_nnlayer_0_3_sim_netlist.v
// Design      : design_1_nnlayer_0_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_nnlayer_0_3,nnlayer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "nnlayer,Vivado 2021.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module design_1_nnlayer_0_3
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
  (* ap_ST_fsm_state1 = "6'b000001" *) 
  (* ap_ST_fsm_state2 = "6'b000010" *) 
  (* ap_ST_fsm_state3 = "6'b000100" *) 
  (* ap_ST_fsm_state4 = "6'b001000" *) 
  (* ap_ST_fsm_state5 = "6'b010000" *) 
  (* ap_ST_fsm_state6 = "6'b100000" *) 
  design_1_nnlayer_0_3_nnlayer inst
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
(* ap_ST_fsm_state1 = "6'b000001" *) (* ap_ST_fsm_state2 = "6'b000010" *) (* ap_ST_fsm_state3 = "6'b000100" *) 
(* ap_ST_fsm_state4 = "6'b001000" *) (* ap_ST_fsm_state5 = "6'b010000" *) (* ap_ST_fsm_state6 = "6'b100000" *) 
(* hls_module = "yes" *) 
module design_1_nnlayer_0_3_nnlayer
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
  wire ap_CS_fsm_state1;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire ap_CS_fsm_state6;
  wire [5:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire \cmp1141_reg_243[0]_i_1_n_0 ;
  wire \cmp1141_reg_243[0]_i_2_n_0 ;
  wire \cmp1141_reg_243[0]_i_3_n_0 ;
  wire \cmp1141_reg_243[0]_i_4_n_0 ;
  wire \cmp1141_reg_243[0]_i_5_n_0 ;
  wire \cmp1141_reg_243[0]_i_6_n_0 ;
  wire \cmp1141_reg_243_reg_n_0_[0] ;
  wire control_s_axi_U_n_1;
  wire control_s_axi_U_n_2;
  wire control_s_axi_U_n_3;
  wire control_s_axi_U_n_45;
  wire control_s_axi_U_n_46;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg;
  wire [7:1]grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_bias_address0;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_n_21;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_n_22;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg;
  wire [7:1]grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_input_r_address0;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_n_41;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_n_42;
  wire [15:0]grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0;
  wire icmp_ln32_fu_87_p2;
  wire \icmp_ln36_reg_225_reg_n_0_[0] ;
  wire icmp_ln37_fu_172_p2;
  wire [15:0]input_r_q0;
  wire [3:1]int_output_r_be0;
  wire interrupt;
  wire [15:0]lhs_fu_66;
  wire [15:0]numOfInNeurons;
  wire [15:0]numOfInNeurons_read_reg_212;
  wire [15:0]numOfOutNeurons;
  wire [15:0]numOfOutNeurons_read_reg_206;
  wire outNeurons_2_fu_820;
  wire \outNeurons_2_fu_82_reg_n_0_[0] ;
  wire \outNeurons_2_fu_82_reg_n_0_[10] ;
  wire \outNeurons_2_fu_82_reg_n_0_[11] ;
  wire \outNeurons_2_fu_82_reg_n_0_[12] ;
  wire \outNeurons_2_fu_82_reg_n_0_[13] ;
  wire \outNeurons_2_fu_82_reg_n_0_[14] ;
  wire \outNeurons_2_fu_82_reg_n_0_[15] ;
  wire \outNeurons_2_fu_82_reg_n_0_[1] ;
  wire \outNeurons_2_fu_82_reg_n_0_[2] ;
  wire \outNeurons_2_fu_82_reg_n_0_[3] ;
  wire \outNeurons_2_fu_82_reg_n_0_[4] ;
  wire \outNeurons_2_fu_82_reg_n_0_[5] ;
  wire \outNeurons_2_fu_82_reg_n_0_[6] ;
  wire \outNeurons_2_fu_82_reg_n_0_[7] ;
  wire \outNeurons_2_fu_82_reg_n_0_[8] ;
  wire \outNeurons_2_fu_82_reg_n_0_[9] ;
  wire [15:0]outNeurons_3_fu_177_p2;
  wire [15:0]outNeurons_3_reg_250;
  wire outNeurons_3_reg_2500;
  wire \outNeurons_3_reg_250_reg[12]_i_1_n_0 ;
  wire \outNeurons_3_reg_250_reg[12]_i_1_n_1 ;
  wire \outNeurons_3_reg_250_reg[12]_i_1_n_2 ;
  wire \outNeurons_3_reg_250_reg[12]_i_1_n_3 ;
  wire \outNeurons_3_reg_250_reg[15]_i_2_n_2 ;
  wire \outNeurons_3_reg_250_reg[15]_i_2_n_3 ;
  wire \outNeurons_3_reg_250_reg[4]_i_1_n_0 ;
  wire \outNeurons_3_reg_250_reg[4]_i_1_n_1 ;
  wire \outNeurons_3_reg_250_reg[4]_i_1_n_2 ;
  wire \outNeurons_3_reg_250_reg[4]_i_1_n_3 ;
  wire \outNeurons_3_reg_250_reg[8]_i_1_n_0 ;
  wire \outNeurons_3_reg_250_reg[8]_i_1_n_1 ;
  wire \outNeurons_3_reg_250_reg[8]_i_1_n_2 ;
  wire \outNeurons_3_reg_250_reg[8]_i_1_n_3 ;
  wire [7:0]output_r_addr_reg_255;
  wire output_r_addr_reg_2550;
  wire [7:1]output_r_address0;
  wire output_r_ce0;
  wire [15:0]output_r_load_reg_265;
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
  wire \weightIndexAdded_fu_86[0]_i_2_n_0 ;
  wire \weightIndexAdded_fu_86[0]_i_3_n_0 ;
  wire \weightIndexAdded_fu_86[0]_i_4_n_0 ;
  wire \weightIndexAdded_fu_86[0]_i_5_n_0 ;
  wire \weightIndexAdded_fu_86[12]_i_2_n_0 ;
  wire \weightIndexAdded_fu_86[12]_i_3_n_0 ;
  wire \weightIndexAdded_fu_86[12]_i_4_n_0 ;
  wire \weightIndexAdded_fu_86[12]_i_5_n_0 ;
  wire \weightIndexAdded_fu_86[4]_i_2_n_0 ;
  wire \weightIndexAdded_fu_86[4]_i_3_n_0 ;
  wire \weightIndexAdded_fu_86[4]_i_4_n_0 ;
  wire \weightIndexAdded_fu_86[4]_i_5_n_0 ;
  wire \weightIndexAdded_fu_86[8]_i_2_n_0 ;
  wire \weightIndexAdded_fu_86[8]_i_3_n_0 ;
  wire \weightIndexAdded_fu_86[8]_i_4_n_0 ;
  wire \weightIndexAdded_fu_86[8]_i_5_n_0 ;
  wire [15:0]weightIndexAdded_fu_86_reg;
  wire \weightIndexAdded_fu_86_reg[0]_i_1_n_0 ;
  wire \weightIndexAdded_fu_86_reg[0]_i_1_n_1 ;
  wire \weightIndexAdded_fu_86_reg[0]_i_1_n_2 ;
  wire \weightIndexAdded_fu_86_reg[0]_i_1_n_3 ;
  wire \weightIndexAdded_fu_86_reg[0]_i_1_n_4 ;
  wire \weightIndexAdded_fu_86_reg[0]_i_1_n_5 ;
  wire \weightIndexAdded_fu_86_reg[0]_i_1_n_6 ;
  wire \weightIndexAdded_fu_86_reg[0]_i_1_n_7 ;
  wire \weightIndexAdded_fu_86_reg[12]_i_1_n_1 ;
  wire \weightIndexAdded_fu_86_reg[12]_i_1_n_2 ;
  wire \weightIndexAdded_fu_86_reg[12]_i_1_n_3 ;
  wire \weightIndexAdded_fu_86_reg[12]_i_1_n_4 ;
  wire \weightIndexAdded_fu_86_reg[12]_i_1_n_5 ;
  wire \weightIndexAdded_fu_86_reg[12]_i_1_n_6 ;
  wire \weightIndexAdded_fu_86_reg[12]_i_1_n_7 ;
  wire \weightIndexAdded_fu_86_reg[4]_i_1_n_0 ;
  wire \weightIndexAdded_fu_86_reg[4]_i_1_n_1 ;
  wire \weightIndexAdded_fu_86_reg[4]_i_1_n_2 ;
  wire \weightIndexAdded_fu_86_reg[4]_i_1_n_3 ;
  wire \weightIndexAdded_fu_86_reg[4]_i_1_n_4 ;
  wire \weightIndexAdded_fu_86_reg[4]_i_1_n_5 ;
  wire \weightIndexAdded_fu_86_reg[4]_i_1_n_6 ;
  wire \weightIndexAdded_fu_86_reg[4]_i_1_n_7 ;
  wire \weightIndexAdded_fu_86_reg[8]_i_1_n_0 ;
  wire \weightIndexAdded_fu_86_reg[8]_i_1_n_1 ;
  wire \weightIndexAdded_fu_86_reg[8]_i_1_n_2 ;
  wire \weightIndexAdded_fu_86_reg[8]_i_1_n_3 ;
  wire \weightIndexAdded_fu_86_reg[8]_i_1_n_4 ;
  wire \weightIndexAdded_fu_86_reg[8]_i_1_n_5 ;
  wire \weightIndexAdded_fu_86_reg[8]_i_1_n_6 ;
  wire \weightIndexAdded_fu_86_reg[8]_i_1_n_7 ;
  wire [15:0]weightIndexAdded_load_1_reg_260;
  wire [15:0]weights_q0;
  wire [3:2]\NLW_outNeurons_3_reg_250_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_outNeurons_3_reg_250_reg[15]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_weightIndexAdded_fu_86_reg[12]_i_1_CO_UNCONNECTED ;

  assign ap_local_block = \<const0> ;
  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'h0008)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(ap_CS_fsm_state3),
        .I1(\icmp_ln36_reg_225_reg_n_0_[0] ),
        .I2(\cmp1141_reg_243_reg_n_0_[0] ),
        .I3(icmp_ln37_fu_172_p2),
        .O(ap_NS_fsm[3]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(ap_CS_fsm_state1),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(ap_CS_fsm_state6),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h80FFFFFF80808080)) 
    \cmp1141_reg_243[0]_i_1 
       (.I0(\cmp1141_reg_243[0]_i_2_n_0 ),
        .I1(\cmp1141_reg_243[0]_i_3_n_0 ),
        .I2(\cmp1141_reg_243[0]_i_4_n_0 ),
        .I3(ap_CS_fsm_state2),
        .I4(\icmp_ln36_reg_225_reg_n_0_[0] ),
        .I5(\cmp1141_reg_243_reg_n_0_[0] ),
        .O(\cmp1141_reg_243[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \cmp1141_reg_243[0]_i_2 
       (.I0(\cmp1141_reg_243[0]_i_5_n_0 ),
        .I1(numOfInNeurons_read_reg_212[1]),
        .I2(numOfInNeurons_read_reg_212[0]),
        .I3(numOfInNeurons_read_reg_212[4]),
        .I4(numOfInNeurons_read_reg_212[2]),
        .I5(\cmp1141_reg_243[0]_i_6_n_0 ),
        .O(\cmp1141_reg_243[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0045004500000045)) 
    \cmp1141_reg_243[0]_i_3 
       (.I0(numOfInNeurons_read_reg_212[5]),
        .I1(numOfInNeurons_read_reg_212[4]),
        .I2(numOfInNeurons_read_reg_212[3]),
        .I3(numOfInNeurons_read_reg_212[8]),
        .I4(numOfInNeurons_read_reg_212[6]),
        .I5(numOfInNeurons_read_reg_212[7]),
        .O(\cmp1141_reg_243[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0045004500000045)) 
    \cmp1141_reg_243[0]_i_4 
       (.I0(numOfInNeurons_read_reg_212[11]),
        .I1(numOfInNeurons_read_reg_212[10]),
        .I2(numOfInNeurons_read_reg_212[9]),
        .I3(numOfInNeurons_read_reg_212[14]),
        .I4(numOfInNeurons_read_reg_212[12]),
        .I5(numOfInNeurons_read_reg_212[13]),
        .O(\cmp1141_reg_243[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \cmp1141_reg_243[0]_i_5 
       (.I0(numOfInNeurons_read_reg_212[10]),
        .I1(numOfInNeurons_read_reg_212[8]),
        .I2(numOfInNeurons_read_reg_212[7]),
        .I3(numOfInNeurons_read_reg_212[5]),
        .O(\cmp1141_reg_243[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cmp1141_reg_243[0]_i_6 
       (.I0(numOfInNeurons_read_reg_212[11]),
        .I1(numOfInNeurons_read_reg_212[13]),
        .I2(numOfInNeurons_read_reg_212[14]),
        .I3(numOfInNeurons_read_reg_212[15]),
        .I4(\icmp_ln36_reg_225_reg_n_0_[0] ),
        .I5(ap_CS_fsm_state2),
        .O(\cmp1141_reg_243[0]_i_6_n_0 ));
  FDRE \cmp1141_reg_243_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\cmp1141_reg_243[0]_i_1_n_0 ),
        .Q(\cmp1141_reg_243_reg_n_0_[0] ),
        .R(1'b0));
  design_1_nnlayer_0_3_nnlayer_control_s_axi control_s_axi_U
       (.A(input_r_q0),
        .ADDRBWRADDR(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_input_r_address0),
        .B(weights_q0),
        .CO(icmp_ln37_fu_172_p2),
        .D(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_bias_address0),
        .Q(numOfOutNeurons),
        .\ap_CS_fsm_reg[0] (control_s_axi_U_n_46),
        .\ap_CS_fsm_reg[5]_i_2_0 ({\outNeurons_2_fu_82_reg_n_0_[15] ,\outNeurons_2_fu_82_reg_n_0_[14] ,\outNeurons_2_fu_82_reg_n_0_[13] ,\outNeurons_2_fu_82_reg_n_0_[12] ,\outNeurons_2_fu_82_reg_n_0_[11] ,\outNeurons_2_fu_82_reg_n_0_[10] ,\outNeurons_2_fu_82_reg_n_0_[9] ,\outNeurons_2_fu_82_reg_n_0_[8] ,\outNeurons_2_fu_82_reg_n_0_[7] ,\outNeurons_2_fu_82_reg_n_0_[6] ,\outNeurons_2_fu_82_reg_n_0_[5] ,\outNeurons_2_fu_82_reg_n_0_[4] ,\outNeurons_2_fu_82_reg_n_0_[3] ,\outNeurons_2_fu_82_reg_n_0_[2] ,\outNeurons_2_fu_82_reg_n_0_[1] ,\outNeurons_2_fu_82_reg_n_0_[0] }),
        .\ap_CS_fsm_reg[5]_i_2_1 (numOfOutNeurons_read_reg_206),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg_reg(icmp_ln32_fu_87_p2),
        .grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0),
        .\int_activation_reg[2]_0 (control_s_axi_U_n_45),
        .int_ap_ready_reg_0(\icmp_ln36_reg_225_reg_n_0_[0] ),
        .int_ap_start_reg_0(ap_NS_fsm[0]),
        .\int_bias_shift0_reg[0]_0 (control_s_axi_U_n_3),
        .\int_bias_shift0_reg[0]_1 (grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_n_22),
        .\int_input_r_shift0_reg[0]_0 (control_s_axi_U_n_1),
        .\int_input_r_shift0_reg[0]_1 (grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_n_42),
        .\int_numOfInNeurons_reg[15]_0 (numOfInNeurons),
        .int_output_r_be0({int_output_r_be0[3],int_output_r_be0[1]}),
        .\int_output_r_shift0_reg[0]_0 (control_s_axi_U_n_2),
        .\int_output_r_shift0_reg[0]_1 (grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_n_21),
        .interrupt(interrupt),
        .mem_reg(output_r_q0),
        .mem_reg_0(output_r_address0),
        .mem_reg_1({ap_CS_fsm_state6,ap_CS_fsm_state3,ap_CS_fsm_state1}),
        .mem_reg_2(lhs_fu_66),
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
  design_1_nnlayer_0_3_nnlayer_nnlayer_Pipeline_VITIS_LOOP_32_1 grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121
       (.D(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_bias_address0),
        .Q({ap_CS_fsm_state6,ap_CS_fsm_state3,ap_CS_fsm_state2,ap_CS_fsm_state1}),
        .\ap_CS_fsm_reg[1] (ap_NS_fsm[2:1]),
        .\ap_CS_fsm_reg[1]_0 (grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_n_21),
        .\ap_CS_fsm_reg[2] (output_r_address0),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .icmp_ln32_fu_87_p2_carry__0_0(numOfOutNeurons_read_reg_206),
        .\int_bias_shift0_reg[0] (control_s_axi_U_n_3),
        .int_output_r_be0({int_output_r_be0[3],int_output_r_be0[1]}),
        .\int_output_r_shift0_reg[0] (control_s_axi_U_n_2),
        .mem_reg({\outNeurons_2_fu_82_reg_n_0_[7] ,\outNeurons_2_fu_82_reg_n_0_[6] ,\outNeurons_2_fu_82_reg_n_0_[5] ,\outNeurons_2_fu_82_reg_n_0_[4] ,\outNeurons_2_fu_82_reg_n_0_[3] ,\outNeurons_2_fu_82_reg_n_0_[2] ,\outNeurons_2_fu_82_reg_n_0_[1] ,\outNeurons_2_fu_82_reg_n_0_[0] }),
        .mem_reg_0(output_r_addr_reg_255),
        .mem_reg_1(\cmp1141_reg_243_reg_n_0_[0] ),
        .\numOfOutNeurons_read_reg_206_reg[15] (icmp_ln32_fu_87_p2),
        .outNeurons_2_fu_820(outNeurons_2_fu_820),
        .\outNeurons_fu_42_reg[0]_0 (grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_n_22),
        .output_r_ce0(output_r_ce0),
        .\weightIndexAdded_fu_86_reg[0] (\icmp_ln36_reg_225_reg_n_0_[0] ));
  FDRE #(
    .INIT(1'b0)) 
    grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(control_s_axi_U_n_46),
        .Q(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .R(ap_rst_n_inv));
  design_1_nnlayer_0_3_nnlayer_nnlayer_Pipeline_VITIS_LOOP_39_3 grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131
       (.A(input_r_q0),
        .ADDRBWRADDR(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_input_r_address0),
        .B(weights_q0),
        .CO(icmp_ln37_fu_172_p2),
        .D(ap_NS_fsm[5:4]),
        .Q(output_r_load_reg_265),
        .\ap_CS_fsm_reg[3] (grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_n_41),
        .\ap_CS_fsm_reg[4] ({ap_CS_fsm_state5,ap_CS_fsm_state4,ap_CS_fsm_state3}),
        .\ap_CS_fsm_reg[5] (\cmp1141_reg_243_reg_n_0_[0] ),
        .\ap_CS_fsm_reg[5]_0 (\icmp_ln36_reg_225_reg_n_0_[0] ),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0),
        .icmp_ln39_fu_142_p2_carry__0_0(numOfInNeurons_read_reg_212),
        .\inNeurons_fu_62_reg[0]_0 (grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_n_42),
        .\int_input_r_shift0_reg[0] (control_s_axi_U_n_1),
        .\lhs_fu_66_reg[15]_0 (lhs_fu_66),
        .mem_reg_0_0_0(weightIndexAdded_load_1_reg_260));
  FDRE #(
    .INIT(1'b0)) 
    grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_n_41),
        .Q(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .R(ap_rst_n_inv));
  FDRE \icmp_ln36_reg_225_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(control_s_axi_U_n_45),
        .Q(\icmp_ln36_reg_225_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_212_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[0]),
        .Q(numOfInNeurons_read_reg_212[0]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_212_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[10]),
        .Q(numOfInNeurons_read_reg_212[10]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_212_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[11]),
        .Q(numOfInNeurons_read_reg_212[11]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_212_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[12]),
        .Q(numOfInNeurons_read_reg_212[12]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_212_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[13]),
        .Q(numOfInNeurons_read_reg_212[13]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_212_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[14]),
        .Q(numOfInNeurons_read_reg_212[14]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_212_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[15]),
        .Q(numOfInNeurons_read_reg_212[15]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_212_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[1]),
        .Q(numOfInNeurons_read_reg_212[1]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_212_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[2]),
        .Q(numOfInNeurons_read_reg_212[2]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_212_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[3]),
        .Q(numOfInNeurons_read_reg_212[3]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_212_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[4]),
        .Q(numOfInNeurons_read_reg_212[4]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_212_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[5]),
        .Q(numOfInNeurons_read_reg_212[5]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_212_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[6]),
        .Q(numOfInNeurons_read_reg_212[6]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_212_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[7]),
        .Q(numOfInNeurons_read_reg_212[7]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_212_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[8]),
        .Q(numOfInNeurons_read_reg_212[8]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_212_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[9]),
        .Q(numOfInNeurons_read_reg_212[9]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_206_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[0]),
        .Q(numOfOutNeurons_read_reg_206[0]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_206_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[10]),
        .Q(numOfOutNeurons_read_reg_206[10]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_206_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[11]),
        .Q(numOfOutNeurons_read_reg_206[11]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_206_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[12]),
        .Q(numOfOutNeurons_read_reg_206[12]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_206_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[13]),
        .Q(numOfOutNeurons_read_reg_206[13]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_206_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[14]),
        .Q(numOfOutNeurons_read_reg_206[14]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_206_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[15]),
        .Q(numOfOutNeurons_read_reg_206[15]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_206_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[1]),
        .Q(numOfOutNeurons_read_reg_206[1]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_206_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[2]),
        .Q(numOfOutNeurons_read_reg_206[2]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_206_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[3]),
        .Q(numOfOutNeurons_read_reg_206[3]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_206_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[4]),
        .Q(numOfOutNeurons_read_reg_206[4]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_206_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[5]),
        .Q(numOfOutNeurons_read_reg_206[5]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_206_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[6]),
        .Q(numOfOutNeurons_read_reg_206[6]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_206_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[7]),
        .Q(numOfOutNeurons_read_reg_206[7]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_206_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[8]),
        .Q(numOfOutNeurons_read_reg_206[8]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_206_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[9]),
        .Q(numOfOutNeurons_read_reg_206[9]),
        .R(1'b0));
  FDRE \outNeurons_2_fu_82_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(outNeurons_3_reg_250[0]),
        .Q(\outNeurons_2_fu_82_reg_n_0_[0] ),
        .R(outNeurons_2_fu_820));
  FDRE \outNeurons_2_fu_82_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(outNeurons_3_reg_250[10]),
        .Q(\outNeurons_2_fu_82_reg_n_0_[10] ),
        .R(outNeurons_2_fu_820));
  FDRE \outNeurons_2_fu_82_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(outNeurons_3_reg_250[11]),
        .Q(\outNeurons_2_fu_82_reg_n_0_[11] ),
        .R(outNeurons_2_fu_820));
  FDRE \outNeurons_2_fu_82_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(outNeurons_3_reg_250[12]),
        .Q(\outNeurons_2_fu_82_reg_n_0_[12] ),
        .R(outNeurons_2_fu_820));
  FDRE \outNeurons_2_fu_82_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(outNeurons_3_reg_250[13]),
        .Q(\outNeurons_2_fu_82_reg_n_0_[13] ),
        .R(outNeurons_2_fu_820));
  FDRE \outNeurons_2_fu_82_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(outNeurons_3_reg_250[14]),
        .Q(\outNeurons_2_fu_82_reg_n_0_[14] ),
        .R(outNeurons_2_fu_820));
  FDRE \outNeurons_2_fu_82_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(outNeurons_3_reg_250[15]),
        .Q(\outNeurons_2_fu_82_reg_n_0_[15] ),
        .R(outNeurons_2_fu_820));
  FDRE \outNeurons_2_fu_82_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(outNeurons_3_reg_250[1]),
        .Q(\outNeurons_2_fu_82_reg_n_0_[1] ),
        .R(outNeurons_2_fu_820));
  FDRE \outNeurons_2_fu_82_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(outNeurons_3_reg_250[2]),
        .Q(\outNeurons_2_fu_82_reg_n_0_[2] ),
        .R(outNeurons_2_fu_820));
  FDRE \outNeurons_2_fu_82_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(outNeurons_3_reg_250[3]),
        .Q(\outNeurons_2_fu_82_reg_n_0_[3] ),
        .R(outNeurons_2_fu_820));
  FDRE \outNeurons_2_fu_82_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(outNeurons_3_reg_250[4]),
        .Q(\outNeurons_2_fu_82_reg_n_0_[4] ),
        .R(outNeurons_2_fu_820));
  FDRE \outNeurons_2_fu_82_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(outNeurons_3_reg_250[5]),
        .Q(\outNeurons_2_fu_82_reg_n_0_[5] ),
        .R(outNeurons_2_fu_820));
  FDRE \outNeurons_2_fu_82_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(outNeurons_3_reg_250[6]),
        .Q(\outNeurons_2_fu_82_reg_n_0_[6] ),
        .R(outNeurons_2_fu_820));
  FDRE \outNeurons_2_fu_82_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(outNeurons_3_reg_250[7]),
        .Q(\outNeurons_2_fu_82_reg_n_0_[7] ),
        .R(outNeurons_2_fu_820));
  FDRE \outNeurons_2_fu_82_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(outNeurons_3_reg_250[8]),
        .Q(\outNeurons_2_fu_82_reg_n_0_[8] ),
        .R(outNeurons_2_fu_820));
  FDRE \outNeurons_2_fu_82_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(outNeurons_3_reg_250[9]),
        .Q(\outNeurons_2_fu_82_reg_n_0_[9] ),
        .R(outNeurons_2_fu_820));
  LUT1 #(
    .INIT(2'h1)) 
    \outNeurons_3_reg_250[0]_i_1 
       (.I0(\outNeurons_2_fu_82_reg_n_0_[0] ),
        .O(outNeurons_3_fu_177_p2[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \outNeurons_3_reg_250[15]_i_1 
       (.I0(ap_CS_fsm_state3),
        .I1(\icmp_ln36_reg_225_reg_n_0_[0] ),
        .O(outNeurons_3_reg_2500));
  FDRE \outNeurons_3_reg_250_reg[0] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_2500),
        .D(outNeurons_3_fu_177_p2[0]),
        .Q(outNeurons_3_reg_250[0]),
        .R(1'b0));
  FDRE \outNeurons_3_reg_250_reg[10] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_2500),
        .D(outNeurons_3_fu_177_p2[10]),
        .Q(outNeurons_3_reg_250[10]),
        .R(1'b0));
  FDRE \outNeurons_3_reg_250_reg[11] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_2500),
        .D(outNeurons_3_fu_177_p2[11]),
        .Q(outNeurons_3_reg_250[11]),
        .R(1'b0));
  FDRE \outNeurons_3_reg_250_reg[12] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_2500),
        .D(outNeurons_3_fu_177_p2[12]),
        .Q(outNeurons_3_reg_250[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \outNeurons_3_reg_250_reg[12]_i_1 
       (.CI(\outNeurons_3_reg_250_reg[8]_i_1_n_0 ),
        .CO({\outNeurons_3_reg_250_reg[12]_i_1_n_0 ,\outNeurons_3_reg_250_reg[12]_i_1_n_1 ,\outNeurons_3_reg_250_reg[12]_i_1_n_2 ,\outNeurons_3_reg_250_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(outNeurons_3_fu_177_p2[12:9]),
        .S({\outNeurons_2_fu_82_reg_n_0_[12] ,\outNeurons_2_fu_82_reg_n_0_[11] ,\outNeurons_2_fu_82_reg_n_0_[10] ,\outNeurons_2_fu_82_reg_n_0_[9] }));
  FDRE \outNeurons_3_reg_250_reg[13] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_2500),
        .D(outNeurons_3_fu_177_p2[13]),
        .Q(outNeurons_3_reg_250[13]),
        .R(1'b0));
  FDRE \outNeurons_3_reg_250_reg[14] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_2500),
        .D(outNeurons_3_fu_177_p2[14]),
        .Q(outNeurons_3_reg_250[14]),
        .R(1'b0));
  FDRE \outNeurons_3_reg_250_reg[15] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_2500),
        .D(outNeurons_3_fu_177_p2[15]),
        .Q(outNeurons_3_reg_250[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \outNeurons_3_reg_250_reg[15]_i_2 
       (.CI(\outNeurons_3_reg_250_reg[12]_i_1_n_0 ),
        .CO({\NLW_outNeurons_3_reg_250_reg[15]_i_2_CO_UNCONNECTED [3:2],\outNeurons_3_reg_250_reg[15]_i_2_n_2 ,\outNeurons_3_reg_250_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_outNeurons_3_reg_250_reg[15]_i_2_O_UNCONNECTED [3],outNeurons_3_fu_177_p2[15:13]}),
        .S({1'b0,\outNeurons_2_fu_82_reg_n_0_[15] ,\outNeurons_2_fu_82_reg_n_0_[14] ,\outNeurons_2_fu_82_reg_n_0_[13] }));
  FDRE \outNeurons_3_reg_250_reg[1] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_2500),
        .D(outNeurons_3_fu_177_p2[1]),
        .Q(outNeurons_3_reg_250[1]),
        .R(1'b0));
  FDRE \outNeurons_3_reg_250_reg[2] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_2500),
        .D(outNeurons_3_fu_177_p2[2]),
        .Q(outNeurons_3_reg_250[2]),
        .R(1'b0));
  FDRE \outNeurons_3_reg_250_reg[3] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_2500),
        .D(outNeurons_3_fu_177_p2[3]),
        .Q(outNeurons_3_reg_250[3]),
        .R(1'b0));
  FDRE \outNeurons_3_reg_250_reg[4] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_2500),
        .D(outNeurons_3_fu_177_p2[4]),
        .Q(outNeurons_3_reg_250[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \outNeurons_3_reg_250_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\outNeurons_3_reg_250_reg[4]_i_1_n_0 ,\outNeurons_3_reg_250_reg[4]_i_1_n_1 ,\outNeurons_3_reg_250_reg[4]_i_1_n_2 ,\outNeurons_3_reg_250_reg[4]_i_1_n_3 }),
        .CYINIT(\outNeurons_2_fu_82_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(outNeurons_3_fu_177_p2[4:1]),
        .S({\outNeurons_2_fu_82_reg_n_0_[4] ,\outNeurons_2_fu_82_reg_n_0_[3] ,\outNeurons_2_fu_82_reg_n_0_[2] ,\outNeurons_2_fu_82_reg_n_0_[1] }));
  FDRE \outNeurons_3_reg_250_reg[5] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_2500),
        .D(outNeurons_3_fu_177_p2[5]),
        .Q(outNeurons_3_reg_250[5]),
        .R(1'b0));
  FDRE \outNeurons_3_reg_250_reg[6] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_2500),
        .D(outNeurons_3_fu_177_p2[6]),
        .Q(outNeurons_3_reg_250[6]),
        .R(1'b0));
  FDRE \outNeurons_3_reg_250_reg[7] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_2500),
        .D(outNeurons_3_fu_177_p2[7]),
        .Q(outNeurons_3_reg_250[7]),
        .R(1'b0));
  FDRE \outNeurons_3_reg_250_reg[8] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_2500),
        .D(outNeurons_3_fu_177_p2[8]),
        .Q(outNeurons_3_reg_250[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \outNeurons_3_reg_250_reg[8]_i_1 
       (.CI(\outNeurons_3_reg_250_reg[4]_i_1_n_0 ),
        .CO({\outNeurons_3_reg_250_reg[8]_i_1_n_0 ,\outNeurons_3_reg_250_reg[8]_i_1_n_1 ,\outNeurons_3_reg_250_reg[8]_i_1_n_2 ,\outNeurons_3_reg_250_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(outNeurons_3_fu_177_p2[8:5]),
        .S({\outNeurons_2_fu_82_reg_n_0_[8] ,\outNeurons_2_fu_82_reg_n_0_[7] ,\outNeurons_2_fu_82_reg_n_0_[6] ,\outNeurons_2_fu_82_reg_n_0_[5] }));
  FDRE \outNeurons_3_reg_250_reg[9] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_2500),
        .D(outNeurons_3_fu_177_p2[9]),
        .Q(outNeurons_3_reg_250[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h1000)) 
    \output_r_addr_reg_255[7]_i_1 
       (.I0(icmp_ln37_fu_172_p2),
        .I1(\cmp1141_reg_243_reg_n_0_[0] ),
        .I2(\icmp_ln36_reg_225_reg_n_0_[0] ),
        .I3(ap_CS_fsm_state3),
        .O(output_r_addr_reg_2550));
  FDRE \output_r_addr_reg_255_reg[0] 
       (.C(ap_clk),
        .CE(output_r_addr_reg_2550),
        .D(\outNeurons_2_fu_82_reg_n_0_[0] ),
        .Q(output_r_addr_reg_255[0]),
        .R(1'b0));
  FDRE \output_r_addr_reg_255_reg[1] 
       (.C(ap_clk),
        .CE(output_r_addr_reg_2550),
        .D(\outNeurons_2_fu_82_reg_n_0_[1] ),
        .Q(output_r_addr_reg_255[1]),
        .R(1'b0));
  FDRE \output_r_addr_reg_255_reg[2] 
       (.C(ap_clk),
        .CE(output_r_addr_reg_2550),
        .D(\outNeurons_2_fu_82_reg_n_0_[2] ),
        .Q(output_r_addr_reg_255[2]),
        .R(1'b0));
  FDRE \output_r_addr_reg_255_reg[3] 
       (.C(ap_clk),
        .CE(output_r_addr_reg_2550),
        .D(\outNeurons_2_fu_82_reg_n_0_[3] ),
        .Q(output_r_addr_reg_255[3]),
        .R(1'b0));
  FDRE \output_r_addr_reg_255_reg[4] 
       (.C(ap_clk),
        .CE(output_r_addr_reg_2550),
        .D(\outNeurons_2_fu_82_reg_n_0_[4] ),
        .Q(output_r_addr_reg_255[4]),
        .R(1'b0));
  FDRE \output_r_addr_reg_255_reg[5] 
       (.C(ap_clk),
        .CE(output_r_addr_reg_2550),
        .D(\outNeurons_2_fu_82_reg_n_0_[5] ),
        .Q(output_r_addr_reg_255[5]),
        .R(1'b0));
  FDRE \output_r_addr_reg_255_reg[6] 
       (.C(ap_clk),
        .CE(output_r_addr_reg_2550),
        .D(\outNeurons_2_fu_82_reg_n_0_[6] ),
        .Q(output_r_addr_reg_255[6]),
        .R(1'b0));
  FDRE \output_r_addr_reg_255_reg[7] 
       (.C(ap_clk),
        .CE(output_r_addr_reg_2550),
        .D(\outNeurons_2_fu_82_reg_n_0_[7] ),
        .Q(output_r_addr_reg_255[7]),
        .R(1'b0));
  FDRE \output_r_load_reg_265_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(output_r_q0[0]),
        .Q(output_r_load_reg_265[0]),
        .R(1'b0));
  FDRE \output_r_load_reg_265_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(output_r_q0[10]),
        .Q(output_r_load_reg_265[10]),
        .R(1'b0));
  FDRE \output_r_load_reg_265_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(output_r_q0[11]),
        .Q(output_r_load_reg_265[11]),
        .R(1'b0));
  FDRE \output_r_load_reg_265_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(output_r_q0[12]),
        .Q(output_r_load_reg_265[12]),
        .R(1'b0));
  FDRE \output_r_load_reg_265_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(output_r_q0[13]),
        .Q(output_r_load_reg_265[13]),
        .R(1'b0));
  FDRE \output_r_load_reg_265_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(output_r_q0[14]),
        .Q(output_r_load_reg_265[14]),
        .R(1'b0));
  FDRE \output_r_load_reg_265_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(output_r_q0[15]),
        .Q(output_r_load_reg_265[15]),
        .R(1'b0));
  FDRE \output_r_load_reg_265_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(output_r_q0[1]),
        .Q(output_r_load_reg_265[1]),
        .R(1'b0));
  FDRE \output_r_load_reg_265_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(output_r_q0[2]),
        .Q(output_r_load_reg_265[2]),
        .R(1'b0));
  FDRE \output_r_load_reg_265_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(output_r_q0[3]),
        .Q(output_r_load_reg_265[3]),
        .R(1'b0));
  FDRE \output_r_load_reg_265_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(output_r_q0[4]),
        .Q(output_r_load_reg_265[4]),
        .R(1'b0));
  FDRE \output_r_load_reg_265_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(output_r_q0[5]),
        .Q(output_r_load_reg_265[5]),
        .R(1'b0));
  FDRE \output_r_load_reg_265_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(output_r_q0[6]),
        .Q(output_r_load_reg_265[6]),
        .R(1'b0));
  FDRE \output_r_load_reg_265_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(output_r_q0[7]),
        .Q(output_r_load_reg_265[7]),
        .R(1'b0));
  FDRE \output_r_load_reg_265_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(output_r_q0[8]),
        .Q(output_r_load_reg_265[8]),
        .R(1'b0));
  FDRE \output_r_load_reg_265_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(output_r_q0[9]),
        .Q(output_r_load_reg_265[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_86[0]_i_2 
       (.I0(numOfInNeurons_read_reg_212[3]),
        .I1(weightIndexAdded_fu_86_reg[3]),
        .O(\weightIndexAdded_fu_86[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_86[0]_i_3 
       (.I0(numOfInNeurons_read_reg_212[2]),
        .I1(weightIndexAdded_fu_86_reg[2]),
        .O(\weightIndexAdded_fu_86[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_86[0]_i_4 
       (.I0(numOfInNeurons_read_reg_212[1]),
        .I1(weightIndexAdded_fu_86_reg[1]),
        .O(\weightIndexAdded_fu_86[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_86[0]_i_5 
       (.I0(numOfInNeurons_read_reg_212[0]),
        .I1(weightIndexAdded_fu_86_reg[0]),
        .O(\weightIndexAdded_fu_86[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_86[12]_i_2 
       (.I0(numOfInNeurons_read_reg_212[15]),
        .I1(weightIndexAdded_fu_86_reg[15]),
        .O(\weightIndexAdded_fu_86[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_86[12]_i_3 
       (.I0(numOfInNeurons_read_reg_212[14]),
        .I1(weightIndexAdded_fu_86_reg[14]),
        .O(\weightIndexAdded_fu_86[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_86[12]_i_4 
       (.I0(numOfInNeurons_read_reg_212[13]),
        .I1(weightIndexAdded_fu_86_reg[13]),
        .O(\weightIndexAdded_fu_86[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_86[12]_i_5 
       (.I0(numOfInNeurons_read_reg_212[12]),
        .I1(weightIndexAdded_fu_86_reg[12]),
        .O(\weightIndexAdded_fu_86[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_86[4]_i_2 
       (.I0(numOfInNeurons_read_reg_212[7]),
        .I1(weightIndexAdded_fu_86_reg[7]),
        .O(\weightIndexAdded_fu_86[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_86[4]_i_3 
       (.I0(numOfInNeurons_read_reg_212[6]),
        .I1(weightIndexAdded_fu_86_reg[6]),
        .O(\weightIndexAdded_fu_86[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_86[4]_i_4 
       (.I0(numOfInNeurons_read_reg_212[5]),
        .I1(weightIndexAdded_fu_86_reg[5]),
        .O(\weightIndexAdded_fu_86[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_86[4]_i_5 
       (.I0(numOfInNeurons_read_reg_212[4]),
        .I1(weightIndexAdded_fu_86_reg[4]),
        .O(\weightIndexAdded_fu_86[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_86[8]_i_2 
       (.I0(numOfInNeurons_read_reg_212[11]),
        .I1(weightIndexAdded_fu_86_reg[11]),
        .O(\weightIndexAdded_fu_86[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_86[8]_i_3 
       (.I0(numOfInNeurons_read_reg_212[10]),
        .I1(weightIndexAdded_fu_86_reg[10]),
        .O(\weightIndexAdded_fu_86[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_86[8]_i_4 
       (.I0(numOfInNeurons_read_reg_212[9]),
        .I1(weightIndexAdded_fu_86_reg[9]),
        .O(\weightIndexAdded_fu_86[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_86[8]_i_5 
       (.I0(numOfInNeurons_read_reg_212[8]),
        .I1(weightIndexAdded_fu_86_reg[8]),
        .O(\weightIndexAdded_fu_86[8]_i_5_n_0 ));
  FDRE \weightIndexAdded_fu_86_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(\weightIndexAdded_fu_86_reg[0]_i_1_n_7 ),
        .Q(weightIndexAdded_fu_86_reg[0]),
        .R(outNeurons_2_fu_820));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \weightIndexAdded_fu_86_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\weightIndexAdded_fu_86_reg[0]_i_1_n_0 ,\weightIndexAdded_fu_86_reg[0]_i_1_n_1 ,\weightIndexAdded_fu_86_reg[0]_i_1_n_2 ,\weightIndexAdded_fu_86_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(numOfInNeurons_read_reg_212[3:0]),
        .O({\weightIndexAdded_fu_86_reg[0]_i_1_n_4 ,\weightIndexAdded_fu_86_reg[0]_i_1_n_5 ,\weightIndexAdded_fu_86_reg[0]_i_1_n_6 ,\weightIndexAdded_fu_86_reg[0]_i_1_n_7 }),
        .S({\weightIndexAdded_fu_86[0]_i_2_n_0 ,\weightIndexAdded_fu_86[0]_i_3_n_0 ,\weightIndexAdded_fu_86[0]_i_4_n_0 ,\weightIndexAdded_fu_86[0]_i_5_n_0 }));
  FDRE \weightIndexAdded_fu_86_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(\weightIndexAdded_fu_86_reg[8]_i_1_n_5 ),
        .Q(weightIndexAdded_fu_86_reg[10]),
        .R(outNeurons_2_fu_820));
  FDRE \weightIndexAdded_fu_86_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(\weightIndexAdded_fu_86_reg[8]_i_1_n_4 ),
        .Q(weightIndexAdded_fu_86_reg[11]),
        .R(outNeurons_2_fu_820));
  FDRE \weightIndexAdded_fu_86_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(\weightIndexAdded_fu_86_reg[12]_i_1_n_7 ),
        .Q(weightIndexAdded_fu_86_reg[12]),
        .R(outNeurons_2_fu_820));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \weightIndexAdded_fu_86_reg[12]_i_1 
       (.CI(\weightIndexAdded_fu_86_reg[8]_i_1_n_0 ),
        .CO({\NLW_weightIndexAdded_fu_86_reg[12]_i_1_CO_UNCONNECTED [3],\weightIndexAdded_fu_86_reg[12]_i_1_n_1 ,\weightIndexAdded_fu_86_reg[12]_i_1_n_2 ,\weightIndexAdded_fu_86_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,numOfInNeurons_read_reg_212[14:12]}),
        .O({\weightIndexAdded_fu_86_reg[12]_i_1_n_4 ,\weightIndexAdded_fu_86_reg[12]_i_1_n_5 ,\weightIndexAdded_fu_86_reg[12]_i_1_n_6 ,\weightIndexAdded_fu_86_reg[12]_i_1_n_7 }),
        .S({\weightIndexAdded_fu_86[12]_i_2_n_0 ,\weightIndexAdded_fu_86[12]_i_3_n_0 ,\weightIndexAdded_fu_86[12]_i_4_n_0 ,\weightIndexAdded_fu_86[12]_i_5_n_0 }));
  FDRE \weightIndexAdded_fu_86_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(\weightIndexAdded_fu_86_reg[12]_i_1_n_6 ),
        .Q(weightIndexAdded_fu_86_reg[13]),
        .R(outNeurons_2_fu_820));
  FDRE \weightIndexAdded_fu_86_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(\weightIndexAdded_fu_86_reg[12]_i_1_n_5 ),
        .Q(weightIndexAdded_fu_86_reg[14]),
        .R(outNeurons_2_fu_820));
  FDRE \weightIndexAdded_fu_86_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(\weightIndexAdded_fu_86_reg[12]_i_1_n_4 ),
        .Q(weightIndexAdded_fu_86_reg[15]),
        .R(outNeurons_2_fu_820));
  FDRE \weightIndexAdded_fu_86_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(\weightIndexAdded_fu_86_reg[0]_i_1_n_6 ),
        .Q(weightIndexAdded_fu_86_reg[1]),
        .R(outNeurons_2_fu_820));
  FDRE \weightIndexAdded_fu_86_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(\weightIndexAdded_fu_86_reg[0]_i_1_n_5 ),
        .Q(weightIndexAdded_fu_86_reg[2]),
        .R(outNeurons_2_fu_820));
  FDRE \weightIndexAdded_fu_86_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(\weightIndexAdded_fu_86_reg[0]_i_1_n_4 ),
        .Q(weightIndexAdded_fu_86_reg[3]),
        .R(outNeurons_2_fu_820));
  FDRE \weightIndexAdded_fu_86_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(\weightIndexAdded_fu_86_reg[4]_i_1_n_7 ),
        .Q(weightIndexAdded_fu_86_reg[4]),
        .R(outNeurons_2_fu_820));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \weightIndexAdded_fu_86_reg[4]_i_1 
       (.CI(\weightIndexAdded_fu_86_reg[0]_i_1_n_0 ),
        .CO({\weightIndexAdded_fu_86_reg[4]_i_1_n_0 ,\weightIndexAdded_fu_86_reg[4]_i_1_n_1 ,\weightIndexAdded_fu_86_reg[4]_i_1_n_2 ,\weightIndexAdded_fu_86_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(numOfInNeurons_read_reg_212[7:4]),
        .O({\weightIndexAdded_fu_86_reg[4]_i_1_n_4 ,\weightIndexAdded_fu_86_reg[4]_i_1_n_5 ,\weightIndexAdded_fu_86_reg[4]_i_1_n_6 ,\weightIndexAdded_fu_86_reg[4]_i_1_n_7 }),
        .S({\weightIndexAdded_fu_86[4]_i_2_n_0 ,\weightIndexAdded_fu_86[4]_i_3_n_0 ,\weightIndexAdded_fu_86[4]_i_4_n_0 ,\weightIndexAdded_fu_86[4]_i_5_n_0 }));
  FDRE \weightIndexAdded_fu_86_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(\weightIndexAdded_fu_86_reg[4]_i_1_n_6 ),
        .Q(weightIndexAdded_fu_86_reg[5]),
        .R(outNeurons_2_fu_820));
  FDRE \weightIndexAdded_fu_86_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(\weightIndexAdded_fu_86_reg[4]_i_1_n_5 ),
        .Q(weightIndexAdded_fu_86_reg[6]),
        .R(outNeurons_2_fu_820));
  FDRE \weightIndexAdded_fu_86_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(\weightIndexAdded_fu_86_reg[4]_i_1_n_4 ),
        .Q(weightIndexAdded_fu_86_reg[7]),
        .R(outNeurons_2_fu_820));
  FDRE \weightIndexAdded_fu_86_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(\weightIndexAdded_fu_86_reg[8]_i_1_n_7 ),
        .Q(weightIndexAdded_fu_86_reg[8]),
        .R(outNeurons_2_fu_820));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \weightIndexAdded_fu_86_reg[8]_i_1 
       (.CI(\weightIndexAdded_fu_86_reg[4]_i_1_n_0 ),
        .CO({\weightIndexAdded_fu_86_reg[8]_i_1_n_0 ,\weightIndexAdded_fu_86_reg[8]_i_1_n_1 ,\weightIndexAdded_fu_86_reg[8]_i_1_n_2 ,\weightIndexAdded_fu_86_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(numOfInNeurons_read_reg_212[11:8]),
        .O({\weightIndexAdded_fu_86_reg[8]_i_1_n_4 ,\weightIndexAdded_fu_86_reg[8]_i_1_n_5 ,\weightIndexAdded_fu_86_reg[8]_i_1_n_6 ,\weightIndexAdded_fu_86_reg[8]_i_1_n_7 }),
        .S({\weightIndexAdded_fu_86[8]_i_2_n_0 ,\weightIndexAdded_fu_86[8]_i_3_n_0 ,\weightIndexAdded_fu_86[8]_i_4_n_0 ,\weightIndexAdded_fu_86[8]_i_5_n_0 }));
  FDRE \weightIndexAdded_fu_86_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(\weightIndexAdded_fu_86_reg[8]_i_1_n_6 ),
        .Q(weightIndexAdded_fu_86_reg[9]),
        .R(outNeurons_2_fu_820));
  FDRE \weightIndexAdded_load_1_reg_260_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(weightIndexAdded_fu_86_reg[0]),
        .Q(weightIndexAdded_load_1_reg_260[0]),
        .R(1'b0));
  FDRE \weightIndexAdded_load_1_reg_260_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(weightIndexAdded_fu_86_reg[10]),
        .Q(weightIndexAdded_load_1_reg_260[10]),
        .R(1'b0));
  FDRE \weightIndexAdded_load_1_reg_260_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(weightIndexAdded_fu_86_reg[11]),
        .Q(weightIndexAdded_load_1_reg_260[11]),
        .R(1'b0));
  FDRE \weightIndexAdded_load_1_reg_260_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(weightIndexAdded_fu_86_reg[12]),
        .Q(weightIndexAdded_load_1_reg_260[12]),
        .R(1'b0));
  FDRE \weightIndexAdded_load_1_reg_260_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(weightIndexAdded_fu_86_reg[13]),
        .Q(weightIndexAdded_load_1_reg_260[13]),
        .R(1'b0));
  FDRE \weightIndexAdded_load_1_reg_260_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(weightIndexAdded_fu_86_reg[14]),
        .Q(weightIndexAdded_load_1_reg_260[14]),
        .R(1'b0));
  FDRE \weightIndexAdded_load_1_reg_260_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(weightIndexAdded_fu_86_reg[15]),
        .Q(weightIndexAdded_load_1_reg_260[15]),
        .R(1'b0));
  FDRE \weightIndexAdded_load_1_reg_260_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(weightIndexAdded_fu_86_reg[1]),
        .Q(weightIndexAdded_load_1_reg_260[1]),
        .R(1'b0));
  FDRE \weightIndexAdded_load_1_reg_260_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(weightIndexAdded_fu_86_reg[2]),
        .Q(weightIndexAdded_load_1_reg_260[2]),
        .R(1'b0));
  FDRE \weightIndexAdded_load_1_reg_260_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(weightIndexAdded_fu_86_reg[3]),
        .Q(weightIndexAdded_load_1_reg_260[3]),
        .R(1'b0));
  FDRE \weightIndexAdded_load_1_reg_260_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(weightIndexAdded_fu_86_reg[4]),
        .Q(weightIndexAdded_load_1_reg_260[4]),
        .R(1'b0));
  FDRE \weightIndexAdded_load_1_reg_260_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(weightIndexAdded_fu_86_reg[5]),
        .Q(weightIndexAdded_load_1_reg_260[5]),
        .R(1'b0));
  FDRE \weightIndexAdded_load_1_reg_260_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(weightIndexAdded_fu_86_reg[6]),
        .Q(weightIndexAdded_load_1_reg_260[6]),
        .R(1'b0));
  FDRE \weightIndexAdded_load_1_reg_260_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(weightIndexAdded_fu_86_reg[7]),
        .Q(weightIndexAdded_load_1_reg_260[7]),
        .R(1'b0));
  FDRE \weightIndexAdded_load_1_reg_260_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(weightIndexAdded_fu_86_reg[8]),
        .Q(weightIndexAdded_load_1_reg_260[8]),
        .R(1'b0));
  FDRE \weightIndexAdded_load_1_reg_260_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(weightIndexAdded_fu_86_reg[9]),
        .Q(weightIndexAdded_load_1_reg_260[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "nnlayer_control_s_axi" *) 
module design_1_nnlayer_0_3_nnlayer_control_s_axi
   (ap_rst_n_inv,
    \int_input_r_shift0_reg[0]_0 ,
    \int_output_r_shift0_reg[0]_0 ,
    \int_bias_shift0_reg[0]_0 ,
    Q,
    \int_numOfInNeurons_reg[15]_0 ,
    s_axi_control_WREADY,
    s_axi_control_RVALID,
    s_axi_control_ARREADY,
    s_axi_control_AWREADY,
    ap_start,
    CO,
    int_ap_start_reg_0,
    interrupt,
    s_axi_control_BVALID,
    \int_activation_reg[2]_0 ,
    \ap_CS_fsm_reg[0] ,
    s_axi_control_RDATA,
    A,
    mem_reg,
    B,
    ap_clk,
    grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg,
    ADDRBWRADDR,
    s_axi_control_WDATA,
    output_r_ce0,
    mem_reg_0,
    int_output_r_be0,
    grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg,
    D,
    grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0,
    \int_input_r_shift0_reg[0]_1 ,
    \int_output_r_shift0_reg[0]_1 ,
    \int_bias_shift0_reg[0]_1 ,
    ap_rst_n,
    s_axi_control_ARADDR,
    s_axi_control_ARVALID,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    s_axi_control_AWVALID,
    s_axi_control_BREADY,
    s_axi_control_RREADY,
    s_axi_control_AWADDR,
    mem_reg_1,
    int_ap_ready_reg_0,
    mem_reg_2,
    \ap_CS_fsm_reg[5]_i_2_0 ,
    \ap_CS_fsm_reg[5]_i_2_1 ,
    grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg_reg);
  output ap_rst_n_inv;
  output \int_input_r_shift0_reg[0]_0 ;
  output \int_output_r_shift0_reg[0]_0 ;
  output \int_bias_shift0_reg[0]_0 ;
  output [15:0]Q;
  output [15:0]\int_numOfInNeurons_reg[15]_0 ;
  output s_axi_control_WREADY;
  output s_axi_control_RVALID;
  output s_axi_control_ARREADY;
  output s_axi_control_AWREADY;
  output ap_start;
  output [0:0]CO;
  output [0:0]int_ap_start_reg_0;
  output interrupt;
  output s_axi_control_BVALID;
  output \int_activation_reg[2]_0 ;
  output \ap_CS_fsm_reg[0] ;
  output [31:0]s_axi_control_RDATA;
  output [15:0]A;
  output [15:0]mem_reg;
  output [15:0]B;
  input ap_clk;
  input grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg;
  input [6:0]ADDRBWRADDR;
  input [31:0]s_axi_control_WDATA;
  input output_r_ce0;
  input [6:0]mem_reg_0;
  input [1:0]int_output_r_be0;
  input grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg;
  input [6:0]D;
  input [15:0]grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0;
  input \int_input_r_shift0_reg[0]_1 ;
  input \int_output_r_shift0_reg[0]_1 ;
  input \int_bias_shift0_reg[0]_1 ;
  input ap_rst_n;
  input [17:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_AWVALID;
  input s_axi_control_BREADY;
  input s_axi_control_RREADY;
  input [17:0]s_axi_control_AWADDR;
  input [2:0]mem_reg_1;
  input int_ap_ready_reg_0;
  input [15:0]mem_reg_2;
  input [15:0]\ap_CS_fsm_reg[5]_i_2_0 ;
  input [15:0]\ap_CS_fsm_reg[5]_i_2_1 ;
  input [0:0]grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg_reg;

  wire [15:0]A;
  wire [6:0]ADDRBWRADDR;
  wire [15:0]B;
  wire [0:0]CO;
  wire [6:0]D;
  wire [15:0]Q;
  wire [7:0]activation;
  wire \ap_CS_fsm[5]_i_10_n_0 ;
  wire \ap_CS_fsm[5]_i_5_n_0 ;
  wire \ap_CS_fsm[5]_i_6_n_0 ;
  wire \ap_CS_fsm[5]_i_7_n_0 ;
  wire \ap_CS_fsm[5]_i_8_n_0 ;
  wire \ap_CS_fsm[5]_i_9_n_0 ;
  wire \ap_CS_fsm_reg[0] ;
  wire [15:0]\ap_CS_fsm_reg[5]_i_2_0 ;
  wire [15:0]\ap_CS_fsm_reg[5]_i_2_1 ;
  wire \ap_CS_fsm_reg[5]_i_2_n_3 ;
  wire \ap_CS_fsm_reg[5]_i_4_n_0 ;
  wire \ap_CS_fsm_reg[5]_i_4_n_1 ;
  wire \ap_CS_fsm_reg[5]_i_4_n_2 ;
  wire \ap_CS_fsm_reg[5]_i_4_n_3 ;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire ar_hs__0;
  wire auto_restart_status_i_1_n_0;
  wire auto_restart_status_reg_n_0;
  wire aw_hs;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg;
  wire [0:0]grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg_reg;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg;
  wire [15:0]grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0;
  wire \icmp_ln36_reg_225[0]_i_2_n_0 ;
  wire \int_activation[0]_i_1_n_0 ;
  wire \int_activation[1]_i_1_n_0 ;
  wire \int_activation[2]_i_1_n_0 ;
  wire \int_activation[3]_i_1_n_0 ;
  wire \int_activation[4]_i_1_n_0 ;
  wire \int_activation[5]_i_1_n_0 ;
  wire \int_activation[6]_i_1_n_0 ;
  wire \int_activation[7]_i_1_n_0 ;
  wire \int_activation[7]_i_2_n_0 ;
  wire \int_activation_reg[2]_0 ;
  wire int_ap_ready__0;
  wire int_ap_ready_i_1_n_0;
  wire int_ap_ready_reg_0;
  wire int_ap_start_i_1_n_0;
  wire int_ap_start_i_3_n_0;
  wire int_ap_start_i_4_n_0;
  wire int_ap_start_i_5_n_0;
  wire int_ap_start_i_6_n_0;
  wire int_ap_start_i_7_n_0;
  wire [0:0]int_ap_start_reg_0;
  wire int_auto_restart_i_1_n_0;
  wire int_bias_n_0;
  wire int_bias_n_1;
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
  wire int_bias_n_2;
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
  wire int_bias_n_4;
  wire int_bias_n_5;
  wire int_bias_n_55;
  wire int_bias_n_6;
  wire int_bias_n_7;
  wire int_bias_n_8;
  wire int_bias_n_9;
  wire int_bias_read;
  wire int_bias_read0;
  wire int_bias_read_i_2_n_0;
  wire int_bias_read_i_3_n_0;
  wire \int_bias_shift0_reg[0]_0 ;
  wire \int_bias_shift0_reg[0]_1 ;
  wire int_bias_write0;
  wire int_bias_write_i_1_n_0;
  wire int_bias_write_i_3_n_0;
  wire int_bias_write_reg_n_0;
  wire int_gie_i_1_n_0;
  wire int_gie_reg_n_0;
  wire int_ier12_out;
  wire \int_ier_reg_n_0_[0] ;
  wire \int_ier_reg_n_0_[1] ;
  wire \int_ier_reg_n_0_[2] ;
  wire \int_ier_reg_n_0_[3] ;
  wire \int_ier_reg_n_0_[4] ;
  wire \int_ier_reg_n_0_[5] ;
  wire int_input_r_n_49;
  wire int_input_r_n_50;
  wire int_input_r_n_51;
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
  wire [31:0]int_input_r_q0;
  wire [31:6]int_input_r_q1;
  wire int_input_r_read;
  wire int_input_r_read0;
  wire \int_input_r_shift0_reg[0]_0 ;
  wire \int_input_r_shift0_reg[0]_1 ;
  wire int_input_r_write0;
  wire int_input_r_write_i_1_n_0;
  wire int_input_r_write_i_3_n_0;
  wire int_input_r_write_i_4_n_0;
  wire int_input_r_write_i_5_n_0;
  wire int_input_r_write_reg_n_0;
  wire int_isr10_out;
  wire int_isr7_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr[5]_i_1_n_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire \int_isr_reg_n_0_[1] ;
  wire \int_isr_reg_n_0_[5] ;
  wire [15:0]int_numOfInNeurons0;
  wire \int_numOfInNeurons[15]_i_1_n_0 ;
  wire \int_numOfInNeurons[15]_i_3_n_0 ;
  wire [15:0]\int_numOfInNeurons_reg[15]_0 ;
  wire [15:0]int_numOfOutNeurons0;
  wire \int_numOfOutNeurons[15]_i_1_n_0 ;
  wire [1:0]int_output_r_be0;
  wire [31:0]int_output_r_q0;
  wire [31:0]int_output_r_q1;
  wire int_output_r_read;
  wire int_output_r_read0;
  wire \int_output_r_shift0_reg[0]_0 ;
  wire \int_output_r_shift0_reg[0]_1 ;
  wire int_output_r_write0;
  wire int_output_r_write_i_1_n_0;
  wire int_output_r_write_reg_n_0;
  wire int_task_ap_done0__10;
  wire int_task_ap_done__0;
  wire int_task_ap_done_i_1_n_0;
  wire int_task_ap_done_i_3_n_0;
  wire int_task_ap_done_i_4_n_0;
  wire int_weights_n_1;
  wire int_weights_n_2;
  wire int_weights_n_3;
  wire int_weights_n_4;
  wire int_weights_n_5;
  wire int_weights_n_6;
  wire int_weights_n_7;
  wire [31:0]int_weights_q0;
  wire [31:0]int_weights_q1;
  wire int_weights_read;
  wire int_weights_read0;
  wire \int_weights_shift0_reg_n_0_[0] ;
  wire int_weights_write_i_1_n_0;
  wire int_weights_write_reg_n_0;
  wire interrupt;
  wire [15:0]mem_reg;
  wire [6:0]mem_reg_0;
  wire [2:0]mem_reg_1;
  wire [15:0]mem_reg_2;
  wire output_r_ce0;
  wire [15:0]output_r_d0;
  wire [31:24]p_1_in;
  wire p_35_in;
  wire [7:2]p_3_in;
  wire \rdata[0]_i_4_n_0 ;
  wire \rdata[0]_i_5_n_0 ;
  wire \rdata[15]_i_2_n_0 ;
  wire \rdata[15]_i_5_n_0 ;
  wire \rdata[15]_i_6_n_0 ;
  wire \rdata[15]_i_7_n_0 ;
  wire \rdata[15]_i_8_n_0 ;
  wire \rdata[1]_i_4_n_0 ;
  wire \rdata[1]_i_5_n_0 ;
  wire \rdata[2]_i_3_n_0 ;
  wire \rdata[2]_i_4_n_0 ;
  wire \rdata[31]_i_1_n_0 ;
  wire \rdata[31]_i_3_n_0 ;
  wire \rdata[3]_i_3_n_0 ;
  wire \rdata[3]_i_4_n_0 ;
  wire \rdata[4]_i_2_n_0 ;
  wire \rdata[4]_i_3_n_0 ;
  wire \rdata[5]_i_3_n_0 ;
  wire \rdata[5]_i_4_n_0 ;
  wire \rdata[5]_i_5_n_0 ;
  wire \rdata[5]_i_6_n_0 ;
  wire \rdata[5]_i_7_n_0 ;
  wire \rdata[5]_i_8_n_0 ;
  wire \rdata[6]_i_3_n_0 ;
  wire \rdata[6]_i_4_n_0 ;
  wire \rdata[6]_i_6_n_0 ;
  wire \rdata[6]_i_7_n_0 ;
  wire \rdata[6]_i_8_n_0 ;
  wire \rdata[6]_i_9_n_0 ;
  wire \rdata[7]_i_4_n_0 ;
  wire \rdata[7]_i_5_n_0 ;
  wire \rdata[7]_i_6_n_0 ;
  wire [1:0]rstate;
  wire \rstate[0]_i_1_n_0 ;
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
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[10] ;
  wire \waddr_reg_n_0_[11] ;
  wire \waddr_reg_n_0_[12] ;
  wire \waddr_reg_n_0_[13] ;
  wire \waddr_reg_n_0_[14] ;
  wire \waddr_reg_n_0_[15] ;
  wire \waddr_reg_n_0_[16] ;
  wire \waddr_reg_n_0_[17] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire \waddr_reg_n_0_[5] ;
  wire \waddr_reg_n_0_[6] ;
  wire \waddr_reg_n_0_[7] ;
  wire \waddr_reg_n_0_[8] ;
  wire \waddr_reg_n_0_[9] ;
  wire [1:0]wstate;
  wire \wstate[0]_i_1_n_0 ;
  wire \wstate[1]_i_1_n_0 ;
  wire [3:2]\NLW_ap_CS_fsm_reg[5]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_ap_CS_fsm_reg[5]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_CS_fsm_reg[5]_i_4_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF4F4444)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_start),
        .I1(mem_reg_1[0]),
        .I2(int_ap_ready_reg_0),
        .I3(CO),
        .I4(mem_reg_1[1]),
        .O(int_ap_start_reg_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \ap_CS_fsm[5]_i_10 
       (.I0(\ap_CS_fsm_reg[5]_i_2_0 [0]),
        .I1(\ap_CS_fsm_reg[5]_i_2_1 [0]),
        .I2(\ap_CS_fsm_reg[5]_i_2_0 [1]),
        .I3(\ap_CS_fsm_reg[5]_i_2_1 [1]),
        .I4(\ap_CS_fsm_reg[5]_i_2_0 [2]),
        .I5(\ap_CS_fsm_reg[5]_i_2_1 [2]),
        .O(\ap_CS_fsm[5]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ap_CS_fsm[5]_i_5 
       (.I0(\ap_CS_fsm_reg[5]_i_2_1 [15]),
        .I1(\ap_CS_fsm_reg[5]_i_2_0 [15]),
        .O(\ap_CS_fsm[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \ap_CS_fsm[5]_i_6 
       (.I0(\ap_CS_fsm_reg[5]_i_2_0 [12]),
        .I1(\ap_CS_fsm_reg[5]_i_2_1 [12]),
        .I2(\ap_CS_fsm_reg[5]_i_2_0 [13]),
        .I3(\ap_CS_fsm_reg[5]_i_2_1 [13]),
        .I4(\ap_CS_fsm_reg[5]_i_2_0 [14]),
        .I5(\ap_CS_fsm_reg[5]_i_2_1 [14]),
        .O(\ap_CS_fsm[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \ap_CS_fsm[5]_i_7 
       (.I0(\ap_CS_fsm_reg[5]_i_2_0 [9]),
        .I1(\ap_CS_fsm_reg[5]_i_2_1 [9]),
        .I2(\ap_CS_fsm_reg[5]_i_2_0 [10]),
        .I3(\ap_CS_fsm_reg[5]_i_2_1 [10]),
        .I4(\ap_CS_fsm_reg[5]_i_2_0 [11]),
        .I5(\ap_CS_fsm_reg[5]_i_2_1 [11]),
        .O(\ap_CS_fsm[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \ap_CS_fsm[5]_i_8 
       (.I0(\ap_CS_fsm_reg[5]_i_2_0 [6]),
        .I1(\ap_CS_fsm_reg[5]_i_2_1 [6]),
        .I2(\ap_CS_fsm_reg[5]_i_2_0 [7]),
        .I3(\ap_CS_fsm_reg[5]_i_2_1 [7]),
        .I4(\ap_CS_fsm_reg[5]_i_2_0 [8]),
        .I5(\ap_CS_fsm_reg[5]_i_2_1 [8]),
        .O(\ap_CS_fsm[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \ap_CS_fsm[5]_i_9 
       (.I0(\ap_CS_fsm_reg[5]_i_2_0 [3]),
        .I1(\ap_CS_fsm_reg[5]_i_2_1 [3]),
        .I2(\ap_CS_fsm_reg[5]_i_2_0 [4]),
        .I3(\ap_CS_fsm_reg[5]_i_2_1 [4]),
        .I4(\ap_CS_fsm_reg[5]_i_2_0 [5]),
        .I5(\ap_CS_fsm_reg[5]_i_2_1 [5]),
        .O(\ap_CS_fsm[5]_i_9_n_0 ));
  CARRY4 \ap_CS_fsm_reg[5]_i_2 
       (.CI(\ap_CS_fsm_reg[5]_i_4_n_0 ),
        .CO({\NLW_ap_CS_fsm_reg[5]_i_2_CO_UNCONNECTED [3:2],CO,\ap_CS_fsm_reg[5]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ap_CS_fsm_reg[5]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\ap_CS_fsm[5]_i_5_n_0 ,\ap_CS_fsm[5]_i_6_n_0 }));
  CARRY4 \ap_CS_fsm_reg[5]_i_4 
       (.CI(1'b0),
        .CO({\ap_CS_fsm_reg[5]_i_4_n_0 ,\ap_CS_fsm_reg[5]_i_4_n_1 ,\ap_CS_fsm_reg[5]_i_4_n_2 ,\ap_CS_fsm_reg[5]_i_4_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ap_CS_fsm_reg[5]_i_4_O_UNCONNECTED [3:0]),
        .S({\ap_CS_fsm[5]_i_7_n_0 ,\ap_CS_fsm[5]_i_8_n_0 ,\ap_CS_fsm[5]_i_9_n_0 ,\ap_CS_fsm[5]_i_10_n_0 }));
  LUT4 #(
    .INIT(16'hEFAA)) 
    auto_restart_status_i_1
       (.I0(p_3_in[7]),
        .I1(ap_start),
        .I2(mem_reg_1[0]),
        .I3(auto_restart_status_reg_n_0),
        .O(auto_restart_status_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    auto_restart_status_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(auto_restart_status_i_1_n_0),
        .Q(auto_restart_status_reg_n_0),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg_i_1
       (.I0(mem_reg_1[0]),
        .I1(ap_start),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg_reg),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .O(\ap_CS_fsm_reg[0] ));
  LUT6 #(
    .INIT(64'h0100FFFF01000100)) 
    \icmp_ln36_reg_225[0]_i_1 
       (.I0(activation[2]),
        .I1(activation[1]),
        .I2(activation[0]),
        .I3(\icmp_ln36_reg_225[0]_i_2_n_0 ),
        .I4(mem_reg_1[0]),
        .I5(int_ap_ready_reg_0),
        .O(\int_activation_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \icmp_ln36_reg_225[0]_i_2 
       (.I0(activation[3]),
        .I1(activation[4]),
        .I2(activation[5]),
        .I3(activation[6]),
        .I4(mem_reg_1[0]),
        .I5(activation[7]),
        .O(\icmp_ln36_reg_225[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_activation[0]_i_1 
       (.I0(activation[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[0]),
        .O(\int_activation[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_activation[1]_i_1 
       (.I0(activation[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[1]),
        .O(\int_activation[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_activation[2]_i_1 
       (.I0(activation[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[2]),
        .O(\int_activation[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_activation[3]_i_1 
       (.I0(activation[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[3]),
        .O(\int_activation[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_activation[4]_i_1 
       (.I0(activation[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[4]),
        .O(\int_activation[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_activation[5]_i_1 
       (.I0(activation[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[5]),
        .O(\int_activation[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_activation[6]_i_1 
       (.I0(activation[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[6]),
        .O(\int_activation[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \int_activation[7]_i_1 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\waddr_reg_n_0_[4] ),
        .I4(\int_numOfInNeurons[15]_i_3_n_0 ),
        .O(\int_activation[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_activation[7]_i_2 
       (.I0(activation[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[7]),
        .O(\int_activation[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[0] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_0 ),
        .D(\int_activation[0]_i_1_n_0 ),
        .Q(activation[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[1] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_0 ),
        .D(\int_activation[1]_i_1_n_0 ),
        .Q(activation[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[2] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_0 ),
        .D(\int_activation[2]_i_1_n_0 ),
        .Q(activation[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[3] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_0 ),
        .D(\int_activation[3]_i_1_n_0 ),
        .Q(activation[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[4] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_0 ),
        .D(\int_activation[4]_i_1_n_0 ),
        .Q(activation[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[5] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_0 ),
        .D(\int_activation[5]_i_1_n_0 ),
        .Q(activation[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[6] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_0 ),
        .D(\int_activation[6]_i_1_n_0 ),
        .Q(activation[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[7] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_0 ),
        .D(\int_activation[7]_i_2_n_0 ),
        .Q(activation[7]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    int_ap_idle_i_1
       (.I0(mem_reg_1[0]),
        .I1(ap_start),
        .O(ap_idle));
  FDRE int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(p_3_in[2]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h5100FFFF51005100)) 
    int_ap_ready_i_1
       (.I0(p_3_in[7]),
        .I1(int_ap_ready_reg_0),
        .I2(CO),
        .I3(mem_reg_1[1]),
        .I4(int_task_ap_done0__10),
        .I5(int_ap_ready__0),
        .O(int_ap_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_ready_i_1_n_0),
        .Q(int_ap_ready__0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFBBBBBBBF8888888)) 
    int_ap_start_i_1
       (.I0(p_3_in[7]),
        .I1(ap_done),
        .I2(int_ap_start_i_3_n_0),
        .I3(int_ap_start_i_4_n_0),
        .I4(s_axi_control_WDATA[0]),
        .I5(ap_start),
        .O(int_ap_start_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    int_ap_start_i_2
       (.I0(int_ap_ready_reg_0),
        .I1(CO),
        .I2(mem_reg_1[1]),
        .O(ap_done));
  LUT5 #(
    .INIT(32'h02000000)) 
    int_ap_start_i_3
       (.I0(s_axi_control_WSTRB[0]),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(p_35_in),
        .I4(int_ap_start_i_5_n_0),
        .O(int_ap_start_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    int_ap_start_i_4
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[3] ),
        .O(int_ap_start_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    int_ap_start_i_5
       (.I0(int_ap_start_i_6_n_0),
        .I1(\waddr_reg_n_0_[1] ),
        .I2(\waddr_reg_n_0_[0] ),
        .I3(\waddr_reg_n_0_[7] ),
        .I4(\waddr_reg_n_0_[6] ),
        .I5(int_ap_start_i_7_n_0),
        .O(int_ap_start_i_5_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    int_ap_start_i_6
       (.I0(\waddr_reg_n_0_[11] ),
        .I1(\waddr_reg_n_0_[10] ),
        .I2(\waddr_reg_n_0_[9] ),
        .I3(\waddr_reg_n_0_[8] ),
        .O(int_ap_start_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    int_ap_start_i_7
       (.I0(\waddr_reg_n_0_[12] ),
        .I1(\waddr_reg_n_0_[13] ),
        .I2(\waddr_reg_n_0_[14] ),
        .I3(\waddr_reg_n_0_[15] ),
        .I4(\waddr_reg_n_0_[17] ),
        .I5(\waddr_reg_n_0_[16] ),
        .O(int_ap_start_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    int_auto_restart_i_1
       (.I0(s_axi_control_WDATA[7]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(int_ap_start_i_3_n_0),
        .I4(p_3_in[7]),
        .O(int_auto_restart_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(p_3_in[7]),
        .R(ap_rst_n_inv));
  design_1_nnlayer_0_3_nnlayer_control_s_axi_ram int_bias
       (.ADDRARDADDR({int_weights_n_1,int_weights_n_2,int_weights_n_3,int_weights_n_4,int_weights_n_5,int_weights_n_6,int_weights_n_7}),
        .D(D),
        .DIBDI({p_1_in,output_r_d0[7:0],output_r_d0[15:8]}),
        .DOADO({int_input_r_q1[31:16],int_input_r_q1[6]}),
        .ap_clk(ap_clk),
        .ar_hs__0(ar_hs__0),
        .grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .int_bias_read(int_bias_read),
        .int_bias_read_reg(int_bias_n_28),
        .int_bias_read_reg_0(int_bias_n_29),
        .int_bias_read_reg_1(int_bias_n_30),
        .int_bias_read_reg_2(int_bias_n_55),
        .int_input_r_read(int_input_r_read),
        .int_output_r_be0(int_output_r_be0[1]),
        .int_output_r_read(int_output_r_read),
        .mem_reg_0({int_bias_n_0,int_bias_n_1,int_bias_n_2,int_bias_n_3,int_bias_n_4,int_bias_n_5,int_bias_n_6,int_bias_n_7,int_bias_n_8,int_bias_n_9,int_bias_n_10,int_bias_n_11,int_bias_n_12,int_bias_n_13,int_bias_n_14,int_bias_n_15,int_bias_n_16,int_bias_n_17,int_bias_n_18,int_bias_n_19,int_bias_n_20,int_bias_n_21,int_bias_n_22,int_bias_n_23,int_bias_n_24,int_bias_n_25,int_bias_n_26,int_bias_n_27}),
        .mem_reg_1(int_bias_write_reg_n_0),
        .mem_reg_2(mem_reg_2),
        .mem_reg_3(mem_reg_1[2]),
        .mem_reg_4(\int_bias_shift0_reg[0]_0 ),
        .p_35_in(p_35_in),
        .q1(int_weights_q1),
        .\rdata_reg[0] (\rdata[15]_i_2_n_0 ),
        .\rdata_reg[0]_0 (int_input_r_n_49),
        .\rdata_reg[10] (int_input_r_n_58),
        .\rdata_reg[11] (int_input_r_n_59),
        .\rdata_reg[12] (int_input_r_n_60),
        .\rdata_reg[13] (int_input_r_n_61),
        .\rdata_reg[14] (int_input_r_n_62),
        .\rdata_reg[15] (int_input_r_n_63),
        .\rdata_reg[1] (int_input_r_n_50),
        .\rdata_reg[31] (int_output_r_q1),
        .\rdata_reg[6] (\rdata[6]_i_3_n_0 ),
        .\rdata_reg[6]_0 (\rdata[6]_i_4_n_0 ),
        .\rdata_reg[7] (int_input_r_n_55),
        .\rdata_reg[8] (int_input_r_n_56),
        .\rdata_reg[9] (int_input_r_n_57),
        .rstate(rstate),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .wstate(wstate));
  LUT6 #(
    .INIT(64'h0044004000400040)) 
    int_bias_read_i_1
       (.I0(int_bias_read_i_2_n_0),
        .I1(ar_hs__0),
        .I2(int_bias_read_i_3_n_0),
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
        .O(int_bias_read_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    int_bias_read_i_3
       (.I0(s_axi_control_ARADDR[12]),
        .I1(s_axi_control_ARADDR[13]),
        .I2(s_axi_control_ARADDR[11]),
        .I3(s_axi_control_ARADDR[15]),
        .I4(s_axi_control_ARADDR[14]),
        .I5(s_axi_control_ARADDR[16]),
        .O(int_bias_read_i_3_n_0));
  FDRE int_bias_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_bias_read0),
        .Q(int_bias_read),
        .R(ap_rst_n_inv));
  FDRE \int_bias_shift0_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_bias_shift0_reg[0]_1 ),
        .Q(\int_bias_shift0_reg[0]_0 ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFEFFFFFFAAAAAAAA)) 
    int_bias_write_i_1
       (.I0(int_bias_write0),
        .I1(ar_hs__0),
        .I2(wstate[1]),
        .I3(wstate[0]),
        .I4(s_axi_control_WVALID),
        .I5(int_bias_write_reg_n_0),
        .O(int_bias_write_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hEA00)) 
    int_bias_write_i_2
       (.I0(int_bias_write_i_3_n_0),
        .I1(s_axi_control_AWADDR[10]),
        .I2(s_axi_control_AWADDR[9]),
        .I3(int_input_r_write_i_3_n_0),
        .O(int_bias_write0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    int_bias_write_i_3
       (.I0(int_input_r_write_i_5_n_0),
        .I1(s_axi_control_AWADDR[15]),
        .I2(s_axi_control_AWADDR[16]),
        .I3(s_axi_control_AWADDR[17]),
        .I4(s_axi_control_AWADDR[14]),
        .O(int_bias_write_i_3_n_0));
  FDRE int_bias_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_bias_write_i_1_n_0),
        .Q(int_bias_write_reg_n_0),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    int_gie_i_1
       (.I0(s_axi_control_WDATA[0]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(int_ap_start_i_3_n_0),
        .I4(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h40)) 
    \int_ier[5]_i_1 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(int_ap_start_i_3_n_0),
        .O(int_ier12_out));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(int_ier12_out),
        .D(s_axi_control_WDATA[0]),
        .Q(\int_ier_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(int_ier12_out),
        .D(s_axi_control_WDATA[1]),
        .Q(\int_ier_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[2] 
       (.C(ap_clk),
        .CE(int_ier12_out),
        .D(s_axi_control_WDATA[2]),
        .Q(\int_ier_reg_n_0_[2] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[3] 
       (.C(ap_clk),
        .CE(int_ier12_out),
        .D(s_axi_control_WDATA[3]),
        .Q(\int_ier_reg_n_0_[3] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[4] 
       (.C(ap_clk),
        .CE(int_ier12_out),
        .D(s_axi_control_WDATA[4]),
        .Q(\int_ier_reg_n_0_[4] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[5] 
       (.C(ap_clk),
        .CE(int_ier12_out),
        .D(s_axi_control_WDATA[5]),
        .Q(\int_ier_reg_n_0_[5] ),
        .R(ap_rst_n_inv));
  design_1_nnlayer_0_3_nnlayer_control_s_axi_ram_1 int_input_r
       (.ADDRBWRADDR(ADDRBWRADDR),
        .D({int_input_r_n_51,int_input_r_n_52,int_input_r_n_53,int_input_r_n_54}),
        .DOADO({int_input_r_q1[31:16],int_input_r_q1[6]}),
        .DOBDO(int_input_r_q0),
        .Q(Q[15:8]),
        .ap_clk(ap_clk),
        .ar_hs__0(ar_hs__0),
        .grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .int_input_r_read(int_input_r_read),
        .\int_numOfInNeurons_reg[10] (int_input_r_n_58),
        .\int_numOfInNeurons_reg[11] (int_input_r_n_59),
        .\int_numOfInNeurons_reg[12] (int_input_r_n_60),
        .\int_numOfInNeurons_reg[13] (int_input_r_n_61),
        .\int_numOfInNeurons_reg[14] (int_input_r_n_62),
        .\int_numOfInNeurons_reg[15] (int_input_r_n_63),
        .\int_numOfInNeurons_reg[8] (int_input_r_n_56),
        .\int_numOfInNeurons_reg[9] (int_input_r_n_57),
        .mem_reg_0(int_input_r_n_49),
        .mem_reg_1(int_input_r_n_50),
        .mem_reg_2(int_input_r_n_55),
        .mem_reg_3(int_input_r_write_reg_n_0),
        .mem_reg_4({\waddr_reg_n_0_[8] ,\waddr_reg_n_0_[7] ,\waddr_reg_n_0_[6] ,\waddr_reg_n_0_[5] ,\waddr_reg_n_0_[4] ,\waddr_reg_n_0_[3] ,\waddr_reg_n_0_[2] }),
        .p_35_in(p_35_in),
        .\rdata_reg[0] (\rdata[0]_i_4_n_0 ),
        .\rdata_reg[0]_0 (\rdata[15]_i_6_n_0 ),
        .\rdata_reg[0]_1 (\rdata[0]_i_5_n_0 ),
        .\rdata_reg[0]_2 (\rdata[7]_i_6_n_0 ),
        .\rdata_reg[15] (\int_numOfInNeurons_reg[15]_0 [15:8]),
        .\rdata_reg[1] (\rdata[1]_i_4_n_0 ),
        .\rdata_reg[1]_0 (\rdata[1]_i_5_n_0 ),
        .\rdata_reg[2] (\rdata[5]_i_4_n_0 ),
        .\rdata_reg[2]_0 (int_bias_n_28),
        .\rdata_reg[2]_1 (\rdata[2]_i_3_n_0 ),
        .\rdata_reg[3] (int_bias_n_29),
        .\rdata_reg[3]_0 (\rdata[3]_i_3_n_0 ),
        .\rdata_reg[4] (\rdata[4]_i_2_n_0 ),
        .\rdata_reg[4]_0 (\rdata[4]_i_3_n_0 ),
        .\rdata_reg[4]_1 (int_bias_n_55),
        .\rdata_reg[5] (int_bias_n_30),
        .\rdata_reg[5]_0 (\rdata[5]_i_3_n_0 ),
        .\rdata_reg[7] (\rdata[7]_i_4_n_0 ),
        .\rdata_reg[7]_0 (\rdata[7]_i_5_n_0 ),
        .\rdata_reg[8] (\rdata[15]_i_5_n_0 ),
        .\rdata_reg[8]_0 (\rdata[15]_i_7_n_0 ),
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
        .I1(int_bias_read_i_3_n_0),
        .I2(s_axi_control_ARADDR[10]),
        .I3(s_axi_control_ARADDR[17]),
        .I4(ar_hs__0),
        .I5(int_bias_read_i_2_n_0),
        .O(int_input_r_read0));
  FDRE int_input_r_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_input_r_read0),
        .Q(int_input_r_read),
        .R(ap_rst_n_inv));
  FDRE \int_input_r_shift0_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_input_r_shift0_reg[0]_1 ),
        .Q(\int_input_r_shift0_reg[0]_0 ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFEFFFFFFAAAAAAAA)) 
    int_input_r_write_i_1
       (.I0(int_input_r_write0),
        .I1(ar_hs__0),
        .I2(wstate[1]),
        .I3(wstate[0]),
        .I4(s_axi_control_WVALID),
        .I5(int_input_r_write_reg_n_0),
        .O(int_input_r_write_i_1_n_0));
  LUT4 #(
    .INIT(16'h4440)) 
    int_input_r_write_i_2
       (.I0(s_axi_control_AWADDR[10]),
        .I1(int_input_r_write_i_3_n_0),
        .I2(s_axi_control_AWADDR[9]),
        .I3(int_input_r_write_i_4_n_0),
        .O(int_input_r_write0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    int_input_r_write_i_3
       (.I0(aw_hs),
        .I1(s_axi_control_AWADDR[14]),
        .I2(s_axi_control_AWADDR[15]),
        .I3(s_axi_control_AWADDR[17]),
        .I4(s_axi_control_AWADDR[16]),
        .I5(int_input_r_write_i_5_n_0),
        .O(int_input_r_write_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    int_input_r_write_i_4
       (.I0(s_axi_control_AWADDR[14]),
        .I1(s_axi_control_AWADDR[17]),
        .I2(s_axi_control_AWADDR[16]),
        .I3(s_axi_control_AWADDR[15]),
        .I4(int_input_r_write_i_5_n_0),
        .I5(s_axi_control_AWADDR[10]),
        .O(int_input_r_write_i_4_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    int_input_r_write_i_5
       (.I0(s_axi_control_AWADDR[12]),
        .I1(s_axi_control_AWADDR[11]),
        .I2(s_axi_control_AWADDR[13]),
        .O(int_input_r_write_i_5_n_0));
  FDRE int_input_r_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_input_r_write_i_1_n_0),
        .Q(int_input_r_write_reg_n_0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFF8000)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(int_ap_start_i_3_n_0),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(int_isr10_out),
        .I5(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8A00)) 
    \int_isr[0]_i_2 
       (.I0(mem_reg_1[1]),
        .I1(CO),
        .I2(int_ap_ready_reg_0),
        .I3(\int_ier_reg_n_0_[0] ),
        .O(int_isr10_out));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFF8000)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(int_ap_start_i_3_n_0),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(int_isr7_out),
        .I5(\int_isr_reg_n_0_[1] ),
        .O(\int_isr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8A00)) 
    \int_isr[1]_i_2 
       (.I0(mem_reg_1[1]),
        .I1(CO),
        .I2(int_ap_ready_reg_0),
        .I3(\int_ier_reg_n_0_[1] ),
        .O(int_isr7_out));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \int_isr[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(int_ap_start_i_3_n_0),
        .I4(\int_isr_reg_n_0_[5] ),
        .O(\int_isr[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[5]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[5] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfInNeurons[0]_i_1 
       (.I0(\int_numOfInNeurons_reg[15]_0 [0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[0]),
        .O(int_numOfInNeurons0[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [10]),
        .O(int_numOfInNeurons0[10]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [11]),
        .O(int_numOfInNeurons0[11]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [12]),
        .O(int_numOfInNeurons0[12]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [13]),
        .O(int_numOfInNeurons0[13]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
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
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\int_numOfInNeurons[15]_i_3_n_0 ),
        .I3(\waddr_reg_n_0_[4] ),
        .I4(\waddr_reg_n_0_[5] ),
        .O(\int_numOfInNeurons[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[15]_i_2 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [15]),
        .O(int_numOfInNeurons0[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \int_numOfInNeurons[15]_i_3 
       (.I0(int_ap_start_i_5_n_0),
        .I1(ar_hs__0),
        .I2(wstate[1]),
        .I3(wstate[0]),
        .I4(s_axi_control_WVALID),
        .O(\int_numOfInNeurons[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfInNeurons[1]_i_1 
       (.I0(\int_numOfInNeurons_reg[15]_0 [1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[1]),
        .O(int_numOfInNeurons0[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfInNeurons[2]_i_1 
       (.I0(\int_numOfInNeurons_reg[15]_0 [2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[2]),
        .O(int_numOfInNeurons0[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfInNeurons[3]_i_1 
       (.I0(\int_numOfInNeurons_reg[15]_0 [3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[3]),
        .O(int_numOfInNeurons0[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfInNeurons[4]_i_1 
       (.I0(\int_numOfInNeurons_reg[15]_0 [4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[4]),
        .O(int_numOfInNeurons0[4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfInNeurons[5]_i_1 
       (.I0(\int_numOfInNeurons_reg[15]_0 [5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[5]),
        .O(int_numOfInNeurons0[5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfInNeurons[6]_i_1 
       (.I0(\int_numOfInNeurons_reg[15]_0 [6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[6]),
        .O(int_numOfInNeurons0[6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfInNeurons[7]_i_1 
       (.I0(\int_numOfInNeurons_reg[15]_0 [7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[7]),
        .O(int_numOfInNeurons0[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [8]),
        .O(int_numOfInNeurons0[8]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
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
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(int_numOfInNeurons0[0]),
        .Q(\int_numOfInNeurons_reg[15]_0 [0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[10] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(int_numOfInNeurons0[10]),
        .Q(\int_numOfInNeurons_reg[15]_0 [10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[11] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(int_numOfInNeurons0[11]),
        .Q(\int_numOfInNeurons_reg[15]_0 [11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[12] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(int_numOfInNeurons0[12]),
        .Q(\int_numOfInNeurons_reg[15]_0 [12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[13] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(int_numOfInNeurons0[13]),
        .Q(\int_numOfInNeurons_reg[15]_0 [13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[14] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(int_numOfInNeurons0[14]),
        .Q(\int_numOfInNeurons_reg[15]_0 [14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[15] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(int_numOfInNeurons0[15]),
        .Q(\int_numOfInNeurons_reg[15]_0 [15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[1] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(int_numOfInNeurons0[1]),
        .Q(\int_numOfInNeurons_reg[15]_0 [1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[2] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(int_numOfInNeurons0[2]),
        .Q(\int_numOfInNeurons_reg[15]_0 [2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[3] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(int_numOfInNeurons0[3]),
        .Q(\int_numOfInNeurons_reg[15]_0 [3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[4] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(int_numOfInNeurons0[4]),
        .Q(\int_numOfInNeurons_reg[15]_0 [4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[5] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(int_numOfInNeurons0[5]),
        .Q(\int_numOfInNeurons_reg[15]_0 [5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[6] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(int_numOfInNeurons0[6]),
        .Q(\int_numOfInNeurons_reg[15]_0 [6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[7] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(int_numOfInNeurons0[7]),
        .Q(\int_numOfInNeurons_reg[15]_0 [7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[8] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(int_numOfInNeurons0[8]),
        .Q(\int_numOfInNeurons_reg[15]_0 [8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[9] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(int_numOfInNeurons0[9]),
        .Q(\int_numOfInNeurons_reg[15]_0 [9]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfOutNeurons[0]_i_1 
       (.I0(Q[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[0]),
        .O(int_numOfOutNeurons0[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[10]),
        .O(int_numOfOutNeurons0[10]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[11]),
        .O(int_numOfOutNeurons0[11]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[12]),
        .O(int_numOfOutNeurons0[12]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[13]),
        .O(int_numOfOutNeurons0[13]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[14]),
        .O(int_numOfOutNeurons0[14]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \int_numOfOutNeurons[15]_i_1 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\int_numOfInNeurons[15]_i_3_n_0 ),
        .I3(\waddr_reg_n_0_[4] ),
        .I4(\waddr_reg_n_0_[5] ),
        .O(\int_numOfOutNeurons[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[15]_i_2 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[15]),
        .O(int_numOfOutNeurons0[15]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfOutNeurons[1]_i_1 
       (.I0(Q[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[1]),
        .O(int_numOfOutNeurons0[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfOutNeurons[2]_i_1 
       (.I0(Q[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[2]),
        .O(int_numOfOutNeurons0[2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfOutNeurons[3]_i_1 
       (.I0(Q[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[3]),
        .O(int_numOfOutNeurons0[3]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfOutNeurons[4]_i_1 
       (.I0(Q[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[4]),
        .O(int_numOfOutNeurons0[4]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfOutNeurons[5]_i_1 
       (.I0(Q[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[5]),
        .O(int_numOfOutNeurons0[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfOutNeurons[6]_i_1 
       (.I0(Q[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[6]),
        .O(int_numOfOutNeurons0[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_numOfOutNeurons[7]_i_1 
       (.I0(Q[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[7]),
        .O(int_numOfOutNeurons0[7]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[8]),
        .O(int_numOfOutNeurons0[8]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[9]),
        .O(int_numOfOutNeurons0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[0] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_0 ),
        .D(int_numOfOutNeurons0[0]),
        .Q(Q[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[10] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_0 ),
        .D(int_numOfOutNeurons0[10]),
        .Q(Q[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[11] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_0 ),
        .D(int_numOfOutNeurons0[11]),
        .Q(Q[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[12] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_0 ),
        .D(int_numOfOutNeurons0[12]),
        .Q(Q[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[13] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_0 ),
        .D(int_numOfOutNeurons0[13]),
        .Q(Q[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[14] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_0 ),
        .D(int_numOfOutNeurons0[14]),
        .Q(Q[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[15] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_0 ),
        .D(int_numOfOutNeurons0[15]),
        .Q(Q[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[1] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_0 ),
        .D(int_numOfOutNeurons0[1]),
        .Q(Q[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[2] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_0 ),
        .D(int_numOfOutNeurons0[2]),
        .Q(Q[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[3] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_0 ),
        .D(int_numOfOutNeurons0[3]),
        .Q(Q[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[4] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_0 ),
        .D(int_numOfOutNeurons0[4]),
        .Q(Q[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[5] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_0 ),
        .D(int_numOfOutNeurons0[5]),
        .Q(Q[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[6] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_0 ),
        .D(int_numOfOutNeurons0[6]),
        .Q(Q[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[7] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_0 ),
        .D(int_numOfOutNeurons0[7]),
        .Q(Q[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[8] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_0 ),
        .D(int_numOfOutNeurons0[8]),
        .Q(Q[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[9] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_0 ),
        .D(int_numOfOutNeurons0[9]),
        .Q(Q[9]),
        .R(ap_rst_n_inv));
  design_1_nnlayer_0_3_nnlayer_control_s_axi_ram__parameterized0 int_output_r
       (.ADDRARDADDR({int_weights_n_1,int_weights_n_2,int_weights_n_3,int_weights_n_4,int_weights_n_5,int_weights_n_6,int_weights_n_7}),
        .DIBDI({p_1_in,output_r_d0[7:0],output_r_d0[15:8]}),
        .DOBDO(int_output_r_q0),
        .ap_clk(ap_clk),
        .ar_hs__0(ar_hs__0),
        .int_output_r_be0(int_output_r_be0),
        .mem_reg_0(int_output_r_q1),
        .mem_reg_1(mem_reg_0),
        .mem_reg_2(int_output_r_write_reg_n_0),
        .output_r_ce0(output_r_ce0),
        .p_35_in(p_35_in),
        .rstate(rstate),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .wstate(wstate));
  LUT6 #(
    .INIT(64'h0000000004044400)) 
    int_output_r_read_i_1
       (.I0(int_bias_read_i_2_n_0),
        .I1(ar_hs__0),
        .I2(s_axi_control_ARADDR[9]),
        .I3(int_bias_read_i_3_n_0),
        .I4(s_axi_control_ARADDR[10]),
        .I5(s_axi_control_ARADDR[17]),
        .O(int_output_r_read0));
  FDRE int_output_r_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_output_r_read0),
        .Q(int_output_r_read),
        .R(ap_rst_n_inv));
  FDRE \int_output_r_shift0_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_output_r_shift0_reg[0]_1 ),
        .Q(\int_output_r_shift0_reg[0]_0 ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFEFFFFFFAAAAAAAA)) 
    int_output_r_write_i_1
       (.I0(int_output_r_write0),
        .I1(ar_hs__0),
        .I2(wstate[1]),
        .I3(wstate[0]),
        .I4(s_axi_control_WVALID),
        .I5(int_output_r_write_reg_n_0),
        .O(int_output_r_write_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h2A00)) 
    int_output_r_write_i_2
       (.I0(int_input_r_write_i_4_n_0),
        .I1(s_axi_control_AWADDR[10]),
        .I2(s_axi_control_AWADDR[9]),
        .I3(int_input_r_write_i_3_n_0),
        .O(int_output_r_write0));
  FDRE int_output_r_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_output_r_write_i_1_n_0),
        .Q(int_output_r_write_reg_n_0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h2E22FFFF2E222E22)) 
    int_task_ap_done_i_1
       (.I0(ap_done),
        .I1(auto_restart_status_reg_n_0),
        .I2(p_3_in[2]),
        .I3(ap_idle),
        .I4(int_task_ap_done0__10),
        .I5(int_task_ap_done__0),
        .O(int_task_ap_done_i_1_n_0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    int_task_ap_done_i_2
       (.I0(ar_hs__0),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(int_task_ap_done_i_3_n_0),
        .I5(int_task_ap_done_i_4_n_0),
        .O(int_task_ap_done0__10));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    int_task_ap_done_i_3
       (.I0(int_bias_read_i_2_n_0),
        .I1(s_axi_control_ARADDR[9]),
        .I2(s_axi_control_ARADDR[10]),
        .I3(s_axi_control_ARADDR[17]),
        .O(int_task_ap_done_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    int_task_ap_done_i_4
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[6]),
        .I2(s_axi_control_ARADDR[7]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(int_task_ap_done_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_task_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_task_ap_done_i_1_n_0),
        .Q(int_task_ap_done__0),
        .R(ap_rst_n_inv));
  design_1_nnlayer_0_3_nnlayer_control_s_axi_ram__parameterized1 int_weights
       (.ADDRARDADDR({int_weights_n_1,int_weights_n_2,int_weights_n_3,int_weights_n_4,int_weights_n_5,int_weights_n_6,int_weights_n_7}),
        .Q({\waddr_reg_n_0_[16] ,\waddr_reg_n_0_[15] ,\waddr_reg_n_0_[14] ,\waddr_reg_n_0_[13] ,\waddr_reg_n_0_[12] ,\waddr_reg_n_0_[11] ,\waddr_reg_n_0_[10] ,\waddr_reg_n_0_[9] ,\waddr_reg_n_0_[8] ,\waddr_reg_n_0_[7] ,\waddr_reg_n_0_[6] ,\waddr_reg_n_0_[5] ,\waddr_reg_n_0_[4] ,\waddr_reg_n_0_[3] ,\waddr_reg_n_0_[2] }),
        .ap_clk(ap_clk),
        .ar_hs__0(ar_hs__0),
        .grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0[15:1]),
        .mem_reg_3_0_2_0(int_weights_write_reg_n_0),
        .q0(int_weights_q0),
        .q1(int_weights_q1),
        .rstate(rstate),
        .s_axi_control_ARADDR(s_axi_control_ARADDR[16:2]),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .wstate(wstate));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
        .R(ap_rst_n_inv));
  FDRE \int_weights_shift0_reg[0] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .D(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0[0]),
        .Q(\int_weights_shift0_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
    int_weights_write_i_1
       (.I0(wstate[1]),
        .I1(wstate[0]),
        .I2(s_axi_control_AWVALID),
        .I3(s_axi_control_AWADDR[17]),
        .I4(p_35_in),
        .I5(int_weights_write_reg_n_0),
        .O(int_weights_write_i_1_n_0));
  FDRE int_weights_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_weights_write_i_1_n_0),
        .Q(int_weights_write_reg_n_0),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hFE00)) 
    interrupt_INST_0
       (.I0(\int_isr_reg_n_0_[0] ),
        .I1(\int_isr_reg_n_0_[1] ),
        .I2(\int_isr_reg_n_0_[5] ),
        .I3(int_gie_reg_n_0),
        .O(interrupt));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_265[0]_i_1 
       (.I0(int_output_r_q0[16]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[0]),
        .O(mem_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_265[10]_i_1 
       (.I0(int_output_r_q0[26]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[10]),
        .O(mem_reg[10]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_265[11]_i_1 
       (.I0(int_output_r_q0[27]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[11]),
        .O(mem_reg[11]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_265[12]_i_1 
       (.I0(int_output_r_q0[28]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[12]),
        .O(mem_reg[12]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_265[13]_i_1 
       (.I0(int_output_r_q0[29]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[13]),
        .O(mem_reg[13]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_265[14]_i_1 
       (.I0(int_output_r_q0[30]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[14]),
        .O(mem_reg[14]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_265[15]_i_1 
       (.I0(int_output_r_q0[31]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[15]),
        .O(mem_reg[15]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_265[1]_i_1 
       (.I0(int_output_r_q0[17]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[1]),
        .O(mem_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_265[2]_i_1 
       (.I0(int_output_r_q0[18]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[2]),
        .O(mem_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_265[3]_i_1 
       (.I0(int_output_r_q0[19]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[3]),
        .O(mem_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_265[4]_i_1 
       (.I0(int_output_r_q0[20]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[4]),
        .O(mem_reg[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_265[5]_i_1 
       (.I0(int_output_r_q0[21]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[5]),
        .O(mem_reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_265[6]_i_1 
       (.I0(int_output_r_q0[22]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[6]),
        .O(mem_reg[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_265[7]_i_1 
       (.I0(int_output_r_q0[23]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[7]),
        .O(mem_reg[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_265[8]_i_1 
       (.I0(int_output_r_q0[24]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[8]),
        .O(mem_reg[8]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_265[9]_i_1 
       (.I0(int_output_r_q0[25]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[9]),
        .O(mem_reg[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_1
       (.I0(int_weights_q0[31]),
        .I1(\int_weights_shift0_reg_n_0_[0] ),
        .I2(int_weights_q0[15]),
        .O(B[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_10
       (.I0(int_weights_q0[22]),
        .I1(\int_weights_shift0_reg_n_0_[0] ),
        .I2(int_weights_q0[6]),
        .O(B[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_11
       (.I0(int_weights_q0[21]),
        .I1(\int_weights_shift0_reg_n_0_[0] ),
        .I2(int_weights_q0[5]),
        .O(B[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_12
       (.I0(int_weights_q0[20]),
        .I1(\int_weights_shift0_reg_n_0_[0] ),
        .I2(int_weights_q0[4]),
        .O(B[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_13
       (.I0(int_weights_q0[19]),
        .I1(\int_weights_shift0_reg_n_0_[0] ),
        .I2(int_weights_q0[3]),
        .O(B[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_14
       (.I0(int_weights_q0[18]),
        .I1(\int_weights_shift0_reg_n_0_[0] ),
        .I2(int_weights_q0[2]),
        .O(B[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_15
       (.I0(int_weights_q0[17]),
        .I1(\int_weights_shift0_reg_n_0_[0] ),
        .I2(int_weights_q0[1]),
        .O(B[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_16
       (.I0(int_weights_q0[16]),
        .I1(\int_weights_shift0_reg_n_0_[0] ),
        .I2(int_weights_q0[0]),
        .O(B[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_17
       (.I0(int_input_r_q0[31]),
        .I1(\int_input_r_shift0_reg[0]_0 ),
        .I2(int_input_r_q0[15]),
        .O(A[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_18
       (.I0(int_input_r_q0[30]),
        .I1(\int_input_r_shift0_reg[0]_0 ),
        .I2(int_input_r_q0[14]),
        .O(A[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_19
       (.I0(int_input_r_q0[29]),
        .I1(\int_input_r_shift0_reg[0]_0 ),
        .I2(int_input_r_q0[13]),
        .O(A[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_2
       (.I0(int_weights_q0[30]),
        .I1(\int_weights_shift0_reg_n_0_[0] ),
        .I2(int_weights_q0[14]),
        .O(B[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_20
       (.I0(int_input_r_q0[28]),
        .I1(\int_input_r_shift0_reg[0]_0 ),
        .I2(int_input_r_q0[12]),
        .O(A[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_21
       (.I0(int_input_r_q0[27]),
        .I1(\int_input_r_shift0_reg[0]_0 ),
        .I2(int_input_r_q0[11]),
        .O(A[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_22
       (.I0(int_input_r_q0[26]),
        .I1(\int_input_r_shift0_reg[0]_0 ),
        .I2(int_input_r_q0[10]),
        .O(A[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_23
       (.I0(int_input_r_q0[25]),
        .I1(\int_input_r_shift0_reg[0]_0 ),
        .I2(int_input_r_q0[9]),
        .O(A[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_24
       (.I0(int_input_r_q0[24]),
        .I1(\int_input_r_shift0_reg[0]_0 ),
        .I2(int_input_r_q0[8]),
        .O(A[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_25
       (.I0(int_input_r_q0[23]),
        .I1(\int_input_r_shift0_reg[0]_0 ),
        .I2(int_input_r_q0[7]),
        .O(A[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_26
       (.I0(int_input_r_q0[22]),
        .I1(\int_input_r_shift0_reg[0]_0 ),
        .I2(int_input_r_q0[6]),
        .O(A[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_27
       (.I0(int_input_r_q0[21]),
        .I1(\int_input_r_shift0_reg[0]_0 ),
        .I2(int_input_r_q0[5]),
        .O(A[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_28
       (.I0(int_input_r_q0[20]),
        .I1(\int_input_r_shift0_reg[0]_0 ),
        .I2(int_input_r_q0[4]),
        .O(A[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_29
       (.I0(int_input_r_q0[19]),
        .I1(\int_input_r_shift0_reg[0]_0 ),
        .I2(int_input_r_q0[3]),
        .O(A[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_3
       (.I0(int_weights_q0[29]),
        .I1(\int_weights_shift0_reg_n_0_[0] ),
        .I2(int_weights_q0[13]),
        .O(B[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_30
       (.I0(int_input_r_q0[18]),
        .I1(\int_input_r_shift0_reg[0]_0 ),
        .I2(int_input_r_q0[2]),
        .O(A[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_31
       (.I0(int_input_r_q0[17]),
        .I1(\int_input_r_shift0_reg[0]_0 ),
        .I2(int_input_r_q0[1]),
        .O(A[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_32
       (.I0(int_input_r_q0[16]),
        .I1(\int_input_r_shift0_reg[0]_0 ),
        .I2(int_input_r_q0[0]),
        .O(A[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_4
       (.I0(int_weights_q0[28]),
        .I1(\int_weights_shift0_reg_n_0_[0] ),
        .I2(int_weights_q0[12]),
        .O(B[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_5
       (.I0(int_weights_q0[27]),
        .I1(\int_weights_shift0_reg_n_0_[0] ),
        .I2(int_weights_q0[11]),
        .O(B[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_6
       (.I0(int_weights_q0[26]),
        .I1(\int_weights_shift0_reg_n_0_[0] ),
        .I2(int_weights_q0[10]),
        .O(B[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_7
       (.I0(int_weights_q0[25]),
        .I1(\int_weights_shift0_reg_n_0_[0] ),
        .I2(int_weights_q0[9]),
        .O(B[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_8
       (.I0(int_weights_q0[24]),
        .I1(\int_weights_shift0_reg_n_0_[0] ),
        .I2(int_weights_q0[8]),
        .O(B[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_9
       (.I0(int_weights_q0[23]),
        .I1(\int_weights_shift0_reg_n_0_[0] ),
        .I2(int_weights_q0[7]),
        .O(B[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[0]_i_4 
       (.I0(\rdata[6]_i_6_n_0 ),
        .I1(activation[0]),
        .I2(\rdata[6]_i_7_n_0 ),
        .I3(\int_numOfInNeurons_reg[15]_0 [0]),
        .I4(Q[0]),
        .I5(\rdata[6]_i_8_n_0 ),
        .O(\rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFFAC0FACF0AC00A)) 
    \rdata[0]_i_5 
       (.I0(ap_start),
        .I1(\int_isr_reg_n_0_[0] ),
        .I2(\rdata[5]_i_5_n_0 ),
        .I3(\rdata[5]_i_6_n_0 ),
        .I4(int_gie_reg_n_0),
        .I5(\int_ier_reg_n_0_[0] ),
        .O(\rdata[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hAAAE)) 
    \rdata[15]_i_2 
       (.I0(int_input_r_read),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[0]),
        .I3(rstate[1]),
        .O(\rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \rdata[15]_i_5 
       (.I0(\rdata[7]_i_6_n_0 ),
        .I1(\rdata[15]_i_8_n_0 ),
        .I2(s_axi_control_ARADDR[9]),
        .I3(int_bias_read_i_2_n_0),
        .I4(\rdata[6]_i_9_n_0 ),
        .I5(\rdata[6]_i_7_n_0 ),
        .O(\rdata[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hAAA2)) 
    \rdata[15]_i_6 
       (.I0(int_input_r_read),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[0]),
        .I3(rstate[1]),
        .O(\rdata[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \rdata[15]_i_7 
       (.I0(\rdata[6]_i_8_n_0 ),
        .I1(\rdata[7]_i_6_n_0 ),
        .I2(\rdata[15]_i_8_n_0 ),
        .I3(s_axi_control_ARADDR[9]),
        .I4(int_bias_read_i_2_n_0),
        .I5(\rdata[6]_i_9_n_0 ),
        .O(\rdata[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rdata[15]_i_8 
       (.I0(s_axi_control_ARADDR[10]),
        .I1(s_axi_control_ARADDR[17]),
        .O(\rdata[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[1]_i_4 
       (.I0(\rdata[6]_i_6_n_0 ),
        .I1(activation[1]),
        .I2(\rdata[6]_i_7_n_0 ),
        .I3(\int_numOfInNeurons_reg[15]_0 [1]),
        .I4(Q[1]),
        .I5(\rdata[6]_i_8_n_0 ),
        .O(\rdata[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFA0C0A0C)) 
    \rdata[1]_i_5 
       (.I0(\int_ier_reg_n_0_[1] ),
        .I1(int_task_ap_done__0),
        .I2(\rdata[5]_i_6_n_0 ),
        .I3(\rdata[5]_i_5_n_0 ),
        .I4(\int_isr_reg_n_0_[1] ),
        .O(\rdata[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8880000F888)) 
    \rdata[2]_i_3 
       (.I0(\rdata[6]_i_6_n_0 ),
        .I1(\int_ier_reg_n_0_[2] ),
        .I2(p_3_in[2]),
        .I3(\rdata[6]_i_7_n_0 ),
        .I4(\rdata[7]_i_6_n_0 ),
        .I5(\rdata[2]_i_4_n_0 ),
        .O(\rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[2]_i_4 
       (.I0(\rdata[6]_i_6_n_0 ),
        .I1(activation[2]),
        .I2(\rdata[6]_i_7_n_0 ),
        .I3(\int_numOfInNeurons_reg[15]_0 [2]),
        .I4(Q[2]),
        .I5(\rdata[6]_i_8_n_0 ),
        .O(\rdata[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFEFFFE)) 
    \rdata[31]_i_1 
       (.I0(int_weights_read),
        .I1(int_input_r_read),
        .I2(\rdata[31]_i_3_n_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[0]),
        .I5(rstate[1]),
        .O(\rdata[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rdata[31]_i_3 
       (.I0(int_bias_read),
        .I1(int_output_r_read),
        .O(\rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8880000F888)) 
    \rdata[3]_i_3 
       (.I0(\rdata[6]_i_6_n_0 ),
        .I1(\int_ier_reg_n_0_[3] ),
        .I2(int_ap_ready__0),
        .I3(\rdata[6]_i_7_n_0 ),
        .I4(\rdata[7]_i_6_n_0 ),
        .I5(\rdata[3]_i_4_n_0 ),
        .O(\rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[3]_i_4 
       (.I0(\rdata[6]_i_6_n_0 ),
        .I1(activation[3]),
        .I2(\rdata[6]_i_7_n_0 ),
        .I3(\int_numOfInNeurons_reg[15]_0 [3]),
        .I4(Q[3]),
        .I5(\rdata[6]_i_8_n_0 ),
        .O(\rdata[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \rdata[4]_i_2 
       (.I0(\int_ier_reg_n_0_[4] ),
        .I1(\rdata[5]_i_4_n_0 ),
        .I2(\rdata[7]_i_6_n_0 ),
        .I3(\rdata[6]_i_6_n_0 ),
        .O(\rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2A0A280822022000)) 
    \rdata[4]_i_3 
       (.I0(\rdata[6]_i_4_n_0 ),
        .I1(\rdata[5]_i_5_n_0 ),
        .I2(\rdata[5]_i_6_n_0 ),
        .I3(Q[4]),
        .I4(\int_numOfInNeurons_reg[15]_0 [4]),
        .I5(activation[4]),
        .O(\rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA8200000A820)) 
    \rdata[5]_i_3 
       (.I0(\rdata[5]_i_5_n_0 ),
        .I1(\rdata[5]_i_6_n_0 ),
        .I2(\int_ier_reg_n_0_[5] ),
        .I3(\int_isr_reg_n_0_[5] ),
        .I4(\rdata[7]_i_6_n_0 ),
        .I5(\rdata[5]_i_7_n_0 ),
        .O(\rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \rdata[5]_i_4 
       (.I0(\rdata[5]_i_8_n_0 ),
        .I1(int_bias_read_i_2_n_0),
        .I2(ar_hs__0),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[7]),
        .I5(s_axi_control_ARADDR[6]),
        .O(\rdata[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE2)) 
    \rdata[5]_i_5 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFC)) 
    \rdata[5]_i_6 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[0]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[5]_i_7 
       (.I0(\rdata[6]_i_6_n_0 ),
        .I1(activation[5]),
        .I2(\rdata[6]_i_7_n_0 ),
        .I3(\int_numOfInNeurons_reg[15]_0 [5]),
        .I4(Q[5]),
        .I5(\rdata[6]_i_8_n_0 ),
        .O(\rdata[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rdata[5]_i_8 
       (.I0(s_axi_control_ARADDR[17]),
        .I1(s_axi_control_ARADDR[10]),
        .I2(s_axi_control_ARADDR[9]),
        .O(\rdata[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[6]_i_3 
       (.I0(\rdata[6]_i_6_n_0 ),
        .I1(activation[6]),
        .I2(\rdata[6]_i_7_n_0 ),
        .I3(\int_numOfInNeurons_reg[15]_0 [6]),
        .I4(Q[6]),
        .I5(\rdata[6]_i_8_n_0 ),
        .O(\rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \rdata[6]_i_4 
       (.I0(\rdata[6]_i_9_n_0 ),
        .I1(int_bias_read_i_2_n_0),
        .I2(s_axi_control_ARADDR[9]),
        .I3(s_axi_control_ARADDR[10]),
        .I4(s_axi_control_ARADDR[17]),
        .I5(\rdata[7]_i_6_n_0 ),
        .O(\rdata[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000002)) 
    \rdata[6]_i_6 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[1]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[3]),
        .O(\rdata[6]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \rdata[6]_i_7 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[0]),
        .I2(s_axi_control_ARADDR[1]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[3]),
        .O(\rdata[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000100)) 
    \rdata[6]_i_8 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[0]),
        .I2(s_axi_control_ARADDR[1]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[3]),
        .O(\rdata[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \rdata[6]_i_9 
       (.I0(s_axi_control_ARADDR[6]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[8]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[0]),
        .I5(rstate[1]),
        .O(\rdata[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \rdata[7]_i_4 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[0]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(p_3_in[7]),
        .I5(\rdata[6]_i_7_n_0 ),
        .O(\rdata[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[7]_i_5 
       (.I0(\rdata[6]_i_6_n_0 ),
        .I1(activation[7]),
        .I2(\rdata[6]_i_7_n_0 ),
        .I3(\int_numOfInNeurons_reg[15]_0 [7]),
        .I4(Q[7]),
        .I5(\rdata[6]_i_8_n_0 ),
        .O(\rdata[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rdata[7]_i_6 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[0]),
        .I3(s_axi_control_ARADDR[1]),
        .O(\rdata[7]_i_6_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_27),
        .Q(s_axi_control_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_21),
        .Q(s_axi_control_RDATA[10]),
        .R(1'b0));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_20),
        .Q(s_axi_control_RDATA[11]),
        .R(1'b0));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_19),
        .Q(s_axi_control_RDATA[12]),
        .R(1'b0));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_18),
        .Q(s_axi_control_RDATA[13]),
        .R(1'b0));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_17),
        .Q(s_axi_control_RDATA[14]),
        .R(1'b0));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_16),
        .Q(s_axi_control_RDATA[15]),
        .R(1'b0));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_15),
        .Q(s_axi_control_RDATA[16]),
        .R(1'b0));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_14),
        .Q(s_axi_control_RDATA[17]),
        .R(1'b0));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_13),
        .Q(s_axi_control_RDATA[18]),
        .R(1'b0));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_12),
        .Q(s_axi_control_RDATA[19]),
        .R(1'b0));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_26),
        .Q(s_axi_control_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_11),
        .Q(s_axi_control_RDATA[20]),
        .R(1'b0));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_10),
        .Q(s_axi_control_RDATA[21]),
        .R(1'b0));
  FDRE \rdata_reg[22] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_9),
        .Q(s_axi_control_RDATA[22]),
        .R(1'b0));
  FDRE \rdata_reg[23] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_8),
        .Q(s_axi_control_RDATA[23]),
        .R(1'b0));
  FDRE \rdata_reg[24] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_7),
        .Q(s_axi_control_RDATA[24]),
        .R(1'b0));
  FDRE \rdata_reg[25] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_6),
        .Q(s_axi_control_RDATA[25]),
        .R(1'b0));
  FDRE \rdata_reg[26] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_5),
        .Q(s_axi_control_RDATA[26]),
        .R(1'b0));
  FDRE \rdata_reg[27] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_4),
        .Q(s_axi_control_RDATA[27]),
        .R(1'b0));
  FDRE \rdata_reg[28] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_3),
        .Q(s_axi_control_RDATA[28]),
        .R(1'b0));
  FDRE \rdata_reg[29] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_2),
        .Q(s_axi_control_RDATA[29]),
        .R(1'b0));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_input_r_n_54),
        .Q(s_axi_control_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[30] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_1),
        .Q(s_axi_control_RDATA[30]),
        .R(1'b0));
  FDRE \rdata_reg[31] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_0),
        .Q(s_axi_control_RDATA[31]),
        .R(1'b0));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_input_r_n_53),
        .Q(s_axi_control_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_input_r_n_52),
        .Q(s_axi_control_RDATA[4]),
        .R(1'b0));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_input_r_n_51),
        .Q(s_axi_control_RDATA[5]),
        .R(1'b0));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_25),
        .Q(s_axi_control_RDATA[6]),
        .R(1'b0));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_24),
        .Q(s_axi_control_RDATA[7]),
        .R(1'b0));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_23),
        .Q(s_axi_control_RDATA[8]),
        .R(1'b0));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_22),
        .Q(s_axi_control_RDATA[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00007F2A)) 
    \rstate[0]_i_1 
       (.I0(rstate[0]),
        .I1(s_axi_control_RVALID),
        .I2(s_axi_control_RREADY),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .O(\rstate[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rstate[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \rstate_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\rstate[0]_i_1_n_0 ),
        .Q(rstate[0]),
        .R(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(rstate[1]),
        .S(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_control_ARREADY_INST_0
       (.I0(rstate[1]),
        .I1(rstate[0]),
        .O(s_axi_control_ARREADY));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_control_AWREADY_INST_0
       (.I0(wstate[1]),
        .I1(wstate[0]),
        .O(s_axi_control_AWREADY));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[10] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[10]),
        .Q(\waddr_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \waddr_reg[11] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[11]),
        .Q(\waddr_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \waddr_reg[12] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[12]),
        .Q(\waddr_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \waddr_reg[13] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[13]),
        .Q(\waddr_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \waddr_reg[14] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[14]),
        .Q(\waddr_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \waddr_reg[15] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[15]),
        .Q(\waddr_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \waddr_reg[16] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[16]),
        .Q(\waddr_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \waddr_reg[17] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[17]),
        .Q(\waddr_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[2]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[3]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[4]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \waddr_reg[5] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[5]),
        .Q(\waddr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \waddr_reg[6] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[6]),
        .Q(\waddr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \waddr_reg[7] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[7]),
        .Q(\waddr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \waddr_reg[8] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[8]),
        .Q(\waddr_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \waddr_reg[9] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[9]),
        .Q(\waddr_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0000DDF0)) 
    \wstate[0]_i_1 
       (.I0(s_axi_control_WVALID),
        .I1(ar_hs__0),
        .I2(s_axi_control_AWVALID),
        .I3(wstate[0]),
        .I4(wstate[1]),
        .O(\wstate[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h050005C0)) 
    \wstate[1]_i_1 
       (.I0(s_axi_control_BREADY),
        .I1(s_axi_control_WVALID),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .I4(ar_hs__0),
        .O(\wstate[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \wstate_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\wstate[0]_i_1_n_0 ),
        .Q(wstate[0]),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\wstate[1]_i_1_n_0 ),
        .Q(wstate[1]),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "nnlayer_control_s_axi_ram" *) 
module design_1_nnlayer_0_3_nnlayer_control_s_axi_ram
   (mem_reg_0,
    int_bias_read_reg,
    int_bias_read_reg_0,
    int_bias_read_reg_1,
    DIBDI,
    int_bias_read_reg_2,
    ap_clk,
    grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg,
    ADDRARDADDR,
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
    int_output_r_be0,
    mem_reg_2,
    mem_reg_3,
    mem_reg_4);
  output [27:0]mem_reg_0;
  output int_bias_read_reg;
  output int_bias_read_reg_0;
  output int_bias_read_reg_1;
  output [23:0]DIBDI;
  output int_bias_read_reg_2;
  input ap_clk;
  input grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg;
  input [6:0]ADDRARDADDR;
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
  input [0:0]int_output_r_be0;
  input [15:0]mem_reg_2;
  input [0:0]mem_reg_3;
  input mem_reg_4;

  wire [6:0]ADDRARDADDR;
  wire [6:0]D;
  wire [23:0]DIBDI;
  wire [16:0]DOADO;
  wire ap_clk;
  wire ar_hs__0;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg;
  wire [3:0]int_bias_be1;
  wire int_bias_ce1;
  wire [31:0]int_bias_q0;
  wire [31:0]int_bias_q1;
  wire int_bias_read;
  wire int_bias_read_reg;
  wire int_bias_read_reg_0;
  wire int_bias_read_reg_1;
  wire int_bias_read_reg_2;
  wire int_input_r_read;
  wire [0:0]int_output_r_be0;
  wire int_output_r_read;
  wire [27:0]mem_reg_0;
  wire mem_reg_1;
  wire [15:0]mem_reg_2;
  wire [0:0]mem_reg_3;
  wire mem_reg_4;
  wire [31:24]p_1_in;
  wire p_35_in;
  wire [31:0]q1;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[10]_i_2_n_0 ;
  wire \rdata[11]_i_2_n_0 ;
  wire \rdata[12]_i_2_n_0 ;
  wire \rdata[13]_i_2_n_0 ;
  wire \rdata[14]_i_2_n_0 ;
  wire \rdata[15]_i_3_n_0 ;
  wire \rdata[16]_i_2_n_0 ;
  wire \rdata[17]_i_2_n_0 ;
  wire \rdata[18]_i_2_n_0 ;
  wire \rdata[19]_i_2_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[20]_i_2_n_0 ;
  wire \rdata[21]_i_2_n_0 ;
  wire \rdata[22]_i_2_n_0 ;
  wire \rdata[23]_i_2_n_0 ;
  wire \rdata[24]_i_2_n_0 ;
  wire \rdata[25]_i_2_n_0 ;
  wire \rdata[26]_i_2_n_0 ;
  wire \rdata[27]_i_2_n_0 ;
  wire \rdata[28]_i_2_n_0 ;
  wire \rdata[29]_i_2_n_0 ;
  wire \rdata[30]_i_2_n_0 ;
  wire \rdata[31]_i_4_n_0 ;
  wire \rdata[6]_i_2_n_0 ;
  wire \rdata[7]_i_2_n_0 ;
  wire \rdata[8]_i_2_n_0 ;
  wire \rdata[9]_i_2_n_0 ;
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
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
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
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
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
    mem_reg_i_10__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_1),
        .I3(s_axi_control_WDATA[30]),
        .O(p_1_in[30]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_11__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_1),
        .I3(s_axi_control_WDATA[29]),
        .O(p_1_in[29]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_12__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_1),
        .I3(s_axi_control_WDATA[28]),
        .O(p_1_in[28]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_13__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_1),
        .I3(s_axi_control_WDATA[27]),
        .O(p_1_in[27]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_14__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_1),
        .I3(s_axi_control_WDATA[26]),
        .O(p_1_in[26]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_15__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_1),
        .I3(s_axi_control_WDATA[25]),
        .O(p_1_in[25]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_16
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_1),
        .I3(s_axi_control_WDATA[24]),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    mem_reg_i_17
       (.I0(mem_reg_1),
        .I1(s_axi_control_WVALID),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .I4(ar_hs__0),
        .I5(s_axi_control_WSTRB[3]),
        .O(int_bias_be1[3]));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    mem_reg_i_18
       (.I0(mem_reg_1),
        .I1(s_axi_control_WVALID),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .I4(ar_hs__0),
        .I5(s_axi_control_WSTRB[2]),
        .O(int_bias_be1[2]));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    mem_reg_i_19
       (.I0(mem_reg_1),
        .I1(s_axi_control_WVALID),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .I4(ar_hs__0),
        .I5(s_axi_control_WSTRB[1]),
        .O(int_bias_be1[1]));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    mem_reg_i_20
       (.I0(mem_reg_1),
        .I1(s_axi_control_WVALID),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .I4(ar_hs__0),
        .I5(s_axi_control_WSTRB[0]),
        .O(int_bias_be1[0]));
  LUT6 #(
    .INIT(64'h8A8A80808A808A80)) 
    mem_reg_i_25__0
       (.I0(int_output_r_be0),
        .I1(mem_reg_2[15]),
        .I2(mem_reg_3),
        .I3(int_bias_q0[15]),
        .I4(int_bias_q0[31]),
        .I5(mem_reg_4),
        .O(DIBDI[23]));
  LUT6 #(
    .INIT(64'h8A8A80808A808A80)) 
    mem_reg_i_26__0
       (.I0(int_output_r_be0),
        .I1(mem_reg_2[14]),
        .I2(mem_reg_3),
        .I3(int_bias_q0[14]),
        .I4(int_bias_q0[30]),
        .I5(mem_reg_4),
        .O(DIBDI[22]));
  LUT6 #(
    .INIT(64'h8A8A80808A808A80)) 
    mem_reg_i_27__0
       (.I0(int_output_r_be0),
        .I1(mem_reg_2[13]),
        .I2(mem_reg_3),
        .I3(int_bias_q0[13]),
        .I4(int_bias_q0[29]),
        .I5(mem_reg_4),
        .O(DIBDI[21]));
  LUT6 #(
    .INIT(64'h8A8A80808A808A80)) 
    mem_reg_i_28__0
       (.I0(int_output_r_be0),
        .I1(mem_reg_2[12]),
        .I2(mem_reg_3),
        .I3(int_bias_q0[12]),
        .I4(int_bias_q0[28]),
        .I5(mem_reg_4),
        .O(DIBDI[20]));
  LUT6 #(
    .INIT(64'h8A8A80808A808A80)) 
    mem_reg_i_29
       (.I0(int_output_r_be0),
        .I1(mem_reg_2[11]),
        .I2(mem_reg_3),
        .I3(int_bias_q0[11]),
        .I4(int_bias_q0[27]),
        .I5(mem_reg_4),
        .O(DIBDI[19]));
  LUT6 #(
    .INIT(64'h8A8A80808A808A80)) 
    mem_reg_i_30
       (.I0(int_output_r_be0),
        .I1(mem_reg_2[10]),
        .I2(mem_reg_3),
        .I3(int_bias_q0[10]),
        .I4(int_bias_q0[26]),
        .I5(mem_reg_4),
        .O(DIBDI[18]));
  LUT6 #(
    .INIT(64'h8A8A80808A808A80)) 
    mem_reg_i_31
       (.I0(int_output_r_be0),
        .I1(mem_reg_2[9]),
        .I2(mem_reg_3),
        .I3(int_bias_q0[9]),
        .I4(int_bias_q0[25]),
        .I5(mem_reg_4),
        .O(DIBDI[17]));
  LUT6 #(
    .INIT(64'h8A8A80808A808A80)) 
    mem_reg_i_32
       (.I0(int_output_r_be0),
        .I1(mem_reg_2[8]),
        .I2(mem_reg_3),
        .I3(int_bias_q0[8]),
        .I4(int_bias_q0[24]),
        .I5(mem_reg_4),
        .O(DIBDI[16]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_33
       (.I0(mem_reg_4),
        .I1(int_bias_q0[23]),
        .I2(int_bias_q0[7]),
        .I3(mem_reg_3),
        .I4(mem_reg_2[7]),
        .O(DIBDI[15]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_34
       (.I0(mem_reg_4),
        .I1(int_bias_q0[22]),
        .I2(int_bias_q0[6]),
        .I3(mem_reg_3),
        .I4(mem_reg_2[6]),
        .O(DIBDI[14]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_35
       (.I0(mem_reg_4),
        .I1(int_bias_q0[21]),
        .I2(int_bias_q0[5]),
        .I3(mem_reg_3),
        .I4(mem_reg_2[5]),
        .O(DIBDI[13]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_36
       (.I0(mem_reg_4),
        .I1(int_bias_q0[20]),
        .I2(int_bias_q0[4]),
        .I3(mem_reg_3),
        .I4(mem_reg_2[4]),
        .O(DIBDI[12]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_37
       (.I0(mem_reg_4),
        .I1(int_bias_q0[19]),
        .I2(int_bias_q0[3]),
        .I3(mem_reg_3),
        .I4(mem_reg_2[3]),
        .O(DIBDI[11]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_38
       (.I0(mem_reg_4),
        .I1(int_bias_q0[18]),
        .I2(int_bias_q0[2]),
        .I3(mem_reg_3),
        .I4(mem_reg_2[2]),
        .O(DIBDI[10]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_39
       (.I0(mem_reg_4),
        .I1(int_bias_q0[17]),
        .I2(int_bias_q0[1]),
        .I3(mem_reg_3),
        .I4(mem_reg_2[1]),
        .O(DIBDI[9]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_40
       (.I0(mem_reg_4),
        .I1(int_bias_q0[16]),
        .I2(int_bias_q0[0]),
        .I3(mem_reg_3),
        .I4(mem_reg_2[0]),
        .O(DIBDI[8]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_41
       (.I0(mem_reg_4),
        .I1(int_bias_q0[31]),
        .I2(int_bias_q0[15]),
        .I3(mem_reg_3),
        .I4(mem_reg_2[15]),
        .O(DIBDI[7]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_42
       (.I0(mem_reg_4),
        .I1(int_bias_q0[30]),
        .I2(int_bias_q0[14]),
        .I3(mem_reg_3),
        .I4(mem_reg_2[14]),
        .O(DIBDI[6]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_43
       (.I0(mem_reg_4),
        .I1(int_bias_q0[29]),
        .I2(int_bias_q0[13]),
        .I3(mem_reg_3),
        .I4(mem_reg_2[13]),
        .O(DIBDI[5]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_44
       (.I0(mem_reg_4),
        .I1(int_bias_q0[28]),
        .I2(int_bias_q0[12]),
        .I3(mem_reg_3),
        .I4(mem_reg_2[12]),
        .O(DIBDI[4]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_45
       (.I0(mem_reg_4),
        .I1(int_bias_q0[27]),
        .I2(int_bias_q0[11]),
        .I3(mem_reg_3),
        .I4(mem_reg_2[11]),
        .O(DIBDI[3]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_46
       (.I0(mem_reg_4),
        .I1(int_bias_q0[26]),
        .I2(int_bias_q0[10]),
        .I3(mem_reg_3),
        .I4(mem_reg_2[10]),
        .O(DIBDI[2]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_47
       (.I0(mem_reg_4),
        .I1(int_bias_q0[25]),
        .I2(int_bias_q0[9]),
        .I3(mem_reg_3),
        .I4(mem_reg_2[9]),
        .O(DIBDI[1]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_48
       (.I0(mem_reg_4),
        .I1(int_bias_q0[24]),
        .I2(int_bias_q0[8]),
        .I3(mem_reg_3),
        .I4(mem_reg_2[8]),
        .O(DIBDI[0]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_9__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_1),
        .I3(s_axi_control_WDATA[31]),
        .O(p_1_in[31]));
  LUT5 #(
    .INIT(32'hFF00D8D8)) 
    \rdata[0]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[0]),
        .I2(q1[0]),
        .I3(\rdata_reg[31] [0]),
        .I4(int_output_r_read),
        .O(\rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00D8D8)) 
    \rdata[10]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[10]),
        .I2(q1[10]),
        .I3(\rdata_reg[31] [10]),
        .I4(int_output_r_read),
        .O(\rdata[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00D8D8)) 
    \rdata[11]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[11]),
        .I2(q1[11]),
        .I3(\rdata_reg[31] [11]),
        .I4(int_output_r_read),
        .O(\rdata[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00D8D8)) 
    \rdata[12]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[12]),
        .I2(q1[12]),
        .I3(\rdata_reg[31] [12]),
        .I4(int_output_r_read),
        .O(\rdata[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00D8D8)) 
    \rdata[13]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[13]),
        .I2(q1[13]),
        .I3(\rdata_reg[31] [13]),
        .I4(int_output_r_read),
        .O(\rdata[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00D8D8)) 
    \rdata[14]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[14]),
        .I2(q1[14]),
        .I3(\rdata_reg[31] [14]),
        .I4(int_output_r_read),
        .O(\rdata[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00D8D8)) 
    \rdata[15]_i_3 
       (.I0(int_bias_read),
        .I1(int_bias_q1[15]),
        .I2(q1[15]),
        .I3(\rdata_reg[31] [15]),
        .I4(int_output_r_read),
        .O(\rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[16]_i_1 
       (.I0(\rdata[16]_i_2_n_0 ),
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
        .O(\rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[17]_i_1 
       (.I0(\rdata[17]_i_2_n_0 ),
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
        .O(\rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[18]_i_1 
       (.I0(\rdata[18]_i_2_n_0 ),
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
        .O(\rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[19]_i_1 
       (.I0(\rdata[19]_i_2_n_0 ),
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
        .O(\rdata[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00D8D8)) 
    \rdata[1]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[1]),
        .I2(q1[1]),
        .I3(\rdata_reg[31] [1]),
        .I4(int_output_r_read),
        .O(\rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[20]_i_1 
       (.I0(\rdata[20]_i_2_n_0 ),
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
        .O(\rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[21]_i_1 
       (.I0(\rdata[21]_i_2_n_0 ),
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
        .O(\rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[22]_i_1 
       (.I0(\rdata[22]_i_2_n_0 ),
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
        .O(\rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[23]_i_1 
       (.I0(\rdata[23]_i_2_n_0 ),
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
        .O(\rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[24]_i_1 
       (.I0(\rdata[24]_i_2_n_0 ),
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
        .O(\rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[25]_i_1 
       (.I0(\rdata[25]_i_2_n_0 ),
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
        .O(\rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[26]_i_1 
       (.I0(\rdata[26]_i_2_n_0 ),
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
        .O(\rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[27]_i_1 
       (.I0(\rdata[27]_i_2_n_0 ),
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
        .O(\rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[28]_i_1 
       (.I0(\rdata[28]_i_2_n_0 ),
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
        .O(\rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[29]_i_1 
       (.I0(\rdata[29]_i_2_n_0 ),
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
        .O(\rdata[29]_i_2_n_0 ));
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
       (.I0(\rdata[30]_i_2_n_0 ),
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
        .O(\rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCC0CCCC55505555)) 
    \rdata[31]_i_2 
       (.I0(\rdata[31]_i_4_n_0 ),
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
        .O(\rdata[31]_i_4_n_0 ));
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
       (.I0(\rdata[6]_i_2_n_0 ),
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
        .O(\rdata[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00D8D8)) 
    \rdata[7]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[7]),
        .I2(q1[7]),
        .I3(\rdata_reg[31] [7]),
        .I4(int_output_r_read),
        .O(\rdata[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00D8D8)) 
    \rdata[8]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[8]),
        .I2(q1[8]),
        .I3(\rdata_reg[31] [8]),
        .I4(int_output_r_read),
        .O(\rdata[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00D8D8)) 
    \rdata[9]_i_2 
       (.I0(int_bias_read),
        .I1(int_bias_q1[9]),
        .I2(q1[9]),
        .I3(\rdata_reg[31] [9]),
        .I4(int_output_r_read),
        .O(\rdata[9]_i_2_n_0 ));
  MUXF7 \rdata_reg[0]_i_1 
       (.I0(\rdata[0]_i_2_n_0 ),
        .I1(\rdata_reg[0]_0 ),
        .O(mem_reg_0[0]),
        .S(\rdata_reg[0] ));
  MUXF7 \rdata_reg[10]_i_1 
       (.I0(\rdata[10]_i_2_n_0 ),
        .I1(\rdata_reg[10] ),
        .O(mem_reg_0[6]),
        .S(\rdata_reg[0] ));
  MUXF7 \rdata_reg[11]_i_1 
       (.I0(\rdata[11]_i_2_n_0 ),
        .I1(\rdata_reg[11] ),
        .O(mem_reg_0[7]),
        .S(\rdata_reg[0] ));
  MUXF7 \rdata_reg[12]_i_1 
       (.I0(\rdata[12]_i_2_n_0 ),
        .I1(\rdata_reg[12] ),
        .O(mem_reg_0[8]),
        .S(\rdata_reg[0] ));
  MUXF7 \rdata_reg[13]_i_1 
       (.I0(\rdata[13]_i_2_n_0 ),
        .I1(\rdata_reg[13] ),
        .O(mem_reg_0[9]),
        .S(\rdata_reg[0] ));
  MUXF7 \rdata_reg[14]_i_1 
       (.I0(\rdata[14]_i_2_n_0 ),
        .I1(\rdata_reg[14] ),
        .O(mem_reg_0[10]),
        .S(\rdata_reg[0] ));
  MUXF7 \rdata_reg[15]_i_1 
       (.I0(\rdata[15]_i_3_n_0 ),
        .I1(\rdata_reg[15] ),
        .O(mem_reg_0[11]),
        .S(\rdata_reg[0] ));
  MUXF7 \rdata_reg[1]_i_1 
       (.I0(\rdata[1]_i_2_n_0 ),
        .I1(\rdata_reg[1] ),
        .O(mem_reg_0[1]),
        .S(\rdata_reg[0] ));
  MUXF7 \rdata_reg[7]_i_1 
       (.I0(\rdata[7]_i_2_n_0 ),
        .I1(\rdata_reg[7] ),
        .O(mem_reg_0[3]),
        .S(\rdata_reg[0] ));
  MUXF7 \rdata_reg[8]_i_1 
       (.I0(\rdata[8]_i_2_n_0 ),
        .I1(\rdata_reg[8] ),
        .O(mem_reg_0[4]),
        .S(\rdata_reg[0] ));
  MUXF7 \rdata_reg[9]_i_1 
       (.I0(\rdata[9]_i_2_n_0 ),
        .I1(\rdata_reg[9] ),
        .O(mem_reg_0[5]),
        .S(\rdata_reg[0] ));
endmodule

(* ORIG_REF_NAME = "nnlayer_control_s_axi_ram" *) 
module design_1_nnlayer_0_3_nnlayer_control_s_axi_ram_1
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
    grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg,
    ADDRBWRADDR,
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
    Q,
    \rdata_reg[8]_0 ,
    mem_reg_3,
    s_axi_control_WVALID,
    s_axi_control_ARVALID,
    rstate,
    s_axi_control_ARADDR,
    mem_reg_4,
    wstate,
    s_axi_control_WSTRB);
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
  input grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg;
  input [6:0]ADDRBWRADDR;
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
  input [7:0]Q;
  input \rdata_reg[8]_0 ;
  input mem_reg_3;
  input s_axi_control_WVALID;
  input s_axi_control_ARVALID;
  input [1:0]rstate;
  input [6:0]s_axi_control_ARADDR;
  input [6:0]mem_reg_4;
  input [1:0]wstate;
  input [3:0]s_axi_control_WSTRB;

  wire [6:0]ADDRBWRADDR;
  wire [3:0]D;
  wire [16:0]DOADO;
  wire [31:0]DOBDO;
  wire [7:0]Q;
  wire ap_clk;
  wire ar_hs__0;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg;
  wire [6:0]int_input_r_address1;
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
  wire [6:0]mem_reg_4;
  wire [31:24]p_1_in;
  wire p_35_in;
  wire \rdata_reg[0] ;
  wire \rdata_reg[0]_0 ;
  wire \rdata_reg[0]_1 ;
  wire \rdata_reg[0]_2 ;
  wire [7:0]\rdata_reg[15] ;
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
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,int_input_r_address1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
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
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
    mem_reg_i_16__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_3),
        .I3(s_axi_control_WDATA[31]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_17__1
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_3),
        .I3(s_axi_control_WDATA[30]),
        .O(p_1_in[30]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_18__1
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_3),
        .I3(s_axi_control_WDATA[29]),
        .O(p_1_in[29]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_19__1
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_3),
        .I3(s_axi_control_WDATA[28]),
        .O(p_1_in[28]));
  LUT5 #(
    .INIT(32'h888888F8)) 
    mem_reg_i_1__1
       (.I0(mem_reg_3),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(rstate[0]),
        .I4(rstate[1]),
        .O(int_input_r_ce1));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_20__1
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_3),
        .I3(s_axi_control_WDATA[27]),
        .O(p_1_in[27]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_21__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_3),
        .I3(s_axi_control_WDATA[26]),
        .O(p_1_in[26]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_22__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_3),
        .I3(s_axi_control_WDATA[25]),
        .O(p_1_in[25]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_23__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_3),
        .I3(s_axi_control_WDATA[24]),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    mem_reg_i_24__0
       (.I0(mem_reg_3),
        .I1(s_axi_control_WVALID),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .I4(ar_hs__0),
        .I5(s_axi_control_WSTRB[3]),
        .O(int_input_r_be1[3]));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    mem_reg_i_25
       (.I0(mem_reg_3),
        .I1(s_axi_control_WVALID),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .I4(ar_hs__0),
        .I5(s_axi_control_WSTRB[2]),
        .O(int_input_r_be1[2]));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    mem_reg_i_26
       (.I0(mem_reg_3),
        .I1(s_axi_control_WVALID),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .I4(ar_hs__0),
        .I5(s_axi_control_WSTRB[1]),
        .O(int_input_r_be1[1]));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    mem_reg_i_27
       (.I0(mem_reg_3),
        .I1(s_axi_control_WVALID),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .I4(ar_hs__0),
        .I5(s_axi_control_WSTRB[0]),
        .O(int_input_r_be1[0]));
  LUT6 #(
    .INIT(64'h0808080808080008)) 
    mem_reg_i_28
       (.I0(s_axi_control_WVALID),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[0]),
        .I5(rstate[1]),
        .O(p_35_in));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_2__0
       (.I0(s_axi_control_ARADDR[6]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_4[6]),
        .O(int_input_r_address1[6]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_3__0
       (.I0(s_axi_control_ARADDR[5]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_4[5]),
        .O(int_input_r_address1[5]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_4__0
       (.I0(s_axi_control_ARADDR[4]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_4[4]),
        .O(int_input_r_address1[4]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_5__0
       (.I0(s_axi_control_ARADDR[3]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_4[3]),
        .O(int_input_r_address1[3]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_6__0
       (.I0(s_axi_control_ARADDR[2]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_4[2]),
        .O(int_input_r_address1[2]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_7__0
       (.I0(s_axi_control_ARADDR[1]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_4[1]),
        .O(int_input_r_address1[1]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_8__0
       (.I0(s_axi_control_ARADDR[0]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_4[0]),
        .O(int_input_r_address1[0]));
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
        .I4(Q[2]),
        .I5(\rdata_reg[8]_0 ),
        .O(\int_numOfInNeurons_reg[10] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[11]_i_3 
       (.I0(\rdata_reg[8] ),
        .I1(\rdata_reg[15] [3]),
        .I2(\rdata_reg[0]_0 ),
        .I3(int_input_r_q1[11]),
        .I4(Q[3]),
        .I5(\rdata_reg[8]_0 ),
        .O(\int_numOfInNeurons_reg[11] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[12]_i_3 
       (.I0(\rdata_reg[8] ),
        .I1(\rdata_reg[15] [4]),
        .I2(\rdata_reg[0]_0 ),
        .I3(int_input_r_q1[12]),
        .I4(Q[4]),
        .I5(\rdata_reg[8]_0 ),
        .O(\int_numOfInNeurons_reg[12] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[13]_i_3 
       (.I0(\rdata_reg[8] ),
        .I1(\rdata_reg[15] [5]),
        .I2(\rdata_reg[0]_0 ),
        .I3(int_input_r_q1[13]),
        .I4(Q[5]),
        .I5(\rdata_reg[8]_0 ),
        .O(\int_numOfInNeurons_reg[13] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[14]_i_3 
       (.I0(\rdata_reg[8] ),
        .I1(\rdata_reg[15] [6]),
        .I2(\rdata_reg[0]_0 ),
        .I3(int_input_r_q1[14]),
        .I4(Q[6]),
        .I5(\rdata_reg[8]_0 ),
        .O(\int_numOfInNeurons_reg[14] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[15]_i_4 
       (.I0(\rdata_reg[8] ),
        .I1(\rdata_reg[15] [7]),
        .I2(\rdata_reg[0]_0 ),
        .I3(int_input_r_q1[15]),
        .I4(Q[7]),
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
        .I4(Q[0]),
        .I5(\rdata_reg[8]_0 ),
        .O(\int_numOfInNeurons_reg[8] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[9]_i_3 
       (.I0(\rdata_reg[8] ),
        .I1(\rdata_reg[15] [1]),
        .I2(\rdata_reg[0]_0 ),
        .I3(int_input_r_q1[9]),
        .I4(Q[1]),
        .I5(\rdata_reg[8]_0 ),
        .O(\int_numOfInNeurons_reg[9] ));
endmodule

(* ORIG_REF_NAME = "nnlayer_control_s_axi_ram" *) 
module design_1_nnlayer_0_3_nnlayer_control_s_axi_ram__parameterized0
   (mem_reg_0,
    DOBDO,
    ap_clk,
    output_r_ce0,
    ADDRARDADDR,
    mem_reg_1,
    s_axi_control_WDATA,
    DIBDI,
    int_output_r_be0,
    mem_reg_2,
    s_axi_control_WVALID,
    s_axi_control_ARVALID,
    rstate,
    wstate,
    ar_hs__0,
    s_axi_control_WSTRB,
    p_35_in);
  output [31:0]mem_reg_0;
  output [31:0]DOBDO;
  input ap_clk;
  input output_r_ce0;
  input [6:0]ADDRARDADDR;
  input [6:0]mem_reg_1;
  input [31:0]s_axi_control_WDATA;
  input [23:0]DIBDI;
  input [1:0]int_output_r_be0;
  input mem_reg_2;
  input s_axi_control_WVALID;
  input s_axi_control_ARVALID;
  input [1:0]rstate;
  input [1:0]wstate;
  input ar_hs__0;
  input [3:0]s_axi_control_WSTRB;
  input p_35_in;

  wire [6:0]ADDRARDADDR;
  wire [23:0]DIBDI;
  wire [31:0]DOBDO;
  wire ap_clk;
  wire ar_hs__0;
  wire [1:0]int_output_r_be0;
  wire [3:0]int_output_r_be1;
  wire int_output_r_ce1;
  wire [31:0]mem_reg_0;
  wire [6:0]mem_reg_1;
  wire mem_reg_2;
  wire output_r_ce0;
  wire [31:24]p_2_in;
  wire p_35_in;
  wire [1:0]rstate;
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
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,mem_reg_1,1'b1,1'b1,1'b1,1'b1,1'b1}),
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
        .DOBDO(DOBDO),
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
        .WEBWE({1'b0,1'b0,1'b0,1'b0,int_output_r_be0[1],int_output_r_be0,int_output_r_be0[0]}));
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
    mem_reg_i_21
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_2),
        .I3(s_axi_control_WDATA[27]),
        .O(p_2_in[27]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_22
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_2),
        .I3(s_axi_control_WDATA[26]),
        .O(p_2_in[26]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_23
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_2),
        .I3(s_axi_control_WDATA[25]),
        .O(p_2_in[25]));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_24
       (.I0(s_axi_control_WSTRB[3]),
        .I1(p_35_in),
        .I2(mem_reg_2),
        .I3(s_axi_control_WDATA[24]),
        .O(p_2_in[24]));
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
endmodule

(* ORIG_REF_NAME = "nnlayer_control_s_axi_ram" *) 
module design_1_nnlayer_0_3_nnlayer_control_s_axi_ram__parameterized1
   (ar_hs__0,
    ADDRARDADDR,
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
    grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg,
    grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0);
  output ar_hs__0;
  output [6:0]ADDRARDADDR;
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
  input grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg;
  input [14:0]grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0;

  wire [6:0]ADDRARDADDR;
  wire [14:0]Q;
  wire ap_clk;
  wire ar_hs__0;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg;
  wire [14:0]grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0;
  wire [3:3]int_weights_be1;
  wire mem_reg_0_0_0_i_10_n_0;
  wire mem_reg_0_0_0_i_11_n_0;
  wire mem_reg_0_0_0_i_12_n_0;
  wire mem_reg_0_0_0_i_13_n_0;
  wire mem_reg_0_0_0_i_14_n_0;
  wire mem_reg_0_0_0_i_15_n_0;
  wire mem_reg_0_0_0_i_16_n_0;
  wire mem_reg_0_0_0_i_17_n_0;
  wire mem_reg_0_0_0_i_1_n_0;
  wire mem_reg_0_0_0_i_2_n_0;
  wire mem_reg_0_0_0_i_3_n_0;
  wire mem_reg_0_0_0_i_4_n_0;
  wire mem_reg_0_0_0_i_5_n_0;
  wire mem_reg_0_0_0_i_6_n_0;
  wire mem_reg_0_0_0_i_7_n_0;
  wire mem_reg_0_0_0_i_8_n_0;
  wire mem_reg_0_0_0_i_9_n_0;
  wire mem_reg_0_0_2_i_1_n_0;
  wire mem_reg_0_0_5_i_1_n_0;
  wire mem_reg_0_0_7_i_1_n_0;
  wire mem_reg_1_0_0_i_1_n_0;
  wire mem_reg_1_0_2_i_10_n_0;
  wire mem_reg_1_0_2_i_1_n_0;
  wire mem_reg_1_0_2_i_2_n_0;
  wire mem_reg_1_0_2_i_3_n_0;
  wire mem_reg_1_0_2_i_4_n_0;
  wire mem_reg_1_0_2_i_5_n_0;
  wire mem_reg_1_0_2_i_6_n_0;
  wire mem_reg_1_0_2_i_7_n_0;
  wire mem_reg_1_0_2_i_8_n_0;
  wire mem_reg_1_0_2_i_9_n_0;
  wire mem_reg_1_0_5_i_1_n_0;
  wire mem_reg_1_0_7_i_1_n_0;
  wire mem_reg_2_0_0_i_1_n_0;
  wire mem_reg_2_0_2_i_1_n_0;
  wire mem_reg_2_0_4_i_1_n_0;
  wire mem_reg_2_0_4_i_2_n_0;
  wire mem_reg_2_0_4_i_3_n_0;
  wire mem_reg_2_0_4_i_4_n_0;
  wire mem_reg_2_0_4_i_5_n_0;
  wire mem_reg_2_0_4_i_6_n_0;
  wire mem_reg_2_0_4_i_7_n_0;
  wire mem_reg_2_0_4_i_8_n_0;
  wire mem_reg_2_0_4_i_9_n_0;
  wire mem_reg_2_0_5_i_1_n_0;
  wire mem_reg_2_0_7_i_1_n_0;
  wire mem_reg_3_0_0_i_2_n_0;
  wire mem_reg_3_0_2_0;
  wire mem_reg_3_0_2_i_2_n_0;
  wire mem_reg_3_0_5_i_2_n_0;
  wire mem_reg_3_0_6_i_1_n_0;
  wire mem_reg_3_0_6_i_2_n_0;
  wire mem_reg_3_0_6_i_3_n_0;
  wire mem_reg_3_0_6_i_4_n_0;
  wire mem_reg_3_0_6_i_5_n_0;
  wire mem_reg_3_0_6_i_6_n_0;
  wire mem_reg_3_0_6_i_7_n_0;
  wire mem_reg_3_0_6_i_8_n_0;
  wire mem_reg_3_0_6_i_9_n_0;
  wire mem_reg_3_0_7_i_2_n_0;
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
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_2_n_0,mem_reg_0_0_0_i_3_n_0,mem_reg_0_0_0_i_4_n_0,mem_reg_0_0_0_i_5_n_0,mem_reg_0_0_0_i_6_n_0,mem_reg_0_0_0_i_7_n_0,mem_reg_0_0_0_i_8_n_0,mem_reg_0_0_0_i_9_n_0,mem_reg_0_0_0_i_10_n_0,mem_reg_0_0_0_i_11_n_0,mem_reg_0_0_0_i_12_n_0,mem_reg_0_0_0_i_13_n_0,mem_reg_0_0_0_i_14_n_0,mem_reg_0_0_0_i_15_n_0,mem_reg_0_0_0_i_16_n_0}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_0_0_0_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_0_0_0_i_17_n_0,mem_reg_0_0_0_i_17_n_0,mem_reg_0_0_0_i_17_n_0,mem_reg_0_0_0_i_17_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h888888F8)) 
    mem_reg_0_0_0_i_1
       (.I0(s_axi_control_WVALID),
        .I1(mem_reg_3_0_2_0),
        .I2(s_axi_control_ARVALID),
        .I3(rstate[0]),
        .I4(rstate[1]),
        .O(mem_reg_0_0_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_10
       (.I0(s_axi_control_ARADDR[6]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[6]),
        .O(mem_reg_0_0_0_i_10_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_11
       (.I0(s_axi_control_ARADDR[5]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[5]),
        .O(mem_reg_0_0_0_i_11_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_12
       (.I0(s_axi_control_ARADDR[4]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[4]),
        .O(mem_reg_0_0_0_i_12_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_13
       (.I0(s_axi_control_ARADDR[3]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[3]),
        .O(mem_reg_0_0_0_i_13_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_14
       (.I0(s_axi_control_ARADDR[2]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[2]),
        .O(mem_reg_0_0_0_i_14_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_15
       (.I0(s_axi_control_ARADDR[1]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[1]),
        .O(mem_reg_0_0_0_i_15_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_16
       (.I0(s_axi_control_ARADDR[0]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[0]),
        .O(mem_reg_0_0_0_i_16_n_0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    mem_reg_0_0_0_i_17
       (.I0(s_axi_control_WVALID),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(ar_hs__0),
        .I4(mem_reg_3_0_2_0),
        .I5(s_axi_control_WSTRB[0]),
        .O(mem_reg_0_0_0_i_17_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_2
       (.I0(s_axi_control_ARADDR[14]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[14]),
        .O(mem_reg_0_0_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_3
       (.I0(s_axi_control_ARADDR[13]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[13]),
        .O(mem_reg_0_0_0_i_3_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_4
       (.I0(s_axi_control_ARADDR[12]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[12]),
        .O(mem_reg_0_0_0_i_4_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_5
       (.I0(s_axi_control_ARADDR[11]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[11]),
        .O(mem_reg_0_0_0_i_5_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_6
       (.I0(s_axi_control_ARADDR[10]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[10]),
        .O(mem_reg_0_0_0_i_6_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_7
       (.I0(s_axi_control_ARADDR[9]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[9]),
        .O(mem_reg_0_0_0_i_7_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_8
       (.I0(s_axi_control_ARADDR[8]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[8]),
        .O(mem_reg_0_0_0_i_8_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_0_0_0_i_9
       (.I0(s_axi_control_ARADDR[7]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[7]),
        .O(mem_reg_0_0_0_i_9_n_0));
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
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_2_n_0,mem_reg_0_0_0_i_3_n_0,mem_reg_0_0_0_i_4_n_0,mem_reg_0_0_0_i_5_n_0,mem_reg_0_0_0_i_6_n_0,mem_reg_0_0_0_i_7_n_0,mem_reg_0_0_0_i_8_n_0,mem_reg_0_0_0_i_9_n_0,mem_reg_0_0_0_i_10_n_0,mem_reg_0_0_0_i_11_n_0,mem_reg_0_0_0_i_12_n_0,mem_reg_0_0_0_i_13_n_0,mem_reg_0_0_0_i_14_n_0,mem_reg_0_0_0_i_15_n_0,mem_reg_0_0_0_i_16_n_0}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_0_0_0_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_0_0_0_i_17_n_0,mem_reg_0_0_0_i_17_n_0,mem_reg_0_0_0_i_17_n_0,mem_reg_0_0_0_i_17_n_0}),
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
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_2_n_0,mem_reg_0_0_0_i_3_n_0,mem_reg_0_0_0_i_4_n_0,mem_reg_0_0_0_i_5_n_0,mem_reg_0_0_0_i_6_n_0,mem_reg_0_0_0_i_7_n_0,mem_reg_0_0_0_i_8_n_0,mem_reg_0_0_0_i_9_n_0,mem_reg_0_0_0_i_10_n_0,mem_reg_0_0_0_i_11_n_0,mem_reg_0_0_0_i_12_n_0,mem_reg_0_0_0_i_13_n_0,mem_reg_0_0_0_i_14_n_0,mem_reg_0_0_0_i_15_n_0,mem_reg_0_0_0_i_16_n_0}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_0_0_0_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_0_0_2_i_1_n_0,mem_reg_0_0_2_i_1_n_0,mem_reg_0_0_0_i_17_n_0,mem_reg_0_0_0_i_17_n_0}),
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
        .O(mem_reg_0_0_2_i_1_n_0));
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
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_2_n_0,mem_reg_0_0_0_i_3_n_0,mem_reg_0_0_0_i_4_n_0,mem_reg_0_0_0_i_5_n_0,mem_reg_0_0_0_i_6_n_0,mem_reg_0_0_0_i_7_n_0,mem_reg_0_0_0_i_8_n_0,mem_reg_0_0_0_i_9_n_0,mem_reg_0_0_0_i_10_n_0,mem_reg_0_0_0_i_11_n_0,mem_reg_0_0_0_i_12_n_0,mem_reg_0_0_0_i_13_n_0,mem_reg_0_0_0_i_14_n_0,mem_reg_0_0_0_i_15_n_0,mem_reg_0_0_0_i_16_n_0}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_0_0_0_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_0_0_2_i_1_n_0,mem_reg_0_0_2_i_1_n_0,mem_reg_0_0_2_i_1_n_0,mem_reg_0_0_2_i_1_n_0}),
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
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_2_n_0,mem_reg_0_0_0_i_3_n_0,mem_reg_0_0_0_i_4_n_0,mem_reg_0_0_0_i_5_n_0,mem_reg_0_0_0_i_6_n_0,mem_reg_0_0_0_i_7_n_0,mem_reg_0_0_0_i_8_n_0,mem_reg_0_0_0_i_9_n_0,mem_reg_0_0_0_i_10_n_0,mem_reg_0_0_0_i_11_n_0,mem_reg_0_0_0_i_12_n_0,mem_reg_0_0_0_i_13_n_0,mem_reg_0_0_0_i_14_n_0,mem_reg_0_0_0_i_15_n_0,mem_reg_0_0_0_i_16_n_0}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_0_0_0_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_0_0_2_i_1_n_0,mem_reg_0_0_2_i_1_n_0,mem_reg_0_0_2_i_1_n_0,mem_reg_0_0_2_i_1_n_0}),
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
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_2_n_0,mem_reg_0_0_0_i_3_n_0,mem_reg_0_0_0_i_4_n_0,mem_reg_0_0_0_i_5_n_0,mem_reg_0_0_0_i_6_n_0,mem_reg_0_0_0_i_7_n_0,mem_reg_0_0_0_i_8_n_0,mem_reg_0_0_0_i_9_n_0,mem_reg_0_0_0_i_10_n_0,mem_reg_0_0_0_i_11_n_0,mem_reg_0_0_0_i_12_n_0,mem_reg_0_0_0_i_13_n_0,mem_reg_0_0_0_i_14_n_0,mem_reg_0_0_0_i_15_n_0,mem_reg_0_0_0_i_16_n_0}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_0_0_0_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_0_0_5_i_1_n_0,mem_reg_0_0_5_i_1_n_0,mem_reg_0_0_5_i_1_n_0,mem_reg_0_0_5_i_1_n_0}),
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
        .O(mem_reg_0_0_5_i_1_n_0));
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
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_2_n_0,mem_reg_0_0_0_i_3_n_0,mem_reg_0_0_0_i_4_n_0,mem_reg_0_0_0_i_5_n_0,mem_reg_0_0_0_i_6_n_0,mem_reg_0_0_0_i_7_n_0,mem_reg_0_0_0_i_8_n_0,mem_reg_0_0_0_i_9_n_0,mem_reg_0_0_0_i_10_n_0,mem_reg_0_0_0_i_11_n_0,mem_reg_0_0_0_i_12_n_0,mem_reg_0_0_0_i_13_n_0,mem_reg_0_0_0_i_14_n_0,mem_reg_0_0_0_i_15_n_0,mem_reg_0_0_0_i_16_n_0}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_0_0_0_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_0_0_5_i_1_n_0,mem_reg_0_0_5_i_1_n_0,mem_reg_0_0_5_i_1_n_0,mem_reg_0_0_5_i_1_n_0}),
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
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_2_n_0,mem_reg_0_0_0_i_3_n_0,mem_reg_0_0_0_i_4_n_0,mem_reg_0_0_0_i_5_n_0,mem_reg_0_0_0_i_6_n_0,mem_reg_0_0_0_i_7_n_0,mem_reg_0_0_0_i_8_n_0,mem_reg_0_0_0_i_9_n_0,mem_reg_0_0_0_i_10_n_0,mem_reg_0_0_0_i_11_n_0,mem_reg_0_0_0_i_12_n_0,mem_reg_0_0_0_i_13_n_0,mem_reg_0_0_0_i_14_n_0,mem_reg_0_0_0_i_15_n_0,mem_reg_0_0_0_i_16_n_0}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_0_0_0_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_0_0_7_i_1_n_0,mem_reg_0_0_7_i_1_n_0,mem_reg_0_0_5_i_1_n_0,mem_reg_0_0_5_i_1_n_0}),
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
        .O(mem_reg_0_0_7_i_1_n_0));
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
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_2_n_0,mem_reg_0_0_0_i_3_n_0,mem_reg_0_0_0_i_4_n_0,mem_reg_0_0_0_i_5_n_0,mem_reg_0_0_0_i_6_n_0,mem_reg_0_0_0_i_7_n_0,mem_reg_0_0_0_i_8_n_0,mem_reg_0_0_0_i_9_n_0,mem_reg_0_0_0_i_10_n_0,mem_reg_0_0_0_i_11_n_0,mem_reg_0_0_0_i_12_n_0,mem_reg_0_0_0_i_13_n_0,mem_reg_0_0_0_i_14_n_0,mem_reg_0_0_0_i_15_n_0,mem_reg_0_0_0_i_16_n_0}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_0_0_0_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_1_0_0_i_1_n_0,mem_reg_1_0_0_i_1_n_0,mem_reg_1_0_0_i_1_n_0,mem_reg_1_0_0_i_1_n_0}),
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
        .O(mem_reg_1_0_0_i_1_n_0));
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
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_2_n_0,mem_reg_0_0_0_i_3_n_0,mem_reg_0_0_0_i_4_n_0,mem_reg_0_0_0_i_5_n_0,mem_reg_0_0_0_i_6_n_0,mem_reg_0_0_0_i_7_n_0,mem_reg_0_0_0_i_8_n_0,mem_reg_0_0_0_i_9_n_0,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_0_0_0_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_1_0_0_i_1_n_0,mem_reg_1_0_0_i_1_n_0,mem_reg_1_0_0_i_1_n_0,mem_reg_1_0_0_i_1_n_0}),
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
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_2_n_0,mem_reg_1_0_2_i_3_n_0,mem_reg_1_0_2_i_4_n_0,mem_reg_1_0_2_i_5_n_0,mem_reg_1_0_2_i_6_n_0,mem_reg_1_0_2_i_7_n_0,mem_reg_1_0_2_i_8_n_0,mem_reg_1_0_2_i_9_n_0,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_1_0_2_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_1_0_2_i_10_n_0,mem_reg_1_0_2_i_10_n_0,mem_reg_1_0_0_i_1_n_0,mem_reg_1_0_0_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h888888F8)) 
    mem_reg_1_0_2_i_1
       (.I0(s_axi_control_WVALID),
        .I1(mem_reg_3_0_2_0),
        .I2(s_axi_control_ARVALID),
        .I3(rstate[0]),
        .I4(rstate[1]),
        .O(mem_reg_1_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    mem_reg_1_0_2_i_10
       (.I0(s_axi_control_WVALID),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(ar_hs__0),
        .I4(mem_reg_3_0_2_0),
        .I5(s_axi_control_WSTRB[1]),
        .O(mem_reg_1_0_2_i_10_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_1_0_2_i_2
       (.I0(s_axi_control_ARADDR[14]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[14]),
        .O(mem_reg_1_0_2_i_2_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_1_0_2_i_3
       (.I0(s_axi_control_ARADDR[13]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[13]),
        .O(mem_reg_1_0_2_i_3_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_1_0_2_i_4
       (.I0(s_axi_control_ARADDR[12]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[12]),
        .O(mem_reg_1_0_2_i_4_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_1_0_2_i_5
       (.I0(s_axi_control_ARADDR[11]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[11]),
        .O(mem_reg_1_0_2_i_5_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_1_0_2_i_6
       (.I0(s_axi_control_ARADDR[10]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[10]),
        .O(mem_reg_1_0_2_i_6_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_1_0_2_i_7
       (.I0(s_axi_control_ARADDR[9]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[9]),
        .O(mem_reg_1_0_2_i_7_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_1_0_2_i_8
       (.I0(s_axi_control_ARADDR[8]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[8]),
        .O(mem_reg_1_0_2_i_8_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_1_0_2_i_9
       (.I0(s_axi_control_ARADDR[7]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[7]),
        .O(mem_reg_1_0_2_i_9_n_0));
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
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_2_n_0,mem_reg_1_0_2_i_3_n_0,mem_reg_1_0_2_i_4_n_0,mem_reg_1_0_2_i_5_n_0,mem_reg_1_0_2_i_6_n_0,mem_reg_1_0_2_i_7_n_0,mem_reg_1_0_2_i_8_n_0,mem_reg_1_0_2_i_9_n_0,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_1_0_2_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_1_0_2_i_10_n_0,mem_reg_1_0_2_i_10_n_0,mem_reg_1_0_2_i_10_n_0,mem_reg_1_0_2_i_10_n_0}),
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
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_2_n_0,mem_reg_1_0_2_i_3_n_0,mem_reg_1_0_2_i_4_n_0,mem_reg_1_0_2_i_5_n_0,mem_reg_1_0_2_i_6_n_0,mem_reg_1_0_2_i_7_n_0,mem_reg_1_0_2_i_8_n_0,mem_reg_1_0_2_i_9_n_0,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_1_0_2_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_1_0_2_i_10_n_0,mem_reg_1_0_2_i_10_n_0,mem_reg_1_0_2_i_10_n_0,mem_reg_1_0_2_i_10_n_0}),
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
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_2_n_0,mem_reg_1_0_2_i_3_n_0,mem_reg_1_0_2_i_4_n_0,mem_reg_1_0_2_i_5_n_0,mem_reg_1_0_2_i_6_n_0,mem_reg_1_0_2_i_7_n_0,mem_reg_1_0_2_i_8_n_0,mem_reg_1_0_2_i_9_n_0,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_1_0_2_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_1_0_5_i_1_n_0,mem_reg_1_0_5_i_1_n_0,mem_reg_1_0_5_i_1_n_0,mem_reg_1_0_5_i_1_n_0}),
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
        .O(mem_reg_1_0_5_i_1_n_0));
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
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_2_n_0,mem_reg_1_0_2_i_3_n_0,mem_reg_1_0_2_i_4_n_0,mem_reg_1_0_2_i_5_n_0,mem_reg_1_0_2_i_6_n_0,mem_reg_1_0_2_i_7_n_0,mem_reg_1_0_2_i_8_n_0,mem_reg_1_0_2_i_9_n_0,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_1_0_2_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_1_0_5_i_1_n_0,mem_reg_1_0_5_i_1_n_0,mem_reg_1_0_5_i_1_n_0,mem_reg_1_0_5_i_1_n_0}),
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
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_2_n_0,mem_reg_1_0_2_i_3_n_0,mem_reg_1_0_2_i_4_n_0,mem_reg_1_0_2_i_5_n_0,mem_reg_1_0_2_i_6_n_0,mem_reg_1_0_2_i_7_n_0,mem_reg_1_0_2_i_8_n_0,mem_reg_1_0_2_i_9_n_0,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_1_0_2_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_1_0_7_i_1_n_0,mem_reg_1_0_7_i_1_n_0,mem_reg_1_0_5_i_1_n_0,mem_reg_1_0_5_i_1_n_0}),
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
        .O(mem_reg_1_0_7_i_1_n_0));
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
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_2_n_0,mem_reg_1_0_2_i_3_n_0,mem_reg_1_0_2_i_4_n_0,mem_reg_1_0_2_i_5_n_0,mem_reg_1_0_2_i_6_n_0,mem_reg_1_0_2_i_7_n_0,mem_reg_1_0_2_i_8_n_0,mem_reg_1_0_2_i_9_n_0,mem_reg_0_0_0_i_10_n_0,mem_reg_0_0_0_i_11_n_0,mem_reg_0_0_0_i_12_n_0,mem_reg_0_0_0_i_13_n_0,mem_reg_0_0_0_i_14_n_0,mem_reg_0_0_0_i_15_n_0,mem_reg_0_0_0_i_16_n_0}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_1_0_2_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_2_0_0_i_1_n_0,mem_reg_2_0_0_i_1_n_0,mem_reg_2_0_0_i_1_n_0,mem_reg_2_0_0_i_1_n_0}),
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
        .O(mem_reg_2_0_0_i_1_n_0));
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
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_2_n_0,mem_reg_1_0_2_i_3_n_0,mem_reg_1_0_2_i_4_n_0,mem_reg_1_0_2_i_5_n_0,mem_reg_1_0_2_i_6_n_0,mem_reg_1_0_2_i_7_n_0,mem_reg_1_0_2_i_8_n_0,mem_reg_1_0_2_i_9_n_0,mem_reg_0_0_0_i_10_n_0,mem_reg_0_0_0_i_11_n_0,mem_reg_0_0_0_i_12_n_0,mem_reg_0_0_0_i_13_n_0,mem_reg_0_0_0_i_14_n_0,mem_reg_0_0_0_i_15_n_0,mem_reg_0_0_0_i_16_n_0}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_1_0_2_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_2_0_0_i_1_n_0,mem_reg_2_0_0_i_1_n_0,mem_reg_2_0_0_i_1_n_0,mem_reg_2_0_0_i_1_n_0}),
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
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_2_n_0,mem_reg_1_0_2_i_3_n_0,mem_reg_1_0_2_i_4_n_0,mem_reg_1_0_2_i_5_n_0,mem_reg_1_0_2_i_6_n_0,mem_reg_1_0_2_i_7_n_0,mem_reg_1_0_2_i_8_n_0,mem_reg_1_0_2_i_9_n_0,mem_reg_0_0_0_i_10_n_0,mem_reg_0_0_0_i_11_n_0,mem_reg_0_0_0_i_12_n_0,mem_reg_0_0_0_i_13_n_0,mem_reg_0_0_0_i_14_n_0,mem_reg_0_0_0_i_15_n_0,mem_reg_0_0_0_i_16_n_0}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_1_0_2_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_2_0_2_i_1_n_0,mem_reg_2_0_2_i_1_n_0,mem_reg_2_0_0_i_1_n_0,mem_reg_2_0_0_i_1_n_0}),
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
        .O(mem_reg_2_0_2_i_1_n_0));
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
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_2_n_0,mem_reg_1_0_2_i_3_n_0,mem_reg_1_0_2_i_4_n_0,mem_reg_1_0_2_i_5_n_0,mem_reg_1_0_2_i_6_n_0,mem_reg_1_0_2_i_7_n_0,mem_reg_1_0_2_i_8_n_0,mem_reg_1_0_2_i_9_n_0,mem_reg_0_0_0_i_10_n_0,mem_reg_0_0_0_i_11_n_0,mem_reg_0_0_0_i_12_n_0,mem_reg_0_0_0_i_13_n_0,mem_reg_0_0_0_i_14_n_0,mem_reg_0_0_0_i_15_n_0,mem_reg_0_0_0_i_16_n_0}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_1_0_2_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_2_0_2_i_1_n_0,mem_reg_2_0_2_i_1_n_0,mem_reg_2_0_2_i_1_n_0,mem_reg_2_0_2_i_1_n_0}),
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
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_2_n_0,mem_reg_2_0_4_i_3_n_0,mem_reg_2_0_4_i_4_n_0,mem_reg_2_0_4_i_5_n_0,mem_reg_2_0_4_i_6_n_0,mem_reg_2_0_4_i_7_n_0,mem_reg_2_0_4_i_8_n_0,mem_reg_2_0_4_i_9_n_0,mem_reg_0_0_0_i_10_n_0,mem_reg_0_0_0_i_11_n_0,mem_reg_0_0_0_i_12_n_0,mem_reg_0_0_0_i_13_n_0,mem_reg_0_0_0_i_14_n_0,mem_reg_0_0_0_i_15_n_0,mem_reg_0_0_0_i_16_n_0}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_2_0_4_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_2_0_2_i_1_n_0,mem_reg_2_0_2_i_1_n_0,mem_reg_2_0_2_i_1_n_0,mem_reg_2_0_2_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h888888F8)) 
    mem_reg_2_0_4_i_1
       (.I0(s_axi_control_WVALID),
        .I1(mem_reg_3_0_2_0),
        .I2(s_axi_control_ARVALID),
        .I3(rstate[0]),
        .I4(rstate[1]),
        .O(mem_reg_2_0_4_i_1_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_2_0_4_i_2
       (.I0(s_axi_control_ARADDR[14]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[14]),
        .O(mem_reg_2_0_4_i_2_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_2_0_4_i_3
       (.I0(s_axi_control_ARADDR[13]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[13]),
        .O(mem_reg_2_0_4_i_3_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_2_0_4_i_4
       (.I0(s_axi_control_ARADDR[12]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[12]),
        .O(mem_reg_2_0_4_i_4_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_2_0_4_i_5
       (.I0(s_axi_control_ARADDR[11]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[11]),
        .O(mem_reg_2_0_4_i_5_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_2_0_4_i_6
       (.I0(s_axi_control_ARADDR[10]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[10]),
        .O(mem_reg_2_0_4_i_6_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_2_0_4_i_7
       (.I0(s_axi_control_ARADDR[9]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[9]),
        .O(mem_reg_2_0_4_i_7_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_2_0_4_i_8
       (.I0(s_axi_control_ARADDR[8]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[8]),
        .O(mem_reg_2_0_4_i_8_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_2_0_4_i_9
       (.I0(s_axi_control_ARADDR[7]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[7]),
        .O(mem_reg_2_0_4_i_9_n_0));
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
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_2_n_0,mem_reg_2_0_4_i_3_n_0,mem_reg_2_0_4_i_4_n_0,mem_reg_2_0_4_i_5_n_0,mem_reg_2_0_4_i_6_n_0,mem_reg_2_0_4_i_7_n_0,mem_reg_2_0_4_i_8_n_0,mem_reg_2_0_4_i_9_n_0,mem_reg_0_0_0_i_10_n_0,mem_reg_0_0_0_i_11_n_0,mem_reg_0_0_0_i_12_n_0,mem_reg_0_0_0_i_13_n_0,mem_reg_0_0_0_i_14_n_0,mem_reg_0_0_0_i_15_n_0,mem_reg_0_0_0_i_16_n_0}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_2_0_4_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_2_0_5_i_1_n_0,mem_reg_2_0_5_i_1_n_0,mem_reg_2_0_5_i_1_n_0,mem_reg_2_0_5_i_1_n_0}),
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
        .O(mem_reg_2_0_5_i_1_n_0));
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
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_2_n_0,mem_reg_2_0_4_i_3_n_0,mem_reg_2_0_4_i_4_n_0,mem_reg_2_0_4_i_5_n_0,mem_reg_2_0_4_i_6_n_0,mem_reg_2_0_4_i_7_n_0,mem_reg_2_0_4_i_8_n_0,mem_reg_2_0_4_i_9_n_0,mem_reg_0_0_0_i_10_n_0,mem_reg_0_0_0_i_11_n_0,mem_reg_0_0_0_i_12_n_0,mem_reg_0_0_0_i_13_n_0,mem_reg_0_0_0_i_14_n_0,mem_reg_0_0_0_i_15_n_0,mem_reg_0_0_0_i_16_n_0}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_2_0_4_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_2_0_5_i_1_n_0,mem_reg_2_0_5_i_1_n_0,mem_reg_2_0_5_i_1_n_0,mem_reg_2_0_5_i_1_n_0}),
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
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_2_n_0,mem_reg_2_0_4_i_3_n_0,mem_reg_2_0_4_i_4_n_0,mem_reg_2_0_4_i_5_n_0,mem_reg_2_0_4_i_6_n_0,mem_reg_2_0_4_i_7_n_0,mem_reg_2_0_4_i_8_n_0,mem_reg_2_0_4_i_9_n_0,mem_reg_0_0_0_i_10_n_0,mem_reg_0_0_0_i_11_n_0,mem_reg_0_0_0_i_12_n_0,mem_reg_0_0_0_i_13_n_0,mem_reg_0_0_0_i_14_n_0,mem_reg_0_0_0_i_15_n_0,mem_reg_0_0_0_i_16_n_0}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_2_0_4_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_2_0_7_i_1_n_0,mem_reg_2_0_7_i_1_n_0,mem_reg_2_0_5_i_1_n_0,mem_reg_2_0_5_i_1_n_0}),
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
        .O(mem_reg_2_0_7_i_1_n_0));
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
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_2_n_0,mem_reg_2_0_4_i_3_n_0,mem_reg_2_0_4_i_4_n_0,mem_reg_2_0_4_i_5_n_0,mem_reg_2_0_4_i_6_n_0,mem_reg_2_0_4_i_7_n_0,mem_reg_2_0_4_i_8_n_0,mem_reg_2_0_4_i_9_n_0,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_2_0_4_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_3_0_0_i_2_n_0,mem_reg_3_0_0_i_2_n_0,mem_reg_3_0_0_i_2_n_0,mem_reg_3_0_0_i_2_n_0}),
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
        .O(mem_reg_3_0_0_i_2_n_0));
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
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_2_n_0,mem_reg_2_0_4_i_3_n_0,mem_reg_2_0_4_i_4_n_0,mem_reg_2_0_4_i_5_n_0,mem_reg_2_0_4_i_6_n_0,mem_reg_2_0_4_i_7_n_0,mem_reg_2_0_4_i_8_n_0,mem_reg_2_0_4_i_9_n_0,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_2_0_4_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_3_0_0_i_2_n_0,mem_reg_3_0_0_i_2_n_0,mem_reg_3_0_0_i_2_n_0,mem_reg_3_0_0_i_2_n_0}),
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
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_2_n_0,mem_reg_2_0_4_i_3_n_0,mem_reg_2_0_4_i_4_n_0,mem_reg_2_0_4_i_5_n_0,mem_reg_2_0_4_i_6_n_0,mem_reg_2_0_4_i_7_n_0,mem_reg_2_0_4_i_8_n_0,mem_reg_2_0_4_i_9_n_0,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_2_0_4_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_3_0_2_i_2_n_0,mem_reg_3_0_2_i_2_n_0,mem_reg_3_0_0_i_2_n_0,mem_reg_3_0_0_i_2_n_0}),
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
        .O(mem_reg_3_0_2_i_2_n_0));
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
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_2_n_0,mem_reg_2_0_4_i_3_n_0,mem_reg_2_0_4_i_4_n_0,mem_reg_2_0_4_i_5_n_0,mem_reg_2_0_4_i_6_n_0,mem_reg_2_0_4_i_7_n_0,mem_reg_2_0_4_i_8_n_0,mem_reg_2_0_4_i_9_n_0,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_2_0_4_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_3_0_2_i_2_n_0,mem_reg_3_0_2_i_2_n_0,mem_reg_3_0_2_i_2_n_0,mem_reg_3_0_2_i_2_n_0}),
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
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_2_n_0,mem_reg_2_0_4_i_3_n_0,mem_reg_2_0_4_i_4_n_0,mem_reg_2_0_4_i_5_n_0,mem_reg_2_0_4_i_6_n_0,mem_reg_2_0_4_i_7_n_0,mem_reg_2_0_4_i_8_n_0,mem_reg_2_0_4_i_9_n_0,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_2_0_4_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_3_0_2_i_2_n_0,mem_reg_3_0_2_i_2_n_0,mem_reg_3_0_2_i_2_n_0,mem_reg_3_0_2_i_2_n_0}),
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
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_2_n_0,mem_reg_2_0_4_i_3_n_0,mem_reg_2_0_4_i_4_n_0,mem_reg_2_0_4_i_5_n_0,mem_reg_2_0_4_i_6_n_0,mem_reg_2_0_4_i_7_n_0,mem_reg_2_0_4_i_8_n_0,mem_reg_2_0_4_i_9_n_0,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_2_0_4_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_3_0_5_i_2_n_0,mem_reg_3_0_5_i_2_n_0,mem_reg_3_0_5_i_2_n_0,mem_reg_3_0_5_i_2_n_0}),
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
        .O(mem_reg_3_0_5_i_2_n_0));
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
       (.ADDRARDADDR({1'b1,mem_reg_3_0_6_i_2_n_0,mem_reg_3_0_6_i_3_n_0,mem_reg_3_0_6_i_4_n_0,mem_reg_3_0_6_i_5_n_0,mem_reg_3_0_6_i_6_n_0,mem_reg_3_0_6_i_7_n_0,mem_reg_3_0_6_i_8_n_0,mem_reg_3_0_6_i_9_n_0,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_3_0_6_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_3_0_5_i_2_n_0,mem_reg_3_0_5_i_2_n_0,mem_reg_3_0_5_i_2_n_0,mem_reg_3_0_5_i_2_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h888888F8)) 
    mem_reg_3_0_6_i_1
       (.I0(s_axi_control_WVALID),
        .I1(mem_reg_3_0_2_0),
        .I2(s_axi_control_ARVALID),
        .I3(rstate[0]),
        .I4(rstate[1]),
        .O(mem_reg_3_0_6_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_0_6_i_10
       (.I0(int_weights_be1),
        .I1(s_axi_control_WDATA[30]),
        .O(p_1_in[30]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_3_0_6_i_2
       (.I0(s_axi_control_ARADDR[14]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[14]),
        .O(mem_reg_3_0_6_i_2_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_3_0_6_i_3
       (.I0(s_axi_control_ARADDR[13]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[13]),
        .O(mem_reg_3_0_6_i_3_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_3_0_6_i_4
       (.I0(s_axi_control_ARADDR[12]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[12]),
        .O(mem_reg_3_0_6_i_4_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_3_0_6_i_5
       (.I0(s_axi_control_ARADDR[11]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[11]),
        .O(mem_reg_3_0_6_i_5_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_3_0_6_i_6
       (.I0(s_axi_control_ARADDR[10]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[10]),
        .O(mem_reg_3_0_6_i_6_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_3_0_6_i_7
       (.I0(s_axi_control_ARADDR[9]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[9]),
        .O(mem_reg_3_0_6_i_7_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_3_0_6_i_8
       (.I0(s_axi_control_ARADDR[8]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[8]),
        .O(mem_reg_3_0_6_i_8_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_3_0_6_i_9
       (.I0(s_axi_control_ARADDR[7]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[7]),
        .O(mem_reg_3_0_6_i_9_n_0));
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
       (.ADDRARDADDR({1'b1,mem_reg_3_0_6_i_2_n_0,mem_reg_3_0_6_i_3_n_0,mem_reg_3_0_6_i_4_n_0,mem_reg_3_0_6_i_5_n_0,mem_reg_3_0_6_i_6_n_0,mem_reg_3_0_6_i_7_n_0,mem_reg_3_0_6_i_8_n_0,mem_reg_3_0_6_i_9_n_0,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0}),
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
        .ENARDEN(mem_reg_3_0_6_i_1_n_0),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
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
        .WEA({mem_reg_3_0_7_i_2_n_0,mem_reg_3_0_7_i_2_n_0,mem_reg_3_0_5_i_2_n_0,mem_reg_3_0_5_i_2_n_0}),
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
        .O(mem_reg_3_0_7_i_2_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_3__1
       (.I0(s_axi_control_ARADDR[6]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[6]),
        .O(ADDRARDADDR[6]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_4__1
       (.I0(s_axi_control_ARADDR[5]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[5]),
        .O(ADDRARDADDR[5]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_5__1
       (.I0(s_axi_control_ARADDR[4]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[4]),
        .O(ADDRARDADDR[4]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_6__1
       (.I0(s_axi_control_ARADDR[3]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[3]),
        .O(ADDRARDADDR[3]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_7__1
       (.I0(s_axi_control_ARADDR[2]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[2]),
        .O(ADDRARDADDR[2]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_8__1
       (.I0(s_axi_control_ARADDR[1]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[1]),
        .O(ADDRARDADDR[1]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    mem_reg_i_9__1
       (.I0(s_axi_control_ARADDR[0]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(Q[0]),
        .O(ADDRARDADDR[0]));
  LUT3 #(
    .INIT(8'h10)) 
    \rdata[6]_i_5 
       (.I0(rstate[1]),
        .I1(rstate[0]),
        .I2(s_axi_control_ARVALID),
        .O(ar_hs__0));
endmodule

(* ORIG_REF_NAME = "nnlayer_flow_control_loop_pipe_sequential_init" *) 
module design_1_nnlayer_0_3_nnlayer_flow_control_loop_pipe_sequential_init
   (SR,
    E,
    D,
    DI,
    S,
    ADDRBWRADDR,
    \numOfInNeurons_read_reg_212_reg[14] ,
    ap_loop_init_int_reg_0,
    ap_sig_allocacmp_inNeurons_1,
    ap_loop_init_int_reg_1,
    \inNeurons_fu_62_reg[15] ,
    \cmp1141_reg_243_reg[0] ,
    \inNeurons_fu_62_reg[15]_0 ,
    \inNeurons_fu_62_reg[3] ,
    \inNeurons_fu_62_reg[7] ,
    ap_loop_init_int_reg_2,
    ap_loop_init_int_reg_3,
    ap_loop_init_int_reg_4,
    ap_loop_init_int_reg_5,
    \inNeurons_fu_62_reg[0] ,
    ap_rst_n_inv,
    ap_clk,
    CO,
    grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg,
    Q,
    P,
    ap_enable_reg_pp0_iter4,
    \lhs_fu_66_reg[15] ,
    icmp_ln39_fu_142_p2_carry__0,
    mem_reg_0_0_0,
    \ap_CS_fsm_reg[5] ,
    \ap_CS_fsm_reg[5]_0 ,
    \ap_CS_fsm_reg[5]_1 ,
    \ap_CS_fsm_reg[4] ,
    ap_rst_n,
    ap_loop_exit_ready_pp0_iter3_reg,
    mem_reg_0_0_0_0,
    \int_input_r_shift0_reg[0] );
  output [0:0]SR;
  output [0:0]E;
  output [15:0]D;
  output [3:0]DI;
  output [3:0]S;
  output [6:0]ADDRBWRADDR;
  output [3:0]\numOfInNeurons_read_reg_212_reg[14] ;
  output [3:0]ap_loop_init_int_reg_0;
  output [6:0]ap_sig_allocacmp_inNeurons_1;
  output [0:0]ap_loop_init_int_reg_1;
  output [0:0]\inNeurons_fu_62_reg[15] ;
  output [1:0]\cmp1141_reg_243_reg[0] ;
  output [15:0]\inNeurons_fu_62_reg[15]_0 ;
  output [3:0]\inNeurons_fu_62_reg[3] ;
  output [3:0]\inNeurons_fu_62_reg[7] ;
  output [3:0]ap_loop_init_int_reg_2;
  output [3:0]ap_loop_init_int_reg_3;
  output [3:0]ap_loop_init_int_reg_4;
  output [3:0]ap_loop_init_int_reg_5;
  output \inNeurons_fu_62_reg[0] ;
  input ap_rst_n_inv;
  input ap_clk;
  input [0:0]CO;
  input grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg;
  input [15:0]Q;
  input [15:0]P;
  input ap_enable_reg_pp0_iter4;
  input [15:0]\lhs_fu_66_reg[15] ;
  input [15:0]icmp_ln39_fu_142_p2_carry__0;
  input [15:0]mem_reg_0_0_0;
  input [0:0]\ap_CS_fsm_reg[5] ;
  input \ap_CS_fsm_reg[5]_0 ;
  input \ap_CS_fsm_reg[5]_1 ;
  input [2:0]\ap_CS_fsm_reg[4] ;
  input ap_rst_n;
  input ap_loop_exit_ready_pp0_iter3_reg;
  input [15:0]mem_reg_0_0_0_0;
  input \int_input_r_shift0_reg[0] ;

  wire [6:0]ADDRBWRADDR;
  wire [0:0]CO;
  wire [15:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [15:0]P;
  wire [15:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [2:0]\ap_CS_fsm_reg[4] ;
  wire [0:0]\ap_CS_fsm_reg[5] ;
  wire \ap_CS_fsm_reg[5]_0 ;
  wire \ap_CS_fsm_reg[5]_1 ;
  wire ap_NS_fsm15_out;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1__0_n_0;
  wire ap_enable_reg_pp0_iter4;
  wire ap_loop_exit_ready_pp0_iter3_reg;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__0_n_0;
  wire [3:0]ap_loop_init_int_reg_0;
  wire [0:0]ap_loop_init_int_reg_1;
  wire [3:0]ap_loop_init_int_reg_2;
  wire [3:0]ap_loop_init_int_reg_3;
  wire [3:0]ap_loop_init_int_reg_4;
  wire [3:0]ap_loop_init_int_reg_5;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [6:0]ap_sig_allocacmp_inNeurons_1;
  wire [1:0]\cmp1141_reg_243_reg[0] ;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg;
  wire [0:0]grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_input_r_address0;
  wire [15:0]icmp_ln39_fu_142_p2_carry__0;
  wire \inNeurons_fu_62[12]_i_2_n_0 ;
  wire \inNeurons_fu_62[12]_i_3_n_0 ;
  wire \inNeurons_fu_62[12]_i_4_n_0 ;
  wire \inNeurons_fu_62[12]_i_5_n_0 ;
  wire \inNeurons_fu_62[15]_i_4_n_0 ;
  wire \inNeurons_fu_62[15]_i_5_n_0 ;
  wire \inNeurons_fu_62[15]_i_6_n_0 ;
  wire \inNeurons_fu_62[4]_i_3_n_0 ;
  wire \inNeurons_fu_62[4]_i_4_n_0 ;
  wire \inNeurons_fu_62[4]_i_5_n_0 ;
  wire \inNeurons_fu_62[4]_i_6_n_0 ;
  wire \inNeurons_fu_62[8]_i_2_n_0 ;
  wire \inNeurons_fu_62[8]_i_3_n_0 ;
  wire \inNeurons_fu_62[8]_i_4_n_0 ;
  wire \inNeurons_fu_62[8]_i_5_n_0 ;
  wire \inNeurons_fu_62_reg[0] ;
  wire \inNeurons_fu_62_reg[12]_i_1_n_0 ;
  wire \inNeurons_fu_62_reg[12]_i_1_n_1 ;
  wire \inNeurons_fu_62_reg[12]_i_1_n_2 ;
  wire \inNeurons_fu_62_reg[12]_i_1_n_3 ;
  wire [0:0]\inNeurons_fu_62_reg[15] ;
  wire [15:0]\inNeurons_fu_62_reg[15]_0 ;
  wire \inNeurons_fu_62_reg[15]_i_3_n_2 ;
  wire \inNeurons_fu_62_reg[15]_i_3_n_3 ;
  wire [3:0]\inNeurons_fu_62_reg[3] ;
  wire \inNeurons_fu_62_reg[4]_i_1_n_0 ;
  wire \inNeurons_fu_62_reg[4]_i_1_n_1 ;
  wire \inNeurons_fu_62_reg[4]_i_1_n_2 ;
  wire \inNeurons_fu_62_reg[4]_i_1_n_3 ;
  wire [3:0]\inNeurons_fu_62_reg[7] ;
  wire \inNeurons_fu_62_reg[8]_i_1_n_0 ;
  wire \inNeurons_fu_62_reg[8]_i_1_n_1 ;
  wire \inNeurons_fu_62_reg[8]_i_1_n_2 ;
  wire \inNeurons_fu_62_reg[8]_i_1_n_3 ;
  wire \int_input_r_shift0_reg[0] ;
  wire [15:0]\lhs_fu_66_reg[15] ;
  wire [15:0]mem_reg_0_0_0;
  wire [15:0]mem_reg_0_0_0_0;
  wire [3:0]\numOfInNeurons_read_reg_212_reg[14] ;
  wire [3:2]\NLW_inNeurons_fu_62_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_inNeurons_fu_62_reg[15]_i_3_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h2A)) 
    add_ln42_fu_154_p2_carry__0_i_1
       (.I0(mem_reg_0_0_0[7]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\inNeurons_fu_62_reg[7] [3]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln42_fu_154_p2_carry__0_i_2
       (.I0(mem_reg_0_0_0[6]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\inNeurons_fu_62_reg[7] [2]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln42_fu_154_p2_carry__0_i_3
       (.I0(mem_reg_0_0_0[5]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\inNeurons_fu_62_reg[7] [1]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln42_fu_154_p2_carry__0_i_4
       (.I0(mem_reg_0_0_0[4]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\inNeurons_fu_62_reg[7] [0]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln42_fu_154_p2_carry__0_i_5
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(mem_reg_0_0_0[7]),
        .I3(mem_reg_0_0_0_0[7]),
        .O(ap_loop_init_int_reg_4[3]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln42_fu_154_p2_carry__0_i_6
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(mem_reg_0_0_0[6]),
        .I3(mem_reg_0_0_0_0[6]),
        .O(ap_loop_init_int_reg_4[2]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln42_fu_154_p2_carry__0_i_7
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(mem_reg_0_0_0[5]),
        .I3(mem_reg_0_0_0_0[5]),
        .O(ap_loop_init_int_reg_4[1]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln42_fu_154_p2_carry__0_i_8
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(mem_reg_0_0_0[4]),
        .I3(mem_reg_0_0_0_0[4]),
        .O(ap_loop_init_int_reg_4[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln42_fu_154_p2_carry__1_i_1
       (.I0(mem_reg_0_0_0[11]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_inNeurons_1[3]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln42_fu_154_p2_carry__1_i_2
       (.I0(mem_reg_0_0_0[10]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_inNeurons_1[2]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln42_fu_154_p2_carry__1_i_3
       (.I0(mem_reg_0_0_0[9]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_inNeurons_1[1]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln42_fu_154_p2_carry__1_i_4
       (.I0(mem_reg_0_0_0[8]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_inNeurons_1[0]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln42_fu_154_p2_carry__1_i_5
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(mem_reg_0_0_0[11]),
        .I3(mem_reg_0_0_0_0[11]),
        .O(ap_loop_init_int_reg_5[3]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln42_fu_154_p2_carry__1_i_6
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(mem_reg_0_0_0[10]),
        .I3(mem_reg_0_0_0_0[10]),
        .O(ap_loop_init_int_reg_5[2]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln42_fu_154_p2_carry__1_i_7
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(mem_reg_0_0_0[9]),
        .I3(mem_reg_0_0_0_0[9]),
        .O(ap_loop_init_int_reg_5[1]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln42_fu_154_p2_carry__1_i_8
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(mem_reg_0_0_0[8]),
        .I3(mem_reg_0_0_0_0[8]),
        .O(ap_loop_init_int_reg_5[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln42_fu_154_p2_carry__2_i_1
       (.I0(mem_reg_0_0_0[14]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_inNeurons_1[6]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln42_fu_154_p2_carry__2_i_2
       (.I0(mem_reg_0_0_0[13]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_inNeurons_1[5]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln42_fu_154_p2_carry__2_i_3
       (.I0(mem_reg_0_0_0[12]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_inNeurons_1[4]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln42_fu_154_p2_carry__2_i_4
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(mem_reg_0_0_0[15]),
        .I3(mem_reg_0_0_0_0[15]),
        .O(ap_loop_init_int_reg_2[3]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln42_fu_154_p2_carry__2_i_5
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(mem_reg_0_0_0[14]),
        .I3(mem_reg_0_0_0_0[14]),
        .O(ap_loop_init_int_reg_2[2]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln42_fu_154_p2_carry__2_i_6
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(mem_reg_0_0_0[13]),
        .I3(mem_reg_0_0_0_0[13]),
        .O(ap_loop_init_int_reg_2[1]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln42_fu_154_p2_carry__2_i_7
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(mem_reg_0_0_0[12]),
        .I3(mem_reg_0_0_0_0[12]),
        .O(ap_loop_init_int_reg_2[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln42_fu_154_p2_carry_i_1
       (.I0(mem_reg_0_0_0[3]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\inNeurons_fu_62_reg[3] [3]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln42_fu_154_p2_carry_i_2
       (.I0(mem_reg_0_0_0[2]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\inNeurons_fu_62_reg[3] [2]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln42_fu_154_p2_carry_i_3
       (.I0(mem_reg_0_0_0[1]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\inNeurons_fu_62_reg[3] [1]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln42_fu_154_p2_carry_i_4
       (.I0(mem_reg_0_0_0[0]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\inNeurons_fu_62_reg[3] [0]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln42_fu_154_p2_carry_i_5
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(mem_reg_0_0_0[3]),
        .I3(mem_reg_0_0_0_0[3]),
        .O(ap_loop_init_int_reg_3[3]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln42_fu_154_p2_carry_i_6
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(mem_reg_0_0_0[2]),
        .I3(mem_reg_0_0_0_0[2]),
        .O(ap_loop_init_int_reg_3[2]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln42_fu_154_p2_carry_i_7
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(mem_reg_0_0_0[1]),
        .I3(mem_reg_0_0_0_0[1]),
        .O(ap_loop_init_int_reg_3[1]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln42_fu_154_p2_carry_i_8
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(mem_reg_0_0_0[0]),
        .I3(mem_reg_0_0_0_0[0]),
        .O(ap_loop_init_int_reg_3[0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hFFFF00D0)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(ap_done_cache),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(\ap_CS_fsm_reg[4] [2]),
        .I3(ap_loop_exit_ready_pp0_iter3_reg),
        .I4(\ap_CS_fsm_reg[4] [1]),
        .O(\cmp1141_reg_243_reg[0] [0]));
  LUT6 #(
    .INIT(64'hFFFF400040004000)) 
    \ap_CS_fsm[5]_i_1 
       (.I0(\ap_CS_fsm_reg[5] ),
        .I1(\ap_CS_fsm_reg[5]_0 ),
        .I2(\ap_CS_fsm_reg[5]_1 ),
        .I3(\ap_CS_fsm_reg[4] [0]),
        .I4(ap_NS_fsm15_out),
        .I5(\ap_CS_fsm_reg[4] [2]),
        .O(\cmp1141_reg_243_reg[0] [1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hF020)) 
    \ap_CS_fsm[5]_i_3 
       (.I0(ap_done_cache),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(\ap_CS_fsm_reg[4] [2]),
        .I3(ap_loop_exit_ready_pp0_iter3_reg),
        .O(ap_NS_fsm15_out));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    ap_done_cache_i_1__0
       (.I0(ap_loop_exit_ready_pp0_iter3_reg),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_done_cache),
        .O(ap_done_cache_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__0_n_0),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    ap_loop_init_int_i_1__0
       (.I0(ap_rst_n),
        .I1(ap_loop_exit_ready_pp0_iter3_reg),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I3(ap_loop_init_int),
        .O(ap_loop_init_int_i_1__0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__0_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF2F2F2FAA020202)) 
    icmp_ln39_fu_142_p2_carry__0_i_1
       (.I0(icmp_ln39_fu_142_p2_carry__0[14]),
        .I1(mem_reg_0_0_0[14]),
        .I2(mem_reg_0_0_0[15]),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(icmp_ln39_fu_142_p2_carry__0[15]),
        .O(\numOfInNeurons_read_reg_212_reg[14] [3]));
  LUT6 #(
    .INIT(64'hFF2F2F2FAA020202)) 
    icmp_ln39_fu_142_p2_carry__0_i_2
       (.I0(icmp_ln39_fu_142_p2_carry__0[12]),
        .I1(mem_reg_0_0_0[12]),
        .I2(mem_reg_0_0_0[13]),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(icmp_ln39_fu_142_p2_carry__0[13]),
        .O(\numOfInNeurons_read_reg_212_reg[14] [2]));
  LUT6 #(
    .INIT(64'hFF2F2F2FAA020202)) 
    icmp_ln39_fu_142_p2_carry__0_i_3
       (.I0(icmp_ln39_fu_142_p2_carry__0[10]),
        .I1(mem_reg_0_0_0[10]),
        .I2(mem_reg_0_0_0[11]),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(icmp_ln39_fu_142_p2_carry__0[11]),
        .O(\numOfInNeurons_read_reg_212_reg[14] [1]));
  LUT6 #(
    .INIT(64'hFF2F2F2FAA020202)) 
    icmp_ln39_fu_142_p2_carry__0_i_4
       (.I0(icmp_ln39_fu_142_p2_carry__0[8]),
        .I1(mem_reg_0_0_0[8]),
        .I2(mem_reg_0_0_0[9]),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(icmp_ln39_fu_142_p2_carry__0[9]),
        .O(\numOfInNeurons_read_reg_212_reg[14] [0]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln39_fu_142_p2_carry__0_i_5
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(mem_reg_0_0_0[15]),
        .I3(icmp_ln39_fu_142_p2_carry__0[15]),
        .I4(mem_reg_0_0_0[14]),
        .I5(icmp_ln39_fu_142_p2_carry__0[14]),
        .O(ap_loop_init_int_reg_0[3]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln39_fu_142_p2_carry__0_i_6
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(mem_reg_0_0_0[13]),
        .I3(icmp_ln39_fu_142_p2_carry__0[13]),
        .I4(mem_reg_0_0_0[12]),
        .I5(icmp_ln39_fu_142_p2_carry__0[12]),
        .O(ap_loop_init_int_reg_0[2]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln39_fu_142_p2_carry__0_i_7
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(mem_reg_0_0_0[11]),
        .I3(icmp_ln39_fu_142_p2_carry__0[11]),
        .I4(mem_reg_0_0_0[10]),
        .I5(icmp_ln39_fu_142_p2_carry__0[10]),
        .O(ap_loop_init_int_reg_0[1]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln39_fu_142_p2_carry__0_i_8
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(mem_reg_0_0_0[9]),
        .I3(icmp_ln39_fu_142_p2_carry__0[9]),
        .I4(mem_reg_0_0_0[8]),
        .I5(icmp_ln39_fu_142_p2_carry__0[8]),
        .O(ap_loop_init_int_reg_0[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    icmp_ln39_fu_142_p2_carry__1_i_1
       (.I0(mem_reg_0_0_0[15]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\inNeurons_fu_62_reg[15] ));
  LUT3 #(
    .INIT(8'h8F)) 
    icmp_ln39_fu_142_p2_carry__1_i_2
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(mem_reg_0_0_0[15]),
        .O(ap_loop_init_int_reg_1));
  LUT6 #(
    .INIT(64'hFF2F2F2FAA020202)) 
    icmp_ln39_fu_142_p2_carry_i_1
       (.I0(icmp_ln39_fu_142_p2_carry__0[6]),
        .I1(mem_reg_0_0_0[6]),
        .I2(mem_reg_0_0_0[7]),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(icmp_ln39_fu_142_p2_carry__0[7]),
        .O(DI[3]));
  LUT6 #(
    .INIT(64'hFF2F2F2FAA020202)) 
    icmp_ln39_fu_142_p2_carry_i_2
       (.I0(icmp_ln39_fu_142_p2_carry__0[4]),
        .I1(mem_reg_0_0_0[4]),
        .I2(mem_reg_0_0_0[5]),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(icmp_ln39_fu_142_p2_carry__0[5]),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'hFF2F2F2FAA020202)) 
    icmp_ln39_fu_142_p2_carry_i_3
       (.I0(icmp_ln39_fu_142_p2_carry__0[2]),
        .I1(mem_reg_0_0_0[2]),
        .I2(mem_reg_0_0_0[3]),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(icmp_ln39_fu_142_p2_carry__0[3]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'hFF2F2F2FAA020202)) 
    icmp_ln39_fu_142_p2_carry_i_4
       (.I0(icmp_ln39_fu_142_p2_carry__0[0]),
        .I1(mem_reg_0_0_0[0]),
        .I2(mem_reg_0_0_0[1]),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(icmp_ln39_fu_142_p2_carry__0[1]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln39_fu_142_p2_carry_i_5
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(mem_reg_0_0_0[7]),
        .I3(icmp_ln39_fu_142_p2_carry__0[7]),
        .I4(mem_reg_0_0_0[6]),
        .I5(icmp_ln39_fu_142_p2_carry__0[6]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln39_fu_142_p2_carry_i_6
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(mem_reg_0_0_0[5]),
        .I3(icmp_ln39_fu_142_p2_carry__0[5]),
        .I4(mem_reg_0_0_0[4]),
        .I5(icmp_ln39_fu_142_p2_carry__0[4]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln39_fu_142_p2_carry_i_7
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(mem_reg_0_0_0[3]),
        .I3(icmp_ln39_fu_142_p2_carry__0[3]),
        .I4(mem_reg_0_0_0[2]),
        .I5(icmp_ln39_fu_142_p2_carry__0[2]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln39_fu_142_p2_carry_i_8
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(mem_reg_0_0_0[1]),
        .I3(icmp_ln39_fu_142_p2_carry__0[1]),
        .I4(mem_reg_0_0_0[0]),
        .I5(icmp_ln39_fu_142_p2_carry__0[0]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \inNeurons_fu_62[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(mem_reg_0_0_0[0]),
        .O(\inNeurons_fu_62_reg[15]_0 [0]));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_62[12]_i_2 
       (.I0(mem_reg_0_0_0[12]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\inNeurons_fu_62[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_62[12]_i_3 
       (.I0(mem_reg_0_0_0[11]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\inNeurons_fu_62[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_62[12]_i_4 
       (.I0(mem_reg_0_0_0[10]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\inNeurons_fu_62[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_62[12]_i_5 
       (.I0(mem_reg_0_0_0[9]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\inNeurons_fu_62[12]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \inNeurons_fu_62[15]_i_1 
       (.I0(ap_loop_init_int),
        .I1(CO),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \inNeurons_fu_62[15]_i_2 
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I1(CO),
        .O(E));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_62[15]_i_4 
       (.I0(mem_reg_0_0_0[15]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\inNeurons_fu_62[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_62[15]_i_5 
       (.I0(mem_reg_0_0_0[14]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\inNeurons_fu_62[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_62[15]_i_6 
       (.I0(mem_reg_0_0_0[13]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\inNeurons_fu_62[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_62[4]_i_2 
       (.I0(mem_reg_0_0_0[0]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_input_r_address0));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_62[4]_i_3 
       (.I0(mem_reg_0_0_0[4]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\inNeurons_fu_62[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_62[4]_i_4 
       (.I0(mem_reg_0_0_0[3]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\inNeurons_fu_62[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_62[4]_i_5 
       (.I0(mem_reg_0_0_0[2]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\inNeurons_fu_62[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_62[4]_i_6 
       (.I0(mem_reg_0_0_0[1]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\inNeurons_fu_62[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_62[8]_i_2 
       (.I0(mem_reg_0_0_0[8]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\inNeurons_fu_62[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_62[8]_i_3 
       (.I0(mem_reg_0_0_0[7]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\inNeurons_fu_62[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_62[8]_i_4 
       (.I0(mem_reg_0_0_0[6]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\inNeurons_fu_62[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_62[8]_i_5 
       (.I0(mem_reg_0_0_0[5]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\inNeurons_fu_62[8]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \inNeurons_fu_62_reg[12]_i_1 
       (.CI(\inNeurons_fu_62_reg[8]_i_1_n_0 ),
        .CO({\inNeurons_fu_62_reg[12]_i_1_n_0 ,\inNeurons_fu_62_reg[12]_i_1_n_1 ,\inNeurons_fu_62_reg[12]_i_1_n_2 ,\inNeurons_fu_62_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\inNeurons_fu_62_reg[15]_0 [12:9]),
        .S({\inNeurons_fu_62[12]_i_2_n_0 ,\inNeurons_fu_62[12]_i_3_n_0 ,\inNeurons_fu_62[12]_i_4_n_0 ,\inNeurons_fu_62[12]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \inNeurons_fu_62_reg[15]_i_3 
       (.CI(\inNeurons_fu_62_reg[12]_i_1_n_0 ),
        .CO({\NLW_inNeurons_fu_62_reg[15]_i_3_CO_UNCONNECTED [3:2],\inNeurons_fu_62_reg[15]_i_3_n_2 ,\inNeurons_fu_62_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_inNeurons_fu_62_reg[15]_i_3_O_UNCONNECTED [3],\inNeurons_fu_62_reg[15]_0 [15:13]}),
        .S({1'b0,\inNeurons_fu_62[15]_i_4_n_0 ,\inNeurons_fu_62[15]_i_5_n_0 ,\inNeurons_fu_62[15]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \inNeurons_fu_62_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\inNeurons_fu_62_reg[4]_i_1_n_0 ,\inNeurons_fu_62_reg[4]_i_1_n_1 ,\inNeurons_fu_62_reg[4]_i_1_n_2 ,\inNeurons_fu_62_reg[4]_i_1_n_3 }),
        .CYINIT(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_input_r_address0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\inNeurons_fu_62_reg[15]_0 [4:1]),
        .S({\inNeurons_fu_62[4]_i_3_n_0 ,\inNeurons_fu_62[4]_i_4_n_0 ,\inNeurons_fu_62[4]_i_5_n_0 ,\inNeurons_fu_62[4]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \inNeurons_fu_62_reg[8]_i_1 
       (.CI(\inNeurons_fu_62_reg[4]_i_1_n_0 ),
        .CO({\inNeurons_fu_62_reg[8]_i_1_n_0 ,\inNeurons_fu_62_reg[8]_i_1_n_1 ,\inNeurons_fu_62_reg[8]_i_1_n_2 ,\inNeurons_fu_62_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\inNeurons_fu_62_reg[15]_0 [8:5]),
        .S({\inNeurons_fu_62[8]_i_2_n_0 ,\inNeurons_fu_62[8]_i_3_n_0 ,\inNeurons_fu_62[8]_i_4_n_0 ,\inNeurons_fu_62[8]_i_5_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \int_input_r_shift0[0]_i_1 
       (.I0(mem_reg_0_0_0[0]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I3(\int_input_r_shift0_reg[0] ),
        .O(\inNeurons_fu_62_reg[0] ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \lhs_fu_66[0]_i_1 
       (.I0(Q[0]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I3(P[0]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\lhs_fu_66_reg[15] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \lhs_fu_66[10]_i_1 
       (.I0(Q[10]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I3(P[10]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\lhs_fu_66_reg[15] [10]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \lhs_fu_66[11]_i_1 
       (.I0(Q[11]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I3(P[11]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\lhs_fu_66_reg[15] [11]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \lhs_fu_66[12]_i_1 
       (.I0(Q[12]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I3(P[12]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\lhs_fu_66_reg[15] [12]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \lhs_fu_66[13]_i_1 
       (.I0(Q[13]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I3(P[13]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\lhs_fu_66_reg[15] [13]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \lhs_fu_66[14]_i_1 
       (.I0(Q[14]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I3(P[14]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\lhs_fu_66_reg[15] [14]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \lhs_fu_66[15]_i_1 
       (.I0(Q[15]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I3(P[15]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\lhs_fu_66_reg[15] [15]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \lhs_fu_66[1]_i_1 
       (.I0(Q[1]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I3(P[1]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\lhs_fu_66_reg[15] [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \lhs_fu_66[2]_i_1 
       (.I0(Q[2]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I3(P[2]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\lhs_fu_66_reg[15] [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \lhs_fu_66[3]_i_1 
       (.I0(Q[3]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I3(P[3]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\lhs_fu_66_reg[15] [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \lhs_fu_66[4]_i_1 
       (.I0(Q[4]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I3(P[4]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\lhs_fu_66_reg[15] [4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \lhs_fu_66[5]_i_1 
       (.I0(Q[5]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I3(P[5]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\lhs_fu_66_reg[15] [5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \lhs_fu_66[6]_i_1 
       (.I0(Q[6]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I3(P[6]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\lhs_fu_66_reg[15] [6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \lhs_fu_66[7]_i_1 
       (.I0(Q[7]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I3(P[7]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\lhs_fu_66_reg[15] [7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \lhs_fu_66[8]_i_1 
       (.I0(Q[8]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I3(P[8]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\lhs_fu_66_reg[15] [8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \lhs_fu_66[9]_i_1 
       (.I0(Q[9]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I3(P[9]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\lhs_fu_66_reg[15] [9]),
        .O(D[9]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_10
       (.I0(mem_reg_0_0_0[6]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ADDRBWRADDR[5]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_11
       (.I0(mem_reg_0_0_0[5]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ADDRBWRADDR[4]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_12
       (.I0(mem_reg_0_0_0[4]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ADDRBWRADDR[3]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_13
       (.I0(mem_reg_0_0_0[3]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ADDRBWRADDR[2]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_14
       (.I0(mem_reg_0_0_0[2]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ADDRBWRADDR[1]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_15
       (.I0(mem_reg_0_0_0[1]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ADDRBWRADDR[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_9
       (.I0(mem_reg_0_0_0[7]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ADDRBWRADDR[6]));
endmodule

(* ORIG_REF_NAME = "nnlayer_flow_control_loop_pipe_sequential_init" *) 
module design_1_nnlayer_0_3_nnlayer_flow_control_loop_pipe_sequential_init_0
   (\ap_CS_fsm_reg[1] ,
    outNeurons_2_fu_820,
    ap_rst_n_0,
    SR,
    E,
    icmp_ln32_fu_87_p2_carry__0,
    S,
    D,
    ap_sig_allocacmp_outNeurons_1,
    \numOfOutNeurons_read_reg_206_reg[15] ,
    ap_loop_init_int_reg_0,
    \outNeurons_fu_42_reg[4] ,
    \outNeurons_fu_42_reg[7] ,
    \outNeurons_fu_42_reg[0] ,
    ap_rst_n_inv,
    ap_clk,
    ap_start,
    Q,
    CO,
    grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg,
    \weightIndexAdded_fu_86_reg[0] ,
    ap_rst_n,
    \outNeurons_fu_42_reg[15] ,
    icmp_ln32_fu_87_p2_carry__0_0,
    \int_bias_shift0_reg[0] );
  output [1:0]\ap_CS_fsm_reg[1] ;
  output outNeurons_2_fu_820;
  output ap_rst_n_0;
  output [0:0]SR;
  output [0:0]E;
  output [0:0]icmp_ln32_fu_87_p2_carry__0;
  output [3:0]S;
  output [7:0]D;
  output [7:0]ap_sig_allocacmp_outNeurons_1;
  output [1:0]\numOfOutNeurons_read_reg_206_reg[15] ;
  output [0:0]ap_loop_init_int_reg_0;
  output [3:0]\outNeurons_fu_42_reg[4] ;
  output [2:0]\outNeurons_fu_42_reg[7] ;
  output \outNeurons_fu_42_reg[0] ;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_start;
  input [2:0]Q;
  input [0:0]CO;
  input grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg;
  input \weightIndexAdded_fu_86_reg[0] ;
  input ap_rst_n;
  input [15:0]\outNeurons_fu_42_reg[15] ;
  input [15:0]icmp_ln32_fu_87_p2_carry__0_0;
  input \int_bias_shift0_reg[0] ;

  wire [0:0]CO;
  wire [7:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [1:0]\ap_CS_fsm_reg[1] ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1_n_0;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1_n_0;
  wire [0:0]ap_loop_init_int_reg_0;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_inv;
  wire [7:0]ap_sig_allocacmp_outNeurons_1;
  wire ap_start;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg;
  wire [0:0]icmp_ln32_fu_87_p2_carry__0;
  wire [15:0]icmp_ln32_fu_87_p2_carry__0_0;
  wire icmp_ln32_fu_87_p2_carry__0_i_3_n_0;
  wire icmp_ln32_fu_87_p2_carry_i_5_n_0;
  wire icmp_ln32_fu_87_p2_carry_i_6_n_0;
  wire icmp_ln32_fu_87_p2_carry_i_7_n_0;
  wire icmp_ln32_fu_87_p2_carry_i_8_n_0;
  wire \int_bias_shift0_reg[0] ;
  wire [1:0]\numOfOutNeurons_read_reg_206_reg[15] ;
  wire outNeurons_2_fu_820;
  wire \outNeurons_fu_42_reg[0] ;
  wire [15:0]\outNeurons_fu_42_reg[15] ;
  wire [3:0]\outNeurons_fu_42_reg[4] ;
  wire [2:0]\outNeurons_fu_42_reg[7] ;
  wire \weightIndexAdded_fu_86_reg[0] ;

  LUT6 #(
    .INIT(64'h88FF8F8F88888888)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(ap_done_cache),
        .I3(CO),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I5(Q[1]),
        .O(\ap_CS_fsm_reg[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hFFFFA088)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(Q[1]),
        .I1(ap_done_cache),
        .I2(CO),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I4(Q[2]),
        .O(\ap_CS_fsm_reg[1] [1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ap_done_cache_i_1
       (.I0(CO),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I2(ap_done_cache),
        .O(ap_done_cache_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1_n_0),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h20)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_rst_n),
        .I1(CO),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .O(ap_rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hF5DD)) 
    ap_loop_init_int_i_1
       (.I0(ap_rst_n),
        .I1(ap_loop_init_int),
        .I2(CO),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .O(ap_loop_init_int_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6A55)) 
    icmp_ln32_fu_87_p2_carry__0_i_1
       (.I0(icmp_ln32_fu_87_p2_carry__0_0[15]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I3(\outNeurons_fu_42_reg[15] [15]),
        .O(\numOfOutNeurons_read_reg_206_reg[15] [1]));
  LUT5 #(
    .INIT(32'h2A0080AA)) 
    icmp_ln32_fu_87_p2_carry__0_i_2
       (.I0(icmp_ln32_fu_87_p2_carry__0_i_3_n_0),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I3(\outNeurons_fu_42_reg[15] [14]),
        .I4(icmp_ln32_fu_87_p2_carry__0_0[14]),
        .O(\numOfOutNeurons_read_reg_206_reg[15] [0]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln32_fu_87_p2_carry__0_i_3
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I2(\outNeurons_fu_42_reg[15] [12]),
        .I3(icmp_ln32_fu_87_p2_carry__0_0[12]),
        .I4(\outNeurons_fu_42_reg[15] [13]),
        .I5(icmp_ln32_fu_87_p2_carry__0_0[13]),
        .O(icmp_ln32_fu_87_p2_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h2A0080AA)) 
    icmp_ln32_fu_87_p2_carry_i_1
       (.I0(icmp_ln32_fu_87_p2_carry_i_5_n_0),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I3(\outNeurons_fu_42_reg[15] [11]),
        .I4(icmp_ln32_fu_87_p2_carry__0_0[11]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h2A0080AA)) 
    icmp_ln32_fu_87_p2_carry_i_2
       (.I0(icmp_ln32_fu_87_p2_carry_i_6_n_0),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I3(\outNeurons_fu_42_reg[15] [8]),
        .I4(icmp_ln32_fu_87_p2_carry__0_0[8]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h2A0080AA)) 
    icmp_ln32_fu_87_p2_carry_i_3
       (.I0(icmp_ln32_fu_87_p2_carry_i_7_n_0),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I3(\outNeurons_fu_42_reg[15] [5]),
        .I4(icmp_ln32_fu_87_p2_carry__0_0[5]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h2A0080AA)) 
    icmp_ln32_fu_87_p2_carry_i_4
       (.I0(icmp_ln32_fu_87_p2_carry_i_8_n_0),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I3(\outNeurons_fu_42_reg[15] [2]),
        .I4(icmp_ln32_fu_87_p2_carry__0_0[2]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln32_fu_87_p2_carry_i_5
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I2(\outNeurons_fu_42_reg[15] [9]),
        .I3(icmp_ln32_fu_87_p2_carry__0_0[9]),
        .I4(\outNeurons_fu_42_reg[15] [10]),
        .I5(icmp_ln32_fu_87_p2_carry__0_0[10]),
        .O(icmp_ln32_fu_87_p2_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln32_fu_87_p2_carry_i_6
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I2(\outNeurons_fu_42_reg[15] [6]),
        .I3(icmp_ln32_fu_87_p2_carry__0_0[6]),
        .I4(\outNeurons_fu_42_reg[15] [7]),
        .I5(icmp_ln32_fu_87_p2_carry__0_0[7]),
        .O(icmp_ln32_fu_87_p2_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln32_fu_87_p2_carry_i_7
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I2(\outNeurons_fu_42_reg[15] [3]),
        .I3(icmp_ln32_fu_87_p2_carry__0_0[3]),
        .I4(\outNeurons_fu_42_reg[15] [4]),
        .I5(icmp_ln32_fu_87_p2_carry__0_0[4]),
        .O(icmp_ln32_fu_87_p2_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln32_fu_87_p2_carry_i_8
       (.I0(ap_loop_init_int),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I2(\outNeurons_fu_42_reg[15] [0]),
        .I3(icmp_ln32_fu_87_p2_carry__0_0[0]),
        .I4(\outNeurons_fu_42_reg[15] [1]),
        .I5(icmp_ln32_fu_87_p2_carry__0_0[1]),
        .O(icmp_ln32_fu_87_p2_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \int_bias_shift0[0]_i_1 
       (.I0(\outNeurons_fu_42_reg[15] [0]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I3(\int_bias_shift0_reg[0] ),
        .O(\outNeurons_fu_42_reg[0] ));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_2
       (.I0(\outNeurons_fu_42_reg[15] [7]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(D[7]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_3
       (.I0(\outNeurons_fu_42_reg[15] [6]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(D[6]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_4
       (.I0(\outNeurons_fu_42_reg[15] [5]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(D[5]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_5
       (.I0(\outNeurons_fu_42_reg[15] [4]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(D[4]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_6
       (.I0(\outNeurons_fu_42_reg[15] [3]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(D[3]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_7
       (.I0(\outNeurons_fu_42_reg[15] [2]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(D[2]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_8
       (.I0(\outNeurons_fu_42_reg[15] [1]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h88088000)) 
    \outNeurons_2_fu_82[15]_i_1 
       (.I0(\weightIndexAdded_fu_86_reg[0] ),
        .I1(Q[1]),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I3(CO),
        .I4(ap_done_cache),
        .O(outNeurons_2_fu_820));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry__0_i_1
       (.I0(\outNeurons_fu_42_reg[15] [8]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_outNeurons_1[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry__0_i_2
       (.I0(\outNeurons_fu_42_reg[15] [7]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\outNeurons_fu_42_reg[7] [2]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry__0_i_3
       (.I0(\outNeurons_fu_42_reg[15] [6]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\outNeurons_fu_42_reg[7] [1]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry__0_i_4
       (.I0(\outNeurons_fu_42_reg[15] [5]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\outNeurons_fu_42_reg[7] [0]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry__1_i_1
       (.I0(\outNeurons_fu_42_reg[15] [12]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_outNeurons_1[4]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry__1_i_2
       (.I0(\outNeurons_fu_42_reg[15] [11]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_outNeurons_1[3]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry__1_i_3
       (.I0(\outNeurons_fu_42_reg[15] [10]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_outNeurons_1[2]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry__1_i_4
       (.I0(\outNeurons_fu_42_reg[15] [9]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_outNeurons_1[1]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry__2_i_1
       (.I0(\outNeurons_fu_42_reg[15] [15]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_outNeurons_1[7]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry__2_i_2
       (.I0(\outNeurons_fu_42_reg[15] [14]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_outNeurons_1[6]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry__2_i_3
       (.I0(\outNeurons_fu_42_reg[15] [13]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_outNeurons_1[5]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry_i_1
       (.I0(\outNeurons_fu_42_reg[15] [4]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\outNeurons_fu_42_reg[4] [3]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry_i_2
       (.I0(\outNeurons_fu_42_reg[15] [3]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\outNeurons_fu_42_reg[4] [2]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry_i_3
       (.I0(\outNeurons_fu_42_reg[15] [2]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\outNeurons_fu_42_reg[4] [1]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry_i_4
       (.I0(\outNeurons_fu_42_reg[15] [1]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\outNeurons_fu_42_reg[4] [0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \outNeurons_fu_42[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\outNeurons_fu_42_reg[15] [0]),
        .O(ap_loop_init_int_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \outNeurons_fu_42[15]_i_1 
       (.I0(ap_loop_init_int),
        .I1(CO),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \outNeurons_fu_42[15]_i_2 
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I1(CO),
        .O(E));
  LUT3 #(
    .INIT(8'h2A)) 
    \zext_ln33_reg_119[0]_i_1 
       (.I0(\outNeurons_fu_42_reg[15] [0]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \zext_ln33_reg_119[7]_i_1 
       (.I0(CO),
        .O(icmp_ln32_fu_87_p2_carry__0));
endmodule

(* ORIG_REF_NAME = "nnlayer_mac_muladd_16s_16s_24ns_24_4_1" *) 
module design_1_nnlayer_0_3_nnlayer_mac_muladd_16s_16s_24ns_24_4_1
   (P,
    ap_clk,
    B,
    A,
    ap_enable_reg_pp0_iter4,
    p_reg_reg);
  output [15:0]P;
  input ap_clk;
  input [15:0]B;
  input [15:0]A;
  input ap_enable_reg_pp0_iter4;
  input [15:0]p_reg_reg;

  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]P;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter4;
  wire [15:0]p_reg_reg;

  design_1_nnlayer_0_3_nnlayer_mac_muladd_16s_16s_24ns_24_4_1_DSP48_0 nnlayer_mac_muladd_16s_16s_24ns_24_4_1_DSP48_0_U
       (.A(A),
        .B(B),
        .P(P),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter4(ap_enable_reg_pp0_iter4),
        .p_reg_reg_0(p_reg_reg));
endmodule

(* ORIG_REF_NAME = "nnlayer_mac_muladd_16s_16s_24ns_24_4_1_DSP48_0" *) 
module design_1_nnlayer_0_3_nnlayer_mac_muladd_16s_16s_24ns_24_4_1_DSP48_0
   (P,
    ap_clk,
    B,
    A,
    ap_enable_reg_pp0_iter4,
    p_reg_reg_0);
  output [15:0]P;
  input ap_clk;
  input [15:0]B;
  input [15:0]A;
  input ap_enable_reg_pp0_iter4;
  input [15:0]p_reg_reg_0;

  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]P;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter4;
  wire [15:0]ap_sig_allocacmp_lhs_load_1;
  wire [15:0]p_reg_reg_0;
  wire p_reg_reg_n_100;
  wire p_reg_reg_n_101;
  wire p_reg_reg_n_102;
  wire p_reg_reg_n_103;
  wire p_reg_reg_n_104;
  wire p_reg_reg_n_105;
  wire p_reg_reg_n_98;
  wire p_reg_reg_n_99;
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
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ap_sig_allocacmp_lhs_load_1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:24],P,p_reg_reg_n_98,p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101,p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105}),
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
       (.I0(P[15]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[15]),
        .O(ap_sig_allocacmp_lhs_load_1[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_34
       (.I0(P[14]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[14]),
        .O(ap_sig_allocacmp_lhs_load_1[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_35
       (.I0(P[13]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[13]),
        .O(ap_sig_allocacmp_lhs_load_1[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_36
       (.I0(P[12]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[12]),
        .O(ap_sig_allocacmp_lhs_load_1[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_37
       (.I0(P[11]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[11]),
        .O(ap_sig_allocacmp_lhs_load_1[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_38
       (.I0(P[10]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[10]),
        .O(ap_sig_allocacmp_lhs_load_1[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_39
       (.I0(P[9]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[9]),
        .O(ap_sig_allocacmp_lhs_load_1[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_40
       (.I0(P[8]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[8]),
        .O(ap_sig_allocacmp_lhs_load_1[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_41
       (.I0(P[7]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[7]),
        .O(ap_sig_allocacmp_lhs_load_1[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_42
       (.I0(P[6]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[6]),
        .O(ap_sig_allocacmp_lhs_load_1[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_43
       (.I0(P[5]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[5]),
        .O(ap_sig_allocacmp_lhs_load_1[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_44
       (.I0(P[4]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[4]),
        .O(ap_sig_allocacmp_lhs_load_1[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_45
       (.I0(P[3]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[3]),
        .O(ap_sig_allocacmp_lhs_load_1[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_46
       (.I0(P[2]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[2]),
        .O(ap_sig_allocacmp_lhs_load_1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_47
       (.I0(P[1]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[1]),
        .O(ap_sig_allocacmp_lhs_load_1[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_48
       (.I0(P[0]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[0]),
        .O(ap_sig_allocacmp_lhs_load_1[0]));
endmodule

(* ORIG_REF_NAME = "nnlayer_nnlayer_Pipeline_VITIS_LOOP_32_1" *) 
module design_1_nnlayer_0_3_nnlayer_nnlayer_Pipeline_VITIS_LOOP_32_1
   (\numOfOutNeurons_read_reg_206_reg[15] ,
    D,
    \ap_CS_fsm_reg[1] ,
    outNeurons_2_fu_820,
    \ap_CS_fsm_reg[2] ,
    int_output_r_be0,
    output_r_ce0,
    \ap_CS_fsm_reg[1]_0 ,
    \outNeurons_fu_42_reg[0]_0 ,
    ap_rst_n_inv,
    ap_clk,
    ap_start,
    Q,
    grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg,
    \weightIndexAdded_fu_86_reg[0] ,
    ap_rst_n,
    icmp_ln32_fu_87_p2_carry__0_0,
    mem_reg,
    mem_reg_0,
    mem_reg_1,
    \int_output_r_shift0_reg[0] ,
    \int_bias_shift0_reg[0] );
  output [0:0]\numOfOutNeurons_read_reg_206_reg[15] ;
  output [6:0]D;
  output [1:0]\ap_CS_fsm_reg[1] ;
  output outNeurons_2_fu_820;
  output [6:0]\ap_CS_fsm_reg[2] ;
  output [1:0]int_output_r_be0;
  output output_r_ce0;
  output \ap_CS_fsm_reg[1]_0 ;
  output \outNeurons_fu_42_reg[0]_0 ;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_start;
  input [3:0]Q;
  input grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg;
  input \weightIndexAdded_fu_86_reg[0] ;
  input ap_rst_n;
  input [15:0]icmp_ln32_fu_87_p2_carry__0_0;
  input [7:0]mem_reg;
  input [7:0]mem_reg_0;
  input mem_reg_1;
  input \int_output_r_shift0_reg[0] ;
  input \int_bias_shift0_reg[0] ;

  wire [6:0]D;
  wire [3:0]Q;
  wire [1:0]\ap_CS_fsm_reg[1] ;
  wire \ap_CS_fsm_reg[1]_0 ;
  wire [6:0]\ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [15:8]ap_sig_allocacmp_outNeurons_1;
  wire ap_start;
  wire flow_control_loop_pipe_sequential_init_U_n_10;
  wire flow_control_loop_pipe_sequential_init_U_n_27;
  wire flow_control_loop_pipe_sequential_init_U_n_28;
  wire flow_control_loop_pipe_sequential_init_U_n_3;
  wire flow_control_loop_pipe_sequential_init_U_n_30;
  wire flow_control_loop_pipe_sequential_init_U_n_31;
  wire flow_control_loop_pipe_sequential_init_U_n_32;
  wire flow_control_loop_pipe_sequential_init_U_n_33;
  wire flow_control_loop_pipe_sequential_init_U_n_34;
  wire flow_control_loop_pipe_sequential_init_U_n_35;
  wire flow_control_loop_pipe_sequential_init_U_n_36;
  wire flow_control_loop_pipe_sequential_init_U_n_4;
  wire flow_control_loop_pipe_sequential_init_U_n_7;
  wire flow_control_loop_pipe_sequential_init_U_n_8;
  wire flow_control_loop_pipe_sequential_init_U_n_9;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg;
  wire [0:0]grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_bias_address0;
  wire [15:0]icmp_ln32_fu_87_p2_carry__0_0;
  wire icmp_ln32_fu_87_p2_carry__0_n_3;
  wire icmp_ln32_fu_87_p2_carry_n_0;
  wire icmp_ln32_fu_87_p2_carry_n_1;
  wire icmp_ln32_fu_87_p2_carry_n_2;
  wire icmp_ln32_fu_87_p2_carry_n_3;
  wire \int_bias_shift0_reg[0] ;
  wire [1:0]int_output_r_be0;
  wire \int_output_r_shift0_reg[0] ;
  wire [7:0]mem_reg;
  wire [7:0]mem_reg_0;
  wire mem_reg_1;
  wire [0:0]\numOfOutNeurons_read_reg_206_reg[15] ;
  wire outNeurons_2_fu_820;
  wire [15:0]outNeurons_2_fu_93_p2;
  wire outNeurons_2_fu_93_p2_carry__0_n_0;
  wire outNeurons_2_fu_93_p2_carry__0_n_1;
  wire outNeurons_2_fu_93_p2_carry__0_n_2;
  wire outNeurons_2_fu_93_p2_carry__0_n_3;
  wire outNeurons_2_fu_93_p2_carry__1_n_0;
  wire outNeurons_2_fu_93_p2_carry__1_n_1;
  wire outNeurons_2_fu_93_p2_carry__1_n_2;
  wire outNeurons_2_fu_93_p2_carry__1_n_3;
  wire outNeurons_2_fu_93_p2_carry__2_n_2;
  wire outNeurons_2_fu_93_p2_carry__2_n_3;
  wire outNeurons_2_fu_93_p2_carry_n_0;
  wire outNeurons_2_fu_93_p2_carry_n_1;
  wire outNeurons_2_fu_93_p2_carry_n_2;
  wire outNeurons_2_fu_93_p2_carry_n_3;
  wire outNeurons_fu_420;
  wire outNeurons_fu_421;
  wire \outNeurons_fu_42_reg[0]_0 ;
  wire \outNeurons_fu_42_reg_n_0_[0] ;
  wire \outNeurons_fu_42_reg_n_0_[10] ;
  wire \outNeurons_fu_42_reg_n_0_[11] ;
  wire \outNeurons_fu_42_reg_n_0_[12] ;
  wire \outNeurons_fu_42_reg_n_0_[13] ;
  wire \outNeurons_fu_42_reg_n_0_[14] ;
  wire \outNeurons_fu_42_reg_n_0_[15] ;
  wire \outNeurons_fu_42_reg_n_0_[1] ;
  wire \outNeurons_fu_42_reg_n_0_[2] ;
  wire \outNeurons_fu_42_reg_n_0_[3] ;
  wire \outNeurons_fu_42_reg_n_0_[4] ;
  wire \outNeurons_fu_42_reg_n_0_[5] ;
  wire \outNeurons_fu_42_reg_n_0_[6] ;
  wire \outNeurons_fu_42_reg_n_0_[7] ;
  wire \outNeurons_fu_42_reg_n_0_[8] ;
  wire \outNeurons_fu_42_reg_n_0_[9] ;
  wire [0:0]output_r_address0;
  wire output_r_ce0;
  wire \weightIndexAdded_fu_86_reg[0] ;
  wire [7:0]zext_ln33_reg_119_reg;
  wire [3:0]NLW_icmp_ln32_fu_87_p2_carry_O_UNCONNECTED;
  wire [3:2]NLW_icmp_ln32_fu_87_p2_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_icmp_ln32_fu_87_p2_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_outNeurons_2_fu_93_p2_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_outNeurons_2_fu_93_p2_carry__2_O_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_3),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  design_1_nnlayer_0_3_nnlayer_flow_control_loop_pipe_sequential_init_0 flow_control_loop_pipe_sequential_init_U
       (.CO(\numOfOutNeurons_read_reg_206_reg[15] ),
        .D({D,grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_bias_address0}),
        .E(outNeurons_fu_420),
        .Q({Q[3],Q[1:0]}),
        .S({flow_control_loop_pipe_sequential_init_U_n_7,flow_control_loop_pipe_sequential_init_U_n_8,flow_control_loop_pipe_sequential_init_U_n_9,flow_control_loop_pipe_sequential_init_U_n_10}),
        .SR(flow_control_loop_pipe_sequential_init_U_n_4),
        .\ap_CS_fsm_reg[1] (\ap_CS_fsm_reg[1] ),
        .ap_clk(ap_clk),
        .ap_loop_init_int_reg_0(outNeurons_2_fu_93_p2[0]),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(flow_control_loop_pipe_sequential_init_U_n_3),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_sig_allocacmp_outNeurons_1(ap_sig_allocacmp_outNeurons_1),
        .ap_start(ap_start),
        .grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_ap_start_reg),
        .icmp_ln32_fu_87_p2_carry__0(outNeurons_fu_421),
        .icmp_ln32_fu_87_p2_carry__0_0(icmp_ln32_fu_87_p2_carry__0_0),
        .\int_bias_shift0_reg[0] (\int_bias_shift0_reg[0] ),
        .\numOfOutNeurons_read_reg_206_reg[15] ({flow_control_loop_pipe_sequential_init_U_n_27,flow_control_loop_pipe_sequential_init_U_n_28}),
        .outNeurons_2_fu_820(outNeurons_2_fu_820),
        .\outNeurons_fu_42_reg[0] (\outNeurons_fu_42_reg[0]_0 ),
        .\outNeurons_fu_42_reg[15] ({\outNeurons_fu_42_reg_n_0_[15] ,\outNeurons_fu_42_reg_n_0_[14] ,\outNeurons_fu_42_reg_n_0_[13] ,\outNeurons_fu_42_reg_n_0_[12] ,\outNeurons_fu_42_reg_n_0_[11] ,\outNeurons_fu_42_reg_n_0_[10] ,\outNeurons_fu_42_reg_n_0_[9] ,\outNeurons_fu_42_reg_n_0_[8] ,\outNeurons_fu_42_reg_n_0_[7] ,\outNeurons_fu_42_reg_n_0_[6] ,\outNeurons_fu_42_reg_n_0_[5] ,\outNeurons_fu_42_reg_n_0_[4] ,\outNeurons_fu_42_reg_n_0_[3] ,\outNeurons_fu_42_reg_n_0_[2] ,\outNeurons_fu_42_reg_n_0_[1] ,\outNeurons_fu_42_reg_n_0_[0] }),
        .\outNeurons_fu_42_reg[4] ({flow_control_loop_pipe_sequential_init_U_n_30,flow_control_loop_pipe_sequential_init_U_n_31,flow_control_loop_pipe_sequential_init_U_n_32,flow_control_loop_pipe_sequential_init_U_n_33}),
        .\outNeurons_fu_42_reg[7] ({flow_control_loop_pipe_sequential_init_U_n_34,flow_control_loop_pipe_sequential_init_U_n_35,flow_control_loop_pipe_sequential_init_U_n_36}),
        .\weightIndexAdded_fu_86_reg[0] (\weightIndexAdded_fu_86_reg[0] ));
  CARRY4 icmp_ln32_fu_87_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln32_fu_87_p2_carry_n_0,icmp_ln32_fu_87_p2_carry_n_1,icmp_ln32_fu_87_p2_carry_n_2,icmp_ln32_fu_87_p2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln32_fu_87_p2_carry_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_7,flow_control_loop_pipe_sequential_init_U_n_8,flow_control_loop_pipe_sequential_init_U_n_9,flow_control_loop_pipe_sequential_init_U_n_10}));
  CARRY4 icmp_ln32_fu_87_p2_carry__0
       (.CI(icmp_ln32_fu_87_p2_carry_n_0),
        .CO({NLW_icmp_ln32_fu_87_p2_carry__0_CO_UNCONNECTED[3:2],\numOfOutNeurons_read_reg_206_reg[15] ,icmp_ln32_fu_87_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln32_fu_87_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,flow_control_loop_pipe_sequential_init_U_n_27,flow_control_loop_pipe_sequential_init_U_n_28}));
  LUT6 #(
    .INIT(64'hAAAAAABFAAAAAA80)) 
    \int_output_r_shift0[0]_i_1 
       (.I0(output_r_address0),
        .I1(Q[1]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\int_output_r_shift0_reg[0] ),
        .O(\ap_CS_fsm_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_10__1
       (.I0(Q[2]),
        .I1(mem_reg[7]),
        .I2(zext_ln33_reg_119_reg[7]),
        .I3(Q[3]),
        .I4(mem_reg_0[7]),
        .O(\ap_CS_fsm_reg[2] [6]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_11__1
       (.I0(Q[2]),
        .I1(mem_reg[6]),
        .I2(zext_ln33_reg_119_reg[6]),
        .I3(Q[3]),
        .I4(mem_reg_0[6]),
        .O(\ap_CS_fsm_reg[2] [5]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_12__1
       (.I0(Q[2]),
        .I1(mem_reg[5]),
        .I2(zext_ln33_reg_119_reg[5]),
        .I3(Q[3]),
        .I4(mem_reg_0[5]),
        .O(\ap_CS_fsm_reg[2] [4]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_13__1
       (.I0(Q[2]),
        .I1(mem_reg[4]),
        .I2(zext_ln33_reg_119_reg[4]),
        .I3(Q[3]),
        .I4(mem_reg_0[4]),
        .O(\ap_CS_fsm_reg[2] [3]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_14__1
       (.I0(Q[2]),
        .I1(mem_reg[3]),
        .I2(zext_ln33_reg_119_reg[3]),
        .I3(Q[3]),
        .I4(mem_reg_0[3]),
        .O(\ap_CS_fsm_reg[2] [2]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_15__1
       (.I0(Q[2]),
        .I1(mem_reg[2]),
        .I2(zext_ln33_reg_119_reg[2]),
        .I3(Q[3]),
        .I4(mem_reg_0[2]),
        .O(\ap_CS_fsm_reg[2] [1]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_16__1
       (.I0(Q[2]),
        .I1(mem_reg[1]),
        .I2(zext_ln33_reg_119_reg[1]),
        .I3(Q[3]),
        .I4(mem_reg_0[1]),
        .O(\ap_CS_fsm_reg[2] [0]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    mem_reg_i_2__1
       (.I0(Q[1]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(output_r_ce0));
  LUT5 #(
    .INIT(32'h8080AA80)) 
    mem_reg_i_53
       (.I0(output_r_address0),
        .I1(Q[1]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q[3]),
        .I4(mem_reg_1),
        .O(int_output_r_be0[1]));
  LUT5 #(
    .INIT(32'h000088F8)) 
    mem_reg_i_54
       (.I0(Q[1]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[3]),
        .I3(mem_reg_1),
        .I4(output_r_address0),
        .O(int_output_r_be0[0]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mem_reg_i_55
       (.I0(Q[2]),
        .I1(mem_reg[0]),
        .I2(zext_ln33_reg_119_reg[0]),
        .I3(Q[3]),
        .I4(mem_reg_0[0]),
        .O(output_r_address0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 outNeurons_2_fu_93_p2_carry
       (.CI(1'b0),
        .CO({outNeurons_2_fu_93_p2_carry_n_0,outNeurons_2_fu_93_p2_carry_n_1,outNeurons_2_fu_93_p2_carry_n_2,outNeurons_2_fu_93_p2_carry_n_3}),
        .CYINIT(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_bias_address0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(outNeurons_2_fu_93_p2[4:1]),
        .S({flow_control_loop_pipe_sequential_init_U_n_30,flow_control_loop_pipe_sequential_init_U_n_31,flow_control_loop_pipe_sequential_init_U_n_32,flow_control_loop_pipe_sequential_init_U_n_33}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 outNeurons_2_fu_93_p2_carry__0
       (.CI(outNeurons_2_fu_93_p2_carry_n_0),
        .CO({outNeurons_2_fu_93_p2_carry__0_n_0,outNeurons_2_fu_93_p2_carry__0_n_1,outNeurons_2_fu_93_p2_carry__0_n_2,outNeurons_2_fu_93_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(outNeurons_2_fu_93_p2[8:5]),
        .S({ap_sig_allocacmp_outNeurons_1[8],flow_control_loop_pipe_sequential_init_U_n_34,flow_control_loop_pipe_sequential_init_U_n_35,flow_control_loop_pipe_sequential_init_U_n_36}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 outNeurons_2_fu_93_p2_carry__1
       (.CI(outNeurons_2_fu_93_p2_carry__0_n_0),
        .CO({outNeurons_2_fu_93_p2_carry__1_n_0,outNeurons_2_fu_93_p2_carry__1_n_1,outNeurons_2_fu_93_p2_carry__1_n_2,outNeurons_2_fu_93_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(outNeurons_2_fu_93_p2[12:9]),
        .S(ap_sig_allocacmp_outNeurons_1[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 outNeurons_2_fu_93_p2_carry__2
       (.CI(outNeurons_2_fu_93_p2_carry__1_n_0),
        .CO({NLW_outNeurons_2_fu_93_p2_carry__2_CO_UNCONNECTED[3:2],outNeurons_2_fu_93_p2_carry__2_n_2,outNeurons_2_fu_93_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_outNeurons_2_fu_93_p2_carry__2_O_UNCONNECTED[3],outNeurons_2_fu_93_p2[15:13]}),
        .S({1'b0,ap_sig_allocacmp_outNeurons_1[15:13]}));
  FDRE \outNeurons_fu_42_reg[0] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[0]),
        .Q(\outNeurons_fu_42_reg_n_0_[0] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[10] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[10]),
        .Q(\outNeurons_fu_42_reg_n_0_[10] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[11] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[11]),
        .Q(\outNeurons_fu_42_reg_n_0_[11] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[12] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[12]),
        .Q(\outNeurons_fu_42_reg_n_0_[12] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[13] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[13]),
        .Q(\outNeurons_fu_42_reg_n_0_[13] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[14] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[14]),
        .Q(\outNeurons_fu_42_reg_n_0_[14] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[15] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[15]),
        .Q(\outNeurons_fu_42_reg_n_0_[15] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[1] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[1]),
        .Q(\outNeurons_fu_42_reg_n_0_[1] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[2] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[2]),
        .Q(\outNeurons_fu_42_reg_n_0_[2] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[3] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[3]),
        .Q(\outNeurons_fu_42_reg_n_0_[3] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[4] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[4]),
        .Q(\outNeurons_fu_42_reg_n_0_[4] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[5] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[5]),
        .Q(\outNeurons_fu_42_reg_n_0_[5] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[6] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[6]),
        .Q(\outNeurons_fu_42_reg_n_0_[6] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[7] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[7]),
        .Q(\outNeurons_fu_42_reg_n_0_[7] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[8] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[8]),
        .Q(\outNeurons_fu_42_reg_n_0_[8] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[9] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[9]),
        .Q(\outNeurons_fu_42_reg_n_0_[9] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \zext_ln33_reg_119_reg[0] 
       (.C(ap_clk),
        .CE(outNeurons_fu_421),
        .D(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_121_bias_address0),
        .Q(zext_ln33_reg_119_reg[0]),
        .R(1'b0));
  FDRE \zext_ln33_reg_119_reg[1] 
       (.C(ap_clk),
        .CE(outNeurons_fu_421),
        .D(D[0]),
        .Q(zext_ln33_reg_119_reg[1]),
        .R(1'b0));
  FDRE \zext_ln33_reg_119_reg[2] 
       (.C(ap_clk),
        .CE(outNeurons_fu_421),
        .D(D[1]),
        .Q(zext_ln33_reg_119_reg[2]),
        .R(1'b0));
  FDRE \zext_ln33_reg_119_reg[3] 
       (.C(ap_clk),
        .CE(outNeurons_fu_421),
        .D(D[2]),
        .Q(zext_ln33_reg_119_reg[3]),
        .R(1'b0));
  FDRE \zext_ln33_reg_119_reg[4] 
       (.C(ap_clk),
        .CE(outNeurons_fu_421),
        .D(D[3]),
        .Q(zext_ln33_reg_119_reg[4]),
        .R(1'b0));
  FDRE \zext_ln33_reg_119_reg[5] 
       (.C(ap_clk),
        .CE(outNeurons_fu_421),
        .D(D[4]),
        .Q(zext_ln33_reg_119_reg[5]),
        .R(1'b0));
  FDRE \zext_ln33_reg_119_reg[6] 
       (.C(ap_clk),
        .CE(outNeurons_fu_421),
        .D(D[5]),
        .Q(zext_ln33_reg_119_reg[6]),
        .R(1'b0));
  FDRE \zext_ln33_reg_119_reg[7] 
       (.C(ap_clk),
        .CE(outNeurons_fu_421),
        .D(D[6]),
        .Q(zext_ln33_reg_119_reg[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "nnlayer_nnlayer_Pipeline_VITIS_LOOP_39_3" *) 
module design_1_nnlayer_0_3_nnlayer_nnlayer_Pipeline_VITIS_LOOP_39_3
   (grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0,
    \lhs_fu_66_reg[15]_0 ,
    ADDRBWRADDR,
    D,
    \ap_CS_fsm_reg[3] ,
    \inNeurons_fu_62_reg[0]_0 ,
    ap_rst_n_inv,
    ap_clk,
    B,
    A,
    grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg,
    Q,
    icmp_ln39_fu_142_p2_carry__0_0,
    ap_rst_n,
    CO,
    \ap_CS_fsm_reg[5] ,
    \ap_CS_fsm_reg[5]_0 ,
    \ap_CS_fsm_reg[4] ,
    mem_reg_0_0_0,
    \int_input_r_shift0_reg[0] );
  output [15:0]grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0;
  output [15:0]\lhs_fu_66_reg[15]_0 ;
  output [6:0]ADDRBWRADDR;
  output [1:0]D;
  output \ap_CS_fsm_reg[3] ;
  output \inNeurons_fu_62_reg[0]_0 ;
  input ap_rst_n_inv;
  input ap_clk;
  input [15:0]B;
  input [15:0]A;
  input grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg;
  input [15:0]Q;
  input [15:0]icmp_ln39_fu_142_p2_carry__0_0;
  input ap_rst_n;
  input [0:0]CO;
  input \ap_CS_fsm_reg[5] ;
  input \ap_CS_fsm_reg[5]_0 ;
  input [2:0]\ap_CS_fsm_reg[4] ;
  input [15:0]mem_reg_0_0_0;
  input \int_input_r_shift0_reg[0] ;

  wire [15:0]A;
  wire [6:0]ADDRBWRADDR;
  wire [15:0]B;
  wire [0:0]CO;
  wire [1:0]D;
  wire [15:0]Q;
  wire add_ln42_fu_154_p2_carry__0_n_0;
  wire add_ln42_fu_154_p2_carry__0_n_1;
  wire add_ln42_fu_154_p2_carry__0_n_2;
  wire add_ln42_fu_154_p2_carry__0_n_3;
  wire add_ln42_fu_154_p2_carry__1_n_0;
  wire add_ln42_fu_154_p2_carry__1_n_1;
  wire add_ln42_fu_154_p2_carry__1_n_2;
  wire add_ln42_fu_154_p2_carry__1_n_3;
  wire add_ln42_fu_154_p2_carry__2_n_1;
  wire add_ln42_fu_154_p2_carry__2_n_2;
  wire add_ln42_fu_154_p2_carry__2_n_3;
  wire add_ln42_fu_154_p2_carry_n_0;
  wire add_ln42_fu_154_p2_carry_n_1;
  wire add_ln42_fu_154_p2_carry_n_2;
  wire add_ln42_fu_154_p2_carry_n_3;
  wire \ap_CS_fsm_reg[3] ;
  wire [2:0]\ap_CS_fsm_reg[4] ;
  wire \ap_CS_fsm_reg[5] ;
  wire \ap_CS_fsm_reg[5]_0 ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1__0_n_0;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter4;
  wire ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0;
  wire ap_loop_exit_ready_pp0_iter3_reg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [14:8]ap_sig_allocacmp_inNeurons_1;
  wire flow_control_loop_pipe_sequential_init_U_n_0;
  wire flow_control_loop_pipe_sequential_init_U_n_18;
  wire flow_control_loop_pipe_sequential_init_U_n_19;
  wire flow_control_loop_pipe_sequential_init_U_n_20;
  wire flow_control_loop_pipe_sequential_init_U_n_21;
  wire flow_control_loop_pipe_sequential_init_U_n_22;
  wire flow_control_loop_pipe_sequential_init_U_n_23;
  wire flow_control_loop_pipe_sequential_init_U_n_24;
  wire flow_control_loop_pipe_sequential_init_U_n_25;
  wire flow_control_loop_pipe_sequential_init_U_n_33;
  wire flow_control_loop_pipe_sequential_init_U_n_34;
  wire flow_control_loop_pipe_sequential_init_U_n_35;
  wire flow_control_loop_pipe_sequential_init_U_n_36;
  wire flow_control_loop_pipe_sequential_init_U_n_37;
  wire flow_control_loop_pipe_sequential_init_U_n_38;
  wire flow_control_loop_pipe_sequential_init_U_n_39;
  wire flow_control_loop_pipe_sequential_init_U_n_40;
  wire flow_control_loop_pipe_sequential_init_U_n_48;
  wire flow_control_loop_pipe_sequential_init_U_n_49;
  wire flow_control_loop_pipe_sequential_init_U_n_68;
  wire flow_control_loop_pipe_sequential_init_U_n_69;
  wire flow_control_loop_pipe_sequential_init_U_n_70;
  wire flow_control_loop_pipe_sequential_init_U_n_71;
  wire flow_control_loop_pipe_sequential_init_U_n_72;
  wire flow_control_loop_pipe_sequential_init_U_n_73;
  wire flow_control_loop_pipe_sequential_init_U_n_74;
  wire flow_control_loop_pipe_sequential_init_U_n_75;
  wire flow_control_loop_pipe_sequential_init_U_n_76;
  wire flow_control_loop_pipe_sequential_init_U_n_77;
  wire flow_control_loop_pipe_sequential_init_U_n_78;
  wire flow_control_loop_pipe_sequential_init_U_n_79;
  wire flow_control_loop_pipe_sequential_init_U_n_80;
  wire flow_control_loop_pipe_sequential_init_U_n_81;
  wire flow_control_loop_pipe_sequential_init_U_n_82;
  wire flow_control_loop_pipe_sequential_init_U_n_83;
  wire flow_control_loop_pipe_sequential_init_U_n_84;
  wire flow_control_loop_pipe_sequential_init_U_n_85;
  wire flow_control_loop_pipe_sequential_init_U_n_86;
  wire flow_control_loop_pipe_sequential_init_U_n_87;
  wire flow_control_loop_pipe_sequential_init_U_n_88;
  wire flow_control_loop_pipe_sequential_init_U_n_89;
  wire flow_control_loop_pipe_sequential_init_U_n_90;
  wire flow_control_loop_pipe_sequential_init_U_n_91;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_ready;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg;
  wire [15:0]grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0;
  wire icmp_ln39_fu_142_p2;
  wire [15:0]icmp_ln39_fu_142_p2_carry__0_0;
  wire icmp_ln39_fu_142_p2_carry__0_n_0;
  wire icmp_ln39_fu_142_p2_carry__0_n_1;
  wire icmp_ln39_fu_142_p2_carry__0_n_2;
  wire icmp_ln39_fu_142_p2_carry__0_n_3;
  wire icmp_ln39_fu_142_p2_carry_n_0;
  wire icmp_ln39_fu_142_p2_carry_n_1;
  wire icmp_ln39_fu_142_p2_carry_n_2;
  wire icmp_ln39_fu_142_p2_carry_n_3;
  wire [15:0]inNeurons_2_fu_148_p2;
  wire inNeurons_fu_620;
  wire \inNeurons_fu_62_reg[0]_0 ;
  wire \inNeurons_fu_62_reg_n_0_[0] ;
  wire \inNeurons_fu_62_reg_n_0_[10] ;
  wire \inNeurons_fu_62_reg_n_0_[11] ;
  wire \inNeurons_fu_62_reg_n_0_[12] ;
  wire \inNeurons_fu_62_reg_n_0_[13] ;
  wire \inNeurons_fu_62_reg_n_0_[14] ;
  wire \inNeurons_fu_62_reg_n_0_[15] ;
  wire \inNeurons_fu_62_reg_n_0_[1] ;
  wire \inNeurons_fu_62_reg_n_0_[2] ;
  wire \inNeurons_fu_62_reg_n_0_[3] ;
  wire \inNeurons_fu_62_reg_n_0_[4] ;
  wire \inNeurons_fu_62_reg_n_0_[5] ;
  wire \inNeurons_fu_62_reg_n_0_[6] ;
  wire \inNeurons_fu_62_reg_n_0_[7] ;
  wire \inNeurons_fu_62_reg_n_0_[8] ;
  wire \inNeurons_fu_62_reg_n_0_[9] ;
  wire \int_input_r_shift0_reg[0] ;
  wire [15:0]\lhs_fu_66_reg[15]_0 ;
  wire mac_muladd_16s_16s_24ns_24_4_1_U4_n_0;
  wire mac_muladd_16s_16s_24ns_24_4_1_U4_n_1;
  wire mac_muladd_16s_16s_24ns_24_4_1_U4_n_10;
  wire mac_muladd_16s_16s_24ns_24_4_1_U4_n_11;
  wire mac_muladd_16s_16s_24ns_24_4_1_U4_n_12;
  wire mac_muladd_16s_16s_24ns_24_4_1_U4_n_13;
  wire mac_muladd_16s_16s_24ns_24_4_1_U4_n_14;
  wire mac_muladd_16s_16s_24ns_24_4_1_U4_n_15;
  wire mac_muladd_16s_16s_24ns_24_4_1_U4_n_2;
  wire mac_muladd_16s_16s_24ns_24_4_1_U4_n_3;
  wire mac_muladd_16s_16s_24ns_24_4_1_U4_n_4;
  wire mac_muladd_16s_16s_24ns_24_4_1_U4_n_5;
  wire mac_muladd_16s_16s_24ns_24_4_1_U4_n_6;
  wire mac_muladd_16s_16s_24ns_24_4_1_U4_n_7;
  wire mac_muladd_16s_16s_24ns_24_4_1_U4_n_8;
  wire mac_muladd_16s_16s_24ns_24_4_1_U4_n_9;
  wire [15:0]mem_reg_0_0_0;
  wire [15:0]p_0_in;
  wire [3:3]NLW_add_ln42_fu_154_p2_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_icmp_ln39_fu_142_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln39_fu_142_p2_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_icmp_ln39_fu_142_p2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_icmp_ln39_fu_142_p2_carry__1_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln42_fu_154_p2_carry
       (.CI(1'b0),
        .CO({add_ln42_fu_154_p2_carry_n_0,add_ln42_fu_154_p2_carry_n_1,add_ln42_fu_154_p2_carry_n_2,add_ln42_fu_154_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({flow_control_loop_pipe_sequential_init_U_n_68,flow_control_loop_pipe_sequential_init_U_n_69,flow_control_loop_pipe_sequential_init_U_n_70,flow_control_loop_pipe_sequential_init_U_n_71}),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_80,flow_control_loop_pipe_sequential_init_U_n_81,flow_control_loop_pipe_sequential_init_U_n_82,flow_control_loop_pipe_sequential_init_U_n_83}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln42_fu_154_p2_carry__0
       (.CI(add_ln42_fu_154_p2_carry_n_0),
        .CO({add_ln42_fu_154_p2_carry__0_n_0,add_ln42_fu_154_p2_carry__0_n_1,add_ln42_fu_154_p2_carry__0_n_2,add_ln42_fu_154_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({flow_control_loop_pipe_sequential_init_U_n_72,flow_control_loop_pipe_sequential_init_U_n_73,flow_control_loop_pipe_sequential_init_U_n_74,flow_control_loop_pipe_sequential_init_U_n_75}),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0[7:4]),
        .S({flow_control_loop_pipe_sequential_init_U_n_84,flow_control_loop_pipe_sequential_init_U_n_85,flow_control_loop_pipe_sequential_init_U_n_86,flow_control_loop_pipe_sequential_init_U_n_87}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln42_fu_154_p2_carry__1
       (.CI(add_ln42_fu_154_p2_carry__0_n_0),
        .CO({add_ln42_fu_154_p2_carry__1_n_0,add_ln42_fu_154_p2_carry__1_n_1,add_ln42_fu_154_p2_carry__1_n_2,add_ln42_fu_154_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(ap_sig_allocacmp_inNeurons_1[11:8]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0[11:8]),
        .S({flow_control_loop_pipe_sequential_init_U_n_88,flow_control_loop_pipe_sequential_init_U_n_89,flow_control_loop_pipe_sequential_init_U_n_90,flow_control_loop_pipe_sequential_init_U_n_91}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln42_fu_154_p2_carry__2
       (.CI(add_ln42_fu_154_p2_carry__1_n_0),
        .CO({NLW_add_ln42_fu_154_p2_carry__2_CO_UNCONNECTED[3],add_ln42_fu_154_p2_carry__2_n_1,add_ln42_fu_154_p2_carry__2_n_2,add_ln42_fu_154_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,ap_sig_allocacmp_inNeurons_1[14:12]}),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_weights_address0[15:12]),
        .S({flow_control_loop_pipe_sequential_init_U_n_76,flow_control_loop_pipe_sequential_init_U_n_77,flow_control_loop_pipe_sequential_init_U_n_78,flow_control_loop_pipe_sequential_init_U_n_79}));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h80)) 
    ap_enable_reg_pp0_iter1_i_1__0
       (.I0(ap_rst_n),
        .I1(icmp_ln39_fu_142_p2),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .O(ap_enable_reg_pp0_iter1_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1__0_n_0),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1),
        .Q(ap_enable_reg_pp0_iter2),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter3_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter2),
        .Q(ap_enable_reg_pp0_iter3),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter4_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter3),
        .Q(ap_enable_reg_pp0_iter4),
        .R(ap_rst_n_inv));
  (* srl_name = "inst/\grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131/ap_loop_exit_ready_pp0_iter2_reg_reg_srl2 " *) 
  SRL16E ap_loop_exit_ready_pp0_iter2_reg_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_ready),
        .Q(ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_i_1
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .I1(icmp_ln39_fu_142_p2),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_ready));
  FDRE ap_loop_exit_ready_pp0_iter3_reg_reg__0
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0),
        .Q(ap_loop_exit_ready_pp0_iter3_reg),
        .R(1'b0));
  design_1_nnlayer_0_3_nnlayer_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U
       (.ADDRBWRADDR(ADDRBWRADDR),
        .CO(icmp_ln39_fu_142_p2),
        .D(p_0_in),
        .DI({flow_control_loop_pipe_sequential_init_U_n_18,flow_control_loop_pipe_sequential_init_U_n_19,flow_control_loop_pipe_sequential_init_U_n_20,flow_control_loop_pipe_sequential_init_U_n_21}),
        .E(inNeurons_fu_620),
        .P({mac_muladd_16s_16s_24ns_24_4_1_U4_n_0,mac_muladd_16s_16s_24ns_24_4_1_U4_n_1,mac_muladd_16s_16s_24ns_24_4_1_U4_n_2,mac_muladd_16s_16s_24ns_24_4_1_U4_n_3,mac_muladd_16s_16s_24ns_24_4_1_U4_n_4,mac_muladd_16s_16s_24ns_24_4_1_U4_n_5,mac_muladd_16s_16s_24ns_24_4_1_U4_n_6,mac_muladd_16s_16s_24ns_24_4_1_U4_n_7,mac_muladd_16s_16s_24ns_24_4_1_U4_n_8,mac_muladd_16s_16s_24ns_24_4_1_U4_n_9,mac_muladd_16s_16s_24ns_24_4_1_U4_n_10,mac_muladd_16s_16s_24ns_24_4_1_U4_n_11,mac_muladd_16s_16s_24ns_24_4_1_U4_n_12,mac_muladd_16s_16s_24ns_24_4_1_U4_n_13,mac_muladd_16s_16s_24ns_24_4_1_U4_n_14,mac_muladd_16s_16s_24ns_24_4_1_U4_n_15}),
        .Q(Q),
        .S({flow_control_loop_pipe_sequential_init_U_n_22,flow_control_loop_pipe_sequential_init_U_n_23,flow_control_loop_pipe_sequential_init_U_n_24,flow_control_loop_pipe_sequential_init_U_n_25}),
        .SR(flow_control_loop_pipe_sequential_init_U_n_0),
        .\ap_CS_fsm_reg[4] (\ap_CS_fsm_reg[4] ),
        .\ap_CS_fsm_reg[5] (CO),
        .\ap_CS_fsm_reg[5]_0 (\ap_CS_fsm_reg[5] ),
        .\ap_CS_fsm_reg[5]_1 (\ap_CS_fsm_reg[5]_0 ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter4(ap_enable_reg_pp0_iter4),
        .ap_loop_exit_ready_pp0_iter3_reg(ap_loop_exit_ready_pp0_iter3_reg),
        .ap_loop_init_int_reg_0({flow_control_loop_pipe_sequential_init_U_n_37,flow_control_loop_pipe_sequential_init_U_n_38,flow_control_loop_pipe_sequential_init_U_n_39,flow_control_loop_pipe_sequential_init_U_n_40}),
        .ap_loop_init_int_reg_1(flow_control_loop_pipe_sequential_init_U_n_48),
        .ap_loop_init_int_reg_2({flow_control_loop_pipe_sequential_init_U_n_76,flow_control_loop_pipe_sequential_init_U_n_77,flow_control_loop_pipe_sequential_init_U_n_78,flow_control_loop_pipe_sequential_init_U_n_79}),
        .ap_loop_init_int_reg_3({flow_control_loop_pipe_sequential_init_U_n_80,flow_control_loop_pipe_sequential_init_U_n_81,flow_control_loop_pipe_sequential_init_U_n_82,flow_control_loop_pipe_sequential_init_U_n_83}),
        .ap_loop_init_int_reg_4({flow_control_loop_pipe_sequential_init_U_n_84,flow_control_loop_pipe_sequential_init_U_n_85,flow_control_loop_pipe_sequential_init_U_n_86,flow_control_loop_pipe_sequential_init_U_n_87}),
        .ap_loop_init_int_reg_5({flow_control_loop_pipe_sequential_init_U_n_88,flow_control_loop_pipe_sequential_init_U_n_89,flow_control_loop_pipe_sequential_init_U_n_90,flow_control_loop_pipe_sequential_init_U_n_91}),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_sig_allocacmp_inNeurons_1(ap_sig_allocacmp_inNeurons_1),
        .\cmp1141_reg_243_reg[0] (D),
        .grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .icmp_ln39_fu_142_p2_carry__0(icmp_ln39_fu_142_p2_carry__0_0),
        .\inNeurons_fu_62_reg[0] (\inNeurons_fu_62_reg[0]_0 ),
        .\inNeurons_fu_62_reg[15] (flow_control_loop_pipe_sequential_init_U_n_49),
        .\inNeurons_fu_62_reg[15]_0 (inNeurons_2_fu_148_p2),
        .\inNeurons_fu_62_reg[3] ({flow_control_loop_pipe_sequential_init_U_n_68,flow_control_loop_pipe_sequential_init_U_n_69,flow_control_loop_pipe_sequential_init_U_n_70,flow_control_loop_pipe_sequential_init_U_n_71}),
        .\inNeurons_fu_62_reg[7] ({flow_control_loop_pipe_sequential_init_U_n_72,flow_control_loop_pipe_sequential_init_U_n_73,flow_control_loop_pipe_sequential_init_U_n_74,flow_control_loop_pipe_sequential_init_U_n_75}),
        .\int_input_r_shift0_reg[0] (\int_input_r_shift0_reg[0] ),
        .\lhs_fu_66_reg[15] (\lhs_fu_66_reg[15]_0 ),
        .mem_reg_0_0_0({\inNeurons_fu_62_reg_n_0_[15] ,\inNeurons_fu_62_reg_n_0_[14] ,\inNeurons_fu_62_reg_n_0_[13] ,\inNeurons_fu_62_reg_n_0_[12] ,\inNeurons_fu_62_reg_n_0_[11] ,\inNeurons_fu_62_reg_n_0_[10] ,\inNeurons_fu_62_reg_n_0_[9] ,\inNeurons_fu_62_reg_n_0_[8] ,\inNeurons_fu_62_reg_n_0_[7] ,\inNeurons_fu_62_reg_n_0_[6] ,\inNeurons_fu_62_reg_n_0_[5] ,\inNeurons_fu_62_reg_n_0_[4] ,\inNeurons_fu_62_reg_n_0_[3] ,\inNeurons_fu_62_reg_n_0_[2] ,\inNeurons_fu_62_reg_n_0_[1] ,\inNeurons_fu_62_reg_n_0_[0] }),
        .mem_reg_0_0_0_0(mem_reg_0_0_0),
        .\numOfInNeurons_read_reg_212_reg[14] ({flow_control_loop_pipe_sequential_init_U_n_33,flow_control_loop_pipe_sequential_init_U_n_34,flow_control_loop_pipe_sequential_init_U_n_35,flow_control_loop_pipe_sequential_init_U_n_36}));
  LUT3 #(
    .INIT(8'hEA)) 
    grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg_i_1
       (.I0(\ap_CS_fsm_reg[4] [1]),
        .I1(icmp_ln39_fu_142_p2),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_39_3_fu_131_ap_start_reg),
        .O(\ap_CS_fsm_reg[3] ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln39_fu_142_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln39_fu_142_p2_carry_n_0,icmp_ln39_fu_142_p2_carry_n_1,icmp_ln39_fu_142_p2_carry_n_2,icmp_ln39_fu_142_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({flow_control_loop_pipe_sequential_init_U_n_18,flow_control_loop_pipe_sequential_init_U_n_19,flow_control_loop_pipe_sequential_init_U_n_20,flow_control_loop_pipe_sequential_init_U_n_21}),
        .O(NLW_icmp_ln39_fu_142_p2_carry_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_22,flow_control_loop_pipe_sequential_init_U_n_23,flow_control_loop_pipe_sequential_init_U_n_24,flow_control_loop_pipe_sequential_init_U_n_25}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln39_fu_142_p2_carry__0
       (.CI(icmp_ln39_fu_142_p2_carry_n_0),
        .CO({icmp_ln39_fu_142_p2_carry__0_n_0,icmp_ln39_fu_142_p2_carry__0_n_1,icmp_ln39_fu_142_p2_carry__0_n_2,icmp_ln39_fu_142_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({flow_control_loop_pipe_sequential_init_U_n_33,flow_control_loop_pipe_sequential_init_U_n_34,flow_control_loop_pipe_sequential_init_U_n_35,flow_control_loop_pipe_sequential_init_U_n_36}),
        .O(NLW_icmp_ln39_fu_142_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_37,flow_control_loop_pipe_sequential_init_U_n_38,flow_control_loop_pipe_sequential_init_U_n_39,flow_control_loop_pipe_sequential_init_U_n_40}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln39_fu_142_p2_carry__1
       (.CI(icmp_ln39_fu_142_p2_carry__0_n_0),
        .CO({NLW_icmp_ln39_fu_142_p2_carry__1_CO_UNCONNECTED[3:1],icmp_ln39_fu_142_p2}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,flow_control_loop_pipe_sequential_init_U_n_49}),
        .O(NLW_icmp_ln39_fu_142_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,flow_control_loop_pipe_sequential_init_U_n_48}));
  FDRE \inNeurons_fu_62_reg[0] 
       (.C(ap_clk),
        .CE(inNeurons_fu_620),
        .D(inNeurons_2_fu_148_p2[0]),
        .Q(\inNeurons_fu_62_reg_n_0_[0] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE \inNeurons_fu_62_reg[10] 
       (.C(ap_clk),
        .CE(inNeurons_fu_620),
        .D(inNeurons_2_fu_148_p2[10]),
        .Q(\inNeurons_fu_62_reg_n_0_[10] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE \inNeurons_fu_62_reg[11] 
       (.C(ap_clk),
        .CE(inNeurons_fu_620),
        .D(inNeurons_2_fu_148_p2[11]),
        .Q(\inNeurons_fu_62_reg_n_0_[11] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE \inNeurons_fu_62_reg[12] 
       (.C(ap_clk),
        .CE(inNeurons_fu_620),
        .D(inNeurons_2_fu_148_p2[12]),
        .Q(\inNeurons_fu_62_reg_n_0_[12] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE \inNeurons_fu_62_reg[13] 
       (.C(ap_clk),
        .CE(inNeurons_fu_620),
        .D(inNeurons_2_fu_148_p2[13]),
        .Q(\inNeurons_fu_62_reg_n_0_[13] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE \inNeurons_fu_62_reg[14] 
       (.C(ap_clk),
        .CE(inNeurons_fu_620),
        .D(inNeurons_2_fu_148_p2[14]),
        .Q(\inNeurons_fu_62_reg_n_0_[14] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE \inNeurons_fu_62_reg[15] 
       (.C(ap_clk),
        .CE(inNeurons_fu_620),
        .D(inNeurons_2_fu_148_p2[15]),
        .Q(\inNeurons_fu_62_reg_n_0_[15] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE \inNeurons_fu_62_reg[1] 
       (.C(ap_clk),
        .CE(inNeurons_fu_620),
        .D(inNeurons_2_fu_148_p2[1]),
        .Q(\inNeurons_fu_62_reg_n_0_[1] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE \inNeurons_fu_62_reg[2] 
       (.C(ap_clk),
        .CE(inNeurons_fu_620),
        .D(inNeurons_2_fu_148_p2[2]),
        .Q(\inNeurons_fu_62_reg_n_0_[2] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE \inNeurons_fu_62_reg[3] 
       (.C(ap_clk),
        .CE(inNeurons_fu_620),
        .D(inNeurons_2_fu_148_p2[3]),
        .Q(\inNeurons_fu_62_reg_n_0_[3] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE \inNeurons_fu_62_reg[4] 
       (.C(ap_clk),
        .CE(inNeurons_fu_620),
        .D(inNeurons_2_fu_148_p2[4]),
        .Q(\inNeurons_fu_62_reg_n_0_[4] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE \inNeurons_fu_62_reg[5] 
       (.C(ap_clk),
        .CE(inNeurons_fu_620),
        .D(inNeurons_2_fu_148_p2[5]),
        .Q(\inNeurons_fu_62_reg_n_0_[5] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE \inNeurons_fu_62_reg[6] 
       (.C(ap_clk),
        .CE(inNeurons_fu_620),
        .D(inNeurons_2_fu_148_p2[6]),
        .Q(\inNeurons_fu_62_reg_n_0_[6] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE \inNeurons_fu_62_reg[7] 
       (.C(ap_clk),
        .CE(inNeurons_fu_620),
        .D(inNeurons_2_fu_148_p2[7]),
        .Q(\inNeurons_fu_62_reg_n_0_[7] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE \inNeurons_fu_62_reg[8] 
       (.C(ap_clk),
        .CE(inNeurons_fu_620),
        .D(inNeurons_2_fu_148_p2[8]),
        .Q(\inNeurons_fu_62_reg_n_0_[8] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE \inNeurons_fu_62_reg[9] 
       (.C(ap_clk),
        .CE(inNeurons_fu_620),
        .D(inNeurons_2_fu_148_p2[9]),
        .Q(\inNeurons_fu_62_reg_n_0_[9] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE \lhs_fu_66_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\lhs_fu_66_reg[15]_0 [0]),
        .R(1'b0));
  FDRE \lhs_fu_66_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(\lhs_fu_66_reg[15]_0 [10]),
        .R(1'b0));
  FDRE \lhs_fu_66_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[11]),
        .Q(\lhs_fu_66_reg[15]_0 [11]),
        .R(1'b0));
  FDRE \lhs_fu_66_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[12]),
        .Q(\lhs_fu_66_reg[15]_0 [12]),
        .R(1'b0));
  FDRE \lhs_fu_66_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[13]),
        .Q(\lhs_fu_66_reg[15]_0 [13]),
        .R(1'b0));
  FDRE \lhs_fu_66_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[14]),
        .Q(\lhs_fu_66_reg[15]_0 [14]),
        .R(1'b0));
  FDRE \lhs_fu_66_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[15]),
        .Q(\lhs_fu_66_reg[15]_0 [15]),
        .R(1'b0));
  FDRE \lhs_fu_66_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(\lhs_fu_66_reg[15]_0 [1]),
        .R(1'b0));
  FDRE \lhs_fu_66_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(\lhs_fu_66_reg[15]_0 [2]),
        .R(1'b0));
  FDRE \lhs_fu_66_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(\lhs_fu_66_reg[15]_0 [3]),
        .R(1'b0));
  FDRE \lhs_fu_66_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(\lhs_fu_66_reg[15]_0 [4]),
        .R(1'b0));
  FDRE \lhs_fu_66_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(\lhs_fu_66_reg[15]_0 [5]),
        .R(1'b0));
  FDRE \lhs_fu_66_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(\lhs_fu_66_reg[15]_0 [6]),
        .R(1'b0));
  FDRE \lhs_fu_66_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(\lhs_fu_66_reg[15]_0 [7]),
        .R(1'b0));
  FDRE \lhs_fu_66_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(\lhs_fu_66_reg[15]_0 [8]),
        .R(1'b0));
  FDRE \lhs_fu_66_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(\lhs_fu_66_reg[15]_0 [9]),
        .R(1'b0));
  design_1_nnlayer_0_3_nnlayer_mac_muladd_16s_16s_24ns_24_4_1 mac_muladd_16s_16s_24ns_24_4_1_U4
       (.A(A),
        .B(B),
        .P({mac_muladd_16s_16s_24ns_24_4_1_U4_n_0,mac_muladd_16s_16s_24ns_24_4_1_U4_n_1,mac_muladd_16s_16s_24ns_24_4_1_U4_n_2,mac_muladd_16s_16s_24ns_24_4_1_U4_n_3,mac_muladd_16s_16s_24ns_24_4_1_U4_n_4,mac_muladd_16s_16s_24ns_24_4_1_U4_n_5,mac_muladd_16s_16s_24ns_24_4_1_U4_n_6,mac_muladd_16s_16s_24ns_24_4_1_U4_n_7,mac_muladd_16s_16s_24ns_24_4_1_U4_n_8,mac_muladd_16s_16s_24ns_24_4_1_U4_n_9,mac_muladd_16s_16s_24ns_24_4_1_U4_n_10,mac_muladd_16s_16s_24ns_24_4_1_U4_n_11,mac_muladd_16s_16s_24ns_24_4_1_U4_n_12,mac_muladd_16s_16s_24ns_24_4_1_U4_n_13,mac_muladd_16s_16s_24ns_24_4_1_U4_n_14,mac_muladd_16s_16s_24ns_24_4_1_U4_n_15}),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter4(ap_enable_reg_pp0_iter4),
        .p_reg_reg(\lhs_fu_66_reg[15]_0 ));
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
