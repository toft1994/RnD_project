// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Mar  8 15:34:02 2022
// Host        : DESKTOP-IFL7HB3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/jespe/Desktop/Uni_Civil_10_Semester/RnD/vivado_project/vivado_project.gen/sources_1/bd/design_1/ip/design_1_nnlayer_0_1/design_1_nnlayer_0_1_sim_netlist.v
// Design      : design_1_nnlayer_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_nnlayer_0_1,nnlayer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "nnlayer,Vivado 2021.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module design_1_nnlayer_0_1
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [16:0]s_axi_control_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) output [1:0]s_axi_control_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) input [16:0]s_axi_control_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 17, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_control_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [16:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [16:0]s_axi_control_AWADDR;
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
  (* C_S_AXI_CONTROL_ADDR_WIDTH = "17" *) 
  (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_state1 = "5'b00001" *) 
  (* ap_ST_fsm_state2 = "5'b00010" *) 
  (* ap_ST_fsm_state3 = "5'b00100" *) 
  (* ap_ST_fsm_state4 = "5'b01000" *) 
  (* ap_ST_fsm_state5 = "5'b10000" *) 
  design_1_nnlayer_0_1_nnlayer inst
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

(* C_S_AXI_CONTROL_ADDR_WIDTH = "17" *) (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ORIG_REF_NAME = "nnlayer" *) 
(* ap_ST_fsm_state1 = "5'b00001" *) (* ap_ST_fsm_state2 = "5'b00010" *) (* ap_ST_fsm_state3 = "5'b00100" *) 
(* ap_ST_fsm_state4 = "5'b01000" *) (* ap_ST_fsm_state5 = "5'b10000" *) (* hls_module = "yes" *) 
module design_1_nnlayer_0_1_nnlayer
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
  input [16:0]s_axi_control_AWADDR;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  input [16:0]s_axi_control_ARADDR;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  output [1:0]s_axi_control_BRESP;
  output interrupt;

  wire \<const0> ;
  wire [7:0]activation;
  wire [7:0]activation_read_reg_236;
  wire \ap_CS_fsm[2]_i_4_n_3 ;
  wire \ap_CS_fsm[2]_i_5_n_3 ;
  wire \ap_CS_fsm[2]_i_6_n_3 ;
  wire \ap_CS_fsm[2]_i_7_n_3 ;
  wire \ap_CS_fsm[2]_i_8_n_3 ;
  wire \ap_CS_fsm[2]_i_9_n_3 ;
  wire \ap_CS_fsm_reg[2]_i_2_n_6 ;
  wire \ap_CS_fsm_reg[2]_i_3_n_3 ;
  wire \ap_CS_fsm_reg[2]_i_3_n_4 ;
  wire \ap_CS_fsm_reg[2]_i_3_n_5 ;
  wire \ap_CS_fsm_reg[2]_i_3_n_6 ;
  wire ap_CS_fsm_state1;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire [4:1]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_NS_fsm12_out;
  wire ap_clk;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire bias_ce0;
  wire control_s_axi_U_n_5;
  wire control_s_axi_U_n_57;
  wire control_s_axi_U_n_58;
  wire control_s_axi_U_n_59;
  wire control_s_axi_U_n_6;
  wire control_s_axi_U_n_60;
  wire control_s_axi_U_n_61;
  wire control_s_axi_U_n_62;
  wire control_s_axi_U_n_63;
  wire control_s_axi_U_n_64;
  wire control_s_axi_U_n_65;
  wire control_s_axi_U_n_66;
  wire control_s_axi_U_n_67;
  wire control_s_axi_U_n_68;
  wire control_s_axi_U_n_69;
  wire control_s_axi_U_n_7;
  wire control_s_axi_U_n_70;
  wire control_s_axi_U_n_71;
  wire control_s_axi_U_n_72;
  wire control_s_axi_U_n_8;
  wire [7:0]empty_reg_276;
  wire \empty_reg_276[7]_i_3_n_3 ;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg0;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_n_17;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_n_18;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_n_19;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_n_4;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_n_5;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_n_6;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg;
  wire [6:1]grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_input_r_address0;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_n_66;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_n_67;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_n_68;
  wire [14:0]grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0;
  wire icmp_ln31_fu_165_p2;
  wire icmp_ln43_fu_199_p2;
  wire icmp_ln43_reg_272;
  wire \icmp_ln43_reg_272[0]_i_1_n_3 ;
  wire [15:0]input_r_q0;
  wire [31:24]\int_output_r/p_1_in ;
  wire [3:1]int_output_r_be0;
  wire interrupt;
  wire [15:0]numOfInNeurons;
  wire [15:0]numOfInNeurons_read_reg_247;
  wire [15:0]numOfOutNeurons;
  wire \numOfOutNeurons_read_reg_241_reg_n_3_[0] ;
  wire \numOfOutNeurons_read_reg_241_reg_n_3_[10] ;
  wire \numOfOutNeurons_read_reg_241_reg_n_3_[11] ;
  wire \numOfOutNeurons_read_reg_241_reg_n_3_[12] ;
  wire \numOfOutNeurons_read_reg_241_reg_n_3_[13] ;
  wire \numOfOutNeurons_read_reg_241_reg_n_3_[14] ;
  wire \numOfOutNeurons_read_reg_241_reg_n_3_[15] ;
  wire \numOfOutNeurons_read_reg_241_reg_n_3_[1] ;
  wire \numOfOutNeurons_read_reg_241_reg_n_3_[2] ;
  wire \numOfOutNeurons_read_reg_241_reg_n_3_[3] ;
  wire \numOfOutNeurons_read_reg_241_reg_n_3_[4] ;
  wire \numOfOutNeurons_read_reg_241_reg_n_3_[5] ;
  wire \numOfOutNeurons_read_reg_241_reg_n_3_[6] ;
  wire \numOfOutNeurons_read_reg_241_reg_n_3_[7] ;
  wire \numOfOutNeurons_read_reg_241_reg_n_3_[8] ;
  wire \numOfOutNeurons_read_reg_241_reg_n_3_[9] ;
  wire [7:0]outNeurons_1_reg_259;
  wire \outNeurons_fu_78[0]_i_2_n_3 ;
  wire [7:0]outNeurons_fu_78_reg;
  wire \outNeurons_fu_78_reg[0]_i_1_n_10 ;
  wire \outNeurons_fu_78_reg[0]_i_1_n_3 ;
  wire \outNeurons_fu_78_reg[0]_i_1_n_4 ;
  wire \outNeurons_fu_78_reg[0]_i_1_n_5 ;
  wire \outNeurons_fu_78_reg[0]_i_1_n_6 ;
  wire \outNeurons_fu_78_reg[0]_i_1_n_7 ;
  wire \outNeurons_fu_78_reg[0]_i_1_n_8 ;
  wire \outNeurons_fu_78_reg[0]_i_1_n_9 ;
  wire \outNeurons_fu_78_reg[12]_i_1_n_10 ;
  wire \outNeurons_fu_78_reg[12]_i_1_n_4 ;
  wire \outNeurons_fu_78_reg[12]_i_1_n_5 ;
  wire \outNeurons_fu_78_reg[12]_i_1_n_6 ;
  wire \outNeurons_fu_78_reg[12]_i_1_n_7 ;
  wire \outNeurons_fu_78_reg[12]_i_1_n_8 ;
  wire \outNeurons_fu_78_reg[12]_i_1_n_9 ;
  wire \outNeurons_fu_78_reg[4]_i_1_n_10 ;
  wire \outNeurons_fu_78_reg[4]_i_1_n_3 ;
  wire \outNeurons_fu_78_reg[4]_i_1_n_4 ;
  wire \outNeurons_fu_78_reg[4]_i_1_n_5 ;
  wire \outNeurons_fu_78_reg[4]_i_1_n_6 ;
  wire \outNeurons_fu_78_reg[4]_i_1_n_7 ;
  wire \outNeurons_fu_78_reg[4]_i_1_n_8 ;
  wire \outNeurons_fu_78_reg[4]_i_1_n_9 ;
  wire \outNeurons_fu_78_reg[8]_i_1_n_10 ;
  wire \outNeurons_fu_78_reg[8]_i_1_n_3 ;
  wire \outNeurons_fu_78_reg[8]_i_1_n_4 ;
  wire \outNeurons_fu_78_reg[8]_i_1_n_5 ;
  wire \outNeurons_fu_78_reg[8]_i_1_n_6 ;
  wire \outNeurons_fu_78_reg[8]_i_1_n_7 ;
  wire \outNeurons_fu_78_reg[8]_i_1_n_8 ;
  wire \outNeurons_fu_78_reg[8]_i_1_n_9 ;
  wire [15:8]outNeurons_fu_78_reg__0;
  wire [7:1]output_r_address0;
  wire output_r_ce0;
  wire [15:0]output_r_d0;
  wire [16:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [16:0]s_axi_control_AWADDR;
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
  wire [15:0]tmp_fu_54;
  wire [14:0]trunc_ln35_reg_267;
  wire \trunc_ln35_reg_267[14]_i_1_n_3 ;
  wire \weightIndexAdded_fu_82[0]_i_3_n_3 ;
  wire \weightIndexAdded_fu_82[0]_i_4_n_3 ;
  wire \weightIndexAdded_fu_82[0]_i_5_n_3 ;
  wire \weightIndexAdded_fu_82[0]_i_6_n_3 ;
  wire \weightIndexAdded_fu_82[12]_i_2_n_3 ;
  wire \weightIndexAdded_fu_82[12]_i_3_n_3 ;
  wire \weightIndexAdded_fu_82[12]_i_4_n_3 ;
  wire \weightIndexAdded_fu_82[4]_i_2_n_3 ;
  wire \weightIndexAdded_fu_82[4]_i_3_n_3 ;
  wire \weightIndexAdded_fu_82[4]_i_4_n_3 ;
  wire \weightIndexAdded_fu_82[4]_i_5_n_3 ;
  wire \weightIndexAdded_fu_82[8]_i_2_n_3 ;
  wire \weightIndexAdded_fu_82[8]_i_3_n_3 ;
  wire \weightIndexAdded_fu_82[8]_i_4_n_3 ;
  wire \weightIndexAdded_fu_82[8]_i_5_n_3 ;
  wire [14:0]weightIndexAdded_fu_82_reg;
  wire \weightIndexAdded_fu_82_reg[0]_i_2_n_10 ;
  wire \weightIndexAdded_fu_82_reg[0]_i_2_n_3 ;
  wire \weightIndexAdded_fu_82_reg[0]_i_2_n_4 ;
  wire \weightIndexAdded_fu_82_reg[0]_i_2_n_5 ;
  wire \weightIndexAdded_fu_82_reg[0]_i_2_n_6 ;
  wire \weightIndexAdded_fu_82_reg[0]_i_2_n_7 ;
  wire \weightIndexAdded_fu_82_reg[0]_i_2_n_8 ;
  wire \weightIndexAdded_fu_82_reg[0]_i_2_n_9 ;
  wire \weightIndexAdded_fu_82_reg[12]_i_1_n_10 ;
  wire \weightIndexAdded_fu_82_reg[12]_i_1_n_5 ;
  wire \weightIndexAdded_fu_82_reg[12]_i_1_n_6 ;
  wire \weightIndexAdded_fu_82_reg[12]_i_1_n_8 ;
  wire \weightIndexAdded_fu_82_reg[12]_i_1_n_9 ;
  wire \weightIndexAdded_fu_82_reg[4]_i_1_n_10 ;
  wire \weightIndexAdded_fu_82_reg[4]_i_1_n_3 ;
  wire \weightIndexAdded_fu_82_reg[4]_i_1_n_4 ;
  wire \weightIndexAdded_fu_82_reg[4]_i_1_n_5 ;
  wire \weightIndexAdded_fu_82_reg[4]_i_1_n_6 ;
  wire \weightIndexAdded_fu_82_reg[4]_i_1_n_7 ;
  wire \weightIndexAdded_fu_82_reg[4]_i_1_n_8 ;
  wire \weightIndexAdded_fu_82_reg[4]_i_1_n_9 ;
  wire \weightIndexAdded_fu_82_reg[8]_i_1_n_10 ;
  wire \weightIndexAdded_fu_82_reg[8]_i_1_n_3 ;
  wire \weightIndexAdded_fu_82_reg[8]_i_1_n_4 ;
  wire \weightIndexAdded_fu_82_reg[8]_i_1_n_5 ;
  wire \weightIndexAdded_fu_82_reg[8]_i_1_n_6 ;
  wire \weightIndexAdded_fu_82_reg[8]_i_1_n_7 ;
  wire \weightIndexAdded_fu_82_reg[8]_i_1_n_8 ;
  wire \weightIndexAdded_fu_82_reg[8]_i_1_n_9 ;
  wire [15:0]weights_q0;
  wire [7:0]zext_ln34_reg_281_reg;
  wire [3:2]\NLW_ap_CS_fsm_reg[2]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_ap_CS_fsm_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_CS_fsm_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_outNeurons_fu_78_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_weightIndexAdded_fu_82_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_weightIndexAdded_fu_82_reg[12]_i_1_O_UNCONNECTED ;

  assign ap_local_block = \<const0> ;
  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE \activation_read_reg_236_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(activation[0]),
        .Q(activation_read_reg_236[0]),
        .R(1'b0));
  FDRE \activation_read_reg_236_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(activation[1]),
        .Q(activation_read_reg_236[1]),
        .R(1'b0));
  FDRE \activation_read_reg_236_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(activation[2]),
        .Q(activation_read_reg_236[2]),
        .R(1'b0));
  FDRE \activation_read_reg_236_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(activation[3]),
        .Q(activation_read_reg_236[3]),
        .R(1'b0));
  FDRE \activation_read_reg_236_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(activation[4]),
        .Q(activation_read_reg_236[4]),
        .R(1'b0));
  FDRE \activation_read_reg_236_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(activation[5]),
        .Q(activation_read_reg_236[5]),
        .R(1'b0));
  FDRE \activation_read_reg_236_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(activation[6]),
        .Q(activation_read_reg_236[6]),
        .R(1'b0));
  FDRE \activation_read_reg_236_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(activation[7]),
        .Q(activation_read_reg_236[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \ap_CS_fsm[2]_i_4 
       (.I0(\numOfOutNeurons_read_reg_241_reg_n_3_[15] ),
        .I1(outNeurons_fu_78_reg__0[15]),
        .O(\ap_CS_fsm[2]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \ap_CS_fsm[2]_i_5 
       (.I0(outNeurons_fu_78_reg__0[12]),
        .I1(\numOfOutNeurons_read_reg_241_reg_n_3_[12] ),
        .I2(outNeurons_fu_78_reg__0[13]),
        .I3(\numOfOutNeurons_read_reg_241_reg_n_3_[13] ),
        .I4(\numOfOutNeurons_read_reg_241_reg_n_3_[14] ),
        .I5(outNeurons_fu_78_reg__0[14]),
        .O(\ap_CS_fsm[2]_i_5_n_3 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \ap_CS_fsm[2]_i_6 
       (.I0(outNeurons_fu_78_reg__0[9]),
        .I1(\numOfOutNeurons_read_reg_241_reg_n_3_[9] ),
        .I2(outNeurons_fu_78_reg__0[10]),
        .I3(\numOfOutNeurons_read_reg_241_reg_n_3_[10] ),
        .I4(\numOfOutNeurons_read_reg_241_reg_n_3_[11] ),
        .I5(outNeurons_fu_78_reg__0[11]),
        .O(\ap_CS_fsm[2]_i_6_n_3 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \ap_CS_fsm[2]_i_7 
       (.I0(outNeurons_fu_78_reg[7]),
        .I1(\numOfOutNeurons_read_reg_241_reg_n_3_[7] ),
        .I2(outNeurons_fu_78_reg[6]),
        .I3(\numOfOutNeurons_read_reg_241_reg_n_3_[6] ),
        .I4(\numOfOutNeurons_read_reg_241_reg_n_3_[8] ),
        .I5(outNeurons_fu_78_reg__0[8]),
        .O(\ap_CS_fsm[2]_i_7_n_3 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \ap_CS_fsm[2]_i_8 
       (.I0(outNeurons_fu_78_reg[5]),
        .I1(\numOfOutNeurons_read_reg_241_reg_n_3_[5] ),
        .I2(outNeurons_fu_78_reg[3]),
        .I3(\numOfOutNeurons_read_reg_241_reg_n_3_[3] ),
        .I4(\numOfOutNeurons_read_reg_241_reg_n_3_[4] ),
        .I5(outNeurons_fu_78_reg[4]),
        .O(\ap_CS_fsm[2]_i_8_n_3 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \ap_CS_fsm[2]_i_9 
       (.I0(outNeurons_fu_78_reg[2]),
        .I1(\numOfOutNeurons_read_reg_241_reg_n_3_[2] ),
        .I2(outNeurons_fu_78_reg[0]),
        .I3(\numOfOutNeurons_read_reg_241_reg_n_3_[0] ),
        .I4(\numOfOutNeurons_read_reg_241_reg_n_3_[1] ),
        .I5(outNeurons_fu_78_reg[1]),
        .O(\ap_CS_fsm[2]_i_9_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ap_CS_fsm[4]_i_2 
       (.I0(ap_CS_fsm_state2),
        .I1(icmp_ln31_fu_165_p2),
        .O(ap_NS_fsm1));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_n_4),
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
  CARRY4 \ap_CS_fsm_reg[2]_i_2 
       (.CI(\ap_CS_fsm_reg[2]_i_3_n_3 ),
        .CO({\NLW_ap_CS_fsm_reg[2]_i_2_CO_UNCONNECTED [3:2],icmp_ln31_fu_165_p2,\ap_CS_fsm_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ap_CS_fsm_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\ap_CS_fsm[2]_i_4_n_3 ,\ap_CS_fsm[2]_i_5_n_3 }));
  CARRY4 \ap_CS_fsm_reg[2]_i_3 
       (.CI(1'b0),
        .CO({\ap_CS_fsm_reg[2]_i_3_n_3 ,\ap_CS_fsm_reg[2]_i_3_n_4 ,\ap_CS_fsm_reg[2]_i_3_n_5 ,\ap_CS_fsm_reg[2]_i_3_n_6 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ap_CS_fsm_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({\ap_CS_fsm[2]_i_6_n_3 ,\ap_CS_fsm[2]_i_7_n_3 ,\ap_CS_fsm[2]_i_8_n_3 ,\ap_CS_fsm[2]_i_9_n_3 }));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_ce0),
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
  design_1_nnlayer_0_1_nnlayer_control_s_axi control_s_axi_U
       (.A(input_r_q0),
        .ADDRBWRADDR(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_input_r_address0),
        .B(weights_q0),
        .D(bias_ce0),
        .DIBDI({\int_output_r/p_1_in ,output_r_d0[7:0],output_r_d0[15:8]}),
        .Q(outNeurons_1_reg_259[7:1]),
        .S({control_s_axi_U_n_57,control_s_axi_U_n_58,control_s_axi_U_n_59,control_s_axi_U_n_60}),
        .SR(ap_rst_n_inv),
        .WEBWE({int_output_r_be0[3],int_output_r_be0[1]}),
        .\ap_CS_fsm_reg[1] ({ap_CS_fsm_state4,ap_CS_fsm_state1}),
        .\ap_CS_fsm_reg[3] (control_s_axi_U_n_8),
        .\ap_CS_fsm_reg[3]_0 (ap_NS_fsm[1]),
        .ap_NS_fsm12_out(ap_NS_fsm12_out),
        .ap_clk(ap_clk),
        .ap_idle(ap_idle),
        .ap_rst_n(ap_rst_n),
        .grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0),
        .\int_activation_reg[7]_0 (activation),
        .int_ap_start_reg_0(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_n_5),
        .\int_bias_shift0_reg[0]_0 (control_s_axi_U_n_7),
        .\int_bias_shift0_reg[0]_1 (grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_n_66),
        .\int_input_r_shift0_reg[0]_0 (control_s_axi_U_n_5),
        .\int_input_r_shift0_reg[0]_1 (grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_n_68),
        .\int_numOfInNeurons_reg[15]_0 (numOfInNeurons),
        .\int_numOfOutNeurons_reg[15]_0 (numOfOutNeurons),
        .\int_output_r_shift0_reg[0]_0 (control_s_axi_U_n_6),
        .\int_output_r_shift0_reg[0]_1 (grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_n_18),
        .interrupt(interrupt),
        .mem_reg({control_s_axi_U_n_61,control_s_axi_U_n_62,control_s_axi_U_n_63,control_s_axi_U_n_64}),
        .mem_reg_0({control_s_axi_U_n_65,control_s_axi_U_n_66,control_s_axi_U_n_67,control_s_axi_U_n_68}),
        .mem_reg_1({control_s_axi_U_n_69,control_s_axi_U_n_70,control_s_axi_U_n_71,control_s_axi_U_n_72}),
        .mem_reg_2(output_r_address0),
        .mem_reg_3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_n_17),
        .mem_reg_4(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_n_6),
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
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .tmp_fu_54(tmp_fu_54));
  LUT3 #(
    .INIT(8'h80)) 
    \empty_reg_276[7]_i_1 
       (.I0(icmp_ln31_fu_165_p2),
        .I1(ap_CS_fsm_state2),
        .I2(icmp_ln43_fu_199_p2),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg0));
  LUT5 #(
    .INIT(32'h00000004)) 
    \empty_reg_276[7]_i_2 
       (.I0(activation_read_reg_236[2]),
        .I1(activation_read_reg_236[0]),
        .I2(activation_read_reg_236[5]),
        .I3(activation_read_reg_236[6]),
        .I4(\empty_reg_276[7]_i_3_n_3 ),
        .O(icmp_ln43_fu_199_p2));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \empty_reg_276[7]_i_3 
       (.I0(activation_read_reg_236[3]),
        .I1(activation_read_reg_236[1]),
        .I2(activation_read_reg_236[7]),
        .I3(activation_read_reg_236[4]),
        .O(\empty_reg_276[7]_i_3_n_3 ));
  FDRE \empty_reg_276_reg[0] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg0),
        .D(\numOfOutNeurons_read_reg_241_reg_n_3_[0] ),
        .Q(empty_reg_276[0]),
        .R(1'b0));
  FDRE \empty_reg_276_reg[1] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg0),
        .D(\numOfOutNeurons_read_reg_241_reg_n_3_[1] ),
        .Q(empty_reg_276[1]),
        .R(1'b0));
  FDRE \empty_reg_276_reg[2] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg0),
        .D(\numOfOutNeurons_read_reg_241_reg_n_3_[2] ),
        .Q(empty_reg_276[2]),
        .R(1'b0));
  FDRE \empty_reg_276_reg[3] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg0),
        .D(\numOfOutNeurons_read_reg_241_reg_n_3_[3] ),
        .Q(empty_reg_276[3]),
        .R(1'b0));
  FDRE \empty_reg_276_reg[4] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg0),
        .D(\numOfOutNeurons_read_reg_241_reg_n_3_[4] ),
        .Q(empty_reg_276[4]),
        .R(1'b0));
  FDRE \empty_reg_276_reg[5] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg0),
        .D(\numOfOutNeurons_read_reg_241_reg_n_3_[5] ),
        .Q(empty_reg_276[5]),
        .R(1'b0));
  FDRE \empty_reg_276_reg[6] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg0),
        .D(\numOfOutNeurons_read_reg_241_reg_n_3_[6] ),
        .Q(empty_reg_276[6]),
        .R(1'b0));
  FDRE \empty_reg_276_reg[7] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg0),
        .D(\numOfOutNeurons_read_reg_241_reg_n_3_[7] ),
        .Q(empty_reg_276[7]),
        .R(1'b0));
  design_1_nnlayer_0_1_nnlayer_nnlayer_Pipeline_VITIS_LOOP_10_1 grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145
       (.CO(icmp_ln31_fu_165_p2),
        .D({ap_NS_fsm[4],grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_n_4}),
        .Q({ap_CS_fsm_state5,ap_CS_fsm_state4,ap_CS_fsm_state2}),
        .SR(ap_rst_n_inv),
        .WEBWE({int_output_r_be0[3],int_output_r_be0[1]}),
        .\ap_CS_fsm_reg[1]_0 (grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_n_19),
        .\ap_CS_fsm_reg[4] (grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_n_5),
        .\ap_CS_fsm_reg[4]_0 (grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_n_17),
        .ap_NS_fsm1(ap_NS_fsm1),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg_reg_0(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_n_6),
        .ap_idle(ap_idle),
        .ap_rst_n(ap_rst_n),
        .grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .icmp_ln43_fu_199_p2(icmp_ln43_fu_199_p2),
        .icmp_ln43_reg_272(icmp_ln43_reg_272),
        .int_ap_start_i_3(empty_reg_276),
        .\int_output_r_shift0_reg[0] (grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_n_18),
        .\int_output_r_shift0_reg[0]_0 (control_s_axi_U_n_6),
        .mem_reg(zext_ln34_reg_281_reg),
        .mem_reg_0(control_s_axi_U_n_8),
        .output_r_ce0(output_r_ce0),
        .\zext_ln34_reg_281_reg[7] (output_r_address0));
  FDRE #(
    .INIT(1'b0)) 
    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_n_19),
        .Q(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .R(ap_rst_n_inv));
  design_1_nnlayer_0_1_nnlayer_nnlayer_Pipeline_VITIS_LOOP_35_2 grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134
       (.A(input_r_q0),
        .ADDRBWRADDR(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_input_r_address0),
        .B(weights_q0),
        .CO(icmp_ln31_fu_165_p2),
        .D({bias_ce0,ap_NS_fsm[2]}),
        .DIBDI({\int_output_r/p_1_in ,output_r_d0[7:0],output_r_d0[15:8]}),
        .Q(numOfInNeurons_read_reg_247),
        .S({control_s_axi_U_n_57,control_s_axi_U_n_58,control_s_axi_U_n_59,control_s_axi_U_n_60}),
        .SR(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_n_67),
        .grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0),
        .\inNeurons_fu_58_reg[0]_0 (grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_n_68),
        .\int_bias_shift0_reg[0] (outNeurons_1_reg_259[0]),
        .\int_bias_shift0_reg[0]_0 (control_s_axi_U_n_7),
        .\int_input_r_shift0_reg[0] (control_s_axi_U_n_5),
        .mem_reg({ap_CS_fsm_state4,ap_CS_fsm_state3,ap_CS_fsm_state2}),
        .mem_reg_0(zext_ln34_reg_281_reg[0]),
        .mem_reg_0_0(trunc_ln35_reg_267),
        .mem_reg_1({control_s_axi_U_n_61,control_s_axi_U_n_62,control_s_axi_U_n_63,control_s_axi_U_n_64}),
        .mem_reg_2({control_s_axi_U_n_65,control_s_axi_U_n_66,control_s_axi_U_n_67,control_s_axi_U_n_68}),
        .mem_reg_3({control_s_axi_U_n_69,control_s_axi_U_n_70,control_s_axi_U_n_71,control_s_axi_U_n_72}),
        .\outNeurons_1_reg_259_reg[0] (grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_n_66),
        .tmp_fu_54(tmp_fu_54));
  FDRE #(
    .INIT(1'b0)) 
    grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_n_67),
        .Q(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \icmp_ln43_reg_272[0]_i_1 
       (.I0(icmp_ln43_fu_199_p2),
        .I1(ap_CS_fsm_state2),
        .I2(icmp_ln31_fu_165_p2),
        .I3(icmp_ln43_reg_272),
        .O(\icmp_ln43_reg_272[0]_i_1_n_3 ));
  FDRE \icmp_ln43_reg_272_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln43_reg_272[0]_i_1_n_3 ),
        .Q(icmp_ln43_reg_272),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_247_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[0]),
        .Q(numOfInNeurons_read_reg_247[0]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_247_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[10]),
        .Q(numOfInNeurons_read_reg_247[10]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_247_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[11]),
        .Q(numOfInNeurons_read_reg_247[11]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_247_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[12]),
        .Q(numOfInNeurons_read_reg_247[12]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_247_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[13]),
        .Q(numOfInNeurons_read_reg_247[13]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_247_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[14]),
        .Q(numOfInNeurons_read_reg_247[14]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_247_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[15]),
        .Q(numOfInNeurons_read_reg_247[15]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_247_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[1]),
        .Q(numOfInNeurons_read_reg_247[1]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_247_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[2]),
        .Q(numOfInNeurons_read_reg_247[2]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_247_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[3]),
        .Q(numOfInNeurons_read_reg_247[3]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_247_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[4]),
        .Q(numOfInNeurons_read_reg_247[4]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_247_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[5]),
        .Q(numOfInNeurons_read_reg_247[5]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_247_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[6]),
        .Q(numOfInNeurons_read_reg_247[6]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_247_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[7]),
        .Q(numOfInNeurons_read_reg_247[7]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_247_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[8]),
        .Q(numOfInNeurons_read_reg_247[8]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_247_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[9]),
        .Q(numOfInNeurons_read_reg_247[9]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_241_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[0]),
        .Q(\numOfOutNeurons_read_reg_241_reg_n_3_[0] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_241_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[10]),
        .Q(\numOfOutNeurons_read_reg_241_reg_n_3_[10] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_241_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[11]),
        .Q(\numOfOutNeurons_read_reg_241_reg_n_3_[11] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_241_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[12]),
        .Q(\numOfOutNeurons_read_reg_241_reg_n_3_[12] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_241_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[13]),
        .Q(\numOfOutNeurons_read_reg_241_reg_n_3_[13] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_241_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[14]),
        .Q(\numOfOutNeurons_read_reg_241_reg_n_3_[14] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_241_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[15]),
        .Q(\numOfOutNeurons_read_reg_241_reg_n_3_[15] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_241_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[1]),
        .Q(\numOfOutNeurons_read_reg_241_reg_n_3_[1] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_241_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[2]),
        .Q(\numOfOutNeurons_read_reg_241_reg_n_3_[2] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_241_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[3]),
        .Q(\numOfOutNeurons_read_reg_241_reg_n_3_[3] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_241_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[4]),
        .Q(\numOfOutNeurons_read_reg_241_reg_n_3_[4] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_241_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[5]),
        .Q(\numOfOutNeurons_read_reg_241_reg_n_3_[5] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_241_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[6]),
        .Q(\numOfOutNeurons_read_reg_241_reg_n_3_[6] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_241_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[7]),
        .Q(\numOfOutNeurons_read_reg_241_reg_n_3_[7] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_241_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[8]),
        .Q(\numOfOutNeurons_read_reg_241_reg_n_3_[8] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_241_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[9]),
        .Q(\numOfOutNeurons_read_reg_241_reg_n_3_[9] ),
        .R(1'b0));
  FDRE \outNeurons_1_reg_259_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(outNeurons_fu_78_reg[0]),
        .Q(outNeurons_1_reg_259[0]),
        .R(1'b0));
  FDRE \outNeurons_1_reg_259_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(outNeurons_fu_78_reg[1]),
        .Q(outNeurons_1_reg_259[1]),
        .R(1'b0));
  FDRE \outNeurons_1_reg_259_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(outNeurons_fu_78_reg[2]),
        .Q(outNeurons_1_reg_259[2]),
        .R(1'b0));
  FDRE \outNeurons_1_reg_259_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(outNeurons_fu_78_reg[3]),
        .Q(outNeurons_1_reg_259[3]),
        .R(1'b0));
  FDRE \outNeurons_1_reg_259_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(outNeurons_fu_78_reg[4]),
        .Q(outNeurons_1_reg_259[4]),
        .R(1'b0));
  FDRE \outNeurons_1_reg_259_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(outNeurons_fu_78_reg[5]),
        .Q(outNeurons_1_reg_259[5]),
        .R(1'b0));
  FDRE \outNeurons_1_reg_259_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(outNeurons_fu_78_reg[6]),
        .Q(outNeurons_1_reg_259[6]),
        .R(1'b0));
  FDRE \outNeurons_1_reg_259_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(outNeurons_fu_78_reg[7]),
        .Q(outNeurons_1_reg_259[7]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \outNeurons_fu_78[0]_i_2 
       (.I0(outNeurons_fu_78_reg[0]),
        .O(\outNeurons_fu_78[0]_i_2_n_3 ));
  FDRE \outNeurons_fu_78_reg[0] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\outNeurons_fu_78_reg[0]_i_1_n_10 ),
        .Q(outNeurons_fu_78_reg[0]),
        .R(ap_NS_fsm12_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \outNeurons_fu_78_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\outNeurons_fu_78_reg[0]_i_1_n_3 ,\outNeurons_fu_78_reg[0]_i_1_n_4 ,\outNeurons_fu_78_reg[0]_i_1_n_5 ,\outNeurons_fu_78_reg[0]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\outNeurons_fu_78_reg[0]_i_1_n_7 ,\outNeurons_fu_78_reg[0]_i_1_n_8 ,\outNeurons_fu_78_reg[0]_i_1_n_9 ,\outNeurons_fu_78_reg[0]_i_1_n_10 }),
        .S({outNeurons_fu_78_reg[3:1],\outNeurons_fu_78[0]_i_2_n_3 }));
  FDRE \outNeurons_fu_78_reg[10] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\outNeurons_fu_78_reg[8]_i_1_n_8 ),
        .Q(outNeurons_fu_78_reg__0[10]),
        .R(ap_NS_fsm12_out));
  FDRE \outNeurons_fu_78_reg[11] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\outNeurons_fu_78_reg[8]_i_1_n_7 ),
        .Q(outNeurons_fu_78_reg__0[11]),
        .R(ap_NS_fsm12_out));
  FDRE \outNeurons_fu_78_reg[12] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\outNeurons_fu_78_reg[12]_i_1_n_10 ),
        .Q(outNeurons_fu_78_reg__0[12]),
        .R(ap_NS_fsm12_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \outNeurons_fu_78_reg[12]_i_1 
       (.CI(\outNeurons_fu_78_reg[8]_i_1_n_3 ),
        .CO({\NLW_outNeurons_fu_78_reg[12]_i_1_CO_UNCONNECTED [3],\outNeurons_fu_78_reg[12]_i_1_n_4 ,\outNeurons_fu_78_reg[12]_i_1_n_5 ,\outNeurons_fu_78_reg[12]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\outNeurons_fu_78_reg[12]_i_1_n_7 ,\outNeurons_fu_78_reg[12]_i_1_n_8 ,\outNeurons_fu_78_reg[12]_i_1_n_9 ,\outNeurons_fu_78_reg[12]_i_1_n_10 }),
        .S(outNeurons_fu_78_reg__0[15:12]));
  FDRE \outNeurons_fu_78_reg[13] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\outNeurons_fu_78_reg[12]_i_1_n_9 ),
        .Q(outNeurons_fu_78_reg__0[13]),
        .R(ap_NS_fsm12_out));
  FDRE \outNeurons_fu_78_reg[14] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\outNeurons_fu_78_reg[12]_i_1_n_8 ),
        .Q(outNeurons_fu_78_reg__0[14]),
        .R(ap_NS_fsm12_out));
  FDRE \outNeurons_fu_78_reg[15] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\outNeurons_fu_78_reg[12]_i_1_n_7 ),
        .Q(outNeurons_fu_78_reg__0[15]),
        .R(ap_NS_fsm12_out));
  FDRE \outNeurons_fu_78_reg[1] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\outNeurons_fu_78_reg[0]_i_1_n_9 ),
        .Q(outNeurons_fu_78_reg[1]),
        .R(ap_NS_fsm12_out));
  FDRE \outNeurons_fu_78_reg[2] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\outNeurons_fu_78_reg[0]_i_1_n_8 ),
        .Q(outNeurons_fu_78_reg[2]),
        .R(ap_NS_fsm12_out));
  FDRE \outNeurons_fu_78_reg[3] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\outNeurons_fu_78_reg[0]_i_1_n_7 ),
        .Q(outNeurons_fu_78_reg[3]),
        .R(ap_NS_fsm12_out));
  FDRE \outNeurons_fu_78_reg[4] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\outNeurons_fu_78_reg[4]_i_1_n_10 ),
        .Q(outNeurons_fu_78_reg[4]),
        .R(ap_NS_fsm12_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \outNeurons_fu_78_reg[4]_i_1 
       (.CI(\outNeurons_fu_78_reg[0]_i_1_n_3 ),
        .CO({\outNeurons_fu_78_reg[4]_i_1_n_3 ,\outNeurons_fu_78_reg[4]_i_1_n_4 ,\outNeurons_fu_78_reg[4]_i_1_n_5 ,\outNeurons_fu_78_reg[4]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\outNeurons_fu_78_reg[4]_i_1_n_7 ,\outNeurons_fu_78_reg[4]_i_1_n_8 ,\outNeurons_fu_78_reg[4]_i_1_n_9 ,\outNeurons_fu_78_reg[4]_i_1_n_10 }),
        .S(outNeurons_fu_78_reg[7:4]));
  FDRE \outNeurons_fu_78_reg[5] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\outNeurons_fu_78_reg[4]_i_1_n_9 ),
        .Q(outNeurons_fu_78_reg[5]),
        .R(ap_NS_fsm12_out));
  FDRE \outNeurons_fu_78_reg[6] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\outNeurons_fu_78_reg[4]_i_1_n_8 ),
        .Q(outNeurons_fu_78_reg[6]),
        .R(ap_NS_fsm12_out));
  FDRE \outNeurons_fu_78_reg[7] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\outNeurons_fu_78_reg[4]_i_1_n_7 ),
        .Q(outNeurons_fu_78_reg[7]),
        .R(ap_NS_fsm12_out));
  FDRE \outNeurons_fu_78_reg[8] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\outNeurons_fu_78_reg[8]_i_1_n_10 ),
        .Q(outNeurons_fu_78_reg__0[8]),
        .R(ap_NS_fsm12_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \outNeurons_fu_78_reg[8]_i_1 
       (.CI(\outNeurons_fu_78_reg[4]_i_1_n_3 ),
        .CO({\outNeurons_fu_78_reg[8]_i_1_n_3 ,\outNeurons_fu_78_reg[8]_i_1_n_4 ,\outNeurons_fu_78_reg[8]_i_1_n_5 ,\outNeurons_fu_78_reg[8]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\outNeurons_fu_78_reg[8]_i_1_n_7 ,\outNeurons_fu_78_reg[8]_i_1_n_8 ,\outNeurons_fu_78_reg[8]_i_1_n_9 ,\outNeurons_fu_78_reg[8]_i_1_n_10 }),
        .S(outNeurons_fu_78_reg__0[11:8]));
  FDRE \outNeurons_fu_78_reg[9] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\outNeurons_fu_78_reg[8]_i_1_n_9 ),
        .Q(outNeurons_fu_78_reg__0[9]),
        .R(ap_NS_fsm12_out));
  LUT2 #(
    .INIT(4'h2)) 
    \trunc_ln35_reg_267[14]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(icmp_ln31_fu_165_p2),
        .O(\trunc_ln35_reg_267[14]_i_1_n_3 ));
  FDRE \trunc_ln35_reg_267_reg[0] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(weightIndexAdded_fu_82_reg[0]),
        .Q(trunc_ln35_reg_267[0]),
        .R(1'b0));
  FDRE \trunc_ln35_reg_267_reg[10] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(weightIndexAdded_fu_82_reg[10]),
        .Q(trunc_ln35_reg_267[10]),
        .R(1'b0));
  FDRE \trunc_ln35_reg_267_reg[11] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(weightIndexAdded_fu_82_reg[11]),
        .Q(trunc_ln35_reg_267[11]),
        .R(1'b0));
  FDRE \trunc_ln35_reg_267_reg[12] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(weightIndexAdded_fu_82_reg[12]),
        .Q(trunc_ln35_reg_267[12]),
        .R(1'b0));
  FDRE \trunc_ln35_reg_267_reg[13] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(weightIndexAdded_fu_82_reg[13]),
        .Q(trunc_ln35_reg_267[13]),
        .R(1'b0));
  FDRE \trunc_ln35_reg_267_reg[14] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(weightIndexAdded_fu_82_reg[14]),
        .Q(trunc_ln35_reg_267[14]),
        .R(1'b0));
  FDRE \trunc_ln35_reg_267_reg[1] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(weightIndexAdded_fu_82_reg[1]),
        .Q(trunc_ln35_reg_267[1]),
        .R(1'b0));
  FDRE \trunc_ln35_reg_267_reg[2] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(weightIndexAdded_fu_82_reg[2]),
        .Q(trunc_ln35_reg_267[2]),
        .R(1'b0));
  FDRE \trunc_ln35_reg_267_reg[3] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(weightIndexAdded_fu_82_reg[3]),
        .Q(trunc_ln35_reg_267[3]),
        .R(1'b0));
  FDRE \trunc_ln35_reg_267_reg[4] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(weightIndexAdded_fu_82_reg[4]),
        .Q(trunc_ln35_reg_267[4]),
        .R(1'b0));
  FDRE \trunc_ln35_reg_267_reg[5] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(weightIndexAdded_fu_82_reg[5]),
        .Q(trunc_ln35_reg_267[5]),
        .R(1'b0));
  FDRE \trunc_ln35_reg_267_reg[6] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(weightIndexAdded_fu_82_reg[6]),
        .Q(trunc_ln35_reg_267[6]),
        .R(1'b0));
  FDRE \trunc_ln35_reg_267_reg[7] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(weightIndexAdded_fu_82_reg[7]),
        .Q(trunc_ln35_reg_267[7]),
        .R(1'b0));
  FDRE \trunc_ln35_reg_267_reg[8] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(weightIndexAdded_fu_82_reg[8]),
        .Q(trunc_ln35_reg_267[8]),
        .R(1'b0));
  FDRE \trunc_ln35_reg_267_reg[9] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(weightIndexAdded_fu_82_reg[9]),
        .Q(trunc_ln35_reg_267[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[0]_i_3 
       (.I0(numOfInNeurons_read_reg_247[3]),
        .I1(weightIndexAdded_fu_82_reg[3]),
        .O(\weightIndexAdded_fu_82[0]_i_3_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[0]_i_4 
       (.I0(numOfInNeurons_read_reg_247[2]),
        .I1(weightIndexAdded_fu_82_reg[2]),
        .O(\weightIndexAdded_fu_82[0]_i_4_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[0]_i_5 
       (.I0(numOfInNeurons_read_reg_247[1]),
        .I1(weightIndexAdded_fu_82_reg[1]),
        .O(\weightIndexAdded_fu_82[0]_i_5_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[0]_i_6 
       (.I0(numOfInNeurons_read_reg_247[0]),
        .I1(weightIndexAdded_fu_82_reg[0]),
        .O(\weightIndexAdded_fu_82[0]_i_6_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[12]_i_2 
       (.I0(numOfInNeurons_read_reg_247[14]),
        .I1(weightIndexAdded_fu_82_reg[14]),
        .O(\weightIndexAdded_fu_82[12]_i_2_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[12]_i_3 
       (.I0(numOfInNeurons_read_reg_247[13]),
        .I1(weightIndexAdded_fu_82_reg[13]),
        .O(\weightIndexAdded_fu_82[12]_i_3_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[12]_i_4 
       (.I0(numOfInNeurons_read_reg_247[12]),
        .I1(weightIndexAdded_fu_82_reg[12]),
        .O(\weightIndexAdded_fu_82[12]_i_4_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[4]_i_2 
       (.I0(numOfInNeurons_read_reg_247[7]),
        .I1(weightIndexAdded_fu_82_reg[7]),
        .O(\weightIndexAdded_fu_82[4]_i_2_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[4]_i_3 
       (.I0(numOfInNeurons_read_reg_247[6]),
        .I1(weightIndexAdded_fu_82_reg[6]),
        .O(\weightIndexAdded_fu_82[4]_i_3_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[4]_i_4 
       (.I0(numOfInNeurons_read_reg_247[5]),
        .I1(weightIndexAdded_fu_82_reg[5]),
        .O(\weightIndexAdded_fu_82[4]_i_4_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[4]_i_5 
       (.I0(numOfInNeurons_read_reg_247[4]),
        .I1(weightIndexAdded_fu_82_reg[4]),
        .O(\weightIndexAdded_fu_82[4]_i_5_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[8]_i_2 
       (.I0(numOfInNeurons_read_reg_247[11]),
        .I1(weightIndexAdded_fu_82_reg[11]),
        .O(\weightIndexAdded_fu_82[8]_i_2_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[8]_i_3 
       (.I0(numOfInNeurons_read_reg_247[10]),
        .I1(weightIndexAdded_fu_82_reg[10]),
        .O(\weightIndexAdded_fu_82[8]_i_3_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[8]_i_4 
       (.I0(numOfInNeurons_read_reg_247[9]),
        .I1(weightIndexAdded_fu_82_reg[9]),
        .O(\weightIndexAdded_fu_82[8]_i_4_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[8]_i_5 
       (.I0(numOfInNeurons_read_reg_247[8]),
        .I1(weightIndexAdded_fu_82_reg[8]),
        .O(\weightIndexAdded_fu_82[8]_i_5_n_3 ));
  FDRE \weightIndexAdded_fu_82_reg[0] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\weightIndexAdded_fu_82_reg[0]_i_2_n_10 ),
        .Q(weightIndexAdded_fu_82_reg[0]),
        .R(ap_NS_fsm12_out));
  CARRY4 \weightIndexAdded_fu_82_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\weightIndexAdded_fu_82_reg[0]_i_2_n_3 ,\weightIndexAdded_fu_82_reg[0]_i_2_n_4 ,\weightIndexAdded_fu_82_reg[0]_i_2_n_5 ,\weightIndexAdded_fu_82_reg[0]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI(numOfInNeurons_read_reg_247[3:0]),
        .O({\weightIndexAdded_fu_82_reg[0]_i_2_n_7 ,\weightIndexAdded_fu_82_reg[0]_i_2_n_8 ,\weightIndexAdded_fu_82_reg[0]_i_2_n_9 ,\weightIndexAdded_fu_82_reg[0]_i_2_n_10 }),
        .S({\weightIndexAdded_fu_82[0]_i_3_n_3 ,\weightIndexAdded_fu_82[0]_i_4_n_3 ,\weightIndexAdded_fu_82[0]_i_5_n_3 ,\weightIndexAdded_fu_82[0]_i_6_n_3 }));
  FDRE \weightIndexAdded_fu_82_reg[10] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\weightIndexAdded_fu_82_reg[8]_i_1_n_8 ),
        .Q(weightIndexAdded_fu_82_reg[10]),
        .R(ap_NS_fsm12_out));
  FDRE \weightIndexAdded_fu_82_reg[11] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\weightIndexAdded_fu_82_reg[8]_i_1_n_7 ),
        .Q(weightIndexAdded_fu_82_reg[11]),
        .R(ap_NS_fsm12_out));
  FDRE \weightIndexAdded_fu_82_reg[12] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\weightIndexAdded_fu_82_reg[12]_i_1_n_10 ),
        .Q(weightIndexAdded_fu_82_reg[12]),
        .R(ap_NS_fsm12_out));
  CARRY4 \weightIndexAdded_fu_82_reg[12]_i_1 
       (.CI(\weightIndexAdded_fu_82_reg[8]_i_1_n_3 ),
        .CO({\NLW_weightIndexAdded_fu_82_reg[12]_i_1_CO_UNCONNECTED [3:2],\weightIndexAdded_fu_82_reg[12]_i_1_n_5 ,\weightIndexAdded_fu_82_reg[12]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,numOfInNeurons_read_reg_247[13:12]}),
        .O({\NLW_weightIndexAdded_fu_82_reg[12]_i_1_O_UNCONNECTED [3],\weightIndexAdded_fu_82_reg[12]_i_1_n_8 ,\weightIndexAdded_fu_82_reg[12]_i_1_n_9 ,\weightIndexAdded_fu_82_reg[12]_i_1_n_10 }),
        .S({1'b0,\weightIndexAdded_fu_82[12]_i_2_n_3 ,\weightIndexAdded_fu_82[12]_i_3_n_3 ,\weightIndexAdded_fu_82[12]_i_4_n_3 }));
  FDRE \weightIndexAdded_fu_82_reg[13] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\weightIndexAdded_fu_82_reg[12]_i_1_n_9 ),
        .Q(weightIndexAdded_fu_82_reg[13]),
        .R(ap_NS_fsm12_out));
  FDRE \weightIndexAdded_fu_82_reg[14] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\weightIndexAdded_fu_82_reg[12]_i_1_n_8 ),
        .Q(weightIndexAdded_fu_82_reg[14]),
        .R(ap_NS_fsm12_out));
  FDRE \weightIndexAdded_fu_82_reg[1] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\weightIndexAdded_fu_82_reg[0]_i_2_n_9 ),
        .Q(weightIndexAdded_fu_82_reg[1]),
        .R(ap_NS_fsm12_out));
  FDRE \weightIndexAdded_fu_82_reg[2] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\weightIndexAdded_fu_82_reg[0]_i_2_n_8 ),
        .Q(weightIndexAdded_fu_82_reg[2]),
        .R(ap_NS_fsm12_out));
  FDRE \weightIndexAdded_fu_82_reg[3] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\weightIndexAdded_fu_82_reg[0]_i_2_n_7 ),
        .Q(weightIndexAdded_fu_82_reg[3]),
        .R(ap_NS_fsm12_out));
  FDRE \weightIndexAdded_fu_82_reg[4] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\weightIndexAdded_fu_82_reg[4]_i_1_n_10 ),
        .Q(weightIndexAdded_fu_82_reg[4]),
        .R(ap_NS_fsm12_out));
  CARRY4 \weightIndexAdded_fu_82_reg[4]_i_1 
       (.CI(\weightIndexAdded_fu_82_reg[0]_i_2_n_3 ),
        .CO({\weightIndexAdded_fu_82_reg[4]_i_1_n_3 ,\weightIndexAdded_fu_82_reg[4]_i_1_n_4 ,\weightIndexAdded_fu_82_reg[4]_i_1_n_5 ,\weightIndexAdded_fu_82_reg[4]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI(numOfInNeurons_read_reg_247[7:4]),
        .O({\weightIndexAdded_fu_82_reg[4]_i_1_n_7 ,\weightIndexAdded_fu_82_reg[4]_i_1_n_8 ,\weightIndexAdded_fu_82_reg[4]_i_1_n_9 ,\weightIndexAdded_fu_82_reg[4]_i_1_n_10 }),
        .S({\weightIndexAdded_fu_82[4]_i_2_n_3 ,\weightIndexAdded_fu_82[4]_i_3_n_3 ,\weightIndexAdded_fu_82[4]_i_4_n_3 ,\weightIndexAdded_fu_82[4]_i_5_n_3 }));
  FDRE \weightIndexAdded_fu_82_reg[5] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\weightIndexAdded_fu_82_reg[4]_i_1_n_9 ),
        .Q(weightIndexAdded_fu_82_reg[5]),
        .R(ap_NS_fsm12_out));
  FDRE \weightIndexAdded_fu_82_reg[6] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\weightIndexAdded_fu_82_reg[4]_i_1_n_8 ),
        .Q(weightIndexAdded_fu_82_reg[6]),
        .R(ap_NS_fsm12_out));
  FDRE \weightIndexAdded_fu_82_reg[7] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\weightIndexAdded_fu_82_reg[4]_i_1_n_7 ),
        .Q(weightIndexAdded_fu_82_reg[7]),
        .R(ap_NS_fsm12_out));
  FDRE \weightIndexAdded_fu_82_reg[8] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\weightIndexAdded_fu_82_reg[8]_i_1_n_10 ),
        .Q(weightIndexAdded_fu_82_reg[8]),
        .R(ap_NS_fsm12_out));
  CARRY4 \weightIndexAdded_fu_82_reg[8]_i_1 
       (.CI(\weightIndexAdded_fu_82_reg[4]_i_1_n_3 ),
        .CO({\weightIndexAdded_fu_82_reg[8]_i_1_n_3 ,\weightIndexAdded_fu_82_reg[8]_i_1_n_4 ,\weightIndexAdded_fu_82_reg[8]_i_1_n_5 ,\weightIndexAdded_fu_82_reg[8]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI(numOfInNeurons_read_reg_247[11:8]),
        .O({\weightIndexAdded_fu_82_reg[8]_i_1_n_7 ,\weightIndexAdded_fu_82_reg[8]_i_1_n_8 ,\weightIndexAdded_fu_82_reg[8]_i_1_n_9 ,\weightIndexAdded_fu_82_reg[8]_i_1_n_10 }),
        .S({\weightIndexAdded_fu_82[8]_i_2_n_3 ,\weightIndexAdded_fu_82[8]_i_3_n_3 ,\weightIndexAdded_fu_82[8]_i_4_n_3 ,\weightIndexAdded_fu_82[8]_i_5_n_3 }));
  FDRE \weightIndexAdded_fu_82_reg[9] 
       (.C(ap_clk),
        .CE(\trunc_ln35_reg_267[14]_i_1_n_3 ),
        .D(\weightIndexAdded_fu_82_reg[8]_i_1_n_9 ),
        .Q(weightIndexAdded_fu_82_reg[9]),
        .R(ap_NS_fsm12_out));
  FDRE \zext_ln34_reg_281_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(outNeurons_1_reg_259[0]),
        .Q(zext_ln34_reg_281_reg[0]),
        .R(1'b0));
  FDRE \zext_ln34_reg_281_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(outNeurons_1_reg_259[1]),
        .Q(zext_ln34_reg_281_reg[1]),
        .R(1'b0));
  FDRE \zext_ln34_reg_281_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(outNeurons_1_reg_259[2]),
        .Q(zext_ln34_reg_281_reg[2]),
        .R(1'b0));
  FDRE \zext_ln34_reg_281_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(outNeurons_1_reg_259[3]),
        .Q(zext_ln34_reg_281_reg[3]),
        .R(1'b0));
  FDRE \zext_ln34_reg_281_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(outNeurons_1_reg_259[4]),
        .Q(zext_ln34_reg_281_reg[4]),
        .R(1'b0));
  FDRE \zext_ln34_reg_281_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(outNeurons_1_reg_259[5]),
        .Q(zext_ln34_reg_281_reg[5]),
        .R(1'b0));
  FDRE \zext_ln34_reg_281_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(outNeurons_1_reg_259[6]),
        .Q(zext_ln34_reg_281_reg[6]),
        .R(1'b0));
  FDRE \zext_ln34_reg_281_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(outNeurons_1_reg_259[7]),
        .Q(zext_ln34_reg_281_reg[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "nnlayer_control_s_axi" *) 
module design_1_nnlayer_0_1_nnlayer_control_s_axi
   (SR,
    ap_idle,
    \int_input_r_shift0_reg[0]_0 ,
    \int_output_r_shift0_reg[0]_0 ,
    \int_bias_shift0_reg[0]_0 ,
    \ap_CS_fsm_reg[3] ,
    s_axi_control_ARREADY,
    \int_numOfOutNeurons_reg[15]_0 ,
    \int_numOfInNeurons_reg[15]_0 ,
    s_axi_control_WREADY,
    s_axi_control_RVALID,
    s_axi_control_AWREADY,
    \int_activation_reg[7]_0 ,
    interrupt,
    s_axi_control_BVALID,
    \ap_CS_fsm_reg[3]_0 ,
    ap_NS_fsm12_out,
    S,
    mem_reg,
    mem_reg_0,
    mem_reg_1,
    s_axi_control_RDATA,
    A,
    B,
    ap_clk,
    grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg,
    ADDRBWRADDR,
    s_axi_control_WDATA,
    output_r_ce0,
    mem_reg_2,
    DIBDI,
    WEBWE,
    D,
    Q,
    grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0,
    \int_input_r_shift0_reg[0]_1 ,
    \int_output_r_shift0_reg[0]_1 ,
    \int_bias_shift0_reg[0]_1 ,
    ap_rst_n,
    \ap_CS_fsm_reg[1] ,
    mem_reg_3,
    mem_reg_4,
    s_axi_control_ARVALID,
    s_axi_control_ARADDR,
    s_axi_control_WVALID,
    s_axi_control_RREADY,
    s_axi_control_WSTRB,
    s_axi_control_AWVALID,
    s_axi_control_BREADY,
    s_axi_control_AWADDR,
    tmp_fu_54,
    int_ap_start_reg_0);
  output [0:0]SR;
  output ap_idle;
  output \int_input_r_shift0_reg[0]_0 ;
  output \int_output_r_shift0_reg[0]_0 ;
  output \int_bias_shift0_reg[0]_0 ;
  output \ap_CS_fsm_reg[3] ;
  output s_axi_control_ARREADY;
  output [15:0]\int_numOfOutNeurons_reg[15]_0 ;
  output [15:0]\int_numOfInNeurons_reg[15]_0 ;
  output s_axi_control_WREADY;
  output s_axi_control_RVALID;
  output s_axi_control_AWREADY;
  output [7:0]\int_activation_reg[7]_0 ;
  output interrupt;
  output s_axi_control_BVALID;
  output [0:0]\ap_CS_fsm_reg[3]_0 ;
  output ap_NS_fsm12_out;
  output [3:0]S;
  output [3:0]mem_reg;
  output [3:0]mem_reg_0;
  output [3:0]mem_reg_1;
  output [31:0]s_axi_control_RDATA;
  output [15:0]A;
  output [15:0]B;
  input ap_clk;
  input grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg;
  input [5:0]ADDRBWRADDR;
  input [31:0]s_axi_control_WDATA;
  input output_r_ce0;
  input [6:0]mem_reg_2;
  input [23:0]DIBDI;
  input [1:0]WEBWE;
  input [0:0]D;
  input [6:0]Q;
  input [14:0]grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0;
  input \int_input_r_shift0_reg[0]_1 ;
  input \int_output_r_shift0_reg[0]_1 ;
  input \int_bias_shift0_reg[0]_1 ;
  input ap_rst_n;
  input [1:0]\ap_CS_fsm_reg[1] ;
  input mem_reg_3;
  input mem_reg_4;
  input s_axi_control_ARVALID;
  input [16:0]s_axi_control_ARADDR;
  input s_axi_control_WVALID;
  input s_axi_control_RREADY;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_AWVALID;
  input s_axi_control_BREADY;
  input [16:0]s_axi_control_AWADDR;
  input [15:0]tmp_fu_54;
  input int_ap_start_reg_0;

  wire [15:0]A;
  wire [5:0]ADDRBWRADDR;
  wire [15:0]B;
  wire [0:0]D;
  wire [23:0]DIBDI;
  wire [6:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [1:0]WEBWE;
  wire [1:0]\ap_CS_fsm_reg[1] ;
  wire \ap_CS_fsm_reg[3] ;
  wire [0:0]\ap_CS_fsm_reg[3]_0 ;
  wire ap_NS_fsm12_out;
  wire ap_clk;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_start;
  wire auto_restart_status_i_1_n_3;
  wire auto_restart_status_reg_n_3;
  wire aw_hs;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg;
  wire [14:0]grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0;
  wire \int_activation[0]_i_1_n_3 ;
  wire \int_activation[1]_i_1_n_3 ;
  wire \int_activation[2]_i_1_n_3 ;
  wire \int_activation[3]_i_1_n_3 ;
  wire \int_activation[4]_i_1_n_3 ;
  wire \int_activation[5]_i_1_n_3 ;
  wire \int_activation[6]_i_1_n_3 ;
  wire \int_activation[7]_i_1_n_3 ;
  wire \int_activation[7]_i_2_n_3 ;
  wire [7:0]\int_activation_reg[7]_0 ;
  wire int_ap_ready__0;
  wire int_ap_ready_i_1_n_3;
  wire int_ap_start1;
  wire int_ap_start_i_1_n_3;
  wire int_ap_start_reg_0;
  wire int_auto_restart_i_1_n_3;
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
  wire int_bias_n_30;
  wire int_bias_n_31;
  wire int_bias_n_32;
  wire int_bias_n_33;
  wire int_bias_n_34;
  wire [28:1]int_bias_q1;
  wire int_bias_read;
  wire int_bias_read0;
  wire int_bias_read_i_2_n_3;
  wire \int_bias_shift0_reg[0]_0 ;
  wire \int_bias_shift0_reg[0]_1 ;
  wire int_bias_write_i_1_n_3;
  wire int_bias_write_reg_n_3;
  wire int_gie_i_1_n_3;
  wire int_gie_i_2_n_3;
  wire int_gie_reg_n_3;
  wire int_ier12_out;
  wire \int_ier[5]_i_2_n_3 ;
  wire \int_ier[5]_i_3_n_3 ;
  wire \int_ier[5]_i_4_n_3 ;
  wire \int_ier_reg_n_3_[0] ;
  wire \int_ier_reg_n_3_[1] ;
  wire \int_ier_reg_n_3_[2] ;
  wire \int_ier_reg_n_3_[3] ;
  wire \int_ier_reg_n_3_[4] ;
  wire \int_ier_reg_n_3_[5] ;
  wire [5:0]int_input_r_address1;
  wire int_input_r_n_59;
  wire int_input_r_n_60;
  wire int_input_r_n_61;
  wire int_input_r_n_62;
  wire int_input_r_n_63;
  wire int_input_r_n_64;
  wire int_input_r_n_65;
  wire int_input_r_n_66;
  wire int_input_r_n_67;
  wire [31:0]int_input_r_q0;
  wire [31:2]int_input_r_q1;
  wire int_input_r_read;
  wire int_input_r_read0;
  wire int_input_r_read_i_2_n_3;
  wire \int_input_r_shift0_reg[0]_0 ;
  wire \int_input_r_shift0_reg[0]_1 ;
  wire int_input_r_write0;
  wire int_input_r_write_i_1_n_3;
  wire int_input_r_write_reg_n_3;
  wire int_isr9_out;
  wire \int_isr[0]_i_1_n_3 ;
  wire \int_isr[1]_i_1_n_3 ;
  wire \int_isr[5]_i_1_n_3 ;
  wire \int_isr_reg_n_3_[0] ;
  wire \int_isr_reg_n_3_[1] ;
  wire \int_isr_reg_n_3_[5] ;
  wire [15:0]int_numOfInNeurons0;
  wire \int_numOfInNeurons[15]_i_1_n_3 ;
  wire [15:0]\int_numOfInNeurons_reg[15]_0 ;
  wire [15:0]int_numOfOutNeurons0;
  wire \int_numOfOutNeurons[15]_i_1_n_3 ;
  wire [15:0]\int_numOfOutNeurons_reg[15]_0 ;
  wire [6:6]int_output_r_address1;
  wire int_output_r_n_35;
  wire [31:0]int_output_r_q1;
  wire int_output_r_read;
  wire int_output_r_read0;
  wire \int_output_r_shift0_reg[0]_0 ;
  wire \int_output_r_shift0_reg[0]_1 ;
  wire int_output_r_write_i_1_n_3;
  wire int_output_r_write_i_2_n_3;
  wire int_output_r_write_i_3_n_3;
  wire int_output_r_write_reg_n_3;
  wire int_task_ap_done__0;
  wire int_task_ap_done_i_1_n_3;
  wire int_task_ap_done_i_2_n_3;
  wire int_weights_n_10;
  wire int_weights_n_11;
  wire int_weights_n_19;
  wire int_weights_n_3;
  wire int_weights_n_37;
  wire int_weights_n_38;
  wire int_weights_n_39;
  wire int_weights_n_4;
  wire int_weights_n_40;
  wire int_weights_n_41;
  wire int_weights_n_5;
  wire int_weights_n_6;
  wire int_weights_n_7;
  wire int_weights_n_8;
  wire int_weights_n_9;
  wire [31:0]int_weights_q0;
  wire [31:0]int_weights_q1;
  wire int_weights_read;
  wire int_weights_read0;
  wire \int_weights_shift0_reg_n_3_[0] ;
  wire int_weights_write_i_1_n_3;
  wire int_weights_write_reg_n_3;
  wire interrupt;
  wire [3:0]mem_reg;
  wire [3:0]mem_reg_0;
  wire [3:0]mem_reg_1;
  wire [6:0]mem_reg_2;
  wire mem_reg_3;
  wire mem_reg_4;
  wire output_r_ce0;
  wire [7:2]p_3_in;
  wire \rdata[0]_i_4_n_3 ;
  wire \rdata[0]_i_5_n_3 ;
  wire \rdata[10]_i_2_n_3 ;
  wire \rdata[11]_i_2_n_3 ;
  wire \rdata[12]_i_2_n_3 ;
  wire \rdata[13]_i_2_n_3 ;
  wire \rdata[14]_i_2_n_3 ;
  wire \rdata[15]_i_2_n_3 ;
  wire \rdata[15]_i_3_n_3 ;
  wire \rdata[15]_i_5_n_3 ;
  wire \rdata[15]_i_6_n_3 ;
  wire \rdata[1]_i_4_n_3 ;
  wire \rdata[1]_i_5_n_3 ;
  wire \rdata[2]_i_3_n_3 ;
  wire \rdata[2]_i_4_n_3 ;
  wire \rdata[31]_i_1_n_3 ;
  wire \rdata[3]_i_2_n_3 ;
  wire \rdata[3]_i_5_n_3 ;
  wire \rdata[3]_i_6_n_3 ;
  wire \rdata[4]_i_3_n_3 ;
  wire \rdata[4]_i_4_n_3 ;
  wire \rdata[4]_i_5_n_3 ;
  wire \rdata[5]_i_2_n_3 ;
  wire \rdata[5]_i_4_n_3 ;
  wire \rdata[6]_i_2_n_3 ;
  wire \rdata[6]_i_3_n_3 ;
  wire \rdata[6]_i_5_n_3 ;
  wire \rdata[6]_i_6_n_3 ;
  wire \rdata[7]_i_2_n_3 ;
  wire \rdata[7]_i_3_n_3 ;
  wire \rdata[7]_i_5_n_3 ;
  wire \rdata[7]_i_6_n_3 ;
  wire \rdata[8]_i_2_n_3 ;
  wire \rdata[9]_i_2_n_3 ;
  wire \rdata_reg[0]_i_2_n_3 ;
  wire \rdata_reg[1]_i_2_n_3 ;
  wire [1:0]rstate;
  wire \rstate[0]_i_1_n_3 ;
  wire [16:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [16:0]s_axi_control_AWADDR;
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
  wire [15:0]tmp_fu_54;
  wire \waddr_reg_n_3_[0] ;
  wire \waddr_reg_n_3_[10] ;
  wire \waddr_reg_n_3_[11] ;
  wire \waddr_reg_n_3_[12] ;
  wire \waddr_reg_n_3_[13] ;
  wire \waddr_reg_n_3_[14] ;
  wire \waddr_reg_n_3_[15] ;
  wire \waddr_reg_n_3_[16] ;
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

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \ap_CS_fsm[1]_i_1__0 
       (.I0(\ap_CS_fsm_reg[1] [1]),
        .I1(\ap_CS_fsm_reg[1] [0]),
        .I2(ap_start),
        .O(\ap_CS_fsm_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hEFAA)) 
    auto_restart_status_i_1
       (.I0(p_3_in[7]),
        .I1(ap_start),
        .I2(\ap_CS_fsm_reg[1] [0]),
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
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_activation[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_activation_reg[7]_0 [0]),
        .O(\int_activation[0]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_activation[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_activation_reg[7]_0 [1]),
        .O(\int_activation[1]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_activation[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_activation_reg[7]_0 [2]),
        .O(\int_activation[2]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_activation[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_activation_reg[7]_0 [3]),
        .O(\int_activation[3]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_activation[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_activation_reg[7]_0 [4]),
        .O(\int_activation[4]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_activation[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_activation_reg[7]_0 [5]),
        .O(\int_activation[5]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_activation[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_activation_reg[7]_0 [6]),
        .O(\int_activation[6]_i_1_n_3 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \int_activation[7]_i_1 
       (.I0(\waddr_reg_n_3_[4] ),
        .I1(\int_ier[5]_i_2_n_3 ),
        .I2(\waddr_reg_n_3_[3] ),
        .I3(\waddr_reg_n_3_[2] ),
        .I4(\waddr_reg_n_3_[5] ),
        .O(\int_activation[7]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_activation[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_activation_reg[7]_0 [7]),
        .O(\int_activation[7]_i_2_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[0] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_3 ),
        .D(\int_activation[0]_i_1_n_3 ),
        .Q(\int_activation_reg[7]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[1] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_3 ),
        .D(\int_activation[1]_i_1_n_3 ),
        .Q(\int_activation_reg[7]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[2] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_3 ),
        .D(\int_activation[2]_i_1_n_3 ),
        .Q(\int_activation_reg[7]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[3] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_3 ),
        .D(\int_activation[3]_i_1_n_3 ),
        .Q(\int_activation_reg[7]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[4] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_3 ),
        .D(\int_activation[4]_i_1_n_3 ),
        .Q(\int_activation_reg[7]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[5] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_3 ),
        .D(\int_activation[5]_i_1_n_3 ),
        .Q(\int_activation_reg[7]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[6] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_3 ),
        .D(\int_activation[6]_i_1_n_3 ),
        .Q(\int_activation_reg[7]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[7] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_3 ),
        .D(\int_activation[7]_i_2_n_3 ),
        .Q(\int_activation_reg[7]_0 [7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    int_ap_idle_i_1
       (.I0(\ap_CS_fsm_reg[1] [0]),
        .I1(ap_start),
        .O(ap_idle));
  FDRE int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(p_3_in[2]),
        .R(SR));
  LUT4 #(
    .INIT(16'h5703)) 
    int_ap_ready_i_1
       (.I0(int_task_ap_done_i_2_n_3),
        .I1(int_ap_start_reg_0),
        .I2(p_3_in[7]),
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
  LUT5 #(
    .INIT(32'hFFEAC0EA)) 
    int_ap_start_i_1
       (.I0(p_3_in[7]),
        .I1(int_ap_start1),
        .I2(s_axi_control_WDATA[0]),
        .I3(int_ap_start_reg_0),
        .I4(ap_start),
        .O(int_ap_start_i_1_n_3));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    int_ap_start_i_2
       (.I0(\waddr_reg_n_3_[5] ),
        .I1(\int_ier[5]_i_2_n_3 ),
        .I2(\waddr_reg_n_3_[4] ),
        .I3(\waddr_reg_n_3_[3] ),
        .I4(s_axi_control_WSTRB[0]),
        .I5(\waddr_reg_n_3_[2] ),
        .O(int_ap_start1));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_3),
        .Q(ap_start),
        .R(SR));
  LUT3 #(
    .INIT(8'hB8)) 
    int_auto_restart_i_1
       (.I0(s_axi_control_WDATA[7]),
        .I1(int_ap_start1),
        .I2(p_3_in[7]),
        .O(int_auto_restart_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_3),
        .Q(p_3_in[7]),
        .R(SR));
  design_1_nnlayer_0_1_nnlayer_control_s_axi_ram__parameterized1 int_bias
       (.ADDRARDADDR({int_output_r_address1,int_input_r_address1}),
        .D(D),
        .DOADO({int_bias_q1[28],int_bias_q1[18:13],int_bias_q1[10:3],int_bias_q1[1]}),
        .Q(Q),
        .S(S),
        .ap_clk(ap_clk),
        .int_bias_read(int_bias_read),
        .int_input_r_read(int_input_r_read),
        .int_input_r_read_reg({int_bias_n_19,int_bias_n_20,int_bias_n_21,int_bias_n_22,int_bias_n_23,int_bias_n_24,int_bias_n_25,int_bias_n_26,int_bias_n_27,int_bias_n_28,int_bias_n_29,int_bias_n_30,int_bias_n_31,int_bias_n_32}),
        .int_output_r_read(int_output_r_read),
        .mem_reg_0(int_bias_n_33),
        .mem_reg_1(int_bias_n_34),
        .mem_reg_2(mem_reg),
        .mem_reg_3(mem_reg_0),
        .mem_reg_4(mem_reg_1),
        .mem_reg_5(int_bias_write_reg_n_3),
        .mem_reg_i_55(\int_bias_shift0_reg[0]_0 ),
        .q1({int_weights_q1[31:29],int_weights_q1[27:19],int_weights_q1[12:11],int_weights_q1[2],int_weights_q1[0]}),
        .\rdata_reg[12] (\rdata[15]_i_3_n_3 ),
        .\rdata_reg[12]_0 (\rdata[12]_i_2_n_3 ),
        .\rdata_reg[12]_1 (int_input_r_n_67),
        .\rdata_reg[2] (\rdata[2]_i_3_n_3 ),
        .\rdata_reg[2]_0 (\rdata[2]_i_4_n_3 ),
        .\rdata_reg[31] ({int_input_r_q1[31:29],int_input_r_q1[27:19],int_input_r_q1[12],int_input_r_q1[2]}),
        .\rdata_reg[31]_0 ({int_output_r_q1[31:29],int_output_r_q1[27:19],int_output_r_q1[12:11],int_output_r_q1[2],int_output_r_q1[0]}),
        .rstate(rstate),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .tmp_fu_54(tmp_fu_54),
        .wstate(wstate));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    int_bias_read_i_1
       (.I0(s_axi_control_ARVALID),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARADDR[10]),
        .I4(int_bias_read_i_2_n_3),
        .I5(s_axi_control_ARADDR[9]),
        .O(int_bias_read0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    int_bias_read_i_2
       (.I0(s_axi_control_ARADDR[13]),
        .I1(s_axi_control_ARADDR[14]),
        .I2(s_axi_control_ARADDR[16]),
        .I3(s_axi_control_ARADDR[15]),
        .I4(s_axi_control_ARADDR[12]),
        .I5(s_axi_control_ARADDR[11]),
        .O(int_bias_read_i_2_n_3));
  FDRE int_bias_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_bias_read0),
        .Q(int_bias_read),
        .R(SR));
  FDRE \int_bias_shift0_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_bias_shift0_reg[0]_1 ),
        .Q(\int_bias_shift0_reg[0]_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'h5555755500003000)) 
    int_bias_write_i_1
       (.I0(int_output_r_write_i_2_n_3),
        .I1(int_output_r_write_i_3_n_3),
        .I2(s_axi_control_AWADDR[10]),
        .I3(aw_hs),
        .I4(s_axi_control_AWADDR[9]),
        .I5(int_bias_write_reg_n_3),
        .O(int_bias_write_i_1_n_3));
  FDRE int_bias_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_bias_write_i_1_n_3),
        .Q(int_bias_write_reg_n_3),
        .R(SR));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    int_gie_i_1
       (.I0(s_axi_control_WDATA[0]),
        .I1(int_gie_i_2_n_3),
        .I2(\waddr_reg_n_3_[2] ),
        .I3(s_axi_control_WSTRB[0]),
        .I4(int_gie_reg_n_3),
        .O(int_gie_i_1_n_3));
  LUT4 #(
    .INIT(16'h0001)) 
    int_gie_i_2
       (.I0(\waddr_reg_n_3_[3] ),
        .I1(\waddr_reg_n_3_[4] ),
        .I2(\int_ier[5]_i_2_n_3 ),
        .I3(\waddr_reg_n_3_[5] ),
        .O(int_gie_i_2_n_3));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_3),
        .Q(int_gie_reg_n_3),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \int_ier[5]_i_1 
       (.I0(\waddr_reg_n_3_[4] ),
        .I1(\int_ier[5]_i_2_n_3 ),
        .I2(\waddr_reg_n_3_[5] ),
        .I3(\waddr_reg_n_3_[3] ),
        .I4(s_axi_control_WSTRB[0]),
        .I5(\waddr_reg_n_3_[2] ),
        .O(int_ier12_out));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \int_ier[5]_i_2 
       (.I0(\waddr_reg_n_3_[12] ),
        .I1(\waddr_reg_n_3_[16] ),
        .I2(\waddr_reg_n_3_[13] ),
        .I3(\int_ier[5]_i_3_n_3 ),
        .I4(\int_ier[5]_i_4_n_3 ),
        .I5(int_output_r_write_i_2_n_3),
        .O(\int_ier[5]_i_2_n_3 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \int_ier[5]_i_3 
       (.I0(\waddr_reg_n_3_[11] ),
        .I1(\waddr_reg_n_3_[7] ),
        .I2(\waddr_reg_n_3_[14] ),
        .I3(\waddr_reg_n_3_[1] ),
        .O(\int_ier[5]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \int_ier[5]_i_4 
       (.I0(\waddr_reg_n_3_[0] ),
        .I1(\waddr_reg_n_3_[15] ),
        .I2(\waddr_reg_n_3_[6] ),
        .I3(\waddr_reg_n_3_[8] ),
        .I4(\waddr_reg_n_3_[9] ),
        .I5(\waddr_reg_n_3_[10] ),
        .O(\int_ier[5]_i_4_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(int_ier12_out),
        .D(s_axi_control_WDATA[0]),
        .Q(\int_ier_reg_n_3_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(int_ier12_out),
        .D(s_axi_control_WDATA[1]),
        .Q(\int_ier_reg_n_3_[1] ),
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
  design_1_nnlayer_0_1_nnlayer_control_s_axi_ram int_input_r
       (.ADDRARDADDR(int_input_r_address1),
        .ADDRBWRADDR(ADDRBWRADDR),
        .D({int_input_r_n_59,int_input_r_n_60,int_input_r_n_61,int_input_r_n_62,int_input_r_n_63,int_input_r_n_64,int_input_r_n_65,int_input_r_n_66}),
        .DOADO({int_input_r_q1[31:17],int_input_r_q1[15:12],int_input_r_q1[10:8],int_input_r_q1[4],int_input_r_q1[2]}),
        .DOBDO(int_input_r_q0),
        .ap_clk(ap_clk),
        .grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .int_input_r_read(int_input_r_read),
        .mem_reg_0(int_input_r_write_reg_n_3),
        .\rdata_reg[0] (\rdata_reg[0]_i_2_n_3 ),
        .\rdata_reg[0]_0 (int_bias_n_34),
        .\rdata_reg[11] (\rdata[11]_i_2_n_3 ),
        .\rdata_reg[11]_0 (\rdata[15]_i_3_n_3 ),
        .\rdata_reg[11]_1 (int_bias_n_33),
        .\rdata_reg[16] (int_weights_n_40),
        .\rdata_reg[1] (\rdata_reg[1]_i_2_n_3 ),
        .\rdata_reg[1]_0 (int_weights_n_19),
        .\rdata_reg[3] (\rdata[3]_i_2_n_3 ),
        .\rdata_reg[3]_0 (int_weights_n_41),
        .\rdata_reg[3]_1 (\rdata[3]_i_5_n_3 ),
        .\rdata_reg[3]_2 (\rdata[6]_i_6_n_3 ),
        .\rdata_reg[3]_3 (\rdata[3]_i_6_n_3 ),
        .\rdata_reg[5] (\rdata[5]_i_2_n_3 ),
        .\rdata_reg[5]_0 (int_weights_n_37),
        .\rdata_reg[6] (\rdata[6]_i_2_n_3 ),
        .\rdata_reg[6]_0 (\rdata[6]_i_3_n_3 ),
        .\rdata_reg[6]_1 (int_weights_n_38),
        .\rdata_reg[7] (\rdata[7]_i_2_n_3 ),
        .\rdata_reg[7]_0 (\rdata[7]_i_3_n_3 ),
        .\rdata_reg[7]_1 (int_weights_n_39),
        .rstate(rstate),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_ARVALID_0(int_input_r_n_67),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .wstate(wstate));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    int_input_r_read_i_1
       (.I0(s_axi_control_ARADDR[8]),
        .I1(s_axi_control_ARADDR[9]),
        .I2(s_axi_control_ARVALID),
        .I3(rstate[1]),
        .I4(rstate[0]),
        .I5(int_input_r_read_i_2_n_3),
        .O(int_input_r_read0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    int_input_r_read_i_2
       (.I0(s_axi_control_ARADDR[10]),
        .I1(int_bias_read_i_2_n_3),
        .O(int_input_r_read_i_2_n_3));
  FDRE int_input_r_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_input_r_read0),
        .Q(int_input_r_read),
        .R(SR));
  FDRE \int_input_r_shift0_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_input_r_shift0_reg[0]_1 ),
        .Q(\int_input_r_shift0_reg[0]_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFBFFFFFF0000)) 
    int_input_r_write_i_1
       (.I0(int_input_r_n_67),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(s_axi_control_WVALID),
        .I4(int_input_r_write0),
        .I5(int_input_r_write_reg_n_3),
        .O(int_input_r_write_i_1_n_3));
  LUT5 #(
    .INIT(32'h00100000)) 
    int_input_r_write_i_2
       (.I0(int_output_r_write_i_3_n_3),
        .I1(s_axi_control_AWADDR[10]),
        .I2(aw_hs),
        .I3(s_axi_control_AWADDR[9]),
        .I4(s_axi_control_AWADDR[8]),
        .O(int_input_r_write0));
  FDRE int_input_r_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_input_r_write_i_1_n_3),
        .Q(int_input_r_write_reg_n_3),
        .R(SR));
  LUT5 #(
    .INIT(32'h7F778F88)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(int_isr9_out),
        .I2(int_ap_start_reg_0),
        .I3(\int_ier_reg_n_3_[0] ),
        .I4(\int_isr_reg_n_3_[0] ),
        .O(\int_isr[0]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \int_isr[0]_i_2 
       (.I0(\waddr_reg_n_3_[2] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\waddr_reg_n_3_[3] ),
        .I3(\waddr_reg_n_3_[5] ),
        .I4(\int_ier[5]_i_2_n_3 ),
        .I5(\waddr_reg_n_3_[4] ),
        .O(int_isr9_out));
  LUT5 #(
    .INIT(32'h7F778F88)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(int_isr9_out),
        .I2(int_ap_start_reg_0),
        .I3(\int_ier_reg_n_3_[1] ),
        .I4(\int_isr_reg_n_3_[1] ),
        .O(\int_isr[1]_i_1_n_3 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_isr[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(int_isr9_out),
        .I2(\int_isr_reg_n_3_[5] ),
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
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [0]),
        .O(int_numOfInNeurons0[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [10]),
        .O(int_numOfInNeurons0[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [11]),
        .O(int_numOfInNeurons0[11]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [12]),
        .O(int_numOfInNeurons0[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [13]),
        .O(int_numOfInNeurons0[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [14]),
        .O(int_numOfInNeurons0[14]));
  LUT5 #(
    .INIT(32'h00000004)) 
    \int_numOfInNeurons[15]_i_1 
       (.I0(\int_ier[5]_i_2_n_3 ),
        .I1(\waddr_reg_n_3_[4] ),
        .I2(\waddr_reg_n_3_[5] ),
        .I3(\waddr_reg_n_3_[2] ),
        .I4(\waddr_reg_n_3_[3] ),
        .O(\int_numOfInNeurons[15]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[15]_i_2 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [15]),
        .O(int_numOfInNeurons0[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [1]),
        .O(int_numOfInNeurons0[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [2]),
        .O(int_numOfInNeurons0[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [3]),
        .O(int_numOfInNeurons0[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [4]),
        .O(int_numOfInNeurons0[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [5]),
        .O(int_numOfInNeurons0[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [6]),
        .O(int_numOfInNeurons0[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [7]),
        .O(int_numOfInNeurons0[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [8]),
        .O(int_numOfInNeurons0[8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [0]),
        .O(int_numOfOutNeurons0[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [10]),
        .O(int_numOfOutNeurons0[10]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [11]),
        .O(int_numOfOutNeurons0[11]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [12]),
        .O(int_numOfOutNeurons0[12]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [13]),
        .O(int_numOfOutNeurons0[13]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [14]),
        .O(int_numOfOutNeurons0[14]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \int_numOfOutNeurons[15]_i_1 
       (.I0(\int_ier[5]_i_2_n_3 ),
        .I1(\waddr_reg_n_3_[4] ),
        .I2(\waddr_reg_n_3_[5] ),
        .I3(\waddr_reg_n_3_[3] ),
        .I4(\waddr_reg_n_3_[2] ),
        .O(\int_numOfOutNeurons[15]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[15]_i_2 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [15]),
        .O(int_numOfOutNeurons0[15]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [1]),
        .O(int_numOfOutNeurons0[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [2]),
        .O(int_numOfOutNeurons0[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [3]),
        .O(int_numOfOutNeurons0[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [4]),
        .O(int_numOfOutNeurons0[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [5]),
        .O(int_numOfOutNeurons0[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [6]),
        .O(int_numOfOutNeurons0[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [7]),
        .O(int_numOfOutNeurons0[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [8]),
        .O(int_numOfOutNeurons0[8]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
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
  design_1_nnlayer_0_1_nnlayer_control_s_axi_ram__parameterized0 int_output_r
       (.ADDRARDADDR({int_output_r_address1,int_input_r_address1}),
        .D(int_output_r_n_35),
        .DIBDI(DIBDI),
        .DOADO({int_output_r_q1[31:5],int_output_r_q1[3:0]}),
        .WEBWE(WEBWE),
        .\ap_CS_fsm_reg[3] (\ap_CS_fsm_reg[3] ),
        .ap_clk(ap_clk),
        .int_bias_read(int_bias_read),
        .int_input_r_read(int_input_r_read),
        .int_output_r_read(int_output_r_read),
        .mem_reg_0(mem_reg_2),
        .mem_reg_1(\ap_CS_fsm_reg[1] [1]),
        .mem_reg_2(\int_output_r_shift0_reg[0]_0 ),
        .mem_reg_3(mem_reg_3),
        .mem_reg_4(mem_reg_4),
        .mem_reg_5(int_output_r_write_reg_n_3),
        .output_r_ce0(output_r_ce0),
        .q1(int_weights_q1[4]),
        .\rdata_reg[4] (int_input_r_q1[4]),
        .\rdata_reg[4]_0 (int_input_r_n_67),
        .\rdata_reg[4]_1 (\rdata[4]_i_3_n_3 ),
        .\rdata_reg[4]_2 (int_bias_q1[4]),
        .rstate(rstate),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .wstate(wstate));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    int_output_r_read_i_1
       (.I0(s_axi_control_ARVALID),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARADDR[9]),
        .I4(int_bias_read_i_2_n_3),
        .I5(s_axi_control_ARADDR[10]),
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
    .INIT(64'h555555D5000000C0)) 
    int_output_r_write_i_1
       (.I0(int_output_r_write_i_2_n_3),
        .I1(s_axi_control_AWADDR[9]),
        .I2(aw_hs),
        .I3(s_axi_control_AWADDR[10]),
        .I4(int_output_r_write_i_3_n_3),
        .I5(int_output_r_write_reg_n_3),
        .O(int_output_r_write_i_1_n_3));
  LUT6 #(
    .INIT(64'h2020202020200020)) 
    int_output_r_write_i_2
       (.I0(s_axi_control_WVALID),
        .I1(wstate[1]),
        .I2(wstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(int_output_r_write_i_2_n_3));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    int_output_r_write_i_3
       (.I0(s_axi_control_AWADDR[13]),
        .I1(s_axi_control_AWADDR[12]),
        .I2(s_axi_control_AWADDR[11]),
        .I3(s_axi_control_AWADDR[16]),
        .I4(s_axi_control_AWADDR[14]),
        .I5(s_axi_control_AWADDR[15]),
        .O(int_output_r_write_i_3_n_3));
  FDRE int_output_r_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_output_r_write_i_1_n_3),
        .Q(int_output_r_write_reg_n_3),
        .R(SR));
  LUT6 #(
    .INIT(64'h1D11FFFF1D111D11)) 
    int_task_ap_done_i_1
       (.I0(int_ap_start_reg_0),
        .I1(auto_restart_status_reg_n_3),
        .I2(p_3_in[2]),
        .I3(ap_idle),
        .I4(int_task_ap_done_i_2_n_3),
        .I5(int_task_ap_done__0),
        .O(int_task_ap_done_i_1_n_3));
  LUT5 #(
    .INIT(32'h00000800)) 
    int_task_ap_done_i_2
       (.I0(\rdata[6]_i_6_n_3 ),
        .I1(\rdata[7]_i_3_n_3 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(int_input_r_n_67),
        .I4(s_axi_control_ARADDR[3]),
        .O(int_task_ap_done_i_2_n_3));
  FDRE #(
    .INIT(1'b0)) 
    int_task_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_task_ap_done_i_1_n_3),
        .Q(int_task_ap_done__0),
        .R(SR));
  design_1_nnlayer_0_1_nnlayer_control_s_axi_ram__parameterized2 int_weights
       (.ADDRARDADDR({int_output_r_address1,int_input_r_address1}),
        .D({int_weights_n_3,int_weights_n_4,int_weights_n_5,int_weights_n_6,int_weights_n_7,int_weights_n_8,int_weights_n_9,int_weights_n_10,int_weights_n_11}),
        .DOADO({int_input_r_q1[28],int_input_r_q1[18:17],int_input_r_q1[15:13],int_input_r_q1[10:8]}),
        .Q({\waddr_reg_n_3_[15] ,\waddr_reg_n_3_[14] ,\waddr_reg_n_3_[13] ,\waddr_reg_n_3_[12] ,\waddr_reg_n_3_[11] ,\waddr_reg_n_3_[10] ,\waddr_reg_n_3_[9] ,\waddr_reg_n_3_[8] ,\waddr_reg_n_3_[7] ,\waddr_reg_n_3_[6] ,\waddr_reg_n_3_[5] ,\waddr_reg_n_3_[4] ,\waddr_reg_n_3_[3] ,\waddr_reg_n_3_[2] }),
        .ap_clk(ap_clk),
        .grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0[14:1]),
        .int_bias_read(int_bias_read),
        .int_input_r_read(int_input_r_read),
        .int_output_r_read(int_output_r_read),
        .mem_reg_0_0_0(int_weights_n_19),
        .mem_reg_0_0_1(int_weights_write_reg_n_3),
        .mem_reg_0_1_0(int_weights_n_41),
        .mem_reg_0_2_0(int_weights_n_37),
        .mem_reg_0_3_0(int_weights_n_38),
        .mem_reg_0_3_1(int_weights_n_39),
        .mem_reg_2_0_0(int_weights_n_40),
        .q0(int_weights_q0),
        .q1({int_weights_q1[31:29],int_weights_q1[27:19],int_weights_q1[12:11],int_weights_q1[4],int_weights_q1[2],int_weights_q1[0]}),
        .\rdata_reg[10] (\rdata[10]_i_2_n_3 ),
        .\rdata_reg[13] (\rdata[13]_i_2_n_3 ),
        .\rdata_reg[14] (\rdata[14]_i_2_n_3 ),
        .\rdata_reg[15] (\rdata[15]_i_2_n_3 ),
        .\rdata_reg[15]_0 (\rdata[15]_i_3_n_3 ),
        .\rdata_reg[15]_1 (int_input_r_n_67),
        .\rdata_reg[28] ({int_bias_q1[28],int_bias_q1[18:13],int_bias_q1[10:5],int_bias_q1[3],int_bias_q1[1]}),
        .\rdata_reg[28]_0 ({int_output_r_q1[28],int_output_r_q1[18:13],int_output_r_q1[10:5],int_output_r_q1[3],int_output_r_q1[1]}),
        .\rdata_reg[8] (\rdata[8]_i_2_n_3 ),
        .\rdata_reg[9] (\rdata[9]_i_2_n_3 ),
        .rstate(rstate),
        .s_axi_control_ARADDR(s_axi_control_ARADDR[15:2]),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .wstate(wstate));
  LUT4 #(
    .INIT(16'h0200)) 
    int_weights_read_i_1
       (.I0(s_axi_control_ARADDR[16]),
        .I1(rstate[0]),
        .I2(rstate[1]),
        .I3(s_axi_control_ARVALID),
        .O(int_weights_read0));
  FDRE int_weights_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_weights_read0),
        .Q(int_weights_read),
        .R(SR));
  FDRE \int_weights_shift0_reg[0] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .D(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0[0]),
        .Q(\int_weights_shift0_reg_n_3_[0] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h555D5555000C0000)) 
    int_weights_write_i_1
       (.I0(int_output_r_write_i_2_n_3),
        .I1(s_axi_control_AWVALID),
        .I2(wstate[1]),
        .I3(wstate[0]),
        .I4(s_axi_control_AWADDR[16]),
        .I5(int_weights_write_reg_n_3),
        .O(int_weights_write_i_1_n_3));
  FDRE int_weights_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_weights_write_i_1_n_3),
        .Q(int_weights_write_reg_n_3),
        .R(SR));
  LUT4 #(
    .INIT(16'hAAA8)) 
    interrupt_INST_0
       (.I0(int_gie_reg_n_3),
        .I1(\int_isr_reg_n_3_[1] ),
        .I2(\int_isr_reg_n_3_[5] ),
        .I3(\int_isr_reg_n_3_[0] ),
        .O(interrupt));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_1
       (.I0(int_weights_q0[31]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[15]),
        .O(B[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_10
       (.I0(int_weights_q0[22]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[6]),
        .O(B[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_11
       (.I0(int_weights_q0[21]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[5]),
        .O(B[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_12
       (.I0(int_weights_q0[20]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[4]),
        .O(B[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_13
       (.I0(int_weights_q0[19]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[3]),
        .O(B[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_14
       (.I0(int_weights_q0[18]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[2]),
        .O(B[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_15
       (.I0(int_weights_q0[17]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[1]),
        .O(B[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_16
       (.I0(int_weights_q0[16]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
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
        .I1(\int_weights_shift0_reg_n_3_[0] ),
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
        .I1(\int_weights_shift0_reg_n_3_[0] ),
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
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[12]),
        .O(B[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_5
       (.I0(int_weights_q0[27]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[11]),
        .O(B[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_6
       (.I0(int_weights_q0[26]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[10]),
        .O(B[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_7
       (.I0(int_weights_q0[25]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[9]),
        .O(B[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_8
       (.I0(int_weights_q0[24]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[8]),
        .O(B[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_9
       (.I0(int_weights_q0[23]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[7]),
        .O(B[7]));
  LUT5 #(
    .INIT(32'h303F5F5F)) 
    \rdata[0]_i_4 
       (.I0(\int_numOfOutNeurons_reg[15]_0 [0]),
        .I1(\int_numOfInNeurons_reg[15]_0 [0]),
        .I2(\rdata[15]_i_6_n_3 ),
        .I3(\int_activation_reg[7]_0 [0]),
        .I4(\rdata[15]_i_5_n_3 ),
        .O(\rdata[0]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'h5050303F5F5F303F)) 
    \rdata[0]_i_5 
       (.I0(ap_start),
        .I1(int_gie_reg_n_3),
        .I2(\rdata[15]_i_6_n_3 ),
        .I3(\int_isr_reg_n_3_[0] ),
        .I4(\rdata[15]_i_5_n_3 ),
        .I5(\int_ier_reg_n_3_[0] ),
        .O(\rdata[0]_i_5_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \rdata[10]_i_2 
       (.I0(\int_numOfInNeurons_reg[15]_0 [10]),
        .I1(\rdata[15]_i_5_n_3 ),
        .I2(\int_numOfOutNeurons_reg[15]_0 [10]),
        .O(\rdata[10]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hEFEFEFFFFFFFEFFF)) 
    \rdata[11]_i_2 
       (.I0(rstate[0]),
        .I1(rstate[1]),
        .I2(s_axi_control_ARVALID),
        .I3(\int_numOfOutNeurons_reg[15]_0 [11]),
        .I4(\rdata[15]_i_5_n_3 ),
        .I5(\int_numOfInNeurons_reg[15]_0 [11]),
        .O(\rdata[11]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \rdata[12]_i_2 
       (.I0(\int_numOfInNeurons_reg[15]_0 [12]),
        .I1(\rdata[15]_i_5_n_3 ),
        .I2(\int_numOfOutNeurons_reg[15]_0 [12]),
        .O(\rdata[12]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \rdata[13]_i_2 
       (.I0(\int_numOfInNeurons_reg[15]_0 [13]),
        .I1(\rdata[15]_i_5_n_3 ),
        .I2(\int_numOfOutNeurons_reg[15]_0 [13]),
        .O(\rdata[13]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \rdata[14]_i_2 
       (.I0(\int_numOfInNeurons_reg[15]_0 [14]),
        .I1(\rdata[15]_i_5_n_3 ),
        .I2(\int_numOfOutNeurons_reg[15]_0 [14]),
        .O(\rdata[14]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[15]_i_2 
       (.I0(\int_numOfInNeurons_reg[15]_0 [15]),
        .I1(\rdata[15]_i_5_n_3 ),
        .I2(\int_numOfOutNeurons_reg[15]_0 [15]),
        .O(\rdata[15]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \rdata[15]_i_3 
       (.I0(\rdata[7]_i_3_n_3 ),
        .I1(\rdata[15]_i_6_n_3 ),
        .I2(s_axi_control_ARADDR[4]),
        .O(\rdata[15]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h0000000000000017)) 
    \rdata[15]_i_5 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[15]_i_5_n_3 ));
  LUT6 #(
    .INIT(64'h0000000101010001)) 
    \rdata[15]_i_6 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[0]),
        .I2(s_axi_control_ARADDR[1]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[15]_i_6_n_3 ));
  LUT5 #(
    .INIT(32'h505F3F3F)) 
    \rdata[1]_i_4 
       (.I0(\int_numOfInNeurons_reg[15]_0 [1]),
        .I1(\int_numOfOutNeurons_reg[15]_0 [1]),
        .I2(\rdata[15]_i_6_n_3 ),
        .I3(\int_activation_reg[7]_0 [1]),
        .I4(\rdata[15]_i_5_n_3 ),
        .O(\rdata[1]_i_4_n_3 ));
  LUT5 #(
    .INIT(32'h47CC47FF)) 
    \rdata[1]_i_5 
       (.I0(int_task_ap_done__0),
        .I1(\rdata[15]_i_6_n_3 ),
        .I2(\int_ier_reg_n_3_[1] ),
        .I3(\rdata[15]_i_5_n_3 ),
        .I4(\int_isr_reg_n_3_[1] ),
        .O(\rdata[1]_i_5_n_3 ));
  LUT6 #(
    .INIT(64'hAA80888022800080)) 
    \rdata[2]_i_3 
       (.I0(\rdata[6]_i_2_n_3 ),
        .I1(\rdata[15]_i_5_n_3 ),
        .I2(\int_activation_reg[7]_0 [2]),
        .I3(\rdata[15]_i_6_n_3 ),
        .I4(\int_numOfOutNeurons_reg[15]_0 [2]),
        .I5(\int_numOfInNeurons_reg[15]_0 [2]),
        .O(\rdata[2]_i_3_n_3 ));
  LUT5 #(
    .INIT(32'h20222000)) 
    \rdata[2]_i_4 
       (.I0(\rdata[7]_i_3_n_3 ),
        .I1(\rdata[7]_i_5_n_3 ),
        .I2(p_3_in[2]),
        .I3(\rdata[15]_i_6_n_3 ),
        .I4(\int_ier_reg_n_3_[2] ),
        .O(\rdata[2]_i_4_n_3 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rdata[31]_i_1 
       (.I0(int_input_r_n_67),
        .I1(int_weights_read),
        .I2(int_input_r_read),
        .I3(int_bias_read),
        .I4(int_output_r_read),
        .O(\rdata[31]_i_1_n_3 ));
  LUT4 #(
    .INIT(16'h5455)) 
    \rdata[3]_i_2 
       (.I0(int_input_r_read),
        .I1(rstate[0]),
        .I2(rstate[1]),
        .I3(s_axi_control_ARVALID),
        .O(\rdata[3]_i_2_n_3 ));
  LUT4 #(
    .INIT(16'hFF1D)) 
    \rdata[3]_i_5 
       (.I0(\int_ier_reg_n_3_[3] ),
        .I1(\rdata[15]_i_6_n_3 ),
        .I2(int_ap_ready__0),
        .I3(\rdata[7]_i_5_n_3 ),
        .O(\rdata[3]_i_5_n_3 ));
  LUT5 #(
    .INIT(32'h505F3F3F)) 
    \rdata[3]_i_6 
       (.I0(\int_numOfInNeurons_reg[15]_0 [3]),
        .I1(\int_numOfOutNeurons_reg[15]_0 [3]),
        .I2(\rdata[15]_i_6_n_3 ),
        .I3(\int_activation_reg[7]_0 [3]),
        .I4(\rdata[15]_i_5_n_3 ),
        .O(\rdata[3]_i_6_n_3 ));
  LUT6 #(
    .INIT(64'hDFDDDDDDDFDDFFFF)) 
    \rdata[4]_i_3 
       (.I0(\rdata[7]_i_3_n_3 ),
        .I1(\rdata[4]_i_4_n_3 ),
        .I2(\int_numOfInNeurons_reg[15]_0 [4]),
        .I3(\rdata[15]_i_6_n_3 ),
        .I4(\rdata[15]_i_5_n_3 ),
        .I5(\int_numOfOutNeurons_reg[15]_0 [4]),
        .O(\rdata[4]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h770077007F0F7FFF)) 
    \rdata[4]_i_4 
       (.I0(\int_ier_reg_n_3_[4] ),
        .I1(\rdata[4]_i_5_n_3 ),
        .I2(\rdata[15]_i_5_n_3 ),
        .I3(\rdata[6]_i_6_n_3 ),
        .I4(\int_activation_reg[7]_0 [4]),
        .I5(\rdata[15]_i_6_n_3 ),
        .O(\rdata[4]_i_4_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[4]_i_5 
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[3]),
        .O(\rdata[4]_i_5_n_3 ));
  LUT6 #(
    .INIT(64'hABFBFFFFABFB0000)) 
    \rdata[5]_i_2 
       (.I0(\rdata[15]_i_6_n_3 ),
        .I1(\int_isr_reg_n_3_[5] ),
        .I2(\rdata[15]_i_5_n_3 ),
        .I3(\int_ier_reg_n_3_[5] ),
        .I4(\rdata[6]_i_6_n_3 ),
        .I5(\rdata[5]_i_4_n_3 ),
        .O(\rdata[5]_i_2_n_3 ));
  LUT5 #(
    .INIT(32'h505F3F3F)) 
    \rdata[5]_i_4 
       (.I0(\int_numOfInNeurons_reg[15]_0 [5]),
        .I1(\int_numOfOutNeurons_reg[15]_0 [5]),
        .I2(\rdata[15]_i_6_n_3 ),
        .I3(\int_activation_reg[7]_0 [5]),
        .I4(\rdata[15]_i_5_n_3 ),
        .O(\rdata[5]_i_4_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \rdata[6]_i_2 
       (.I0(s_axi_control_ARADDR[10]),
        .I1(int_bias_read_i_2_n_3),
        .I2(\rdata[6]_i_5_n_3 ),
        .I3(\rdata[6]_i_6_n_3 ),
        .O(\rdata[6]_i_2_n_3 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \rdata[6]_i_3 
       (.I0(\int_numOfInNeurons_reg[15]_0 [6]),
        .I1(\int_numOfOutNeurons_reg[15]_0 [6]),
        .I2(\rdata[15]_i_6_n_3 ),
        .I3(\int_activation_reg[7]_0 [6]),
        .I4(\rdata[15]_i_5_n_3 ),
        .O(\rdata[6]_i_3_n_3 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \rdata[6]_i_5 
       (.I0(s_axi_control_ARADDR[9]),
        .I1(s_axi_control_ARADDR[8]),
        .I2(s_axi_control_ARADDR[7]),
        .I3(s_axi_control_ARADDR[6]),
        .O(\rdata[6]_i_5_n_3 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \rdata[6]_i_6 
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARADDR[0]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[5]),
        .O(\rdata[6]_i_6_n_3 ));
  LUT6 #(
    .INIT(64'h00000000FFFFE2FF)) 
    \rdata[7]_i_2 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(p_3_in[7]),
        .I4(\rdata[7]_i_5_n_3 ),
        .I5(\rdata[7]_i_6_n_3 ),
        .O(\rdata[7]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \rdata[7]_i_3 
       (.I0(s_axi_control_ARADDR[6]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[8]),
        .I3(s_axi_control_ARADDR[9]),
        .I4(int_bias_read_i_2_n_3),
        .I5(s_axi_control_ARADDR[10]),
        .O(\rdata[7]_i_3_n_3 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rdata[7]_i_5 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARADDR[5]),
        .I2(s_axi_control_ARADDR[0]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[7]_i_5_n_3 ));
  LUT6 #(
    .INIT(64'h00000000F8A85808)) 
    \rdata[7]_i_6 
       (.I0(\rdata[15]_i_5_n_3 ),
        .I1(\int_activation_reg[7]_0 [7]),
        .I2(\rdata[15]_i_6_n_3 ),
        .I3(\int_numOfOutNeurons_reg[15]_0 [7]),
        .I4(\int_numOfInNeurons_reg[15]_0 [7]),
        .I5(\rdata[6]_i_6_n_3 ),
        .O(\rdata[7]_i_6_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \rdata[8]_i_2 
       (.I0(\int_numOfInNeurons_reg[15]_0 [8]),
        .I1(\rdata[15]_i_5_n_3 ),
        .I2(\int_numOfOutNeurons_reg[15]_0 [8]),
        .O(\rdata[8]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \rdata[9]_i_2 
       (.I0(\int_numOfInNeurons_reg[15]_0 [9]),
        .I1(\rdata[15]_i_5_n_3 ),
        .I2(\int_numOfOutNeurons_reg[15]_0 [9]),
        .O(\rdata[9]_i_2_n_3 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_input_r_n_66),
        .Q(s_axi_control_RDATA[0]),
        .R(1'b0));
  MUXF7 \rdata_reg[0]_i_2 
       (.I0(\rdata[0]_i_4_n_3 ),
        .I1(\rdata[0]_i_5_n_3 ),
        .O(\rdata_reg[0]_i_2_n_3 ),
        .S(\rdata[6]_i_6_n_3 ));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_weights_n_9),
        .Q(s_axi_control_RDATA[10]),
        .R(1'b0));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_input_r_n_60),
        .Q(s_axi_control_RDATA[11]),
        .R(1'b0));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_31),
        .Q(s_axi_control_RDATA[12]),
        .R(1'b0));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_weights_n_8),
        .Q(s_axi_control_RDATA[13]),
        .R(1'b0));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_weights_n_7),
        .Q(s_axi_control_RDATA[14]),
        .R(1'b0));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_weights_n_6),
        .Q(s_axi_control_RDATA[15]),
        .R(1'b0));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_input_r_n_59),
        .Q(s_axi_control_RDATA[16]),
        .R(1'b0));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_weights_n_5),
        .Q(s_axi_control_RDATA[17]),
        .R(1'b0));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_weights_n_4),
        .Q(s_axi_control_RDATA[18]),
        .R(1'b0));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_30),
        .Q(s_axi_control_RDATA[19]),
        .R(1'b0));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_input_r_n_65),
        .Q(s_axi_control_RDATA[1]),
        .R(1'b0));
  MUXF7 \rdata_reg[1]_i_2 
       (.I0(\rdata[1]_i_4_n_3 ),
        .I1(\rdata[1]_i_5_n_3 ),
        .O(\rdata_reg[1]_i_2_n_3 ),
        .S(\rdata[6]_i_6_n_3 ));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_29),
        .Q(s_axi_control_RDATA[20]),
        .R(1'b0));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_28),
        .Q(s_axi_control_RDATA[21]),
        .R(1'b0));
  FDRE \rdata_reg[22] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_27),
        .Q(s_axi_control_RDATA[22]),
        .R(1'b0));
  FDRE \rdata_reg[23] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_26),
        .Q(s_axi_control_RDATA[23]),
        .R(1'b0));
  FDRE \rdata_reg[24] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_25),
        .Q(s_axi_control_RDATA[24]),
        .R(1'b0));
  FDRE \rdata_reg[25] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_24),
        .Q(s_axi_control_RDATA[25]),
        .R(1'b0));
  FDRE \rdata_reg[26] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_23),
        .Q(s_axi_control_RDATA[26]),
        .R(1'b0));
  FDRE \rdata_reg[27] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_22),
        .Q(s_axi_control_RDATA[27]),
        .R(1'b0));
  FDRE \rdata_reg[28] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_weights_n_3),
        .Q(s_axi_control_RDATA[28]),
        .R(1'b0));
  FDRE \rdata_reg[29] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_21),
        .Q(s_axi_control_RDATA[29]),
        .R(1'b0));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_32),
        .Q(s_axi_control_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[30] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_20),
        .Q(s_axi_control_RDATA[30]),
        .R(1'b0));
  FDRE \rdata_reg[31] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_19),
        .Q(s_axi_control_RDATA[31]),
        .R(1'b0));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_input_r_n_64),
        .Q(s_axi_control_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_output_r_n_35),
        .Q(s_axi_control_RDATA[4]),
        .R(1'b0));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_input_r_n_63),
        .Q(s_axi_control_RDATA[5]),
        .R(1'b0));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_input_r_n_62),
        .Q(s_axi_control_RDATA[6]),
        .R(1'b0));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_input_r_n_61),
        .Q(s_axi_control_RDATA[7]),
        .R(1'b0));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_weights_n_11),
        .Q(s_axi_control_RDATA[8]),
        .R(1'b0));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_weights_n_10),
        .Q(s_axi_control_RDATA[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h32003232)) 
    \rstate[0]_i_1 
       (.I0(rstate[0]),
        .I1(rstate[1]),
        .I2(s_axi_control_ARVALID),
        .I3(\rdata[31]_i_1_n_3 ),
        .I4(s_axi_control_RREADY),
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_control_ARREADY_INST_0
       (.I0(rstate[1]),
        .I1(rstate[0]),
        .O(s_axi_control_ARREADY));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_control_AWREADY_INST_0
       (.I0(wstate[0]),
        .I1(wstate[1]),
        .O(s_axi_control_AWREADY));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_control_BVALID_INST_0
       (.I0(wstate[1]),
        .I1(wstate[0]),
        .O(s_axi_control_BVALID));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    s_axi_control_RVALID_INST_0
       (.I0(rstate[1]),
        .I1(rstate[0]),
        .I2(int_weights_read),
        .I3(int_input_r_read),
        .I4(int_bias_read),
        .I5(int_output_r_read),
        .O(s_axi_control_RVALID));
  LUT5 #(
    .INIT(32'h44444404)) 
    s_axi_control_WREADY_INST_0
       (.I0(wstate[1]),
        .I1(wstate[0]),
        .I2(s_axi_control_ARVALID),
        .I3(rstate[1]),
        .I4(rstate[0]),
        .O(s_axi_control_WREADY));
  LUT3 #(
    .INIT(8'h02)) 
    \waddr[16]_i_1 
       (.I0(s_axi_control_AWVALID),
        .I1(wstate[1]),
        .I2(wstate[0]),
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \weightIndexAdded_fu_82[0]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg[1] [0]),
        .O(ap_NS_fsm12_out));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00CA00FA)) 
    \wstate[0]_i_1 
       (.I0(s_axi_control_AWVALID),
        .I1(int_input_r_n_67),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .I4(s_axi_control_WVALID),
        .O(\wstate[0]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00440F00)) 
    \wstate[1]_i_1 
       (.I0(int_input_r_n_67),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_BREADY),
        .I3(wstate[1]),
        .I4(wstate[0]),
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
module design_1_nnlayer_0_1_nnlayer_control_s_axi_ram
   (DOADO,
    DOBDO,
    D,
    s_axi_control_ARVALID_0,
    ap_clk,
    grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_control_WDATA,
    \rdata_reg[7] ,
    \rdata_reg[7]_0 ,
    \rdata_reg[7]_1 ,
    int_input_r_read,
    \rdata_reg[5] ,
    \rdata_reg[5]_0 ,
    \rdata_reg[3] ,
    \rdata_reg[3]_0 ,
    \rdata_reg[3]_1 ,
    \rdata_reg[3]_2 ,
    \rdata_reg[3]_3 ,
    \rdata_reg[1] ,
    \rdata_reg[1]_0 ,
    \rdata_reg[0] ,
    \rdata_reg[0]_0 ,
    \rdata_reg[6] ,
    \rdata_reg[6]_0 ,
    \rdata_reg[6]_1 ,
    \rdata_reg[11] ,
    \rdata_reg[11]_0 ,
    \rdata_reg[11]_1 ,
    s_axi_control_ARVALID,
    rstate,
    \rdata_reg[16] ,
    mem_reg_0,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    wstate);
  output [23:0]DOADO;
  output [31:0]DOBDO;
  output [7:0]D;
  output s_axi_control_ARVALID_0;
  input ap_clk;
  input grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg;
  input [5:0]ADDRARDADDR;
  input [5:0]ADDRBWRADDR;
  input [31:0]s_axi_control_WDATA;
  input \rdata_reg[7] ;
  input \rdata_reg[7]_0 ;
  input \rdata_reg[7]_1 ;
  input int_input_r_read;
  input \rdata_reg[5] ;
  input \rdata_reg[5]_0 ;
  input \rdata_reg[3] ;
  input \rdata_reg[3]_0 ;
  input \rdata_reg[3]_1 ;
  input \rdata_reg[3]_2 ;
  input \rdata_reg[3]_3 ;
  input \rdata_reg[1] ;
  input \rdata_reg[1]_0 ;
  input \rdata_reg[0] ;
  input \rdata_reg[0]_0 ;
  input \rdata_reg[6] ;
  input \rdata_reg[6]_0 ;
  input \rdata_reg[6]_1 ;
  input \rdata_reg[11] ;
  input \rdata_reg[11]_0 ;
  input \rdata_reg[11]_1 ;
  input s_axi_control_ARVALID;
  input [1:0]rstate;
  input \rdata_reg[16] ;
  input mem_reg_0;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_WSTRB;
  input [1:0]wstate;

  wire [5:0]ADDRARDADDR;
  wire [5:0]ADDRBWRADDR;
  wire [7:0]D;
  wire [23:0]DOADO;
  wire [31:0]DOBDO;
  wire ap_clk;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg;
  wire [3:0]int_input_r_be1;
  wire int_input_r_ce1;
  wire [16:0]int_input_r_q1;
  wire int_input_r_read;
  wire mem_reg_0;
  wire [31:24]p_1_in;
  wire \rdata[3]_i_3_n_3 ;
  wire \rdata_reg[0] ;
  wire \rdata_reg[0]_0 ;
  wire \rdata_reg[11] ;
  wire \rdata_reg[11]_0 ;
  wire \rdata_reg[11]_1 ;
  wire \rdata_reg[16] ;
  wire \rdata_reg[1] ;
  wire \rdata_reg[1]_0 ;
  wire \rdata_reg[3] ;
  wire \rdata_reg[3]_0 ;
  wire \rdata_reg[3]_1 ;
  wire \rdata_reg[3]_2 ;
  wire \rdata_reg[3]_3 ;
  wire \rdata_reg[5] ;
  wire \rdata_reg[5]_0 ;
  wire \rdata_reg[6] ;
  wire \rdata_reg[6]_0 ;
  wire \rdata_reg[6]_1 ;
  wire \rdata_reg[7] ;
  wire \rdata_reg[7]_0 ;
  wire \rdata_reg[7]_1 ;
  wire [1:0]rstate;
  wire s_axi_control_ARVALID;
  wire s_axi_control_ARVALID_0;
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
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_input_r/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "960" *) 
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
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
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
        .DOADO({DOADO[23:9],int_input_r_q1[16],DOADO[8:5],int_input_r_q1[11],DOADO[4:2],int_input_r_q1[7:5],DOADO[1],int_input_r_q1[3],DOADO[0],int_input_r_q1[1:0]}),
        .DOBDO(DOBDO),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_input_r_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
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
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_14__1
       (.I0(s_axi_control_WDATA[31]),
        .I1(int_input_r_be1[3]),
        .O(p_1_in[31]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_15__0
       (.I0(s_axi_control_WDATA[30]),
        .I1(int_input_r_be1[3]),
        .O(p_1_in[30]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_16__0
       (.I0(s_axi_control_WDATA[29]),
        .I1(int_input_r_be1[3]),
        .O(p_1_in[29]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_17__0
       (.I0(s_axi_control_WDATA[28]),
        .I1(int_input_r_be1[3]),
        .O(p_1_in[28]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_18__0
       (.I0(s_axi_control_WDATA[27]),
        .I1(int_input_r_be1[3]),
        .O(p_1_in[27]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_19
       (.I0(s_axi_control_WDATA[26]),
        .I1(int_input_r_be1[3]),
        .O(p_1_in[26]));
  LUT5 #(
    .INIT(32'hFF101010)) 
    mem_reg_i_1__1
       (.I0(rstate[0]),
        .I1(rstate[1]),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0),
        .I4(s_axi_control_WVALID),
        .O(int_input_r_ce1));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_20
       (.I0(s_axi_control_WDATA[25]),
        .I1(int_input_r_be1[3]),
        .O(p_1_in[25]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_21
       (.I0(s_axi_control_WDATA[24]),
        .I1(int_input_r_be1[3]),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_22
       (.I0(s_axi_control_WSTRB[3]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_0),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_input_r_be1[3]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_23
       (.I0(s_axi_control_WSTRB[2]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_0),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_input_r_be1[2]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_24
       (.I0(s_axi_control_WSTRB[1]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_0),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_input_r_be1[1]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_25
       (.I0(s_axi_control_WSTRB[0]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_0),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_input_r_be1[0]));
  LUT6 #(
    .INIT(64'h30303030AAAA00FF)) 
    \rdata[0]_i_1 
       (.I0(int_input_r_q1[0]),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[7]_0 ),
        .I3(\rdata_reg[0]_0 ),
        .I4(int_input_r_read),
        .I5(s_axi_control_ARVALID_0),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h4F444F4F44444444)) 
    \rdata[11]_i_1 
       (.I0(\rdata_reg[11] ),
        .I1(\rdata_reg[11]_0 ),
        .I2(s_axi_control_ARVALID_0),
        .I3(int_input_r_q1[11]),
        .I4(int_input_r_read),
        .I5(\rdata_reg[11]_1 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h00000000FD00FDFD)) 
    \rdata[16]_i_1 
       (.I0(s_axi_control_ARVALID),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(int_input_r_q1[16]),
        .I4(int_input_r_read),
        .I5(\rdata_reg[16] ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h30303030AAAA00FF)) 
    \rdata[1]_i_1 
       (.I0(int_input_r_q1[1]),
        .I1(\rdata_reg[1] ),
        .I2(\rdata_reg[7]_0 ),
        .I3(\rdata_reg[1]_0 ),
        .I4(int_input_r_read),
        .I5(s_axi_control_ARVALID_0),
        .O(D[1]));
  LUT3 #(
    .INIT(8'h02)) 
    \rdata[31]_i_3 
       (.I0(s_axi_control_ARVALID),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .O(s_axi_control_ARVALID_0));
  LUT6 #(
    .INIT(64'h444CFFFF444C0000)) 
    \rdata[3]_i_3 
       (.I0(\rdata_reg[3]_1 ),
        .I1(\rdata_reg[7]_0 ),
        .I2(\rdata_reg[3]_2 ),
        .I3(\rdata_reg[3]_3 ),
        .I4(s_axi_control_ARVALID_0),
        .I5(int_input_r_q1[3]),
        .O(\rdata[3]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h30303030AAAA00FF)) 
    \rdata[5]_i_1 
       (.I0(int_input_r_q1[5]),
        .I1(\rdata_reg[5] ),
        .I2(\rdata_reg[7]_0 ),
        .I3(\rdata_reg[5]_0 ),
        .I4(int_input_r_read),
        .I5(s_axi_control_ARVALID_0),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h8F808F8F80808080)) 
    \rdata[6]_i_1 
       (.I0(\rdata_reg[6] ),
        .I1(\rdata_reg[6]_0 ),
        .I2(s_axi_control_ARVALID_0),
        .I3(int_input_r_q1[6]),
        .I4(int_input_r_read),
        .I5(\rdata_reg[6]_1 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h30303030AAAA00FF)) 
    \rdata[7]_i_1 
       (.I0(int_input_r_q1[7]),
        .I1(\rdata_reg[7] ),
        .I2(\rdata_reg[7]_0 ),
        .I3(\rdata_reg[7]_1 ),
        .I4(int_input_r_read),
        .I5(s_axi_control_ARVALID_0),
        .O(D[5]));
  MUXF7 \rdata_reg[3]_i_1 
       (.I0(\rdata[3]_i_3_n_3 ),
        .I1(\rdata_reg[3]_0 ),
        .O(D[2]),
        .S(\rdata_reg[3] ));
endmodule

(* ORIG_REF_NAME = "nnlayer_control_s_axi_ram" *) 
module design_1_nnlayer_0_1_nnlayer_control_s_axi_ram__parameterized0
   (DOADO,
    \ap_CS_fsm_reg[3] ,
    D,
    ap_clk,
    output_r_ce0,
    ADDRARDADDR,
    mem_reg_0,
    s_axi_control_WDATA,
    DIBDI,
    WEBWE,
    mem_reg_1,
    mem_reg_2,
    mem_reg_3,
    mem_reg_4,
    \rdata_reg[4] ,
    int_input_r_read,
    \rdata_reg[4]_0 ,
    \rdata_reg[4]_1 ,
    rstate,
    s_axi_control_ARVALID,
    mem_reg_5,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    wstate,
    q1,
    int_output_r_read,
    int_bias_read,
    \rdata_reg[4]_2 );
  output [30:0]DOADO;
  output \ap_CS_fsm_reg[3] ;
  output [0:0]D;
  input ap_clk;
  input output_r_ce0;
  input [6:0]ADDRARDADDR;
  input [6:0]mem_reg_0;
  input [31:0]s_axi_control_WDATA;
  input [23:0]DIBDI;
  input [1:0]WEBWE;
  input [0:0]mem_reg_1;
  input mem_reg_2;
  input mem_reg_3;
  input mem_reg_4;
  input [0:0]\rdata_reg[4] ;
  input int_input_r_read;
  input \rdata_reg[4]_0 ;
  input \rdata_reg[4]_1 ;
  input [1:0]rstate;
  input s_axi_control_ARVALID;
  input mem_reg_5;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_WSTRB;
  input [1:0]wstate;
  input [0:0]q1;
  input int_output_r_read;
  input int_bias_read;
  input [0:0]\rdata_reg[4]_2 ;

  wire [6:0]ADDRARDADDR;
  wire [0:0]D;
  wire [23:0]DIBDI;
  wire [30:0]DOADO;
  wire [1:0]WEBWE;
  wire \ap_CS_fsm_reg[3] ;
  wire ap_clk;
  wire int_bias_read;
  wire int_input_r_read;
  wire [3:0]int_output_r_be1;
  wire int_output_r_ce1;
  wire [31:15]int_output_r_q0;
  wire [4:4]int_output_r_q1;
  wire int_output_r_read;
  wire [6:0]mem_reg_0;
  wire [0:0]mem_reg_1;
  wire mem_reg_2;
  wire mem_reg_3;
  wire mem_reg_4;
  wire mem_reg_5;
  wire mem_reg_n_40;
  wire mem_reg_n_41;
  wire mem_reg_n_42;
  wire mem_reg_n_43;
  wire mem_reg_n_44;
  wire mem_reg_n_45;
  wire mem_reg_n_46;
  wire mem_reg_n_47;
  wire mem_reg_n_48;
  wire mem_reg_n_49;
  wire mem_reg_n_50;
  wire mem_reg_n_51;
  wire mem_reg_n_52;
  wire mem_reg_n_53;
  wire mem_reg_n_54;
  wire mem_reg_n_56;
  wire mem_reg_n_57;
  wire mem_reg_n_58;
  wire mem_reg_n_59;
  wire mem_reg_n_60;
  wire mem_reg_n_61;
  wire mem_reg_n_62;
  wire mem_reg_n_63;
  wire mem_reg_n_64;
  wire mem_reg_n_65;
  wire mem_reg_n_66;
  wire mem_reg_n_67;
  wire mem_reg_n_68;
  wire mem_reg_n_69;
  wire mem_reg_n_70;
  wire output_r_ce0;
  wire [31:24]p_2_in;
  wire [0:0]q1;
  wire \rdata[4]_i_2_n_3 ;
  wire [0:0]\rdata_reg[4] ;
  wire \rdata_reg[4]_0 ;
  wire \rdata_reg[4]_1 ;
  wire [0:0]\rdata_reg[4]_2 ;
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
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,mem_reg_0,1'b1,1'b1,1'b1,1'b1,1'b1}),
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
        .DOADO({DOADO[30:4],int_output_r_q1,DOADO[3:0]}),
        .DOBDO({int_output_r_q0[31],mem_reg_n_40,mem_reg_n_41,mem_reg_n_42,mem_reg_n_43,mem_reg_n_44,mem_reg_n_45,mem_reg_n_46,mem_reg_n_47,mem_reg_n_48,mem_reg_n_49,mem_reg_n_50,mem_reg_n_51,mem_reg_n_52,mem_reg_n_53,mem_reg_n_54,int_output_r_q0[15],mem_reg_n_56,mem_reg_n_57,mem_reg_n_58,mem_reg_n_59,mem_reg_n_60,mem_reg_n_61,mem_reg_n_62,mem_reg_n_63,mem_reg_n_64,mem_reg_n_65,mem_reg_n_66,mem_reg_n_67,mem_reg_n_68,mem_reg_n_69,mem_reg_n_70}),
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
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_11__1
       (.I0(s_axi_control_WDATA[31]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[31]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_12__1
       (.I0(s_axi_control_WDATA[30]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[30]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_13__1
       (.I0(s_axi_control_WDATA[29]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[29]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_14__0
       (.I0(s_axi_control_WDATA[28]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[28]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_15
       (.I0(s_axi_control_WDATA[27]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[27]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_16
       (.I0(s_axi_control_WDATA[26]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[26]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_17
       (.I0(s_axi_control_WDATA[25]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[25]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_18
       (.I0(s_axi_control_WDATA[24]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[24]));
  LUT5 #(
    .INIT(32'hFF101010)) 
    mem_reg_i_1__0
       (.I0(rstate[0]),
        .I1(rstate[1]),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_5),
        .I4(s_axi_control_WVALID),
        .O(int_output_r_ce1));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_43
       (.I0(s_axi_control_WSTRB[3]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_5),
        .I3(\rdata_reg[4]_0 ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_output_r_be1[3]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_44
       (.I0(s_axi_control_WSTRB[2]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_5),
        .I3(\rdata_reg[4]_0 ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_output_r_be1[2]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_45
       (.I0(s_axi_control_WSTRB[1]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_5),
        .I3(\rdata_reg[4]_0 ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_output_r_be1[1]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_46
       (.I0(s_axi_control_WSTRB[0]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_5),
        .I3(\rdata_reg[4]_0 ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_output_r_be1[0]));
  LUT6 #(
    .INIT(64'hFEAEAAAAAAAAAAAA)) 
    mem_reg_i_56
       (.I0(mem_reg_1),
        .I1(int_output_r_q0[15]),
        .I2(mem_reg_2),
        .I3(int_output_r_q0[31]),
        .I4(mem_reg_3),
        .I5(mem_reg_4),
        .O(\ap_CS_fsm_reg[3] ));
  LUT5 #(
    .INIT(32'h00C5FFC5)) 
    \rdata[4]_i_1 
       (.I0(\rdata[4]_i_2_n_3 ),
        .I1(\rdata_reg[4] ),
        .I2(int_input_r_read),
        .I3(\rdata_reg[4]_0 ),
        .I4(\rdata_reg[4]_1 ),
        .O(D));
  LUT5 #(
    .INIT(32'h50535F53)) 
    \rdata[4]_i_2 
       (.I0(int_output_r_q1),
        .I1(q1),
        .I2(int_output_r_read),
        .I3(int_bias_read),
        .I4(\rdata_reg[4]_2 ),
        .O(\rdata[4]_i_2_n_3 ));
endmodule

(* ORIG_REF_NAME = "nnlayer_control_s_axi_ram" *) 
module design_1_nnlayer_0_1_nnlayer_control_s_axi_ram__parameterized1
   (DOADO,
    int_input_r_read_reg,
    mem_reg_0,
    mem_reg_1,
    S,
    mem_reg_2,
    mem_reg_3,
    mem_reg_4,
    ap_clk,
    D,
    ADDRARDADDR,
    Q,
    s_axi_control_WDATA,
    \rdata_reg[12] ,
    \rdata_reg[12]_0 ,
    \rdata_reg[12]_1 ,
    int_input_r_read,
    \rdata_reg[31] ,
    \rdata_reg[2] ,
    \rdata_reg[2]_0 ,
    s_axi_control_ARVALID,
    rstate,
    mem_reg_5,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    wstate,
    \rdata_reg[31]_0 ,
    int_output_r_read,
    q1,
    int_bias_read,
    tmp_fu_54,
    mem_reg_i_55);
  output [15:0]DOADO;
  output [13:0]int_input_r_read_reg;
  output mem_reg_0;
  output mem_reg_1;
  output [3:0]S;
  output [3:0]mem_reg_2;
  output [3:0]mem_reg_3;
  output [3:0]mem_reg_4;
  input ap_clk;
  input [0:0]D;
  input [6:0]ADDRARDADDR;
  input [6:0]Q;
  input [31:0]s_axi_control_WDATA;
  input \rdata_reg[12] ;
  input \rdata_reg[12]_0 ;
  input \rdata_reg[12]_1 ;
  input int_input_r_read;
  input [13:0]\rdata_reg[31] ;
  input \rdata_reg[2] ;
  input \rdata_reg[2]_0 ;
  input s_axi_control_ARVALID;
  input [1:0]rstate;
  input mem_reg_5;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_WSTRB;
  input [1:0]wstate;
  input [15:0]\rdata_reg[31]_0 ;
  input int_output_r_read;
  input [15:0]q1;
  input int_bias_read;
  input [15:0]tmp_fu_54;
  input mem_reg_i_55;

  wire [6:0]ADDRARDADDR;
  wire [0:0]D;
  wire [15:0]DOADO;
  wire [6:0]Q;
  wire [3:0]S;
  wire ap_clk;
  wire [3:0]int_bias_be1;
  wire int_bias_ce1;
  wire [31:0]int_bias_q0;
  wire [31:0]int_bias_q1;
  wire int_bias_read;
  wire int_input_r_read;
  wire [13:0]int_input_r_read_reg;
  wire int_output_r_read;
  wire mem_reg_0;
  wire mem_reg_1;
  wire [3:0]mem_reg_2;
  wire [3:0]mem_reg_3;
  wire [3:0]mem_reg_4;
  wire mem_reg_5;
  wire mem_reg_i_55;
  wire [31:24]p_1_in;
  wire [15:0]q1;
  wire \rdata[12]_i_3_n_3 ;
  wire \rdata[19]_i_2_n_3 ;
  wire \rdata[20]_i_2_n_3 ;
  wire \rdata[21]_i_2_n_3 ;
  wire \rdata[22]_i_2_n_3 ;
  wire \rdata[23]_i_2_n_3 ;
  wire \rdata[24]_i_2_n_3 ;
  wire \rdata[25]_i_2_n_3 ;
  wire \rdata[26]_i_2_n_3 ;
  wire \rdata[27]_i_2_n_3 ;
  wire \rdata[29]_i_2_n_3 ;
  wire \rdata[2]_i_2_n_3 ;
  wire \rdata[30]_i_2_n_3 ;
  wire \rdata[31]_i_4_n_3 ;
  wire \rdata_reg[12] ;
  wire \rdata_reg[12]_0 ;
  wire \rdata_reg[12]_1 ;
  wire \rdata_reg[2] ;
  wire \rdata_reg[2]_0 ;
  wire [13:0]\rdata_reg[31] ;
  wire [15:0]\rdata_reg[31]_0 ;
  wire [1:0]rstate;
  wire s_axi_control_ARVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [15:0]tmp_fu_54;
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
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,Q,1'b1,1'b1,1'b1,1'b1,1'b1}),
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
        .DOADO({int_bias_q1[31:29],DOADO[15],int_bias_q1[27:19],DOADO[14:9],int_bias_q1[12:11],DOADO[8:1],int_bias_q1[2],DOADO[0],int_bias_q1[0]}),
        .DOBDO(int_bias_q0),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_bias_ce1),
        .ENBWREN(D),
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
    .INIT(32'hFF101010)) 
    mem_reg_i_1
       (.I0(rstate[0]),
        .I1(rstate[1]),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_5),
        .I4(s_axi_control_WVALID),
        .O(int_bias_ce1));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_10__1
       (.I0(s_axi_control_WDATA[24]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_11__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_5),
        .I3(\rdata_reg[12]_1 ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_bias_be1[3]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_12__0
       (.I0(s_axi_control_WSTRB[2]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_5),
        .I3(\rdata_reg[12]_1 ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_bias_be1[2]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_13__0
       (.I0(s_axi_control_WSTRB[1]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_5),
        .I3(\rdata_reg[12]_1 ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_bias_be1[1]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_14
       (.I0(s_axi_control_WSTRB[0]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_5),
        .I3(\rdata_reg[12]_1 ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_bias_be1[0]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_3__1
       (.I0(s_axi_control_WDATA[31]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[31]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_4__1
       (.I0(s_axi_control_WDATA[30]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[30]));
  LUT4 #(
    .INIT(16'h56A6)) 
    mem_reg_i_57
       (.I0(tmp_fu_54[15]),
        .I1(int_bias_q0[15]),
        .I2(mem_reg_i_55),
        .I3(int_bias_q0[31]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_58
       (.I0(int_bias_q0[14]),
        .I1(mem_reg_i_55),
        .I2(int_bias_q0[30]),
        .I3(tmp_fu_54[14]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_59
       (.I0(int_bias_q0[13]),
        .I1(mem_reg_i_55),
        .I2(int_bias_q0[29]),
        .I3(tmp_fu_54[13]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_5__1
       (.I0(s_axi_control_WDATA[29]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[29]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_60
       (.I0(int_bias_q0[12]),
        .I1(mem_reg_i_55),
        .I2(int_bias_q0[28]),
        .I3(tmp_fu_54[12]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_61
       (.I0(int_bias_q0[11]),
        .I1(mem_reg_i_55),
        .I2(int_bias_q0[27]),
        .I3(tmp_fu_54[11]),
        .O(mem_reg_4[3]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_62
       (.I0(int_bias_q0[10]),
        .I1(mem_reg_i_55),
        .I2(int_bias_q0[26]),
        .I3(tmp_fu_54[10]),
        .O(mem_reg_4[2]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_63
       (.I0(int_bias_q0[9]),
        .I1(mem_reg_i_55),
        .I2(int_bias_q0[25]),
        .I3(tmp_fu_54[9]),
        .O(mem_reg_4[1]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_64
       (.I0(int_bias_q0[8]),
        .I1(mem_reg_i_55),
        .I2(int_bias_q0[24]),
        .I3(tmp_fu_54[8]),
        .O(mem_reg_4[0]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_65
       (.I0(int_bias_q0[7]),
        .I1(mem_reg_i_55),
        .I2(int_bias_q0[23]),
        .I3(tmp_fu_54[7]),
        .O(mem_reg_3[3]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_66
       (.I0(int_bias_q0[6]),
        .I1(mem_reg_i_55),
        .I2(int_bias_q0[22]),
        .I3(tmp_fu_54[6]),
        .O(mem_reg_3[2]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_67
       (.I0(int_bias_q0[5]),
        .I1(mem_reg_i_55),
        .I2(int_bias_q0[21]),
        .I3(tmp_fu_54[5]),
        .O(mem_reg_3[1]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_68
       (.I0(int_bias_q0[4]),
        .I1(mem_reg_i_55),
        .I2(int_bias_q0[20]),
        .I3(tmp_fu_54[4]),
        .O(mem_reg_3[0]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_69
       (.I0(int_bias_q0[3]),
        .I1(mem_reg_i_55),
        .I2(int_bias_q0[19]),
        .I3(tmp_fu_54[3]),
        .O(mem_reg_2[3]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_6__1
       (.I0(s_axi_control_WDATA[28]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[28]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_70
       (.I0(int_bias_q0[2]),
        .I1(mem_reg_i_55),
        .I2(int_bias_q0[18]),
        .I3(tmp_fu_54[2]),
        .O(mem_reg_2[2]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_71
       (.I0(int_bias_q0[1]),
        .I1(mem_reg_i_55),
        .I2(int_bias_q0[17]),
        .I3(tmp_fu_54[1]),
        .O(mem_reg_2[1]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_72
       (.I0(int_bias_q0[0]),
        .I1(mem_reg_i_55),
        .I2(int_bias_q0[16]),
        .I3(tmp_fu_54[0]),
        .O(mem_reg_2[0]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_7__1
       (.I0(s_axi_control_WDATA[27]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[27]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_8__1
       (.I0(s_axi_control_WDATA[26]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[26]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_9__1
       (.I0(s_axi_control_WDATA[25]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[25]));
  LUT5 #(
    .INIT(32'h0047FF47)) 
    \rdata[0]_i_3 
       (.I0(int_bias_q1[0]),
        .I1(int_bias_read),
        .I2(q1[0]),
        .I3(int_output_r_read),
        .I4(\rdata_reg[31]_0 [0]),
        .O(mem_reg_1));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[11]_i_3 
       (.I0(int_bias_q1[11]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31]_0 [2]),
        .I3(int_output_r_read),
        .I4(q1[2]),
        .I5(int_bias_read),
        .O(mem_reg_0));
  LUT6 #(
    .INIT(64'h2F2F2F20202F2020)) 
    \rdata[12]_i_1 
       (.I0(\rdata_reg[12] ),
        .I1(\rdata_reg[12]_0 ),
        .I2(\rdata_reg[12]_1 ),
        .I3(int_input_r_read),
        .I4(\rdata[12]_i_3_n_3 ),
        .I5(\rdata_reg[31] [1]),
        .O(int_input_r_read_reg[1]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \rdata[12]_i_3 
       (.I0(int_bias_q1[12]),
        .I1(int_bias_read),
        .I2(q1[3]),
        .I3(int_output_r_read),
        .I4(\rdata_reg[31]_0 [3]),
        .O(\rdata[12]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[19]_i_1 
       (.I0(\rdata[19]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31] [2]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(int_input_r_read_reg[2]));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[19]_i_2 
       (.I0(int_bias_q1[19]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31]_0 [4]),
        .I3(int_output_r_read),
        .I4(q1[4]),
        .I5(int_bias_read),
        .O(\rdata[19]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[20]_i_1 
       (.I0(\rdata[20]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31] [3]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(int_input_r_read_reg[3]));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[20]_i_2 
       (.I0(int_bias_q1[20]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31]_0 [5]),
        .I3(int_output_r_read),
        .I4(q1[5]),
        .I5(int_bias_read),
        .O(\rdata[20]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hFFF3555100005551)) 
    \rdata[21]_i_1 
       (.I0(\rdata[21]_i_2_n_3 ),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(int_input_r_read),
        .I5(\rdata_reg[31] [4]),
        .O(int_input_r_read_reg[4]));
  LUT5 #(
    .INIT(32'h0047FF47)) 
    \rdata[21]_i_2 
       (.I0(int_bias_q1[21]),
        .I1(int_bias_read),
        .I2(q1[6]),
        .I3(int_output_r_read),
        .I4(\rdata_reg[31]_0 [6]),
        .O(\rdata[21]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[22]_i_1 
       (.I0(\rdata[22]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31] [5]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(int_input_r_read_reg[5]));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[22]_i_2 
       (.I0(int_bias_q1[22]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31]_0 [7]),
        .I3(int_output_r_read),
        .I4(q1[7]),
        .I5(int_bias_read),
        .O(\rdata[22]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[23]_i_1 
       (.I0(\rdata[23]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31] [6]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(int_input_r_read_reg[6]));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[23]_i_2 
       (.I0(int_bias_q1[23]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31]_0 [8]),
        .I3(int_output_r_read),
        .I4(q1[8]),
        .I5(int_bias_read),
        .O(\rdata[23]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[24]_i_1 
       (.I0(\rdata[24]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31] [7]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(int_input_r_read_reg[7]));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[24]_i_2 
       (.I0(int_bias_q1[24]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31]_0 [9]),
        .I3(int_output_r_read),
        .I4(q1[9]),
        .I5(int_bias_read),
        .O(\rdata[24]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[25]_i_1 
       (.I0(\rdata[25]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31] [8]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(int_input_r_read_reg[8]));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[25]_i_2 
       (.I0(int_bias_q1[25]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31]_0 [10]),
        .I3(int_output_r_read),
        .I4(q1[10]),
        .I5(int_bias_read),
        .O(\rdata[25]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[26]_i_1 
       (.I0(\rdata[26]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31] [9]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(int_input_r_read_reg[9]));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[26]_i_2 
       (.I0(int_bias_q1[26]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31]_0 [11]),
        .I3(int_output_r_read),
        .I4(q1[11]),
        .I5(int_bias_read),
        .O(\rdata[26]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[27]_i_1 
       (.I0(\rdata[27]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31] [10]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(int_input_r_read_reg[10]));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[27]_i_2 
       (.I0(int_bias_q1[27]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31]_0 [12]),
        .I3(int_output_r_read),
        .I4(q1[12]),
        .I5(int_bias_read),
        .O(\rdata[27]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[29]_i_1 
       (.I0(\rdata[29]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31] [11]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(int_input_r_read_reg[11]));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[29]_i_2 
       (.I0(int_bias_q1[29]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31]_0 [13]),
        .I3(int_output_r_read),
        .I4(q1[13]),
        .I5(int_bias_read),
        .O(\rdata[29]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hFFC5FFC5FFC500C5)) 
    \rdata[2]_i_1 
       (.I0(\rdata[2]_i_2_n_3 ),
        .I1(\rdata_reg[31] [0]),
        .I2(int_input_r_read),
        .I3(\rdata_reg[12]_1 ),
        .I4(\rdata_reg[2] ),
        .I5(\rdata_reg[2]_0 ),
        .O(int_input_r_read_reg[0]));
  LUT5 #(
    .INIT(32'h0047FF47)) 
    \rdata[2]_i_2 
       (.I0(int_bias_q1[2]),
        .I1(int_bias_read),
        .I2(q1[1]),
        .I3(int_output_r_read),
        .I4(\rdata_reg[31]_0 [1]),
        .O(\rdata[2]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[30]_i_1 
       (.I0(\rdata[30]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31] [12]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(int_input_r_read_reg[12]));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[30]_i_2 
       (.I0(int_bias_q1[30]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31]_0 [14]),
        .I3(int_output_r_read),
        .I4(q1[14]),
        .I5(int_bias_read),
        .O(\rdata[30]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[31]_i_2 
       (.I0(\rdata[31]_i_4_n_3 ),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31] [13]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(int_input_r_read_reg[13]));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[31]_i_4 
       (.I0(int_bias_q1[31]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31]_0 [15]),
        .I3(int_output_r_read),
        .I4(q1[15]),
        .I5(int_bias_read),
        .O(\rdata[31]_i_4_n_3 ));
endmodule

(* ORIG_REF_NAME = "nnlayer_control_s_axi_ram" *) 
module design_1_nnlayer_0_1_nnlayer_control_s_axi_ram__parameterized2
   (D,
    ADDRARDADDR,
    mem_reg_0_0_0,
    q1,
    mem_reg_0_2_0,
    mem_reg_0_3_0,
    mem_reg_0_3_1,
    mem_reg_2_0_0,
    mem_reg_0_1_0,
    q0,
    \rdata_reg[15] ,
    \rdata_reg[15]_0 ,
    \rdata_reg[15]_1 ,
    int_input_r_read,
    DOADO,
    \rdata_reg[14] ,
    \rdata_reg[13] ,
    \rdata_reg[10] ,
    \rdata_reg[9] ,
    \rdata_reg[8] ,
    s_axi_control_ARADDR,
    s_axi_control_ARVALID,
    rstate,
    Q,
    mem_reg_0_0_1,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    wstate,
    s_axi_control_WDATA,
    \rdata_reg[28] ,
    int_bias_read,
    int_output_r_read,
    \rdata_reg[28]_0 ,
    ap_clk,
    grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg,
    grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0);
  output [8:0]D;
  output [6:0]ADDRARDADDR;
  output mem_reg_0_0_0;
  output [16:0]q1;
  output mem_reg_0_2_0;
  output mem_reg_0_3_0;
  output mem_reg_0_3_1;
  output mem_reg_2_0_0;
  output mem_reg_0_1_0;
  output [31:0]q0;
  input \rdata_reg[15] ;
  input \rdata_reg[15]_0 ;
  input \rdata_reg[15]_1 ;
  input int_input_r_read;
  input [8:0]DOADO;
  input \rdata_reg[14] ;
  input \rdata_reg[13] ;
  input \rdata_reg[10] ;
  input \rdata_reg[9] ;
  input \rdata_reg[8] ;
  input [13:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  input [1:0]rstate;
  input [13:0]Q;
  input mem_reg_0_0_1;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_WSTRB;
  input [1:0]wstate;
  input [31:0]s_axi_control_WDATA;
  input [14:0]\rdata_reg[28] ;
  input int_bias_read;
  input int_output_r_read;
  input [14:0]\rdata_reg[28]_0 ;
  input ap_clk;
  input grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg;
  input [13:0]grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0;

  wire [6:0]ADDRARDADDR;
  wire [8:0]D;
  wire [8:0]DOADO;
  wire [13:0]Q;
  wire ap_clk;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg;
  wire [13:0]grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0;
  wire int_bias_read;
  wire int_input_r_read;
  wire int_output_r_read;
  wire [13:7]int_weights_address1;
  wire [3:0]int_weights_be1;
  wire int_weights_ce1;
  wire [28:1]int_weights_q1;
  wire mem_reg_0_0_0;
  wire mem_reg_0_0_1;
  wire mem_reg_0_1_0;
  wire mem_reg_0_2_0;
  wire mem_reg_0_3_0;
  wire mem_reg_0_3_1;
  wire mem_reg_2_0_0;
  wire [31:24]p_1_in;
  wire [31:0]q0;
  wire [16:0]q1;
  wire \rdata[10]_i_3_n_3 ;
  wire \rdata[13]_i_3_n_3 ;
  wire \rdata[14]_i_3_n_3 ;
  wire \rdata[15]_i_4_n_3 ;
  wire \rdata[17]_i_2_n_3 ;
  wire \rdata[18]_i_2_n_3 ;
  wire \rdata[28]_i_2_n_3 ;
  wire \rdata[8]_i_3_n_3 ;
  wire \rdata[9]_i_3_n_3 ;
  wire \rdata_reg[10] ;
  wire \rdata_reg[13] ;
  wire \rdata_reg[14] ;
  wire \rdata_reg[15] ;
  wire \rdata_reg[15]_0 ;
  wire \rdata_reg[15]_1 ;
  wire [14:0]\rdata_reg[28] ;
  wire [14:0]\rdata_reg[28]_0 ;
  wire \rdata_reg[8] ;
  wire \rdata_reg[9] ;
  wire [1:0]rstate;
  wire [13:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [1:0]wstate;
  wire NLW_mem_reg_0_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_SBITERR_UNCONNECTED;
  wire [31:2]NLW_mem_reg_0_0_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_0_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_SBITERR_UNCONNECTED;
  wire [31:2]NLW_mem_reg_0_1_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_0_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_1_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_2_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_2_SBITERR_UNCONNECTED;
  wire [31:2]NLW_mem_reg_0_2_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_0_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_2_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_3_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_3_SBITERR_UNCONNECTED;
  wire [31:2]NLW_mem_reg_0_3_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_0_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_3_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_SBITERR_UNCONNECTED;
  wire [31:2]NLW_mem_reg_1_0_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_1_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_1_SBITERR_UNCONNECTED;
  wire [31:2]NLW_mem_reg_1_1_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_1_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_1_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_2_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_2_SBITERR_UNCONNECTED;
  wire [31:2]NLW_mem_reg_1_2_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_1_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_2_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_3_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_3_SBITERR_UNCONNECTED;
  wire [31:2]NLW_mem_reg_1_3_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_1_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_3_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_2_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_2_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_SBITERR_UNCONNECTED;
  wire [31:2]NLW_mem_reg_2_0_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_2_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_2_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_2_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_1_SBITERR_UNCONNECTED;
  wire [31:2]NLW_mem_reg_2_1_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_2_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_1_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_2_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_2_2_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_2_SBITERR_UNCONNECTED;
  wire [31:2]NLW_mem_reg_2_2_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_2_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_2_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_2_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_2_3_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_3_SBITERR_UNCONNECTED;
  wire [31:2]NLW_mem_reg_2_3_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_2_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_3_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_3_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_3_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_SBITERR_UNCONNECTED;
  wire [31:2]NLW_mem_reg_3_0_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_3_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_3_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_3_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_1_SBITERR_UNCONNECTED;
  wire [31:2]NLW_mem_reg_3_1_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_3_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_1_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_3_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_3_2_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_2_SBITERR_UNCONNECTED;
  wire [31:2]NLW_mem_reg_3_2_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_3_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_2_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_3_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_3_3_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_3_SBITERR_UNCONNECTED;
  wire [31:2]NLW_mem_reg_3_3_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_3_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_3_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (14) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
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
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_0_0
       (.ADDRARDADDR({1'b1,int_weights_address1,ADDRARDADDR,1'b1}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_0_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[1:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_0_0_DOADO_UNCONNECTED[31:2],int_weights_q1[1],q1[0]}),
        .DOBDO({NLW_mem_reg_0_0_DOBDO_UNCONNECTED[31:2],q0[1:0]}),
        .DOPADOP(NLW_mem_reg_0_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .INJECTDBITERR(NLW_mem_reg_0_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_0_SBITERR_UNCONNECTED),
        .WEA({int_weights_be1[0],int_weights_be1[0],int_weights_be1[0],int_weights_be1[0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'hFF101010)) 
    mem_reg_0_0_i_1
       (.I0(rstate[0]),
        .I1(rstate[1]),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_1),
        .I4(s_axi_control_WVALID),
        .O(int_weights_ce1));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_0_0_i_2
       (.I0(s_axi_control_ARADDR[13]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[13]),
        .O(int_weights_address1[13]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_0_0_i_3
       (.I0(s_axi_control_ARADDR[12]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[12]),
        .O(int_weights_address1[12]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_0_0_i_4
       (.I0(s_axi_control_ARADDR[11]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[11]),
        .O(int_weights_address1[11]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_0_0_i_5
       (.I0(s_axi_control_ARADDR[10]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[10]),
        .O(int_weights_address1[10]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_0_0_i_6
       (.I0(s_axi_control_ARADDR[9]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[9]),
        .O(int_weights_address1[9]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_0_0_i_7
       (.I0(s_axi_control_ARADDR[8]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[8]),
        .O(int_weights_address1[8]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_0_0_i_8
       (.I0(s_axi_control_ARADDR[7]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[7]),
        .O(int_weights_address1[7]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_0_0_i_9
       (.I0(s_axi_control_WSTRB[0]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_0_0_1),
        .I3(\rdata_reg[15]_1 ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_weights_be1[0]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (14) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
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
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_0_1
       (.ADDRARDADDR({1'b1,int_weights_address1,ADDRARDADDR,1'b1}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_0_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[3:2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_0_1_DOADO_UNCONNECTED[31:2],int_weights_q1[3],q1[1]}),
        .DOBDO({NLW_mem_reg_0_1_DOBDO_UNCONNECTED[31:2],q0[3:2]}),
        .DOPADOP(NLW_mem_reg_0_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .INJECTDBITERR(NLW_mem_reg_0_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_1_SBITERR_UNCONNECTED),
        .WEA({int_weights_be1[0],int_weights_be1[0],int_weights_be1[0],int_weights_be1[0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (14) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
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
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_0_2
       (.ADDRARDADDR({1'b1,int_weights_address1,ADDRARDADDR,1'b1}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_0_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[5:4]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_0_2_DOADO_UNCONNECTED[31:2],int_weights_q1[5],q1[2]}),
        .DOBDO({NLW_mem_reg_0_2_DOBDO_UNCONNECTED[31:2],q0[5:4]}),
        .DOPADOP(NLW_mem_reg_0_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .INJECTDBITERR(NLW_mem_reg_0_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_2_SBITERR_UNCONNECTED),
        .WEA({int_weights_be1[0],int_weights_be1[0],int_weights_be1[0],int_weights_be1[0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (14) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
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
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_0_3
       (.ADDRARDADDR({1'b1,int_weights_address1,ADDRARDADDR,1'b1}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_0_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[7:6]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_0_3_DOADO_UNCONNECTED[31:2],int_weights_q1[7:6]}),
        .DOBDO({NLW_mem_reg_0_3_DOBDO_UNCONNECTED[31:2],q0[7:6]}),
        .DOPADOP(NLW_mem_reg_0_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .INJECTDBITERR(NLW_mem_reg_0_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_3_SBITERR_UNCONNECTED),
        .WEA({int_weights_be1[0],int_weights_be1[0],int_weights_be1[0],int_weights_be1[0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (14) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
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
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_1_0
       (.ADDRARDADDR({1'b1,int_weights_address1,ADDRARDADDR,1'b1}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_1_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_1_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[9:8]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_1_0_DOADO_UNCONNECTED[31:2],int_weights_q1[9:8]}),
        .DOBDO({NLW_mem_reg_1_0_DOBDO_UNCONNECTED[31:2],q0[9:8]}),
        .DOPADOP(NLW_mem_reg_1_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .INJECTDBITERR(NLW_mem_reg_1_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_0_SBITERR_UNCONNECTED),
        .WEA({int_weights_be1[1],int_weights_be1[1],int_weights_be1[1],int_weights_be1[1]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_1_0_i_1
       (.I0(s_axi_control_WSTRB[1]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_0_0_1),
        .I3(\rdata_reg[15]_1 ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_weights_be1[1]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (14) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
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
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_1_1
       (.ADDRARDADDR({1'b1,int_weights_address1,ADDRARDADDR,1'b1}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_1_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_1_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[11:10]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_1_1_DOADO_UNCONNECTED[31:2],q1[3],int_weights_q1[10]}),
        .DOBDO({NLW_mem_reg_1_1_DOBDO_UNCONNECTED[31:2],q0[11:10]}),
        .DOPADOP(NLW_mem_reg_1_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .INJECTDBITERR(NLW_mem_reg_1_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_1_SBITERR_UNCONNECTED),
        .WEA({int_weights_be1[1],int_weights_be1[1],int_weights_be1[1],int_weights_be1[1]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (14) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
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
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_1_2
       (.ADDRARDADDR({1'b1,int_weights_address1,ADDRARDADDR,1'b1}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_1_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_1_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[13:12]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_1_2_DOADO_UNCONNECTED[31:2],int_weights_q1[13],q1[4]}),
        .DOBDO({NLW_mem_reg_1_2_DOBDO_UNCONNECTED[31:2],q0[13:12]}),
        .DOPADOP(NLW_mem_reg_1_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .INJECTDBITERR(NLW_mem_reg_1_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_2_SBITERR_UNCONNECTED),
        .WEA({int_weights_be1[1],int_weights_be1[1],int_weights_be1[1],int_weights_be1[1]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (14) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
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
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_1_3
       (.ADDRARDADDR({1'b1,int_weights_address1,ADDRARDADDR,1'b1}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_1_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_1_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[15:14]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_1_3_DOADO_UNCONNECTED[31:2],int_weights_q1[15:14]}),
        .DOBDO({NLW_mem_reg_1_3_DOBDO_UNCONNECTED[31:2],q0[15:14]}),
        .DOPADOP(NLW_mem_reg_1_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .INJECTDBITERR(NLW_mem_reg_1_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_3_SBITERR_UNCONNECTED),
        .WEA({int_weights_be1[1],int_weights_be1[1],int_weights_be1[1],int_weights_be1[1]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (14) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
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
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_2_0
       (.ADDRARDADDR({1'b1,int_weights_address1,ADDRARDADDR,1'b1}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_2_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_2_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_2_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[17:16]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_2_0_DOADO_UNCONNECTED[31:2],int_weights_q1[17:16]}),
        .DOBDO({NLW_mem_reg_2_0_DOBDO_UNCONNECTED[31:2],q0[17:16]}),
        .DOPADOP(NLW_mem_reg_2_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .INJECTDBITERR(NLW_mem_reg_2_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_0_SBITERR_UNCONNECTED),
        .WEA({int_weights_be1[2],int_weights_be1[2],int_weights_be1[2],int_weights_be1[2]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_2_0_i_1
       (.I0(s_axi_control_WSTRB[2]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_0_0_1),
        .I3(\rdata_reg[15]_1 ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_weights_be1[2]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (14) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
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
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_2_1
       (.ADDRARDADDR({1'b1,int_weights_address1,ADDRARDADDR,1'b1}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_2_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_2_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_2_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[19:18]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_2_1_DOADO_UNCONNECTED[31:2],q1[5],int_weights_q1[18]}),
        .DOBDO({NLW_mem_reg_2_1_DOBDO_UNCONNECTED[31:2],q0[19:18]}),
        .DOPADOP(NLW_mem_reg_2_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .INJECTDBITERR(NLW_mem_reg_2_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_1_SBITERR_UNCONNECTED),
        .WEA({int_weights_be1[2],int_weights_be1[2],int_weights_be1[2],int_weights_be1[2]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (14) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
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
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_2_2
       (.ADDRARDADDR({1'b1,int_weights_address1,ADDRARDADDR,1'b1}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_2_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_2_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_2_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[21:20]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_2_2_DOADO_UNCONNECTED[31:2],q1[7:6]}),
        .DOBDO({NLW_mem_reg_2_2_DOBDO_UNCONNECTED[31:2],q0[21:20]}),
        .DOPADOP(NLW_mem_reg_2_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .INJECTDBITERR(NLW_mem_reg_2_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_2_SBITERR_UNCONNECTED),
        .WEA({int_weights_be1[2],int_weights_be1[2],int_weights_be1[2],int_weights_be1[2]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (14) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
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
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_2_3
       (.ADDRARDADDR({1'b1,int_weights_address1,ADDRARDADDR,1'b1}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_2_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_2_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_2_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[23:22]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_2_3_DOADO_UNCONNECTED[31:2],q1[9:8]}),
        .DOBDO({NLW_mem_reg_2_3_DOBDO_UNCONNECTED[31:2],q0[23:22]}),
        .DOPADOP(NLW_mem_reg_2_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .INJECTDBITERR(NLW_mem_reg_2_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_3_SBITERR_UNCONNECTED),
        .WEA({int_weights_be1[2],int_weights_be1[2],int_weights_be1[2],int_weights_be1[2]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (14) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
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
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_3_0
       (.ADDRARDADDR({1'b1,int_weights_address1,ADDRARDADDR,1'b1}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_3_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_3_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_1_in[25:24]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_3_0_DOADO_UNCONNECTED[31:2],q1[11:10]}),
        .DOBDO({NLW_mem_reg_3_0_DOBDO_UNCONNECTED[31:2],q0[25:24]}),
        .DOPADOP(NLW_mem_reg_3_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .INJECTDBITERR(NLW_mem_reg_3_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_0_SBITERR_UNCONNECTED),
        .WEA({int_weights_be1[3],int_weights_be1[3],int_weights_be1[3],int_weights_be1[3]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_0_i_1
       (.I0(s_axi_control_WDATA[25]),
        .I1(int_weights_be1[3]),
        .O(p_1_in[25]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_0_i_2
       (.I0(s_axi_control_WDATA[24]),
        .I1(int_weights_be1[3]),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_3_0_i_3
       (.I0(s_axi_control_WSTRB[3]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_0_0_1),
        .I3(\rdata_reg[15]_1 ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_weights_be1[3]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (14) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
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
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_3_1
       (.ADDRARDADDR({1'b1,int_weights_address1,ADDRARDADDR,1'b1}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_3_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_3_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_1_in[27:26]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_3_1_DOADO_UNCONNECTED[31:2],q1[13:12]}),
        .DOBDO({NLW_mem_reg_3_1_DOBDO_UNCONNECTED[31:2],q0[27:26]}),
        .DOPADOP(NLW_mem_reg_3_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .INJECTDBITERR(NLW_mem_reg_3_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_1_SBITERR_UNCONNECTED),
        .WEA({int_weights_be1[3],int_weights_be1[3],int_weights_be1[3],int_weights_be1[3]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_1_i_1
       (.I0(s_axi_control_WDATA[27]),
        .I1(int_weights_be1[3]),
        .O(p_1_in[27]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_1_i_2
       (.I0(s_axi_control_WDATA[26]),
        .I1(int_weights_be1[3]),
        .O(p_1_in[26]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (14) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
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
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_3_2
       (.ADDRARDADDR({1'b1,int_weights_address1,ADDRARDADDR,1'b1}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_3_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_3_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_1_in[29:28]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_3_2_DOADO_UNCONNECTED[31:2],q1[14],int_weights_q1[28]}),
        .DOBDO({NLW_mem_reg_3_2_DOBDO_UNCONNECTED[31:2],q0[29:28]}),
        .DOPADOP(NLW_mem_reg_3_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .INJECTDBITERR(NLW_mem_reg_3_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_2_SBITERR_UNCONNECTED),
        .WEA({int_weights_be1[3],int_weights_be1[3],int_weights_be1[3],int_weights_be1[3]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_2_i_1
       (.I0(s_axi_control_WDATA[29]),
        .I1(int_weights_be1[3]),
        .O(p_1_in[29]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_2_i_2
       (.I0(s_axi_control_WDATA[28]),
        .I1(int_weights_be1[3]),
        .O(p_1_in[28]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (14) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
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
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_3_3
       (.ADDRARDADDR({1'b1,int_weights_address1,ADDRARDADDR,1'b1}),
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_3_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_3_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_1_in[31:30]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_3_3_DOADO_UNCONNECTED[31:2],q1[16:15]}),
        .DOBDO({NLW_mem_reg_3_3_DOBDO_UNCONNECTED[31:2],q0[31:30]}),
        .DOPADOP(NLW_mem_reg_3_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .INJECTDBITERR(NLW_mem_reg_3_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_3_SBITERR_UNCONNECTED),
        .WEA({int_weights_be1[3],int_weights_be1[3],int_weights_be1[3],int_weights_be1[3]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_3_i_1
       (.I0(s_axi_control_WDATA[31]),
        .I1(int_weights_be1[3]),
        .O(p_1_in[31]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_3_i_2
       (.I0(s_axi_control_WDATA[30]),
        .I1(int_weights_be1[3]),
        .O(p_1_in[30]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_2__0
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[5]),
        .O(ADDRARDADDR[5]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_3
       (.I0(s_axi_control_ARADDR[6]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[6]),
        .O(ADDRARDADDR[6]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_3__0
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[4]),
        .O(ADDRARDADDR[4]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_4__0
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[3]),
        .O(ADDRARDADDR[3]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_5__0
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[2]),
        .O(ADDRARDADDR[2]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_6__0
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[1]),
        .O(ADDRARDADDR[1]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_7__0
       (.I0(s_axi_control_ARADDR[0]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[0]),
        .O(ADDRARDADDR[0]));
  LUT6 #(
    .INIT(64'h2F2F2F20202F2020)) 
    \rdata[10]_i_1 
       (.I0(\rdata_reg[15]_0 ),
        .I1(\rdata_reg[10] ),
        .I2(\rdata_reg[15]_1 ),
        .I3(int_input_r_read),
        .I4(\rdata[10]_i_3_n_3 ),
        .I5(DOADO[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hFFCA00CA)) 
    \rdata[10]_i_3 
       (.I0(int_weights_q1[10]),
        .I1(\rdata_reg[28] [7]),
        .I2(int_bias_read),
        .I3(int_output_r_read),
        .I4(\rdata_reg[28]_0 [7]),
        .O(\rdata[10]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h2F2F2F20202F2020)) 
    \rdata[13]_i_1 
       (.I0(\rdata_reg[15]_0 ),
        .I1(\rdata_reg[13] ),
        .I2(\rdata_reg[15]_1 ),
        .I3(int_input_r_read),
        .I4(\rdata[13]_i_3_n_3 ),
        .I5(DOADO[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hFFCA00CA)) 
    \rdata[13]_i_3 
       (.I0(int_weights_q1[13]),
        .I1(\rdata_reg[28] [8]),
        .I2(int_bias_read),
        .I3(int_output_r_read),
        .I4(\rdata_reg[28]_0 [8]),
        .O(\rdata[13]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h2F2F2F20202F2020)) 
    \rdata[14]_i_1 
       (.I0(\rdata_reg[15]_0 ),
        .I1(\rdata_reg[14] ),
        .I2(\rdata_reg[15]_1 ),
        .I3(int_input_r_read),
        .I4(\rdata[14]_i_3_n_3 ),
        .I5(DOADO[4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hFFCA00CA)) 
    \rdata[14]_i_3 
       (.I0(int_weights_q1[14]),
        .I1(\rdata_reg[28] [9]),
        .I2(int_bias_read),
        .I3(int_output_r_read),
        .I4(\rdata_reg[28]_0 [9]),
        .O(\rdata[14]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h8F8F8F80808F8080)) 
    \rdata[15]_i_1 
       (.I0(\rdata_reg[15] ),
        .I1(\rdata_reg[15]_0 ),
        .I2(\rdata_reg[15]_1 ),
        .I3(int_input_r_read),
        .I4(\rdata[15]_i_4_n_3 ),
        .I5(DOADO[5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hFFCA00CA)) 
    \rdata[15]_i_4 
       (.I0(int_weights_q1[15]),
        .I1(\rdata_reg[28] [10]),
        .I2(int_bias_read),
        .I3(int_output_r_read),
        .I4(\rdata_reg[28]_0 [10]),
        .O(\rdata[15]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'h0300033303110311)) 
    \rdata[16]_i_2 
       (.I0(int_weights_q1[16]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[28]_0 [11]),
        .I3(int_output_r_read),
        .I4(\rdata_reg[28] [11]),
        .I5(int_bias_read),
        .O(mem_reg_2_0_0));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[17]_i_1 
       (.I0(\rdata[17]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(DOADO[6]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFCFFFCCCFCEEFCEE)) 
    \rdata[17]_i_2 
       (.I0(int_weights_q1[17]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[28]_0 [12]),
        .I3(int_output_r_read),
        .I4(\rdata_reg[28] [12]),
        .I5(int_bias_read),
        .O(\rdata[17]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[18]_i_1 
       (.I0(\rdata[18]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(DOADO[7]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFCFFFCCCFCEEFCEE)) 
    \rdata[18]_i_2 
       (.I0(int_weights_q1[18]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[28]_0 [13]),
        .I3(int_output_r_read),
        .I4(\rdata_reg[28] [13]),
        .I5(int_bias_read),
        .O(\rdata[18]_i_2_n_3 ));
  LUT5 #(
    .INIT(32'h0035FF35)) 
    \rdata[1]_i_3 
       (.I0(int_weights_q1[1]),
        .I1(\rdata_reg[28] [0]),
        .I2(int_bias_read),
        .I3(int_output_r_read),
        .I4(\rdata_reg[28]_0 [0]),
        .O(mem_reg_0_0_0));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[28]_i_1 
       (.I0(\rdata[28]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(DOADO[8]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFCFFFCCCFCEEFCEE)) 
    \rdata[28]_i_2 
       (.I0(int_weights_q1[28]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[28]_0 [14]),
        .I3(int_output_r_read),
        .I4(\rdata_reg[28] [14]),
        .I5(int_bias_read),
        .O(\rdata[28]_i_2_n_3 ));
  LUT5 #(
    .INIT(32'hCCF0CCAA)) 
    \rdata[3]_i_4 
       (.I0(int_weights_q1[3]),
        .I1(\rdata_reg[28]_0 [1]),
        .I2(\rdata_reg[28] [1]),
        .I3(int_output_r_read),
        .I4(int_bias_read),
        .O(mem_reg_0_1_0));
  LUT5 #(
    .INIT(32'h0035FF35)) 
    \rdata[5]_i_3 
       (.I0(int_weights_q1[5]),
        .I1(\rdata_reg[28] [2]),
        .I2(int_bias_read),
        .I3(int_output_r_read),
        .I4(\rdata_reg[28]_0 [2]),
        .O(mem_reg_0_2_0));
  LUT6 #(
    .INIT(64'hFFFFFFCAFFFF00CA)) 
    \rdata[6]_i_4 
       (.I0(int_weights_q1[6]),
        .I1(\rdata_reg[28] [3]),
        .I2(int_bias_read),
        .I3(int_output_r_read),
        .I4(int_input_r_read),
        .I5(\rdata_reg[28]_0 [3]),
        .O(mem_reg_0_3_0));
  LUT5 #(
    .INIT(32'h0035FF35)) 
    \rdata[7]_i_4 
       (.I0(int_weights_q1[7]),
        .I1(\rdata_reg[28] [4]),
        .I2(int_bias_read),
        .I3(int_output_r_read),
        .I4(\rdata_reg[28]_0 [4]),
        .O(mem_reg_0_3_1));
  LUT6 #(
    .INIT(64'h2F2F2F20202F2020)) 
    \rdata[8]_i_1 
       (.I0(\rdata_reg[15]_0 ),
        .I1(\rdata_reg[8] ),
        .I2(\rdata_reg[15]_1 ),
        .I3(int_input_r_read),
        .I4(\rdata[8]_i_3_n_3 ),
        .I5(DOADO[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFFCA00CA)) 
    \rdata[8]_i_3 
       (.I0(int_weights_q1[8]),
        .I1(\rdata_reg[28] [5]),
        .I2(int_bias_read),
        .I3(int_output_r_read),
        .I4(\rdata_reg[28]_0 [5]),
        .O(\rdata[8]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h2F2F2F20202F2020)) 
    \rdata[9]_i_1 
       (.I0(\rdata_reg[15]_0 ),
        .I1(\rdata_reg[9] ),
        .I2(\rdata_reg[15]_1 ),
        .I3(int_input_r_read),
        .I4(\rdata[9]_i_3_n_3 ),
        .I5(DOADO[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFFCA00CA)) 
    \rdata[9]_i_3 
       (.I0(int_weights_q1[9]),
        .I1(\rdata_reg[28] [6]),
        .I2(int_bias_read),
        .I3(int_output_r_read),
        .I4(\rdata_reg[28]_0 [6]),
        .O(\rdata[9]_i_3_n_3 ));
endmodule

(* ORIG_REF_NAME = "nnlayer_flow_control_loop_pipe_sequential_init" *) 
module design_1_nnlayer_0_1_nnlayer_flow_control_loop_pipe_sequential_init
   (DI,
    S,
    \numOfInNeurons_read_reg_247_reg[15] ,
    \inNeurons_fu_58_reg[15] ,
    grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg,
    \inNeurons_fu_58_reg[15]_0 ,
    ADDRBWRADDR,
    ap_loop_init,
    ap_loop_init_int_reg_0,
    D,
    \inNeurons_fu_58_reg[15]_1 ,
    \inNeurons_fu_58_reg[3] ,
    \inNeurons_fu_58_reg[6] ,
    \trunc_ln35_reg_267_reg[14] ,
    grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg_0,
    grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg_1,
    grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg_2,
    \outNeurons_1_reg_259_reg[0] ,
    \inNeurons_fu_58_reg[0] ,
    SR,
    ap_clk,
    Q,
    grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg,
    \inNeurons_fu_58_reg[15]_2 ,
    CO,
    \ap_CS_fsm_reg[2] ,
    mem_reg,
    ap_loop_exit_ready_pp0_iter3_reg,
    ap_rst_n,
    mem_reg_0_0,
    \int_bias_shift0_reg[0] ,
    \int_bias_shift0_reg[0]_0 ,
    \int_input_r_shift0_reg[0] );
  output [3:0]DI;
  output [3:0]S;
  output [3:0]\numOfInNeurons_read_reg_247_reg[15] ;
  output [3:0]\inNeurons_fu_58_reg[15] ;
  output [0:0]grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg;
  output [7:0]\inNeurons_fu_58_reg[15]_0 ;
  output [5:0]ADDRBWRADDR;
  output ap_loop_init;
  output [0:0]ap_loop_init_int_reg_0;
  output [1:0]D;
  output [15:0]\inNeurons_fu_58_reg[15]_1 ;
  output [3:0]\inNeurons_fu_58_reg[3] ;
  output [2:0]\inNeurons_fu_58_reg[6] ;
  output [2:0]\trunc_ln35_reg_267_reg[14] ;
  output [3:0]grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg_0;
  output [3:0]grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg_1;
  output [3:0]grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg_2;
  output \outNeurons_1_reg_259_reg[0] ;
  output \inNeurons_fu_58_reg[0] ;
  input [0:0]SR;
  input ap_clk;
  input [15:0]Q;
  input grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg;
  input [15:0]\inNeurons_fu_58_reg[15]_2 ;
  input [0:0]CO;
  input [0:0]\ap_CS_fsm_reg[2] ;
  input [1:0]mem_reg;
  input ap_loop_exit_ready_pp0_iter3_reg;
  input ap_rst_n;
  input [14:0]mem_reg_0_0;
  input [0:0]\int_bias_shift0_reg[0] ;
  input \int_bias_shift0_reg[0]_0 ;
  input \int_input_r_shift0_reg[0] ;

  wire [5:0]ADDRBWRADDR;
  wire [0:0]CO;
  wire [1:0]D;
  wire [3:0]DI;
  wire [15:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [0:0]\ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1_n_3;
  wire ap_loop_exit_ready_pp0_iter3_reg;
  wire ap_loop_init;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__0_n_3;
  wire [0:0]ap_loop_init_int_reg_0;
  wire ap_rst_n;
  wire [14:14]ap_sig_allocacmp_inNeurons_1;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg;
  wire [0:0]grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg;
  wire [3:0]grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg_0;
  wire [3:0]grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg_1;
  wire [3:0]grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg_2;
  wire [0:0]grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_input_r_address0;
  wire \inNeurons_fu_58[12]_i_2_n_3 ;
  wire \inNeurons_fu_58[12]_i_3_n_3 ;
  wire \inNeurons_fu_58[12]_i_4_n_3 ;
  wire \inNeurons_fu_58[12]_i_5_n_3 ;
  wire \inNeurons_fu_58[15]_i_4_n_3 ;
  wire \inNeurons_fu_58[15]_i_6_n_3 ;
  wire \inNeurons_fu_58[4]_i_3_n_3 ;
  wire \inNeurons_fu_58[4]_i_4_n_3 ;
  wire \inNeurons_fu_58[4]_i_5_n_3 ;
  wire \inNeurons_fu_58[4]_i_6_n_3 ;
  wire \inNeurons_fu_58[8]_i_2_n_3 ;
  wire \inNeurons_fu_58[8]_i_3_n_3 ;
  wire \inNeurons_fu_58[8]_i_4_n_3 ;
  wire \inNeurons_fu_58[8]_i_5_n_3 ;
  wire \inNeurons_fu_58_reg[0] ;
  wire \inNeurons_fu_58_reg[12]_i_1_n_3 ;
  wire \inNeurons_fu_58_reg[12]_i_1_n_4 ;
  wire \inNeurons_fu_58_reg[12]_i_1_n_5 ;
  wire \inNeurons_fu_58_reg[12]_i_1_n_6 ;
  wire [3:0]\inNeurons_fu_58_reg[15] ;
  wire [7:0]\inNeurons_fu_58_reg[15]_0 ;
  wire [15:0]\inNeurons_fu_58_reg[15]_1 ;
  wire [15:0]\inNeurons_fu_58_reg[15]_2 ;
  wire \inNeurons_fu_58_reg[15]_i_3_n_5 ;
  wire \inNeurons_fu_58_reg[15]_i_3_n_6 ;
  wire [3:0]\inNeurons_fu_58_reg[3] ;
  wire \inNeurons_fu_58_reg[4]_i_1_n_3 ;
  wire \inNeurons_fu_58_reg[4]_i_1_n_4 ;
  wire \inNeurons_fu_58_reg[4]_i_1_n_5 ;
  wire \inNeurons_fu_58_reg[4]_i_1_n_6 ;
  wire [2:0]\inNeurons_fu_58_reg[6] ;
  wire \inNeurons_fu_58_reg[8]_i_1_n_3 ;
  wire \inNeurons_fu_58_reg[8]_i_1_n_4 ;
  wire \inNeurons_fu_58_reg[8]_i_1_n_5 ;
  wire \inNeurons_fu_58_reg[8]_i_1_n_6 ;
  wire [0:0]\int_bias_shift0_reg[0] ;
  wire \int_bias_shift0_reg[0]_0 ;
  wire \int_input_r_shift0_reg[0] ;
  wire [1:0]mem_reg;
  wire [14:0]mem_reg_0_0;
  wire [3:0]\numOfInNeurons_read_reg_247_reg[15] ;
  wire \outNeurons_1_reg_259_reg[0] ;
  wire [2:0]\trunc_ln35_reg_267_reg[14] ;
  wire [3:2]\NLW_inNeurons_fu_58_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_inNeurons_fu_58_reg[15]_i_3_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h2A)) 
    add_ln37_fu_144_p2_carry__0_i_1
       (.I0(\inNeurons_fu_58_reg[15]_2 [7]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(\inNeurons_fu_58_reg[15]_0 [0]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln37_fu_144_p2_carry__0_i_2
       (.I0(\inNeurons_fu_58_reg[15]_2 [6]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(\inNeurons_fu_58_reg[6] [2]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln37_fu_144_p2_carry__0_i_3
       (.I0(\inNeurons_fu_58_reg[15]_2 [5]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(\inNeurons_fu_58_reg[6] [1]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln37_fu_144_p2_carry__0_i_4
       (.I0(\inNeurons_fu_58_reg[15]_2 [4]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(\inNeurons_fu_58_reg[6] [0]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln37_fu_144_p2_carry__0_i_5
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_58_reg[15]_2 [7]),
        .I3(mem_reg_0_0[7]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg_1[3]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln37_fu_144_p2_carry__0_i_6
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_58_reg[15]_2 [6]),
        .I3(mem_reg_0_0[6]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg_1[2]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln37_fu_144_p2_carry__0_i_7
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_58_reg[15]_2 [5]),
        .I3(mem_reg_0_0[5]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg_1[1]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln37_fu_144_p2_carry__0_i_8
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_58_reg[15]_2 [4]),
        .I3(mem_reg_0_0[4]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg_1[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln37_fu_144_p2_carry__1_i_1
       (.I0(\inNeurons_fu_58_reg[15]_2 [11]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(\inNeurons_fu_58_reg[15]_0 [4]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln37_fu_144_p2_carry__1_i_2
       (.I0(\inNeurons_fu_58_reg[15]_2 [10]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(\inNeurons_fu_58_reg[15]_0 [3]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln37_fu_144_p2_carry__1_i_3
       (.I0(\inNeurons_fu_58_reg[15]_2 [9]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(\inNeurons_fu_58_reg[15]_0 [2]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln37_fu_144_p2_carry__1_i_4
       (.I0(\inNeurons_fu_58_reg[15]_2 [8]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(\inNeurons_fu_58_reg[15]_0 [1]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln37_fu_144_p2_carry__1_i_5
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_58_reg[15]_2 [11]),
        .I3(mem_reg_0_0[11]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg_2[3]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln37_fu_144_p2_carry__1_i_6
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_58_reg[15]_2 [10]),
        .I3(mem_reg_0_0[10]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg_2[2]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln37_fu_144_p2_carry__1_i_7
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_58_reg[15]_2 [9]),
        .I3(mem_reg_0_0[9]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg_2[1]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln37_fu_144_p2_carry__1_i_8
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_58_reg[15]_2 [8]),
        .I3(mem_reg_0_0[8]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg_2[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln37_fu_144_p2_carry__2_i_1
       (.I0(\inNeurons_fu_58_reg[15]_2 [13]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(\inNeurons_fu_58_reg[15]_0 [6]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln37_fu_144_p2_carry__2_i_2
       (.I0(\inNeurons_fu_58_reg[15]_2 [12]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(\inNeurons_fu_58_reg[15]_0 [5]));
  LUT4 #(
    .INIT(16'h95AA)) 
    add_ln37_fu_144_p2_carry__2_i_3
       (.I0(mem_reg_0_0[14]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\inNeurons_fu_58_reg[15]_2 [14]),
        .O(\trunc_ln35_reg_267_reg[14] [2]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln37_fu_144_p2_carry__2_i_4
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_58_reg[15]_2 [13]),
        .I3(mem_reg_0_0[13]),
        .O(\trunc_ln35_reg_267_reg[14] [1]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln37_fu_144_p2_carry__2_i_5
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_58_reg[15]_2 [12]),
        .I3(mem_reg_0_0[12]),
        .O(\trunc_ln35_reg_267_reg[14] [0]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln37_fu_144_p2_carry_i_1
       (.I0(\inNeurons_fu_58_reg[15]_2 [3]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(\inNeurons_fu_58_reg[3] [3]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln37_fu_144_p2_carry_i_2
       (.I0(\inNeurons_fu_58_reg[15]_2 [2]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(\inNeurons_fu_58_reg[3] [2]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln37_fu_144_p2_carry_i_3
       (.I0(\inNeurons_fu_58_reg[15]_2 [1]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(\inNeurons_fu_58_reg[3] [1]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln37_fu_144_p2_carry_i_4
       (.I0(\inNeurons_fu_58_reg[15]_2 [0]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(\inNeurons_fu_58_reg[3] [0]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln37_fu_144_p2_carry_i_5
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_58_reg[15]_2 [3]),
        .I3(mem_reg_0_0[3]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg_0[3]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln37_fu_144_p2_carry_i_6
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_58_reg[15]_2 [2]),
        .I3(mem_reg_0_0[2]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg_0[2]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln37_fu_144_p2_carry_i_7
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_58_reg[15]_2 [1]),
        .I3(mem_reg_0_0[1]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg_0[1]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln37_fu_144_p2_carry_i_8
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_58_reg[15]_2 [0]),
        .I3(mem_reg_0_0[0]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg_0[0]));
  LUT6 #(
    .INIT(64'h4F444F4F44444444)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\ap_CS_fsm_reg[2] ),
        .I1(mem_reg[0]),
        .I2(ap_loop_exit_ready_pp0_iter3_reg),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I4(ap_done_cache),
        .I5(mem_reg[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    ap_done_cache_i_1
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I1(ap_loop_exit_ready_pp0_iter3_reg),
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
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hBBFB)) 
    ap_loop_init_int_i_1__0
       (.I0(ap_loop_exit_ready_pp0_iter3_reg),
        .I1(ap_rst_n),
        .I2(ap_loop_init_int),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(ap_loop_init_int_i_1__0_n_3));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__0_n_3),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hC0EA80AAEAFF80AA)) 
    icmp_ln35_fu_128_p2_carry__0_i_1
       (.I0(Q[15]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\inNeurons_fu_58_reg[15]_2 [15]),
        .I4(Q[14]),
        .I5(\inNeurons_fu_58_reg[15]_2 [14]),
        .O(\numOfInNeurons_read_reg_247_reg[15] [3]));
  LUT6 #(
    .INIT(64'hC0EA80AAEAFF80AA)) 
    icmp_ln35_fu_128_p2_carry__0_i_2
       (.I0(Q[13]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\inNeurons_fu_58_reg[15]_2 [13]),
        .I4(Q[12]),
        .I5(\inNeurons_fu_58_reg[15]_2 [12]),
        .O(\numOfInNeurons_read_reg_247_reg[15] [2]));
  LUT6 #(
    .INIT(64'hC0EA80AAEAFF80AA)) 
    icmp_ln35_fu_128_p2_carry__0_i_3
       (.I0(Q[11]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\inNeurons_fu_58_reg[15]_2 [11]),
        .I4(Q[10]),
        .I5(\inNeurons_fu_58_reg[15]_2 [10]),
        .O(\numOfInNeurons_read_reg_247_reg[15] [1]));
  LUT6 #(
    .INIT(64'hC0EA80AAEAFF80AA)) 
    icmp_ln35_fu_128_p2_carry__0_i_4
       (.I0(Q[9]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\inNeurons_fu_58_reg[15]_2 [9]),
        .I4(Q[8]),
        .I5(\inNeurons_fu_58_reg[15]_2 [8]),
        .O(\numOfInNeurons_read_reg_247_reg[15] [0]));
  LUT6 #(
    .INIT(64'h0090909033090909)) 
    icmp_ln35_fu_128_p2_carry__0_i_5
       (.I0(\inNeurons_fu_58_reg[15]_2 [15]),
        .I1(Q[15]),
        .I2(\inNeurons_fu_58_reg[15]_2 [14]),
        .I3(ap_loop_init_int),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I5(Q[14]),
        .O(\inNeurons_fu_58_reg[15] [3]));
  LUT6 #(
    .INIT(64'h0090909033090909)) 
    icmp_ln35_fu_128_p2_carry__0_i_6
       (.I0(\inNeurons_fu_58_reg[15]_2 [13]),
        .I1(Q[13]),
        .I2(\inNeurons_fu_58_reg[15]_2 [12]),
        .I3(ap_loop_init_int),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I5(Q[12]),
        .O(\inNeurons_fu_58_reg[15] [2]));
  LUT6 #(
    .INIT(64'h0090909033090909)) 
    icmp_ln35_fu_128_p2_carry__0_i_7
       (.I0(\inNeurons_fu_58_reg[15]_2 [11]),
        .I1(Q[11]),
        .I2(\inNeurons_fu_58_reg[15]_2 [10]),
        .I3(ap_loop_init_int),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I5(Q[10]),
        .O(\inNeurons_fu_58_reg[15] [1]));
  LUT6 #(
    .INIT(64'h0090909033090909)) 
    icmp_ln35_fu_128_p2_carry__0_i_8
       (.I0(\inNeurons_fu_58_reg[15]_2 [9]),
        .I1(Q[9]),
        .I2(\inNeurons_fu_58_reg[15]_2 [8]),
        .I3(ap_loop_init_int),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I5(Q[8]),
        .O(\inNeurons_fu_58_reg[15] [0]));
  LUT3 #(
    .INIT(8'h2A)) 
    icmp_ln35_fu_128_p2_carry__1_i_1
       (.I0(\inNeurons_fu_58_reg[15]_2 [15]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(\inNeurons_fu_58_reg[15]_0 [7]));
  LUT3 #(
    .INIT(8'h8F)) 
    icmp_ln35_fu_128_p2_carry__1_i_2
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_58_reg[15]_2 [15]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg));
  LUT6 #(
    .INIT(64'hC0EA80AAEAFF80AA)) 
    icmp_ln35_fu_128_p2_carry_i_1
       (.I0(Q[7]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\inNeurons_fu_58_reg[15]_2 [7]),
        .I4(Q[6]),
        .I5(\inNeurons_fu_58_reg[15]_2 [6]),
        .O(DI[3]));
  LUT6 #(
    .INIT(64'hC0EA80AAEAFF80AA)) 
    icmp_ln35_fu_128_p2_carry_i_2
       (.I0(Q[5]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\inNeurons_fu_58_reg[15]_2 [5]),
        .I4(Q[4]),
        .I5(\inNeurons_fu_58_reg[15]_2 [4]),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'hC0EA80AAEAFF80AA)) 
    icmp_ln35_fu_128_p2_carry_i_3
       (.I0(Q[3]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\inNeurons_fu_58_reg[15]_2 [3]),
        .I4(Q[2]),
        .I5(\inNeurons_fu_58_reg[15]_2 [2]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'hC0EA80AAEAFF80AA)) 
    icmp_ln35_fu_128_p2_carry_i_4
       (.I0(Q[1]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\inNeurons_fu_58_reg[15]_2 [1]),
        .I4(Q[0]),
        .I5(\inNeurons_fu_58_reg[15]_2 [0]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h0090909033090909)) 
    icmp_ln35_fu_128_p2_carry_i_5
       (.I0(\inNeurons_fu_58_reg[15]_2 [7]),
        .I1(Q[7]),
        .I2(\inNeurons_fu_58_reg[15]_2 [6]),
        .I3(ap_loop_init_int),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I5(Q[6]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h0090909033090909)) 
    icmp_ln35_fu_128_p2_carry_i_6
       (.I0(\inNeurons_fu_58_reg[15]_2 [5]),
        .I1(Q[5]),
        .I2(\inNeurons_fu_58_reg[15]_2 [4]),
        .I3(ap_loop_init_int),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I5(Q[4]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h0090909033090909)) 
    icmp_ln35_fu_128_p2_carry_i_7
       (.I0(\inNeurons_fu_58_reg[15]_2 [3]),
        .I1(Q[3]),
        .I2(\inNeurons_fu_58_reg[15]_2 [2]),
        .I3(ap_loop_init_int),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I5(Q[2]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h0090909033090909)) 
    icmp_ln35_fu_128_p2_carry_i_8
       (.I0(\inNeurons_fu_58_reg[15]_2 [1]),
        .I1(Q[1]),
        .I2(\inNeurons_fu_58_reg[15]_2 [0]),
        .I3(ap_loop_init_int),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I5(Q[0]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \inNeurons_fu_58[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\inNeurons_fu_58_reg[15]_2 [0]),
        .O(\inNeurons_fu_58_reg[15]_1 [0]));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_58[12]_i_2 
       (.I0(\inNeurons_fu_58_reg[15]_2 [12]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(\inNeurons_fu_58[12]_i_2_n_3 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_58[12]_i_3 
       (.I0(\inNeurons_fu_58_reg[15]_2 [11]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(\inNeurons_fu_58[12]_i_3_n_3 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_58[12]_i_4 
       (.I0(\inNeurons_fu_58_reg[15]_2 [10]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(\inNeurons_fu_58[12]_i_4_n_3 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_58[12]_i_5 
       (.I0(\inNeurons_fu_58_reg[15]_2 [9]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(\inNeurons_fu_58[12]_i_5_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \inNeurons_fu_58[15]_i_1 
       (.I0(ap_loop_init_int),
        .I1(CO),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(ap_loop_init_int_reg_0));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_58[15]_i_4 
       (.I0(\inNeurons_fu_58_reg[15]_2 [15]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(\inNeurons_fu_58[15]_i_4_n_3 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_58[15]_i_5 
       (.I0(\inNeurons_fu_58_reg[15]_2 [14]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(ap_sig_allocacmp_inNeurons_1));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_58[15]_i_6 
       (.I0(\inNeurons_fu_58_reg[15]_2 [13]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(\inNeurons_fu_58[15]_i_6_n_3 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_58[4]_i_2 
       (.I0(\inNeurons_fu_58_reg[15]_2 [0]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_input_r_address0));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_58[4]_i_3 
       (.I0(\inNeurons_fu_58_reg[15]_2 [4]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(\inNeurons_fu_58[4]_i_3_n_3 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_58[4]_i_4 
       (.I0(\inNeurons_fu_58_reg[15]_2 [3]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(\inNeurons_fu_58[4]_i_4_n_3 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_58[4]_i_5 
       (.I0(\inNeurons_fu_58_reg[15]_2 [2]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(\inNeurons_fu_58[4]_i_5_n_3 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_58[4]_i_6 
       (.I0(\inNeurons_fu_58_reg[15]_2 [1]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(\inNeurons_fu_58[4]_i_6_n_3 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_58[8]_i_2 
       (.I0(\inNeurons_fu_58_reg[15]_2 [8]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(\inNeurons_fu_58[8]_i_2_n_3 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_58[8]_i_3 
       (.I0(\inNeurons_fu_58_reg[15]_2 [7]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(\inNeurons_fu_58[8]_i_3_n_3 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_58[8]_i_4 
       (.I0(\inNeurons_fu_58_reg[15]_2 [6]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(\inNeurons_fu_58[8]_i_4_n_3 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_58[8]_i_5 
       (.I0(\inNeurons_fu_58_reg[15]_2 [5]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(\inNeurons_fu_58[8]_i_5_n_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \inNeurons_fu_58_reg[12]_i_1 
       (.CI(\inNeurons_fu_58_reg[8]_i_1_n_3 ),
        .CO({\inNeurons_fu_58_reg[12]_i_1_n_3 ,\inNeurons_fu_58_reg[12]_i_1_n_4 ,\inNeurons_fu_58_reg[12]_i_1_n_5 ,\inNeurons_fu_58_reg[12]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\inNeurons_fu_58_reg[15]_1 [12:9]),
        .S({\inNeurons_fu_58[12]_i_2_n_3 ,\inNeurons_fu_58[12]_i_3_n_3 ,\inNeurons_fu_58[12]_i_4_n_3 ,\inNeurons_fu_58[12]_i_5_n_3 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \inNeurons_fu_58_reg[15]_i_3 
       (.CI(\inNeurons_fu_58_reg[12]_i_1_n_3 ),
        .CO({\NLW_inNeurons_fu_58_reg[15]_i_3_CO_UNCONNECTED [3:2],\inNeurons_fu_58_reg[15]_i_3_n_5 ,\inNeurons_fu_58_reg[15]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_inNeurons_fu_58_reg[15]_i_3_O_UNCONNECTED [3],\inNeurons_fu_58_reg[15]_1 [15:13]}),
        .S({1'b0,\inNeurons_fu_58[15]_i_4_n_3 ,ap_sig_allocacmp_inNeurons_1,\inNeurons_fu_58[15]_i_6_n_3 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \inNeurons_fu_58_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\inNeurons_fu_58_reg[4]_i_1_n_3 ,\inNeurons_fu_58_reg[4]_i_1_n_4 ,\inNeurons_fu_58_reg[4]_i_1_n_5 ,\inNeurons_fu_58_reg[4]_i_1_n_6 }),
        .CYINIT(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_input_r_address0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\inNeurons_fu_58_reg[15]_1 [4:1]),
        .S({\inNeurons_fu_58[4]_i_3_n_3 ,\inNeurons_fu_58[4]_i_4_n_3 ,\inNeurons_fu_58[4]_i_5_n_3 ,\inNeurons_fu_58[4]_i_6_n_3 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \inNeurons_fu_58_reg[8]_i_1 
       (.CI(\inNeurons_fu_58_reg[4]_i_1_n_3 ),
        .CO({\inNeurons_fu_58_reg[8]_i_1_n_3 ,\inNeurons_fu_58_reg[8]_i_1_n_4 ,\inNeurons_fu_58_reg[8]_i_1_n_5 ,\inNeurons_fu_58_reg[8]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\inNeurons_fu_58_reg[15]_1 [8:5]),
        .S({\inNeurons_fu_58[8]_i_2_n_3 ,\inNeurons_fu_58[8]_i_3_n_3 ,\inNeurons_fu_58[8]_i_4_n_3 ,\inNeurons_fu_58[8]_i_5_n_3 }));
  LUT6 #(
    .INIT(64'hBBBBFFBF88880080)) 
    \int_bias_shift0[0]_i_1 
       (.I0(\int_bias_shift0_reg[0] ),
        .I1(mem_reg[1]),
        .I2(ap_done_cache),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I4(ap_loop_exit_ready_pp0_iter3_reg),
        .I5(\int_bias_shift0_reg[0]_0 ),
        .O(\outNeurons_1_reg_259_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \int_input_r_shift0[0]_i_1 
       (.I0(\inNeurons_fu_58_reg[15]_2 [0]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I3(\int_input_r_shift0_reg[0] ),
        .O(\inNeurons_fu_58_reg[0] ));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_10
       (.I0(\inNeurons_fu_58_reg[15]_2 [4]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(ADDRBWRADDR[3]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_11
       (.I0(\inNeurons_fu_58_reg[15]_2 [3]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(ADDRBWRADDR[2]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_12
       (.I0(\inNeurons_fu_58_reg[15]_2 [2]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(ADDRBWRADDR[1]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_13
       (.I0(\inNeurons_fu_58_reg[15]_2 [1]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(ADDRBWRADDR[0]));
  LUT4 #(
    .INIT(16'hAA08)) 
    mem_reg_i_2__1
       (.I0(mem_reg[1]),
        .I1(ap_done_cache),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I3(ap_loop_exit_ready_pp0_iter3_reg),
        .O(D[1]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_8
       (.I0(\inNeurons_fu_58_reg[15]_2 [6]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(ADDRBWRADDR[5]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_9
       (.I0(\inNeurons_fu_58_reg[15]_2 [5]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .O(ADDRBWRADDR[4]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_fu_54[15]_i_1 
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I1(ap_loop_init_int),
        .O(ap_loop_init));
endmodule

(* ORIG_REF_NAME = "nnlayer_flow_control_loop_pipe_sequential_init" *) 
module design_1_nnlayer_0_1_nnlayer_flow_control_loop_pipe_sequential_init_0
   (D,
    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg_reg,
    \ap_CS_fsm_reg[4] ,
    ap_enable_reg_pp0_iter0_reg_reg,
    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg_reg_0,
    E,
    \i_fu_46_reg[7] ,
    \zext_ln34_reg_281_reg[7] ,
    ap_loop_init_int_reg_0,
    WEBWE,
    \int_output_r_shift0_reg[0] ,
    \ap_CS_fsm_reg[0] ,
    \ap_CS_fsm_reg[0]_0 ,
    \ap_CS_fsm_reg[1] ,
    SR,
    ap_clk,
    ap_enable_reg_pp0_iter1,
    Q,
    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg,
    ap_NS_fsm1,
    icmp_ln43_reg_272,
    \ap_CS_fsm_reg[0]_1 ,
    int_ap_start_reg,
    ap_loop_init_int_reg_1,
    ap_rst_n,
    ap_enable_reg_pp0_iter0_reg,
    int_ap_start_i_3_0,
    mem_reg,
    mem_reg_0,
    mem_reg_1,
    mem_reg_2,
    output_r_ce0,
    \int_output_r_shift0_reg[0]_0 ,
    ap_idle,
    icmp_ln10_reg_115,
    CO,
    icmp_ln43_fu_199_p2);
  output [1:0]D;
  output [1:0]grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg_reg;
  output \ap_CS_fsm_reg[4] ;
  output ap_enable_reg_pp0_iter0_reg_reg;
  output [0:0]grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg_reg_0;
  output [0:0]E;
  output [7:0]\i_fu_46_reg[7] ;
  output [6:0]\zext_ln34_reg_281_reg[7] ;
  output [7:0]ap_loop_init_int_reg_0;
  output [1:0]WEBWE;
  output \int_output_r_shift0_reg[0] ;
  output [0:0]\ap_CS_fsm_reg[0] ;
  output \ap_CS_fsm_reg[0]_0 ;
  output \ap_CS_fsm_reg[1] ;
  input [0:0]SR;
  input ap_clk;
  input ap_enable_reg_pp0_iter1;
  input [1:0]Q;
  input grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg;
  input ap_NS_fsm1;
  input icmp_ln43_reg_272;
  input [2:0]\ap_CS_fsm_reg[0]_1 ;
  input int_ap_start_reg;
  input ap_loop_init_int_reg_1;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter0_reg;
  input [7:0]int_ap_start_i_3_0;
  input [7:0]mem_reg;
  input [7:0]mem_reg_0;
  input [7:0]mem_reg_1;
  input mem_reg_2;
  input output_r_ce0;
  input \int_output_r_shift0_reg[0]_0 ;
  input ap_idle;
  input icmp_ln10_reg_115;
  input [0:0]CO;
  input icmp_ln43_fu_199_p2;

  wire [0:0]CO;
  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [1:0]WEBWE;
  wire \ap_CS_fsm[4]_i_3_n_3 ;
  wire \ap_CS_fsm[4]_i_4_n_3 ;
  wire \ap_CS_fsm[4]_i_5_n_3 ;
  wire [0:0]\ap_CS_fsm_reg[0] ;
  wire \ap_CS_fsm_reg[0]_0 ;
  wire [2:0]\ap_CS_fsm_reg[0]_1 ;
  wire \ap_CS_fsm_reg[1] ;
  wire \ap_CS_fsm_reg[4] ;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1__0_n_3;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter0_reg_reg;
  wire ap_enable_reg_pp0_iter1;
  wire ap_idle;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1_n_3;
  wire [7:0]ap_loop_init_int_reg_0;
  wire ap_loop_init_int_reg_1;
  wire ap_rst_n;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg;
  wire [1:0]grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg_reg;
  wire [0:0]grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg_reg_0;
  wire \i_fu_46[5]_i_2_n_3 ;
  wire \i_fu_46[7]_i_5_n_3 ;
  wire [7:0]\i_fu_46_reg[7] ;
  wire icmp_ln10_fu_78_p2;
  wire icmp_ln10_reg_115;
  wire icmp_ln43_fu_199_p2;
  wire icmp_ln43_reg_272;
  wire int_ap_start_i_10_n_3;
  wire [7:0]int_ap_start_i_3_0;
  wire int_ap_start_i_4_n_3;
  wire int_ap_start_i_5_n_3;
  wire int_ap_start_i_6_n_3;
  wire int_ap_start_i_7_n_3;
  wire int_ap_start_i_9_n_3;
  wire int_ap_start_reg;
  wire \int_output_r_shift0_reg[0] ;
  wire \int_output_r_shift0_reg[0]_0 ;
  wire [7:0]mem_reg;
  wire [7:0]mem_reg_0;
  wire [7:0]mem_reg_1;
  wire mem_reg_2;
  wire mem_reg_i_51_n_3;
  wire [0:0]output_r_address0;
  wire output_r_ce0;
  wire [6:0]\zext_ln34_reg_281_reg[7] ;

  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hAFBF)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(\ap_CS_fsm[4]_i_3_n_3 ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[0]),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hEAEEEAEAEEEEEEEE)) 
    \ap_CS_fsm[0]_i_1__0 
       (.I0(ap_idle),
        .I1(\ap_CS_fsm_reg[0]_1 [2]),
        .I2(\ap_CS_fsm[4]_i_3_n_3 ),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .I4(ap_done_cache),
        .I5(icmp_ln43_reg_272),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h000E)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[1]),
        .I3(\ap_CS_fsm[4]_i_3_n_3 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hBABBAAAAAAAAAAAA)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(ap_NS_fsm1),
        .I1(\ap_CS_fsm[4]_i_3_n_3 ),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .I3(ap_done_cache),
        .I4(icmp_ln43_reg_272),
        .I5(\ap_CS_fsm_reg[0]_1 [2]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg_reg[1]));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \ap_CS_fsm[4]_i_3 
       (.I0(int_ap_start_i_5_n_3),
        .I1(int_ap_start_i_6_n_3),
        .I2(\ap_CS_fsm[4]_i_4_n_3 ),
        .I3(\ap_CS_fsm[4]_i_5_n_3 ),
        .I4(Q[0]),
        .I5(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .O(\ap_CS_fsm[4]_i_3_n_3 ));
  LUT5 #(
    .INIT(32'h00903309)) 
    \ap_CS_fsm[4]_i_4 
       (.I0(mem_reg[3]),
        .I1(int_ap_start_i_3_0[3]),
        .I2(mem_reg[5]),
        .I3(mem_reg_i_51_n_3),
        .I4(int_ap_start_i_3_0[5]),
        .O(\ap_CS_fsm[4]_i_4_n_3 ));
  LUT5 #(
    .INIT(32'hFF6FCCF6)) 
    \ap_CS_fsm[4]_i_5 
       (.I0(mem_reg[0]),
        .I1(int_ap_start_i_3_0[0]),
        .I2(mem_reg[6]),
        .I3(mem_reg_i_51_n_3),
        .I4(int_ap_start_i_3_0[6]),
        .O(\ap_CS_fsm[4]_i_5_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ap_done_cache_i_1__0
       (.I0(\ap_CS_fsm[4]_i_3_n_3 ),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .I2(ap_done_cache),
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
    .INIT(32'h0000E200)) 
    ap_enable_reg_pp0_iter0_reg_i_1
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(Q[0]),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .I3(ap_rst_n),
        .I4(\ap_CS_fsm[4]_i_3_n_3 ),
        .O(ap_enable_reg_pp0_iter0_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    ap_loop_init_int_i_1
       (.I0(ap_loop_init_int_reg_1),
        .I1(ap_loop_init_int),
        .I2(ap_rst_n),
        .I3(\ap_CS_fsm[4]_i_3_n_3 ),
        .O(ap_loop_init_int_i_1_n_3));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1_n_3),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg_i_1
       (.I0(CO),
        .I1(\ap_CS_fsm_reg[0]_1 [0]),
        .I2(icmp_ln43_fu_199_p2),
        .I3(\ap_CS_fsm[4]_i_3_n_3 ),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .O(\ap_CS_fsm_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \i_fu_46[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(mem_reg[0]),
        .O(ap_loop_init_int_reg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \i_fu_46[1]_i_1 
       (.I0(mem_reg[0]),
        .I1(ap_loop_init_int),
        .I2(mem_reg[1]),
        .O(ap_loop_init_int_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h060A)) 
    \i_fu_46[2]_i_1 
       (.I0(mem_reg[2]),
        .I1(mem_reg[1]),
        .I2(ap_loop_init_int),
        .I3(mem_reg[0]),
        .O(ap_loop_init_int_reg_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h12222222)) 
    \i_fu_46[3]_i_1 
       (.I0(mem_reg[3]),
        .I1(mem_reg_i_51_n_3),
        .I2(mem_reg[1]),
        .I3(mem_reg[0]),
        .I4(mem_reg[2]),
        .O(ap_loop_init_int_reg_0[3]));
  LUT6 #(
    .INIT(64'h060A0A0A0A0A0A0A)) 
    \i_fu_46[4]_i_1 
       (.I0(mem_reg[4]),
        .I1(mem_reg[3]),
        .I2(mem_reg_i_51_n_3),
        .I3(mem_reg[1]),
        .I4(mem_reg[0]),
        .I5(mem_reg[2]),
        .O(ap_loop_init_int_reg_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h44B4)) 
    \i_fu_46[5]_i_1 
       (.I0(\i_fu_46[5]_i_2_n_3 ),
        .I1(mem_reg[4]),
        .I2(mem_reg[5]),
        .I3(ap_loop_init_int),
        .O(ap_loop_init_int_reg_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \i_fu_46[5]_i_2 
       (.I0(mem_reg[2]),
        .I1(mem_reg[0]),
        .I2(mem_reg[1]),
        .I3(mem_reg_i_51_n_3),
        .I4(mem_reg[3]),
        .O(\i_fu_46[5]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \i_fu_46[6]_i_1 
       (.I0(ap_loop_init_int),
        .I1(mem_reg[6]),
        .I2(\i_fu_46[7]_i_5_n_3 ),
        .O(ap_loop_init_int_reg_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \i_fu_46[7]_i_1 
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .I1(Q[0]),
        .I2(ap_loop_init_int),
        .I3(icmp_ln10_fu_78_p2),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \i_fu_46[7]_i_2 
       (.I0(Q[0]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .I2(icmp_ln10_fu_78_p2),
        .O(\ap_CS_fsm_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hB444)) 
    \i_fu_46[7]_i_3 
       (.I0(ap_loop_init_int),
        .I1(mem_reg[7]),
        .I2(\i_fu_46[7]_i_5_n_3 ),
        .I3(mem_reg[6]),
        .O(ap_loop_init_int_reg_0[7]));
  LUT4 #(
    .INIT(16'h0004)) 
    \i_fu_46[7]_i_4 
       (.I0(\ap_CS_fsm[4]_i_5_n_3 ),
        .I1(\ap_CS_fsm[4]_i_4_n_3 ),
        .I2(int_ap_start_i_6_n_3),
        .I3(int_ap_start_i_5_n_3),
        .O(icmp_ln10_fu_78_p2));
  LUT6 #(
    .INIT(64'h000000007F000000)) 
    \i_fu_46[7]_i_5 
       (.I0(ap_loop_init_int),
        .I1(Q[0]),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .I3(mem_reg[5]),
        .I4(mem_reg[4]),
        .I5(\i_fu_46[5]_i_2_n_3 ),
        .O(\i_fu_46[7]_i_5_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \icmp_ln10_reg_115[0]_i_1 
       (.I0(icmp_ln10_fu_78_p2),
        .I1(Q[0]),
        .I2(icmp_ln10_reg_115),
        .O(\ap_CS_fsm_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h9555AAAA)) 
    int_ap_start_i_10
       (.I0(int_ap_start_i_3_0[0]),
        .I1(ap_loop_init_int),
        .I2(Q[0]),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .I4(mem_reg[0]),
        .O(int_ap_start_i_10_n_3));
  LUT6 #(
    .INIT(64'h55555455FFFFFFFF)) 
    int_ap_start_i_3
       (.I0(int_ap_start_i_4_n_3),
        .I1(int_ap_start_i_5_n_3),
        .I2(int_ap_start_i_6_n_3),
        .I3(int_ap_start_i_7_n_3),
        .I4(int_ap_start_reg),
        .I5(\ap_CS_fsm_reg[0]_1 [2]),
        .O(\ap_CS_fsm_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    int_ap_start_i_4
       (.I0(icmp_ln43_reg_272),
        .I1(ap_done_cache),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .O(int_ap_start_i_4_n_3));
  LUT5 #(
    .INIT(32'hFF6FCCF6)) 
    int_ap_start_i_5
       (.I0(mem_reg[4]),
        .I1(int_ap_start_i_3_0[4]),
        .I2(mem_reg[2]),
        .I3(mem_reg_i_51_n_3),
        .I4(int_ap_start_i_3_0[2]),
        .O(int_ap_start_i_5_n_3));
  LUT5 #(
    .INIT(32'hFF6FCCF6)) 
    int_ap_start_i_6
       (.I0(mem_reg[1]),
        .I1(int_ap_start_i_3_0[1]),
        .I2(mem_reg[7]),
        .I3(mem_reg_i_51_n_3),
        .I4(int_ap_start_i_3_0[7]),
        .O(int_ap_start_i_6_n_3));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    int_ap_start_i_7
       (.I0(int_ap_start_i_3_0[5]),
        .I1(\i_fu_46_reg[7] [5]),
        .I2(int_ap_start_i_3_0[3]),
        .I3(\i_fu_46_reg[7] [3]),
        .I4(int_ap_start_i_9_n_3),
        .I5(int_ap_start_i_10_n_3),
        .O(int_ap_start_i_7_n_3));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h9555AAAA)) 
    int_ap_start_i_9
       (.I0(int_ap_start_i_3_0[6]),
        .I1(ap_loop_init_int),
        .I2(Q[0]),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .I4(mem_reg[6]),
        .O(int_ap_start_i_9_n_3));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_output_r_shift0[0]_i_1 
       (.I0(output_r_address0),
        .I1(output_r_ce0),
        .I2(\int_output_r_shift0_reg[0]_0 ),
        .O(\int_output_r_shift0_reg[0] ));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \int_output_r_shift0[0]_i_2 
       (.I0(mem_reg_0[0]),
        .I1(\ap_CS_fsm_reg[0]_1 [1]),
        .I2(mem_reg_1[0]),
        .I3(Q[1]),
        .I4(mem_reg[0]),
        .I5(mem_reg_i_51_n_3),
        .O(output_r_address0));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    mem_reg_i_10__0
       (.I0(mem_reg_0[1]),
        .I1(\ap_CS_fsm_reg[0]_1 [1]),
        .I2(mem_reg_1[1]),
        .I3(Q[1]),
        .I4(mem_reg[1]),
        .I5(mem_reg_i_51_n_3),
        .O(\zext_ln34_reg_281_reg[7] [0]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    mem_reg_i_4
       (.I0(mem_reg_0[7]),
        .I1(\ap_CS_fsm_reg[0]_1 [1]),
        .I2(mem_reg_1[7]),
        .I3(Q[1]),
        .I4(mem_reg[7]),
        .I5(mem_reg_i_51_n_3),
        .O(\zext_ln34_reg_281_reg[7] [6]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    mem_reg_i_47
       (.I0(mem_reg_2),
        .I1(\i_fu_46_reg[7] [0]),
        .I2(Q[1]),
        .I3(mem_reg_1[0]),
        .I4(\ap_CS_fsm_reg[0]_1 [1]),
        .I5(mem_reg_0[0]),
        .O(WEBWE[1]));
  LUT6 #(
    .INIT(64'h000002A2AAAA02A2)) 
    mem_reg_i_48
       (.I0(mem_reg_2),
        .I1(\i_fu_46_reg[7] [0]),
        .I2(Q[1]),
        .I3(mem_reg_1[0]),
        .I4(\ap_CS_fsm_reg[0]_1 [1]),
        .I5(mem_reg_0[0]),
        .O(WEBWE[0]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    mem_reg_i_5
       (.I0(mem_reg_0[6]),
        .I1(\ap_CS_fsm_reg[0]_1 [1]),
        .I2(mem_reg_1[6]),
        .I3(Q[1]),
        .I4(mem_reg[6]),
        .I5(mem_reg_i_51_n_3),
        .O(\zext_ln34_reg_281_reg[7] [5]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_51
       (.I0(ap_loop_init_int),
        .I1(Q[0]),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .O(mem_reg_i_51_n_3));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    mem_reg_i_6
       (.I0(mem_reg_0[5]),
        .I1(\ap_CS_fsm_reg[0]_1 [1]),
        .I2(mem_reg_1[5]),
        .I3(Q[1]),
        .I4(mem_reg[5]),
        .I5(mem_reg_i_51_n_3),
        .O(\zext_ln34_reg_281_reg[7] [4]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    mem_reg_i_7
       (.I0(mem_reg_0[4]),
        .I1(\ap_CS_fsm_reg[0]_1 [1]),
        .I2(mem_reg_1[4]),
        .I3(Q[1]),
        .I4(mem_reg[4]),
        .I5(mem_reg_i_51_n_3),
        .O(\zext_ln34_reg_281_reg[7] [3]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    mem_reg_i_8__0
       (.I0(mem_reg_0[3]),
        .I1(\ap_CS_fsm_reg[0]_1 [1]),
        .I2(mem_reg_1[3]),
        .I3(Q[1]),
        .I4(mem_reg[3]),
        .I5(mem_reg_i_51_n_3),
        .O(\zext_ln34_reg_281_reg[7] [2]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    mem_reg_i_9__0
       (.I0(mem_reg_0[2]),
        .I1(\ap_CS_fsm_reg[0]_1 [1]),
        .I2(mem_reg_1[2]),
        .I3(Q[1]),
        .I4(mem_reg[2]),
        .I5(mem_reg_i_51_n_3),
        .O(\zext_ln34_reg_281_reg[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \output_r_addr_reg_119[0]_i_1 
       (.I0(mem_reg[0]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .I2(Q[0]),
        .I3(ap_loop_init_int),
        .O(\i_fu_46_reg[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \output_r_addr_reg_119[1]_i_1 
       (.I0(mem_reg[1]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\i_fu_46_reg[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \output_r_addr_reg_119[2]_i_1 
       (.I0(mem_reg[2]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\i_fu_46_reg[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \output_r_addr_reg_119[3]_i_1 
       (.I0(mem_reg[3]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .I2(Q[0]),
        .I3(ap_loop_init_int),
        .O(\i_fu_46_reg[7] [3]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \output_r_addr_reg_119[4]_i_1 
       (.I0(mem_reg[4]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\i_fu_46_reg[7] [4]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \output_r_addr_reg_119[5]_i_1 
       (.I0(mem_reg[5]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .I2(Q[0]),
        .I3(ap_loop_init_int),
        .O(\i_fu_46_reg[7] [5]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \output_r_addr_reg_119[6]_i_1 
       (.I0(mem_reg[6]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\i_fu_46_reg[7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \output_r_addr_reg_119[7]_i_1 
       (.I0(Q[0]),
        .I1(icmp_ln10_fu_78_p2),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \output_r_addr_reg_119[7]_i_2 
       (.I0(mem_reg[7]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\i_fu_46_reg[7] [7]));
endmodule

(* ORIG_REF_NAME = "nnlayer_mac_muladd_16s_16s_16ns_16_4_1" *) 
module design_1_nnlayer_0_1_nnlayer_mac_muladd_16s_16s_16ns_16_4_1
   (P,
    ap_clk,
    B,
    A,
    ap_enable_reg_pp0_iter4,
    tmp_fu_54);
  output [15:0]P;
  input ap_clk;
  input [15:0]B;
  input [15:0]A;
  input ap_enable_reg_pp0_iter4;
  input [15:0]tmp_fu_54;

  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]P;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter4;
  wire [15:0]tmp_fu_54;

  design_1_nnlayer_0_1_nnlayer_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0 nnlayer_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U
       (.A(A),
        .B(B),
        .P(P),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter4(ap_enable_reg_pp0_iter4),
        .tmp_fu_54(tmp_fu_54));
endmodule

(* ORIG_REF_NAME = "nnlayer_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0" *) 
module design_1_nnlayer_0_1_nnlayer_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0
   (P,
    ap_clk,
    B,
    A,
    ap_enable_reg_pp0_iter4,
    tmp_fu_54);
  output [15:0]P;
  input ap_clk;
  input [15:0]B;
  input [15:0]A;
  input ap_enable_reg_pp0_iter4;
  input [15:0]tmp_fu_54;

  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]P;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter4;
  wire [15:0]ap_sig_allocacmp_tmp_load;
  wire [15:0]tmp_fu_54;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:16]NLW_p_reg_reg_P_UNCONNECTED;
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
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ap_sig_allocacmp_tmp_load}),
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
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:16],P}),
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
        .I2(tmp_fu_54[15]),
        .O(ap_sig_allocacmp_tmp_load[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_34
       (.I0(P[14]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(tmp_fu_54[14]),
        .O(ap_sig_allocacmp_tmp_load[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_35
       (.I0(P[13]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(tmp_fu_54[13]),
        .O(ap_sig_allocacmp_tmp_load[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_36
       (.I0(P[12]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(tmp_fu_54[12]),
        .O(ap_sig_allocacmp_tmp_load[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_37
       (.I0(P[11]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(tmp_fu_54[11]),
        .O(ap_sig_allocacmp_tmp_load[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_38
       (.I0(P[10]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(tmp_fu_54[10]),
        .O(ap_sig_allocacmp_tmp_load[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_39
       (.I0(P[9]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(tmp_fu_54[9]),
        .O(ap_sig_allocacmp_tmp_load[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_40
       (.I0(P[8]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(tmp_fu_54[8]),
        .O(ap_sig_allocacmp_tmp_load[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_41
       (.I0(P[7]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(tmp_fu_54[7]),
        .O(ap_sig_allocacmp_tmp_load[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_42
       (.I0(P[6]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(tmp_fu_54[6]),
        .O(ap_sig_allocacmp_tmp_load[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_43
       (.I0(P[5]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(tmp_fu_54[5]),
        .O(ap_sig_allocacmp_tmp_load[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_44
       (.I0(P[4]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(tmp_fu_54[4]),
        .O(ap_sig_allocacmp_tmp_load[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_45
       (.I0(P[3]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(tmp_fu_54[3]),
        .O(ap_sig_allocacmp_tmp_load[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_46
       (.I0(P[2]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(tmp_fu_54[2]),
        .O(ap_sig_allocacmp_tmp_load[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_47
       (.I0(P[1]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(tmp_fu_54[1]),
        .O(ap_sig_allocacmp_tmp_load[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_48
       (.I0(P[0]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(tmp_fu_54[0]),
        .O(ap_sig_allocacmp_tmp_load[0]));
endmodule

(* ORIG_REF_NAME = "nnlayer_nnlayer_Pipeline_VITIS_LOOP_10_1" *) 
module design_1_nnlayer_0_1_nnlayer_nnlayer_Pipeline_VITIS_LOOP_10_1
   (D,
    \ap_CS_fsm_reg[4] ,
    ap_enable_reg_pp0_iter0_reg_reg_0,
    output_r_ce0,
    \zext_ln34_reg_281_reg[7] ,
    WEBWE,
    \ap_CS_fsm_reg[4]_0 ,
    \int_output_r_shift0_reg[0] ,
    \ap_CS_fsm_reg[1]_0 ,
    SR,
    ap_clk,
    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg,
    ap_rst_n,
    ap_NS_fsm1,
    icmp_ln43_reg_272,
    Q,
    int_ap_start_i_3,
    mem_reg,
    mem_reg_0,
    \int_output_r_shift0_reg[0]_0 ,
    ap_idle,
    CO,
    icmp_ln43_fu_199_p2);
  output [1:0]D;
  output \ap_CS_fsm_reg[4] ;
  output ap_enable_reg_pp0_iter0_reg_reg_0;
  output output_r_ce0;
  output [6:0]\zext_ln34_reg_281_reg[7] ;
  output [1:0]WEBWE;
  output \ap_CS_fsm_reg[4]_0 ;
  output \int_output_r_shift0_reg[0] ;
  output \ap_CS_fsm_reg[1]_0 ;
  input [0:0]SR;
  input ap_clk;
  input grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg;
  input ap_rst_n;
  input ap_NS_fsm1;
  input icmp_ln43_reg_272;
  input [2:0]Q;
  input [7:0]int_ap_start_i_3;
  input [7:0]mem_reg;
  input mem_reg_0;
  input \int_output_r_shift0_reg[0]_0 ;
  input ap_idle;
  input [0:0]CO;
  input icmp_ln43_fu_199_p2;

  wire [0:0]CO;
  wire [1:0]D;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [1:0]WEBWE;
  wire ap_CS_fsm_pp0_stage1;
  wire \ap_CS_fsm_reg[1]_0 ;
  wire \ap_CS_fsm_reg[4] ;
  wire \ap_CS_fsm_reg[4]_0 ;
  wire \ap_CS_fsm_reg_n_3_[0] ;
  wire [1:0]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter0_reg_reg_0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1_n_3;
  wire ap_idle;
  wire ap_rst_n;
  wire [7:0]ap_sig_allocacmp_i_1;
  wire flow_control_loop_pipe_sequential_init_U_n_29;
  wire flow_control_loop_pipe_sequential_init_U_n_31;
  wire flow_control_loop_pipe_sequential_init_U_n_37;
  wire flow_control_loop_pipe_sequential_init_U_n_38;
  wire flow_control_loop_pipe_sequential_init_U_n_8;
  wire flow_control_loop_pipe_sequential_init_U_n_9;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg;
  wire [7:0]i_2_fu_84_p2;
  wire \i_fu_46_reg_n_3_[0] ;
  wire \i_fu_46_reg_n_3_[1] ;
  wire \i_fu_46_reg_n_3_[2] ;
  wire \i_fu_46_reg_n_3_[3] ;
  wire \i_fu_46_reg_n_3_[4] ;
  wire \i_fu_46_reg_n_3_[5] ;
  wire \i_fu_46_reg_n_3_[6] ;
  wire \i_fu_46_reg_n_3_[7] ;
  wire icmp_ln10_reg_115;
  wire icmp_ln43_fu_199_p2;
  wire icmp_ln43_reg_272;
  wire [7:0]int_ap_start_i_3;
  wire int_ap_start_i_8_n_3;
  wire \int_output_r_shift0_reg[0] ;
  wire \int_output_r_shift0_reg[0]_0 ;
  wire [7:0]mem_reg;
  wire mem_reg_0;
  wire mem_reg_i_49_n_3;
  wire [7:0]output_r_addr_reg_119;
  wire output_r_addr_reg_1190;
  wire output_r_ce0;
  wire [6:0]\zext_ln34_reg_281_reg[7] ;

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
        .D(flow_control_loop_pipe_sequential_init_U_n_8),
        .Q(ap_enable_reg_pp0_iter0_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000CF00A000C000)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .I1(ap_enable_reg_pp0_iter0_reg),
        .I2(ap_CS_fsm_pp0_stage1),
        .I3(ap_rst_n),
        .I4(\ap_CS_fsm_reg_n_3_[0] ),
        .I5(ap_enable_reg_pp0_iter1),
        .O(ap_enable_reg_pp0_iter1_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_3),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  design_1_nnlayer_0_1_nnlayer_flow_control_loop_pipe_sequential_init_0 flow_control_loop_pipe_sequential_init_U
       (.CO(CO),
        .D(ap_NS_fsm),
        .E(output_r_addr_reg_1190),
        .Q({ap_CS_fsm_pp0_stage1,\ap_CS_fsm_reg_n_3_[0] }),
        .SR(SR),
        .WEBWE(WEBWE),
        .\ap_CS_fsm_reg[0] (flow_control_loop_pipe_sequential_init_U_n_37),
        .\ap_CS_fsm_reg[0]_0 (flow_control_loop_pipe_sequential_init_U_n_38),
        .\ap_CS_fsm_reg[0]_1 (Q),
        .\ap_CS_fsm_reg[1] (\ap_CS_fsm_reg[1]_0 ),
        .\ap_CS_fsm_reg[4] (\ap_CS_fsm_reg[4] ),
        .ap_NS_fsm1(ap_NS_fsm1),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_enable_reg_pp0_iter0_reg_reg(flow_control_loop_pipe_sequential_init_U_n_8),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_idle(ap_idle),
        .ap_loop_init_int_reg_0({i_2_fu_84_p2[7:5],flow_control_loop_pipe_sequential_init_U_n_29,i_2_fu_84_p2[3],flow_control_loop_pipe_sequential_init_U_n_31,i_2_fu_84_p2[1:0]}),
        .ap_loop_init_int_reg_1(ap_enable_reg_pp0_iter0_reg_reg_0),
        .ap_rst_n(ap_rst_n),
        .grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg_reg(D),
        .grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg_reg_0(flow_control_loop_pipe_sequential_init_U_n_9),
        .\i_fu_46_reg[7] (ap_sig_allocacmp_i_1),
        .icmp_ln10_reg_115(icmp_ln10_reg_115),
        .icmp_ln43_fu_199_p2(icmp_ln43_fu_199_p2),
        .icmp_ln43_reg_272(icmp_ln43_reg_272),
        .int_ap_start_i_3_0(int_ap_start_i_3),
        .int_ap_start_reg(int_ap_start_i_8_n_3),
        .\int_output_r_shift0_reg[0] (\int_output_r_shift0_reg[0] ),
        .\int_output_r_shift0_reg[0]_0 (\int_output_r_shift0_reg[0]_0 ),
        .mem_reg({\i_fu_46_reg_n_3_[7] ,\i_fu_46_reg_n_3_[6] ,\i_fu_46_reg_n_3_[5] ,\i_fu_46_reg_n_3_[4] ,\i_fu_46_reg_n_3_[3] ,\i_fu_46_reg_n_3_[2] ,\i_fu_46_reg_n_3_[1] ,\i_fu_46_reg_n_3_[0] }),
        .mem_reg_0(mem_reg),
        .mem_reg_1(output_r_addr_reg_119),
        .mem_reg_2(mem_reg_0),
        .output_r_ce0(output_r_ce0),
        .\zext_ln34_reg_281_reg[7] (\zext_ln34_reg_281_reg[7] ));
  FDRE \i_fu_46_reg[0] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_37),
        .D(i_2_fu_84_p2[0]),
        .Q(\i_fu_46_reg_n_3_[0] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_9));
  FDRE \i_fu_46_reg[1] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_37),
        .D(i_2_fu_84_p2[1]),
        .Q(\i_fu_46_reg_n_3_[1] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_9));
  FDRE \i_fu_46_reg[2] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_37),
        .D(flow_control_loop_pipe_sequential_init_U_n_31),
        .Q(\i_fu_46_reg_n_3_[2] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_9));
  FDRE \i_fu_46_reg[3] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_37),
        .D(i_2_fu_84_p2[3]),
        .Q(\i_fu_46_reg_n_3_[3] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_9));
  FDRE \i_fu_46_reg[4] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_37),
        .D(flow_control_loop_pipe_sequential_init_U_n_29),
        .Q(\i_fu_46_reg_n_3_[4] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_9));
  FDRE \i_fu_46_reg[5] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_37),
        .D(i_2_fu_84_p2[5]),
        .Q(\i_fu_46_reg_n_3_[5] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_9));
  FDRE \i_fu_46_reg[6] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_37),
        .D(i_2_fu_84_p2[6]),
        .Q(\i_fu_46_reg_n_3_[6] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_9));
  FDRE \i_fu_46_reg[7] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_37),
        .D(i_2_fu_84_p2[7]),
        .Q(\i_fu_46_reg_n_3_[7] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_9));
  FDRE \icmp_ln10_reg_115_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_38),
        .Q(icmp_ln10_reg_115),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    int_ap_start_i_8
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_3_[0] ),
        .O(int_ap_start_i_8_n_3));
  LUT5 #(
    .INIT(32'hFBAAAAAA)) 
    mem_reg_i_2
       (.I0(Q[1]),
        .I1(mem_reg_i_49_n_3),
        .I2(ap_enable_reg_pp0_iter0_reg_reg_0),
        .I3(icmp_ln43_reg_272),
        .I4(Q[2]),
        .O(output_r_ce0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h37)) 
    mem_reg_i_49
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_3_[0] ),
        .I2(ap_enable_reg_pp0_iter1),
        .O(mem_reg_i_49_n_3));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    mem_reg_i_50
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(\ap_CS_fsm_reg_n_3_[0] ),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_145_ap_start_reg),
        .I3(ap_CS_fsm_pp0_stage1),
        .O(ap_enable_reg_pp0_iter0_reg_reg_0));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_73
       (.I0(Q[2]),
        .I1(icmp_ln43_reg_272),
        .I2(icmp_ln10_reg_115),
        .O(\ap_CS_fsm_reg[4]_0 ));
  FDRE \output_r_addr_reg_119_reg[0] 
       (.C(ap_clk),
        .CE(output_r_addr_reg_1190),
        .D(ap_sig_allocacmp_i_1[0]),
        .Q(output_r_addr_reg_119[0]),
        .R(1'b0));
  FDRE \output_r_addr_reg_119_reg[1] 
       (.C(ap_clk),
        .CE(output_r_addr_reg_1190),
        .D(ap_sig_allocacmp_i_1[1]),
        .Q(output_r_addr_reg_119[1]),
        .R(1'b0));
  FDRE \output_r_addr_reg_119_reg[2] 
       (.C(ap_clk),
        .CE(output_r_addr_reg_1190),
        .D(ap_sig_allocacmp_i_1[2]),
        .Q(output_r_addr_reg_119[2]),
        .R(1'b0));
  FDRE \output_r_addr_reg_119_reg[3] 
       (.C(ap_clk),
        .CE(output_r_addr_reg_1190),
        .D(ap_sig_allocacmp_i_1[3]),
        .Q(output_r_addr_reg_119[3]),
        .R(1'b0));
  FDRE \output_r_addr_reg_119_reg[4] 
       (.C(ap_clk),
        .CE(output_r_addr_reg_1190),
        .D(ap_sig_allocacmp_i_1[4]),
        .Q(output_r_addr_reg_119[4]),
        .R(1'b0));
  FDRE \output_r_addr_reg_119_reg[5] 
       (.C(ap_clk),
        .CE(output_r_addr_reg_1190),
        .D(ap_sig_allocacmp_i_1[5]),
        .Q(output_r_addr_reg_119[5]),
        .R(1'b0));
  FDRE \output_r_addr_reg_119_reg[6] 
       (.C(ap_clk),
        .CE(output_r_addr_reg_1190),
        .D(ap_sig_allocacmp_i_1[6]),
        .Q(output_r_addr_reg_119[6]),
        .R(1'b0));
  FDRE \output_r_addr_reg_119_reg[7] 
       (.C(ap_clk),
        .CE(output_r_addr_reg_1190),
        .D(ap_sig_allocacmp_i_1[7]),
        .Q(output_r_addr_reg_119[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "nnlayer_nnlayer_Pipeline_VITIS_LOOP_35_2" *) 
module design_1_nnlayer_0_1_nnlayer_nnlayer_Pipeline_VITIS_LOOP_35_2
   (grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0,
    ADDRBWRADDR,
    D,
    tmp_fu_54,
    DIBDI,
    \outNeurons_1_reg_259_reg[0] ,
    grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg,
    \inNeurons_fu_58_reg[0]_0 ,
    SR,
    ap_clk,
    B,
    A,
    Q,
    grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg,
    CO,
    mem_reg,
    ap_rst_n,
    mem_reg_0,
    mem_reg_0_0,
    mem_reg_1,
    mem_reg_2,
    mem_reg_3,
    S,
    \int_bias_shift0_reg[0] ,
    \int_bias_shift0_reg[0]_0 ,
    \int_input_r_shift0_reg[0] );
  output [14:0]grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0;
  output [5:0]ADDRBWRADDR;
  output [1:0]D;
  output [15:0]tmp_fu_54;
  output [23:0]DIBDI;
  output \outNeurons_1_reg_259_reg[0] ;
  output grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg;
  output \inNeurons_fu_58_reg[0]_0 ;
  input [0:0]SR;
  input ap_clk;
  input [15:0]B;
  input [15:0]A;
  input [15:0]Q;
  input grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg;
  input [0:0]CO;
  input [2:0]mem_reg;
  input ap_rst_n;
  input [0:0]mem_reg_0;
  input [14:0]mem_reg_0_0;
  input [3:0]mem_reg_1;
  input [3:0]mem_reg_2;
  input [3:0]mem_reg_3;
  input [3:0]S;
  input [0:0]\int_bias_shift0_reg[0] ;
  input \int_bias_shift0_reg[0]_0 ;
  input \int_input_r_shift0_reg[0] ;

  wire [15:0]A;
  wire [5:0]ADDRBWRADDR;
  wire [15:0]B;
  wire [0:0]CO;
  wire [1:0]D;
  wire [23:0]DIBDI;
  wire [15:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire add_ln37_fu_144_p2_carry__0_n_3;
  wire add_ln37_fu_144_p2_carry__0_n_4;
  wire add_ln37_fu_144_p2_carry__0_n_5;
  wire add_ln37_fu_144_p2_carry__0_n_6;
  wire add_ln37_fu_144_p2_carry__1_n_3;
  wire add_ln37_fu_144_p2_carry__1_n_4;
  wire add_ln37_fu_144_p2_carry__1_n_5;
  wire add_ln37_fu_144_p2_carry__1_n_6;
  wire add_ln37_fu_144_p2_carry__2_n_5;
  wire add_ln37_fu_144_p2_carry__2_n_6;
  wire add_ln37_fu_144_p2_carry_n_3;
  wire add_ln37_fu_144_p2_carry_n_4;
  wire add_ln37_fu_144_p2_carry_n_5;
  wire add_ln37_fu_144_p2_carry_n_6;
  wire [15:0]add_ln39_fu_215_p2;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1__0_n_3;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter4;
  wire ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_3;
  wire ap_loop_exit_ready_pp0_iter3_reg;
  wire ap_loop_init;
  wire ap_rst_n;
  wire [15:7]ap_sig_allocacmp_inNeurons_1;
  wire flow_control_loop_pipe_sequential_init_U_n_10;
  wire flow_control_loop_pipe_sequential_init_U_n_11;
  wire flow_control_loop_pipe_sequential_init_U_n_12;
  wire flow_control_loop_pipe_sequential_init_U_n_13;
  wire flow_control_loop_pipe_sequential_init_U_n_14;
  wire flow_control_loop_pipe_sequential_init_U_n_15;
  wire flow_control_loop_pipe_sequential_init_U_n_16;
  wire flow_control_loop_pipe_sequential_init_U_n_17;
  wire flow_control_loop_pipe_sequential_init_U_n_18;
  wire flow_control_loop_pipe_sequential_init_U_n_19;
  wire flow_control_loop_pipe_sequential_init_U_n_3;
  wire flow_control_loop_pipe_sequential_init_U_n_35;
  wire flow_control_loop_pipe_sequential_init_U_n_4;
  wire flow_control_loop_pipe_sequential_init_U_n_5;
  wire flow_control_loop_pipe_sequential_init_U_n_54;
  wire flow_control_loop_pipe_sequential_init_U_n_55;
  wire flow_control_loop_pipe_sequential_init_U_n_56;
  wire flow_control_loop_pipe_sequential_init_U_n_57;
  wire flow_control_loop_pipe_sequential_init_U_n_58;
  wire flow_control_loop_pipe_sequential_init_U_n_59;
  wire flow_control_loop_pipe_sequential_init_U_n_6;
  wire flow_control_loop_pipe_sequential_init_U_n_60;
  wire flow_control_loop_pipe_sequential_init_U_n_61;
  wire flow_control_loop_pipe_sequential_init_U_n_62;
  wire flow_control_loop_pipe_sequential_init_U_n_63;
  wire flow_control_loop_pipe_sequential_init_U_n_64;
  wire flow_control_loop_pipe_sequential_init_U_n_65;
  wire flow_control_loop_pipe_sequential_init_U_n_66;
  wire flow_control_loop_pipe_sequential_init_U_n_67;
  wire flow_control_loop_pipe_sequential_init_U_n_68;
  wire flow_control_loop_pipe_sequential_init_U_n_69;
  wire flow_control_loop_pipe_sequential_init_U_n_7;
  wire flow_control_loop_pipe_sequential_init_U_n_70;
  wire flow_control_loop_pipe_sequential_init_U_n_71;
  wire flow_control_loop_pipe_sequential_init_U_n_72;
  wire flow_control_loop_pipe_sequential_init_U_n_73;
  wire flow_control_loop_pipe_sequential_init_U_n_74;
  wire flow_control_loop_pipe_sequential_init_U_n_75;
  wire flow_control_loop_pipe_sequential_init_U_n_8;
  wire flow_control_loop_pipe_sequential_init_U_n_9;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_ready;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg;
  wire [14:0]grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0;
  wire icmp_ln35_fu_128_p2;
  wire icmp_ln35_fu_128_p2_carry__0_n_3;
  wire icmp_ln35_fu_128_p2_carry__0_n_4;
  wire icmp_ln35_fu_128_p2_carry__0_n_5;
  wire icmp_ln35_fu_128_p2_carry__0_n_6;
  wire icmp_ln35_fu_128_p2_carry_n_3;
  wire icmp_ln35_fu_128_p2_carry_n_4;
  wire icmp_ln35_fu_128_p2_carry_n_5;
  wire icmp_ln35_fu_128_p2_carry_n_6;
  wire [15:0]inNeurons_2_fu_134_p2;
  wire inNeurons_fu_580;
  wire \inNeurons_fu_58_reg[0]_0 ;
  wire \inNeurons_fu_58_reg_n_3_[0] ;
  wire \inNeurons_fu_58_reg_n_3_[10] ;
  wire \inNeurons_fu_58_reg_n_3_[11] ;
  wire \inNeurons_fu_58_reg_n_3_[12] ;
  wire \inNeurons_fu_58_reg_n_3_[13] ;
  wire \inNeurons_fu_58_reg_n_3_[14] ;
  wire \inNeurons_fu_58_reg_n_3_[15] ;
  wire \inNeurons_fu_58_reg_n_3_[1] ;
  wire \inNeurons_fu_58_reg_n_3_[2] ;
  wire \inNeurons_fu_58_reg_n_3_[3] ;
  wire \inNeurons_fu_58_reg_n_3_[4] ;
  wire \inNeurons_fu_58_reg_n_3_[5] ;
  wire \inNeurons_fu_58_reg_n_3_[6] ;
  wire \inNeurons_fu_58_reg_n_3_[7] ;
  wire \inNeurons_fu_58_reg_n_3_[8] ;
  wire \inNeurons_fu_58_reg_n_3_[9] ;
  wire [0:0]\int_bias_shift0_reg[0] ;
  wire \int_bias_shift0_reg[0]_0 ;
  wire \int_input_r_shift0_reg[0] ;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_10;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_11;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_12;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_13;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_14;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_15;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_16;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_17;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_18;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_3;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_4;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_5;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_6;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_7;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_8;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_9;
  wire [2:0]mem_reg;
  wire [0:0]mem_reg_0;
  wire [14:0]mem_reg_0_0;
  wire [3:0]mem_reg_1;
  wire [3:0]mem_reg_2;
  wire [3:0]mem_reg_3;
  wire mem_reg_i_52_n_4;
  wire mem_reg_i_52_n_5;
  wire mem_reg_i_52_n_6;
  wire mem_reg_i_53_n_3;
  wire mem_reg_i_53_n_4;
  wire mem_reg_i_53_n_5;
  wire mem_reg_i_53_n_6;
  wire mem_reg_i_54_n_3;
  wire mem_reg_i_54_n_4;
  wire mem_reg_i_54_n_5;
  wire mem_reg_i_54_n_6;
  wire mem_reg_i_55_n_3;
  wire mem_reg_i_55_n_4;
  wire mem_reg_i_55_n_5;
  wire mem_reg_i_55_n_6;
  wire \outNeurons_1_reg_259_reg[0] ;
  wire [15:0]tmp_fu_54;
  wire [3:2]NLW_add_ln37_fu_144_p2_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_add_ln37_fu_144_p2_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln35_fu_128_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln35_fu_128_p2_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_icmp_ln35_fu_128_p2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_icmp_ln35_fu_128_p2_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_mem_reg_i_52_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln37_fu_144_p2_carry
       (.CI(1'b0),
        .CO({add_ln37_fu_144_p2_carry_n_3,add_ln37_fu_144_p2_carry_n_4,add_ln37_fu_144_p2_carry_n_5,add_ln37_fu_144_p2_carry_n_6}),
        .CYINIT(1'b0),
        .DI({flow_control_loop_pipe_sequential_init_U_n_54,flow_control_loop_pipe_sequential_init_U_n_55,flow_control_loop_pipe_sequential_init_U_n_56,flow_control_loop_pipe_sequential_init_U_n_57}),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_64,flow_control_loop_pipe_sequential_init_U_n_65,flow_control_loop_pipe_sequential_init_U_n_66,flow_control_loop_pipe_sequential_init_U_n_67}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln37_fu_144_p2_carry__0
       (.CI(add_ln37_fu_144_p2_carry_n_3),
        .CO({add_ln37_fu_144_p2_carry__0_n_3,add_ln37_fu_144_p2_carry__0_n_4,add_ln37_fu_144_p2_carry__0_n_5,add_ln37_fu_144_p2_carry__0_n_6}),
        .CYINIT(1'b0),
        .DI({ap_sig_allocacmp_inNeurons_1[7],flow_control_loop_pipe_sequential_init_U_n_58,flow_control_loop_pipe_sequential_init_U_n_59,flow_control_loop_pipe_sequential_init_U_n_60}),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0[7:4]),
        .S({flow_control_loop_pipe_sequential_init_U_n_68,flow_control_loop_pipe_sequential_init_U_n_69,flow_control_loop_pipe_sequential_init_U_n_70,flow_control_loop_pipe_sequential_init_U_n_71}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln37_fu_144_p2_carry__1
       (.CI(add_ln37_fu_144_p2_carry__0_n_3),
        .CO({add_ln37_fu_144_p2_carry__1_n_3,add_ln37_fu_144_p2_carry__1_n_4,add_ln37_fu_144_p2_carry__1_n_5,add_ln37_fu_144_p2_carry__1_n_6}),
        .CYINIT(1'b0),
        .DI(ap_sig_allocacmp_inNeurons_1[11:8]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0[11:8]),
        .S({flow_control_loop_pipe_sequential_init_U_n_72,flow_control_loop_pipe_sequential_init_U_n_73,flow_control_loop_pipe_sequential_init_U_n_74,flow_control_loop_pipe_sequential_init_U_n_75}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln37_fu_144_p2_carry__2
       (.CI(add_ln37_fu_144_p2_carry__1_n_3),
        .CO({NLW_add_ln37_fu_144_p2_carry__2_CO_UNCONNECTED[3:2],add_ln37_fu_144_p2_carry__2_n_5,add_ln37_fu_144_p2_carry__2_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,ap_sig_allocacmp_inNeurons_1[13:12]}),
        .O({NLW_add_ln37_fu_144_p2_carry__2_O_UNCONNECTED[3],grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_weights_address0[14:12]}),
        .S({1'b0,flow_control_loop_pipe_sequential_init_U_n_61,flow_control_loop_pipe_sequential_init_U_n_62,flow_control_loop_pipe_sequential_init_U_n_63}));
  LUT3 #(
    .INIT(8'h80)) 
    ap_enable_reg_pp0_iter1_i_1__0
       (.I0(icmp_ln35_fu_128_p2),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I2(ap_rst_n),
        .O(ap_enable_reg_pp0_iter1_i_1__0_n_3));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1__0_n_3),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1),
        .Q(ap_enable_reg_pp0_iter2),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter3_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter2),
        .Q(ap_enable_reg_pp0_iter3),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter4_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter3),
        .Q(ap_enable_reg_pp0_iter4),
        .R(SR));
  (* srl_name = "inst/\grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134/ap_loop_exit_ready_pp0_iter2_reg_reg_srl2 " *) 
  SRL16E ap_loop_exit_ready_pp0_iter2_reg_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_ready),
        .Q(ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_3));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_i_1
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I1(icmp_ln35_fu_128_p2),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_ready));
  FDRE ap_loop_exit_ready_pp0_iter3_reg_reg__0
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_3),
        .Q(ap_loop_exit_ready_pp0_iter3_reg),
        .R(1'b0));
  design_1_nnlayer_0_1_nnlayer_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U
       (.ADDRBWRADDR(ADDRBWRADDR),
        .CO(icmp_ln35_fu_128_p2),
        .D(D),
        .DI({flow_control_loop_pipe_sequential_init_U_n_3,flow_control_loop_pipe_sequential_init_U_n_4,flow_control_loop_pipe_sequential_init_U_n_5,flow_control_loop_pipe_sequential_init_U_n_6}),
        .Q(Q),
        .S({flow_control_loop_pipe_sequential_init_U_n_7,flow_control_loop_pipe_sequential_init_U_n_8,flow_control_loop_pipe_sequential_init_U_n_9,flow_control_loop_pipe_sequential_init_U_n_10}),
        .SR(SR),
        .\ap_CS_fsm_reg[2] (CO),
        .ap_clk(ap_clk),
        .ap_loop_exit_ready_pp0_iter3_reg(ap_loop_exit_ready_pp0_iter3_reg),
        .ap_loop_init(ap_loop_init),
        .ap_loop_init_int_reg_0(flow_control_loop_pipe_sequential_init_U_n_35),
        .ap_rst_n(ap_rst_n),
        .grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg(flow_control_loop_pipe_sequential_init_U_n_19),
        .grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg_0({flow_control_loop_pipe_sequential_init_U_n_64,flow_control_loop_pipe_sequential_init_U_n_65,flow_control_loop_pipe_sequential_init_U_n_66,flow_control_loop_pipe_sequential_init_U_n_67}),
        .grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg_1({flow_control_loop_pipe_sequential_init_U_n_68,flow_control_loop_pipe_sequential_init_U_n_69,flow_control_loop_pipe_sequential_init_U_n_70,flow_control_loop_pipe_sequential_init_U_n_71}),
        .grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg_2({flow_control_loop_pipe_sequential_init_U_n_72,flow_control_loop_pipe_sequential_init_U_n_73,flow_control_loop_pipe_sequential_init_U_n_74,flow_control_loop_pipe_sequential_init_U_n_75}),
        .\inNeurons_fu_58_reg[0] (\inNeurons_fu_58_reg[0]_0 ),
        .\inNeurons_fu_58_reg[15] ({flow_control_loop_pipe_sequential_init_U_n_15,flow_control_loop_pipe_sequential_init_U_n_16,flow_control_loop_pipe_sequential_init_U_n_17,flow_control_loop_pipe_sequential_init_U_n_18}),
        .\inNeurons_fu_58_reg[15]_0 ({ap_sig_allocacmp_inNeurons_1[15],ap_sig_allocacmp_inNeurons_1[13:7]}),
        .\inNeurons_fu_58_reg[15]_1 (inNeurons_2_fu_134_p2),
        .\inNeurons_fu_58_reg[15]_2 ({\inNeurons_fu_58_reg_n_3_[15] ,\inNeurons_fu_58_reg_n_3_[14] ,\inNeurons_fu_58_reg_n_3_[13] ,\inNeurons_fu_58_reg_n_3_[12] ,\inNeurons_fu_58_reg_n_3_[11] ,\inNeurons_fu_58_reg_n_3_[10] ,\inNeurons_fu_58_reg_n_3_[9] ,\inNeurons_fu_58_reg_n_3_[8] ,\inNeurons_fu_58_reg_n_3_[7] ,\inNeurons_fu_58_reg_n_3_[6] ,\inNeurons_fu_58_reg_n_3_[5] ,\inNeurons_fu_58_reg_n_3_[4] ,\inNeurons_fu_58_reg_n_3_[3] ,\inNeurons_fu_58_reg_n_3_[2] ,\inNeurons_fu_58_reg_n_3_[1] ,\inNeurons_fu_58_reg_n_3_[0] }),
        .\inNeurons_fu_58_reg[3] ({flow_control_loop_pipe_sequential_init_U_n_54,flow_control_loop_pipe_sequential_init_U_n_55,flow_control_loop_pipe_sequential_init_U_n_56,flow_control_loop_pipe_sequential_init_U_n_57}),
        .\inNeurons_fu_58_reg[6] ({flow_control_loop_pipe_sequential_init_U_n_58,flow_control_loop_pipe_sequential_init_U_n_59,flow_control_loop_pipe_sequential_init_U_n_60}),
        .\int_bias_shift0_reg[0] (\int_bias_shift0_reg[0] ),
        .\int_bias_shift0_reg[0]_0 (\int_bias_shift0_reg[0]_0 ),
        .\int_input_r_shift0_reg[0] (\int_input_r_shift0_reg[0] ),
        .mem_reg(mem_reg[1:0]),
        .mem_reg_0_0(mem_reg_0_0),
        .\numOfInNeurons_read_reg_247_reg[15] ({flow_control_loop_pipe_sequential_init_U_n_11,flow_control_loop_pipe_sequential_init_U_n_12,flow_control_loop_pipe_sequential_init_U_n_13,flow_control_loop_pipe_sequential_init_U_n_14}),
        .\outNeurons_1_reg_259_reg[0] (\outNeurons_1_reg_259_reg[0] ),
        .\trunc_ln35_reg_267_reg[14] ({flow_control_loop_pipe_sequential_init_U_n_61,flow_control_loop_pipe_sequential_init_U_n_62,flow_control_loop_pipe_sequential_init_U_n_63}));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_i_1
       (.I0(icmp_ln35_fu_128_p2),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I2(CO),
        .I3(mem_reg[0]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg_reg));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln35_fu_128_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln35_fu_128_p2_carry_n_3,icmp_ln35_fu_128_p2_carry_n_4,icmp_ln35_fu_128_p2_carry_n_5,icmp_ln35_fu_128_p2_carry_n_6}),
        .CYINIT(1'b0),
        .DI({flow_control_loop_pipe_sequential_init_U_n_3,flow_control_loop_pipe_sequential_init_U_n_4,flow_control_loop_pipe_sequential_init_U_n_5,flow_control_loop_pipe_sequential_init_U_n_6}),
        .O(NLW_icmp_ln35_fu_128_p2_carry_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_7,flow_control_loop_pipe_sequential_init_U_n_8,flow_control_loop_pipe_sequential_init_U_n_9,flow_control_loop_pipe_sequential_init_U_n_10}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln35_fu_128_p2_carry__0
       (.CI(icmp_ln35_fu_128_p2_carry_n_3),
        .CO({icmp_ln35_fu_128_p2_carry__0_n_3,icmp_ln35_fu_128_p2_carry__0_n_4,icmp_ln35_fu_128_p2_carry__0_n_5,icmp_ln35_fu_128_p2_carry__0_n_6}),
        .CYINIT(1'b0),
        .DI({flow_control_loop_pipe_sequential_init_U_n_11,flow_control_loop_pipe_sequential_init_U_n_12,flow_control_loop_pipe_sequential_init_U_n_13,flow_control_loop_pipe_sequential_init_U_n_14}),
        .O(NLW_icmp_ln35_fu_128_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_15,flow_control_loop_pipe_sequential_init_U_n_16,flow_control_loop_pipe_sequential_init_U_n_17,flow_control_loop_pipe_sequential_init_U_n_18}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln35_fu_128_p2_carry__1
       (.CI(icmp_ln35_fu_128_p2_carry__0_n_3),
        .CO({NLW_icmp_ln35_fu_128_p2_carry__1_CO_UNCONNECTED[3:1],icmp_ln35_fu_128_p2}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,ap_sig_allocacmp_inNeurons_1[15]}),
        .O(NLW_icmp_ln35_fu_128_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,flow_control_loop_pipe_sequential_init_U_n_19}));
  LUT2 #(
    .INIT(4'h8)) 
    \inNeurons_fu_58[15]_i_2 
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_35_2_fu_134_ap_start_reg),
        .I1(icmp_ln35_fu_128_p2),
        .O(inNeurons_fu_580));
  FDRE \inNeurons_fu_58_reg[0] 
       (.C(ap_clk),
        .CE(inNeurons_fu_580),
        .D(inNeurons_2_fu_134_p2[0]),
        .Q(\inNeurons_fu_58_reg_n_3_[0] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_35));
  FDRE \inNeurons_fu_58_reg[10] 
       (.C(ap_clk),
        .CE(inNeurons_fu_580),
        .D(inNeurons_2_fu_134_p2[10]),
        .Q(\inNeurons_fu_58_reg_n_3_[10] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_35));
  FDRE \inNeurons_fu_58_reg[11] 
       (.C(ap_clk),
        .CE(inNeurons_fu_580),
        .D(inNeurons_2_fu_134_p2[11]),
        .Q(\inNeurons_fu_58_reg_n_3_[11] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_35));
  FDRE \inNeurons_fu_58_reg[12] 
       (.C(ap_clk),
        .CE(inNeurons_fu_580),
        .D(inNeurons_2_fu_134_p2[12]),
        .Q(\inNeurons_fu_58_reg_n_3_[12] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_35));
  FDRE \inNeurons_fu_58_reg[13] 
       (.C(ap_clk),
        .CE(inNeurons_fu_580),
        .D(inNeurons_2_fu_134_p2[13]),
        .Q(\inNeurons_fu_58_reg_n_3_[13] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_35));
  FDRE \inNeurons_fu_58_reg[14] 
       (.C(ap_clk),
        .CE(inNeurons_fu_580),
        .D(inNeurons_2_fu_134_p2[14]),
        .Q(\inNeurons_fu_58_reg_n_3_[14] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_35));
  FDRE \inNeurons_fu_58_reg[15] 
       (.C(ap_clk),
        .CE(inNeurons_fu_580),
        .D(inNeurons_2_fu_134_p2[15]),
        .Q(\inNeurons_fu_58_reg_n_3_[15] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_35));
  FDRE \inNeurons_fu_58_reg[1] 
       (.C(ap_clk),
        .CE(inNeurons_fu_580),
        .D(inNeurons_2_fu_134_p2[1]),
        .Q(\inNeurons_fu_58_reg_n_3_[1] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_35));
  FDRE \inNeurons_fu_58_reg[2] 
       (.C(ap_clk),
        .CE(inNeurons_fu_580),
        .D(inNeurons_2_fu_134_p2[2]),
        .Q(\inNeurons_fu_58_reg_n_3_[2] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_35));
  FDRE \inNeurons_fu_58_reg[3] 
       (.C(ap_clk),
        .CE(inNeurons_fu_580),
        .D(inNeurons_2_fu_134_p2[3]),
        .Q(\inNeurons_fu_58_reg_n_3_[3] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_35));
  FDRE \inNeurons_fu_58_reg[4] 
       (.C(ap_clk),
        .CE(inNeurons_fu_580),
        .D(inNeurons_2_fu_134_p2[4]),
        .Q(\inNeurons_fu_58_reg_n_3_[4] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_35));
  FDRE \inNeurons_fu_58_reg[5] 
       (.C(ap_clk),
        .CE(inNeurons_fu_580),
        .D(inNeurons_2_fu_134_p2[5]),
        .Q(\inNeurons_fu_58_reg_n_3_[5] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_35));
  FDRE \inNeurons_fu_58_reg[6] 
       (.C(ap_clk),
        .CE(inNeurons_fu_580),
        .D(inNeurons_2_fu_134_p2[6]),
        .Q(\inNeurons_fu_58_reg_n_3_[6] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_35));
  FDRE \inNeurons_fu_58_reg[7] 
       (.C(ap_clk),
        .CE(inNeurons_fu_580),
        .D(inNeurons_2_fu_134_p2[7]),
        .Q(\inNeurons_fu_58_reg_n_3_[7] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_35));
  FDRE \inNeurons_fu_58_reg[8] 
       (.C(ap_clk),
        .CE(inNeurons_fu_580),
        .D(inNeurons_2_fu_134_p2[8]),
        .Q(\inNeurons_fu_58_reg_n_3_[8] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_35));
  FDRE \inNeurons_fu_58_reg[9] 
       (.C(ap_clk),
        .CE(inNeurons_fu_580),
        .D(inNeurons_2_fu_134_p2[9]),
        .Q(\inNeurons_fu_58_reg_n_3_[9] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_35));
  design_1_nnlayer_0_1_nnlayer_mac_muladd_16s_16s_16ns_16_4_1 mac_muladd_16s_16s_16ns_16_4_1_U1
       (.A(A),
        .B(B),
        .P({mac_muladd_16s_16s_16ns_16_4_1_U1_n_3,mac_muladd_16s_16s_16ns_16_4_1_U1_n_4,mac_muladd_16s_16s_16ns_16_4_1_U1_n_5,mac_muladd_16s_16s_16ns_16_4_1_U1_n_6,mac_muladd_16s_16s_16ns_16_4_1_U1_n_7,mac_muladd_16s_16s_16ns_16_4_1_U1_n_8,mac_muladd_16s_16s_16ns_16_4_1_U1_n_9,mac_muladd_16s_16s_16ns_16_4_1_U1_n_10,mac_muladd_16s_16s_16ns_16_4_1_U1_n_11,mac_muladd_16s_16s_16ns_16_4_1_U1_n_12,mac_muladd_16s_16s_16ns_16_4_1_U1_n_13,mac_muladd_16s_16s_16ns_16_4_1_U1_n_14,mac_muladd_16s_16s_16ns_16_4_1_U1_n_15,mac_muladd_16s_16s_16ns_16_4_1_U1_n_16,mac_muladd_16s_16s_16ns_16_4_1_U1_n_17,mac_muladd_16s_16s_16ns_16_4_1_U1_n_18}),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter4(ap_enable_reg_pp0_iter4),
        .tmp_fu_54(tmp_fu_54));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_19__0
       (.I0(mem_reg_0),
        .I1(add_ln39_fu_215_p2[15]),
        .I2(mem_reg[2]),
        .O(DIBDI[23]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_20__0
       (.I0(mem_reg_0),
        .I1(add_ln39_fu_215_p2[14]),
        .I2(mem_reg[2]),
        .O(DIBDI[22]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_21__0
       (.I0(mem_reg_0),
        .I1(add_ln39_fu_215_p2[13]),
        .I2(mem_reg[2]),
        .O(DIBDI[21]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_22__0
       (.I0(mem_reg_0),
        .I1(add_ln39_fu_215_p2[12]),
        .I2(mem_reg[2]),
        .O(DIBDI[20]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_23__0
       (.I0(mem_reg_0),
        .I1(add_ln39_fu_215_p2[11]),
        .I2(mem_reg[2]),
        .O(DIBDI[19]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_24__0
       (.I0(mem_reg_0),
        .I1(add_ln39_fu_215_p2[10]),
        .I2(mem_reg[2]),
        .O(DIBDI[18]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_25__0
       (.I0(mem_reg_0),
        .I1(add_ln39_fu_215_p2[9]),
        .I2(mem_reg[2]),
        .O(DIBDI[17]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_26
       (.I0(mem_reg_0),
        .I1(add_ln39_fu_215_p2[8]),
        .I2(mem_reg[2]),
        .O(DIBDI[16]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_27
       (.I0(mem_reg[2]),
        .I1(add_ln39_fu_215_p2[7]),
        .O(DIBDI[15]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_28
       (.I0(mem_reg[2]),
        .I1(add_ln39_fu_215_p2[6]),
        .O(DIBDI[14]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_29
       (.I0(mem_reg[2]),
        .I1(add_ln39_fu_215_p2[5]),
        .O(DIBDI[13]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_30
       (.I0(mem_reg[2]),
        .I1(add_ln39_fu_215_p2[4]),
        .O(DIBDI[12]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_31
       (.I0(mem_reg[2]),
        .I1(add_ln39_fu_215_p2[3]),
        .O(DIBDI[11]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_32
       (.I0(mem_reg[2]),
        .I1(add_ln39_fu_215_p2[2]),
        .O(DIBDI[10]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_33
       (.I0(mem_reg[2]),
        .I1(add_ln39_fu_215_p2[1]),
        .O(DIBDI[9]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_34
       (.I0(mem_reg[2]),
        .I1(add_ln39_fu_215_p2[0]),
        .O(DIBDI[8]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_35
       (.I0(mem_reg[2]),
        .I1(add_ln39_fu_215_p2[15]),
        .O(DIBDI[7]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_36
       (.I0(mem_reg[2]),
        .I1(add_ln39_fu_215_p2[14]),
        .O(DIBDI[6]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_37
       (.I0(mem_reg[2]),
        .I1(add_ln39_fu_215_p2[13]),
        .O(DIBDI[5]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_38
       (.I0(mem_reg[2]),
        .I1(add_ln39_fu_215_p2[12]),
        .O(DIBDI[4]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_39
       (.I0(mem_reg[2]),
        .I1(add_ln39_fu_215_p2[11]),
        .O(DIBDI[3]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_40
       (.I0(mem_reg[2]),
        .I1(add_ln39_fu_215_p2[10]),
        .O(DIBDI[2]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_41
       (.I0(mem_reg[2]),
        .I1(add_ln39_fu_215_p2[9]),
        .O(DIBDI[1]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_42
       (.I0(mem_reg[2]),
        .I1(add_ln39_fu_215_p2[8]),
        .O(DIBDI[0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_i_52
       (.CI(mem_reg_i_53_n_3),
        .CO({NLW_mem_reg_i_52_CO_UNCONNECTED[3],mem_reg_i_52_n_4,mem_reg_i_52_n_5,mem_reg_i_52_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,tmp_fu_54[14:12]}),
        .O(add_ln39_fu_215_p2[15:12]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_i_53
       (.CI(mem_reg_i_54_n_3),
        .CO({mem_reg_i_53_n_3,mem_reg_i_53_n_4,mem_reg_i_53_n_5,mem_reg_i_53_n_6}),
        .CYINIT(1'b0),
        .DI(tmp_fu_54[11:8]),
        .O(add_ln39_fu_215_p2[11:8]),
        .S(mem_reg_3));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_i_54
       (.CI(mem_reg_i_55_n_3),
        .CO({mem_reg_i_54_n_3,mem_reg_i_54_n_4,mem_reg_i_54_n_5,mem_reg_i_54_n_6}),
        .CYINIT(1'b0),
        .DI(tmp_fu_54[7:4]),
        .O(add_ln39_fu_215_p2[7:4]),
        .S(mem_reg_2));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_i_55
       (.CI(1'b0),
        .CO({mem_reg_i_55_n_3,mem_reg_i_55_n_4,mem_reg_i_55_n_5,mem_reg_i_55_n_6}),
        .CYINIT(1'b0),
        .DI(tmp_fu_54[3:0]),
        .O(add_ln39_fu_215_p2[3:0]),
        .S(mem_reg_1));
  FDRE \tmp_fu_54_reg[0] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_18),
        .Q(tmp_fu_54[0]),
        .R(ap_loop_init));
  FDRE \tmp_fu_54_reg[10] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_8),
        .Q(tmp_fu_54[10]),
        .R(ap_loop_init));
  FDRE \tmp_fu_54_reg[11] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_7),
        .Q(tmp_fu_54[11]),
        .R(ap_loop_init));
  FDRE \tmp_fu_54_reg[12] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_6),
        .Q(tmp_fu_54[12]),
        .R(ap_loop_init));
  FDRE \tmp_fu_54_reg[13] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_5),
        .Q(tmp_fu_54[13]),
        .R(ap_loop_init));
  FDRE \tmp_fu_54_reg[14] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_4),
        .Q(tmp_fu_54[14]),
        .R(ap_loop_init));
  FDRE \tmp_fu_54_reg[15] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_3),
        .Q(tmp_fu_54[15]),
        .R(ap_loop_init));
  FDRE \tmp_fu_54_reg[1] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_17),
        .Q(tmp_fu_54[1]),
        .R(ap_loop_init));
  FDRE \tmp_fu_54_reg[2] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_16),
        .Q(tmp_fu_54[2]),
        .R(ap_loop_init));
  FDRE \tmp_fu_54_reg[3] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_15),
        .Q(tmp_fu_54[3]),
        .R(ap_loop_init));
  FDRE \tmp_fu_54_reg[4] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_14),
        .Q(tmp_fu_54[4]),
        .R(ap_loop_init));
  FDRE \tmp_fu_54_reg[5] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_13),
        .Q(tmp_fu_54[5]),
        .R(ap_loop_init));
  FDRE \tmp_fu_54_reg[6] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_12),
        .Q(tmp_fu_54[6]),
        .R(ap_loop_init));
  FDRE \tmp_fu_54_reg[7] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_11),
        .Q(tmp_fu_54[7]),
        .R(ap_loop_init));
  FDRE \tmp_fu_54_reg[8] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_10),
        .Q(tmp_fu_54[8]),
        .R(ap_loop_init));
  FDRE \tmp_fu_54_reg[9] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_9),
        .Q(tmp_fu_54[9]),
        .R(ap_loop_init));
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
