// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Mar  3 13:57:24 2022
// Host        : DESKTOP-IFL7HB3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_nnlayer_0_1_sim_netlist.v
// Design      : design_1_nnlayer_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_nnlayer_0_1,nnlayer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "nnlayer,Vivado 2021.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  (* ap_ST_fsm_state1 = "8'b00000001" *) 
  (* ap_ST_fsm_state2 = "8'b00000010" *) 
  (* ap_ST_fsm_state3 = "8'b00000100" *) 
  (* ap_ST_fsm_state4 = "8'b00001000" *) 
  (* ap_ST_fsm_state5 = "8'b00010000" *) 
  (* ap_ST_fsm_state6 = "8'b00100000" *) 
  (* ap_ST_fsm_state7 = "8'b01000000" *) 
  (* ap_ST_fsm_state8 = "8'b10000000" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer inst
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
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ap_ST_fsm_state1 = "8'b00000001" *) 
(* ap_ST_fsm_state2 = "8'b00000010" *) (* ap_ST_fsm_state3 = "8'b00000100" *) (* ap_ST_fsm_state4 = "8'b00001000" *) 
(* ap_ST_fsm_state5 = "8'b00010000" *) (* ap_ST_fsm_state6 = "8'b00100000" *) (* ap_ST_fsm_state7 = "8'b01000000" *) 
(* ap_ST_fsm_state8 = "8'b10000000" *) (* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer
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
  wire [7:0]activation_read_reg_243;
  wire ap_CS_fsm_state1;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire ap_CS_fsm_state6;
  wire ap_CS_fsm_state7;
  wire ap_CS_fsm_state8;
  wire [7:1]ap_NS_fsm;
  wire ap_NS_fsm14_out;
  wire ap_NS_fsm15_out;
  wire ap_clk;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [15:0]bias_load_reg_312;
  wire [15:0]bias_q0;
  wire \cmp45_reg_266_reg_n_3_[0] ;
  wire control_s_axi_U_n_5;
  wire control_s_axi_U_n_59;
  wire control_s_axi_U_n_6;
  wire control_s_axi_U_n_7;
  wire [15:0]conv1514_fu_60;
  wire [7:0]empty_18_reg_297;
  wire \empty_18_reg_297[7]_i_3_n_3 ;
  wire [14:0]empty_reg_278;
  wire empty_reg_2780;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg0;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_n_15;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_n_16;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_n_17;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_n_18;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_n_19;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_n_3;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_n_5;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_n_6;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg;
  wire [6:1]grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_input_r_address0;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_n_42;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_n_43;
  wire [14:0]grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0;
  wire icmp_ln31_fu_176_p22_in;
  wire icmp_ln41_fu_196_p2;
  wire icmp_ln41_reg_293;
  wire \icmp_ln41_reg_293[0]_i_1_n_3 ;
  wire [15:0]input_r_q0;
  wire interrupt;
  wire [15:0]numOfInNeurons;
  wire [15:0]numOfInNeurons_read_reg_254;
  wire [15:0]numOfOutNeurons;
  wire \numOfOutNeurons_read_reg_248_reg_n_3_[0] ;
  wire \numOfOutNeurons_read_reg_248_reg_n_3_[10] ;
  wire \numOfOutNeurons_read_reg_248_reg_n_3_[11] ;
  wire \numOfOutNeurons_read_reg_248_reg_n_3_[12] ;
  wire \numOfOutNeurons_read_reg_248_reg_n_3_[13] ;
  wire \numOfOutNeurons_read_reg_248_reg_n_3_[14] ;
  wire \numOfOutNeurons_read_reg_248_reg_n_3_[15] ;
  wire \numOfOutNeurons_read_reg_248_reg_n_3_[1] ;
  wire \numOfOutNeurons_read_reg_248_reg_n_3_[2] ;
  wire \numOfOutNeurons_read_reg_248_reg_n_3_[3] ;
  wire \numOfOutNeurons_read_reg_248_reg_n_3_[4] ;
  wire \numOfOutNeurons_read_reg_248_reg_n_3_[5] ;
  wire \numOfOutNeurons_read_reg_248_reg_n_3_[6] ;
  wire \numOfOutNeurons_read_reg_248_reg_n_3_[7] ;
  wire \numOfOutNeurons_read_reg_248_reg_n_3_[8] ;
  wire \numOfOutNeurons_read_reg_248_reg_n_3_[9] ;
  wire [15:0]outNeurons_2_fu_181_p2;
  wire [15:0]outNeurons_2_reg_273;
  wire \outNeurons_2_reg_273_reg[12]_i_1_n_3 ;
  wire \outNeurons_2_reg_273_reg[12]_i_1_n_4 ;
  wire \outNeurons_2_reg_273_reg[12]_i_1_n_5 ;
  wire \outNeurons_2_reg_273_reg[12]_i_1_n_6 ;
  wire \outNeurons_2_reg_273_reg[15]_i_1_n_5 ;
  wire \outNeurons_2_reg_273_reg[15]_i_1_n_6 ;
  wire \outNeurons_2_reg_273_reg[4]_i_1_n_3 ;
  wire \outNeurons_2_reg_273_reg[4]_i_1_n_4 ;
  wire \outNeurons_2_reg_273_reg[4]_i_1_n_5 ;
  wire \outNeurons_2_reg_273_reg[4]_i_1_n_6 ;
  wire \outNeurons_2_reg_273_reg[8]_i_1_n_3 ;
  wire \outNeurons_2_reg_273_reg[8]_i_1_n_4 ;
  wire \outNeurons_2_reg_273_reg[8]_i_1_n_5 ;
  wire \outNeurons_2_reg_273_reg[8]_i_1_n_6 ;
  wire \outNeurons_fu_78_reg_n_3_[0] ;
  wire \outNeurons_fu_78_reg_n_3_[10] ;
  wire \outNeurons_fu_78_reg_n_3_[11] ;
  wire \outNeurons_fu_78_reg_n_3_[12] ;
  wire \outNeurons_fu_78_reg_n_3_[13] ;
  wire \outNeurons_fu_78_reg_n_3_[14] ;
  wire \outNeurons_fu_78_reg_n_3_[15] ;
  wire \outNeurons_fu_78_reg_n_3_[1] ;
  wire \outNeurons_fu_78_reg_n_3_[2] ;
  wire \outNeurons_fu_78_reg_n_3_[3] ;
  wire \outNeurons_fu_78_reg_n_3_[4] ;
  wire \outNeurons_fu_78_reg_n_3_[5] ;
  wire \outNeurons_fu_78_reg_n_3_[6] ;
  wire \outNeurons_fu_78_reg_n_3_[7] ;
  wire \outNeurons_fu_78_reg_n_3_[8] ;
  wire \outNeurons_fu_78_reg_n_3_[9] ;
  wire [7:0]output_r_addr_reg_288;
  wire [7:1]output_r_address0;
  wire output_r_ce0;
  wire [15:0]output_r_load_reg_302;
  wire [15:0]output_r_q0;
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
  wire \weightIndexAdded_fu_82[0]_i_2_n_3 ;
  wire \weightIndexAdded_fu_82[0]_i_3_n_3 ;
  wire \weightIndexAdded_fu_82[0]_i_4_n_3 ;
  wire \weightIndexAdded_fu_82[0]_i_5_n_3 ;
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
  wire \weightIndexAdded_fu_82_reg[0]_i_1_n_10 ;
  wire \weightIndexAdded_fu_82_reg[0]_i_1_n_3 ;
  wire \weightIndexAdded_fu_82_reg[0]_i_1_n_4 ;
  wire \weightIndexAdded_fu_82_reg[0]_i_1_n_5 ;
  wire \weightIndexAdded_fu_82_reg[0]_i_1_n_6 ;
  wire \weightIndexAdded_fu_82_reg[0]_i_1_n_7 ;
  wire \weightIndexAdded_fu_82_reg[0]_i_1_n_8 ;
  wire \weightIndexAdded_fu_82_reg[0]_i_1_n_9 ;
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
  wire [3:2]\NLW_outNeurons_2_reg_273_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_outNeurons_2_reg_273_reg[15]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_weightIndexAdded_fu_82_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_weightIndexAdded_fu_82_reg[12]_i_1_O_UNCONNECTED ;

  assign ap_local_block = \<const0> ;
  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE \activation_read_reg_243_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(activation[0]),
        .Q(activation_read_reg_243[0]),
        .R(1'b0));
  FDRE \activation_read_reg_243_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(activation[1]),
        .Q(activation_read_reg_243[1]),
        .R(1'b0));
  FDRE \activation_read_reg_243_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(activation[2]),
        .Q(activation_read_reg_243[2]),
        .R(1'b0));
  FDRE \activation_read_reg_243_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(activation[3]),
        .Q(activation_read_reg_243[3]),
        .R(1'b0));
  FDRE \activation_read_reg_243_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(activation[4]),
        .Q(activation_read_reg_243[4]),
        .R(1'b0));
  FDRE \activation_read_reg_243_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(activation[5]),
        .Q(activation_read_reg_243[5]),
        .R(1'b0));
  FDRE \activation_read_reg_243_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(activation[6]),
        .Q(activation_read_reg_243[6]),
        .R(1'b0));
  FDRE \activation_read_reg_243_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(activation[7]),
        .Q(activation_read_reg_243[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ap_CS_fsm[7]_i_2 
       (.I0(icmp_ln31_fu_176_p22_in),
        .I1(ap_CS_fsm_state2),
        .O(ap_NS_fsm14_out));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_n_5),
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
        .D(ap_CS_fsm_state5),
        .Q(ap_CS_fsm_state6),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state6),
        .Q(ap_CS_fsm_state7),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[7]),
        .Q(ap_CS_fsm_state8),
        .R(ap_rst_n_inv));
  FDRE \bias_load_reg_312_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[0]),
        .Q(bias_load_reg_312[0]),
        .R(1'b0));
  FDRE \bias_load_reg_312_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[10]),
        .Q(bias_load_reg_312[10]),
        .R(1'b0));
  FDRE \bias_load_reg_312_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[11]),
        .Q(bias_load_reg_312[11]),
        .R(1'b0));
  FDRE \bias_load_reg_312_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[12]),
        .Q(bias_load_reg_312[12]),
        .R(1'b0));
  FDRE \bias_load_reg_312_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[13]),
        .Q(bias_load_reg_312[13]),
        .R(1'b0));
  FDRE \bias_load_reg_312_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[14]),
        .Q(bias_load_reg_312[14]),
        .R(1'b0));
  FDRE \bias_load_reg_312_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[15]),
        .Q(bias_load_reg_312[15]),
        .R(1'b0));
  FDRE \bias_load_reg_312_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[1]),
        .Q(bias_load_reg_312[1]),
        .R(1'b0));
  FDRE \bias_load_reg_312_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[2]),
        .Q(bias_load_reg_312[2]),
        .R(1'b0));
  FDRE \bias_load_reg_312_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[3]),
        .Q(bias_load_reg_312[3]),
        .R(1'b0));
  FDRE \bias_load_reg_312_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[4]),
        .Q(bias_load_reg_312[4]),
        .R(1'b0));
  FDRE \bias_load_reg_312_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[5]),
        .Q(bias_load_reg_312[5]),
        .R(1'b0));
  FDRE \bias_load_reg_312_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[6]),
        .Q(bias_load_reg_312[6]),
        .R(1'b0));
  FDRE \bias_load_reg_312_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[7]),
        .Q(bias_load_reg_312[7]),
        .R(1'b0));
  FDRE \bias_load_reg_312_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[8]),
        .Q(bias_load_reg_312[8]),
        .R(1'b0));
  FDRE \bias_load_reg_312_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[9]),
        .Q(bias_load_reg_312[9]),
        .R(1'b0));
  FDRE \cmp45_reg_266_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(control_s_axi_U_n_59),
        .Q(\cmp45_reg_266_reg_n_3_[0] ),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_control_s_axi control_s_axi_U
       (.A(input_r_q0),
        .ADDRBWRADDR(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_input_r_address0),
        .B(weights_q0),
        .CO(icmp_ln31_fu_176_p22_in),
        .D(ap_NS_fsm[2:1]),
        .Q({ap_CS_fsm_state7,ap_CS_fsm_state6,ap_CS_fsm_state5,ap_CS_fsm_state2,ap_CS_fsm_state1}),
        .\ap_CS_fsm_reg[0] (control_s_axi_U_n_59),
        .\ap_CS_fsm_reg[2] (\cmp45_reg_266_reg_n_3_[0] ),
        .\ap_CS_fsm_reg[6] (control_s_axi_U_n_7),
        .ap_NS_fsm15_out(ap_NS_fsm15_out),
        .ap_clk(ap_clk),
        .ap_idle(ap_idle),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .empty_reg_2780(empty_reg_2780),
        .grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0),
        .\int_activation_reg[7]_0 (activation),
        .int_ap_start_reg_0(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_n_6),
        .\int_input_r_shift0_reg[0]_0 (control_s_axi_U_n_5),
        .\int_input_r_shift0_reg[0]_1 (grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_n_43),
        .\int_numOfInNeurons_reg[15]_0 (numOfInNeurons),
        .\int_numOfOutNeurons_reg[15]_0 (numOfOutNeurons),
        .\int_output_r_shift0_reg[0]_0 (control_s_axi_U_n_6),
        .\int_output_r_shift0_reg[0]_1 (grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_n_18),
        .interrupt(interrupt),
        .mem_reg(output_r_q0),
        .mem_reg_0(bias_q0),
        .mem_reg_1(output_r_address0),
        .mem_reg_2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_n_15),
        .mem_reg_3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_n_16),
        .mem_reg_4(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_n_17),
        .mem_reg_5(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_n_3),
        .mem_reg_6(conv1514_fu_60),
        .mem_reg_i_51({\outNeurons_fu_78_reg_n_3_[15] ,\outNeurons_fu_78_reg_n_3_[14] ,\outNeurons_fu_78_reg_n_3_[13] ,\outNeurons_fu_78_reg_n_3_[12] ,\outNeurons_fu_78_reg_n_3_[11] ,\outNeurons_fu_78_reg_n_3_[10] ,\outNeurons_fu_78_reg_n_3_[9] ,\outNeurons_fu_78_reg_n_3_[8] ,\outNeurons_fu_78_reg_n_3_[7] ,\outNeurons_fu_78_reg_n_3_[6] ,\outNeurons_fu_78_reg_n_3_[5] ,\outNeurons_fu_78_reg_n_3_[4] ,\outNeurons_fu_78_reg_n_3_[3] ,\outNeurons_fu_78_reg_n_3_[2] ,\outNeurons_fu_78_reg_n_3_[1] ,\outNeurons_fu_78_reg_n_3_[0] }),
        .mem_reg_i_51_0({\numOfOutNeurons_read_reg_248_reg_n_3_[15] ,\numOfOutNeurons_read_reg_248_reg_n_3_[14] ,\numOfOutNeurons_read_reg_248_reg_n_3_[13] ,\numOfOutNeurons_read_reg_248_reg_n_3_[12] ,\numOfOutNeurons_read_reg_248_reg_n_3_[11] ,\numOfOutNeurons_read_reg_248_reg_n_3_[10] ,\numOfOutNeurons_read_reg_248_reg_n_3_[9] ,\numOfOutNeurons_read_reg_248_reg_n_3_[8] ,\numOfOutNeurons_read_reg_248_reg_n_3_[7] ,\numOfOutNeurons_read_reg_248_reg_n_3_[6] ,\numOfOutNeurons_read_reg_248_reg_n_3_[5] ,\numOfOutNeurons_read_reg_248_reg_n_3_[4] ,\numOfOutNeurons_read_reg_248_reg_n_3_[3] ,\numOfOutNeurons_read_reg_248_reg_n_3_[2] ,\numOfOutNeurons_read_reg_248_reg_n_3_[1] ,\numOfOutNeurons_read_reg_248_reg_n_3_[0] }),
        .mem_reg_i_63(bias_load_reg_312),
        .output_r_addr_reg_288(output_r_addr_reg_288),
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
  LUT3 #(
    .INIT(8'h80)) 
    \empty_18_reg_297[7]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(icmp_ln31_fu_176_p22_in),
        .I2(icmp_ln41_fu_196_p2),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg0));
  LUT5 #(
    .INIT(32'h00000004)) 
    \empty_18_reg_297[7]_i_2 
       (.I0(activation_read_reg_243[2]),
        .I1(activation_read_reg_243[0]),
        .I2(activation_read_reg_243[5]),
        .I3(activation_read_reg_243[6]),
        .I4(\empty_18_reg_297[7]_i_3_n_3 ),
        .O(icmp_ln41_fu_196_p2));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \empty_18_reg_297[7]_i_3 
       (.I0(activation_read_reg_243[3]),
        .I1(activation_read_reg_243[1]),
        .I2(activation_read_reg_243[7]),
        .I3(activation_read_reg_243[4]),
        .O(\empty_18_reg_297[7]_i_3_n_3 ));
  FDRE \empty_18_reg_297_reg[0] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg0),
        .D(\numOfOutNeurons_read_reg_248_reg_n_3_[0] ),
        .Q(empty_18_reg_297[0]),
        .R(1'b0));
  FDRE \empty_18_reg_297_reg[1] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg0),
        .D(\numOfOutNeurons_read_reg_248_reg_n_3_[1] ),
        .Q(empty_18_reg_297[1]),
        .R(1'b0));
  FDRE \empty_18_reg_297_reg[2] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg0),
        .D(\numOfOutNeurons_read_reg_248_reg_n_3_[2] ),
        .Q(empty_18_reg_297[2]),
        .R(1'b0));
  FDRE \empty_18_reg_297_reg[3] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg0),
        .D(\numOfOutNeurons_read_reg_248_reg_n_3_[3] ),
        .Q(empty_18_reg_297[3]),
        .R(1'b0));
  FDRE \empty_18_reg_297_reg[4] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg0),
        .D(\numOfOutNeurons_read_reg_248_reg_n_3_[4] ),
        .Q(empty_18_reg_297[4]),
        .R(1'b0));
  FDRE \empty_18_reg_297_reg[5] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg0),
        .D(\numOfOutNeurons_read_reg_248_reg_n_3_[5] ),
        .Q(empty_18_reg_297[5]),
        .R(1'b0));
  FDRE \empty_18_reg_297_reg[6] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg0),
        .D(\numOfOutNeurons_read_reg_248_reg_n_3_[6] ),
        .Q(empty_18_reg_297[6]),
        .R(1'b0));
  FDRE \empty_18_reg_297_reg[7] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg0),
        .D(\numOfOutNeurons_read_reg_248_reg_n_3_[7] ),
        .Q(empty_18_reg_297[7]),
        .R(1'b0));
  FDRE \empty_reg_278_reg[0] 
       (.C(ap_clk),
        .CE(empty_reg_2780),
        .D(weightIndexAdded_fu_82_reg[0]),
        .Q(empty_reg_278[0]),
        .R(1'b0));
  FDRE \empty_reg_278_reg[10] 
       (.C(ap_clk),
        .CE(empty_reg_2780),
        .D(weightIndexAdded_fu_82_reg[10]),
        .Q(empty_reg_278[10]),
        .R(1'b0));
  FDRE \empty_reg_278_reg[11] 
       (.C(ap_clk),
        .CE(empty_reg_2780),
        .D(weightIndexAdded_fu_82_reg[11]),
        .Q(empty_reg_278[11]),
        .R(1'b0));
  FDRE \empty_reg_278_reg[12] 
       (.C(ap_clk),
        .CE(empty_reg_2780),
        .D(weightIndexAdded_fu_82_reg[12]),
        .Q(empty_reg_278[12]),
        .R(1'b0));
  FDRE \empty_reg_278_reg[13] 
       (.C(ap_clk),
        .CE(empty_reg_2780),
        .D(weightIndexAdded_fu_82_reg[13]),
        .Q(empty_reg_278[13]),
        .R(1'b0));
  FDRE \empty_reg_278_reg[14] 
       (.C(ap_clk),
        .CE(empty_reg_2780),
        .D(weightIndexAdded_fu_82_reg[14]),
        .Q(empty_reg_278[14]),
        .R(1'b0));
  FDRE \empty_reg_278_reg[1] 
       (.C(ap_clk),
        .CE(empty_reg_2780),
        .D(weightIndexAdded_fu_82_reg[1]),
        .Q(empty_reg_278[1]),
        .R(1'b0));
  FDRE \empty_reg_278_reg[2] 
       (.C(ap_clk),
        .CE(empty_reg_2780),
        .D(weightIndexAdded_fu_82_reg[2]),
        .Q(empty_reg_278[2]),
        .R(1'b0));
  FDRE \empty_reg_278_reg[3] 
       (.C(ap_clk),
        .CE(empty_reg_2780),
        .D(weightIndexAdded_fu_82_reg[3]),
        .Q(empty_reg_278[3]),
        .R(1'b0));
  FDRE \empty_reg_278_reg[4] 
       (.C(ap_clk),
        .CE(empty_reg_2780),
        .D(weightIndexAdded_fu_82_reg[4]),
        .Q(empty_reg_278[4]),
        .R(1'b0));
  FDRE \empty_reg_278_reg[5] 
       (.C(ap_clk),
        .CE(empty_reg_2780),
        .D(weightIndexAdded_fu_82_reg[5]),
        .Q(empty_reg_278[5]),
        .R(1'b0));
  FDRE \empty_reg_278_reg[6] 
       (.C(ap_clk),
        .CE(empty_reg_2780),
        .D(weightIndexAdded_fu_82_reg[6]),
        .Q(empty_reg_278[6]),
        .R(1'b0));
  FDRE \empty_reg_278_reg[7] 
       (.C(ap_clk),
        .CE(empty_reg_2780),
        .D(weightIndexAdded_fu_82_reg[7]),
        .Q(empty_reg_278[7]),
        .R(1'b0));
  FDRE \empty_reg_278_reg[8] 
       (.C(ap_clk),
        .CE(empty_reg_2780),
        .D(weightIndexAdded_fu_82_reg[8]),
        .Q(empty_reg_278[8]),
        .R(1'b0));
  FDRE \empty_reg_278_reg[9] 
       (.C(ap_clk),
        .CE(empty_reg_2780),
        .D(weightIndexAdded_fu_82_reg[9]),
        .Q(empty_reg_278[9]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_nnlayer_Pipeline_VITIS_LOOP_10_1 grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134
       (.CO(icmp_ln31_fu_176_p22_in),
        .D({ap_NS_fsm[7],grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_n_5}),
        .Q({ap_CS_fsm_state8,ap_CS_fsm_state2}),
        .\ap_CS_fsm_reg[1]_0 (grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_n_19),
        .\ap_CS_fsm_reg[7] (grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_n_6),
        .\ap_CS_fsm_reg[7]_0 (grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_n_17),
        .ap_NS_fsm14_out(ap_NS_fsm14_out),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg_reg_0(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_n_3),
        .ap_idle(ap_idle),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .empty_reg_2780(empty_reg_2780),
        .grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .icmp_ln41_fu_196_p2(icmp_ln41_fu_196_p2),
        .icmp_ln41_reg_293(icmp_ln41_reg_293),
        .int_ap_start_i_3(empty_18_reg_297),
        .\int_output_r_shift0_reg[0] (control_s_axi_U_n_6),
        .mem_reg(control_s_axi_U_n_7),
        .mem_reg_0(\cmp45_reg_266_reg_n_3_[0] ),
        .mem_reg_1({\outNeurons_fu_78_reg_n_3_[7] ,\outNeurons_fu_78_reg_n_3_[6] ,\outNeurons_fu_78_reg_n_3_[5] ,\outNeurons_fu_78_reg_n_3_[4] ,\outNeurons_fu_78_reg_n_3_[3] ,\outNeurons_fu_78_reg_n_3_[2] ,\outNeurons_fu_78_reg_n_3_[1] ,\outNeurons_fu_78_reg_n_3_[0] }),
        .\outNeurons_fu_78_reg[0] (grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_n_15),
        .\outNeurons_fu_78_reg[7] (output_r_address0),
        .\output_r_addr_reg_119_reg[0]_0 (grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_n_16),
        .output_r_addr_reg_288(output_r_addr_reg_288),
        .\output_r_addr_reg_288_reg[0] (grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_n_18),
        .output_r_ce0(output_r_ce0));
  FDRE #(
    .INIT(1'b0)) 
    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_n_19),
        .Q(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .R(ap_rst_n_inv));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_nnlayer_Pipeline_VITIS_LOOP_33_2 grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141
       (.A(input_r_q0),
        .ADDRBWRADDR(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_input_r_address0),
        .B(weights_q0),
        .D(ap_NS_fsm[4:3]),
        .Q({ap_CS_fsm_state4,ap_CS_fsm_state3}),
        .\ap_CS_fsm_reg[2] (grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_n_42),
        .\ap_CS_fsm_reg[4] (\cmp45_reg_266_reg_n_3_[0] ),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\conv1514_fu_60_reg[15]_0 (conv1514_fu_60),
        .\conv1514_fu_60_reg[15]_1 (output_r_load_reg_302),
        .empty_reg_2780(empty_reg_2780),
        .grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0),
        .icmp_ln33_fu_136_p2_carry__0_0(numOfInNeurons_read_reg_254),
        .\inNeurons_fu_56_reg[0]_0 (grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_n_43),
        .\int_input_r_shift0_reg[0] (control_s_axi_U_n_5),
        .mem_reg_0_0(empty_reg_278));
  FDRE #(
    .INIT(1'b0)) 
    grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_n_42),
        .Q(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \icmp_ln41_reg_293[0]_i_1 
       (.I0(icmp_ln41_fu_196_p2),
        .I1(icmp_ln31_fu_176_p22_in),
        .I2(ap_CS_fsm_state2),
        .I3(icmp_ln41_reg_293),
        .O(\icmp_ln41_reg_293[0]_i_1_n_3 ));
  FDRE \icmp_ln41_reg_293_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln41_reg_293[0]_i_1_n_3 ),
        .Q(icmp_ln41_reg_293),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_254_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[0]),
        .Q(numOfInNeurons_read_reg_254[0]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_254_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[10]),
        .Q(numOfInNeurons_read_reg_254[10]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_254_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[11]),
        .Q(numOfInNeurons_read_reg_254[11]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_254_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[12]),
        .Q(numOfInNeurons_read_reg_254[12]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_254_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[13]),
        .Q(numOfInNeurons_read_reg_254[13]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_254_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[14]),
        .Q(numOfInNeurons_read_reg_254[14]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_254_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[15]),
        .Q(numOfInNeurons_read_reg_254[15]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_254_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[1]),
        .Q(numOfInNeurons_read_reg_254[1]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_254_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[2]),
        .Q(numOfInNeurons_read_reg_254[2]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_254_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[3]),
        .Q(numOfInNeurons_read_reg_254[3]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_254_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[4]),
        .Q(numOfInNeurons_read_reg_254[4]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_254_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[5]),
        .Q(numOfInNeurons_read_reg_254[5]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_254_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[6]),
        .Q(numOfInNeurons_read_reg_254[6]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_254_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[7]),
        .Q(numOfInNeurons_read_reg_254[7]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_254_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[8]),
        .Q(numOfInNeurons_read_reg_254[8]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_254_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[9]),
        .Q(numOfInNeurons_read_reg_254[9]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_248_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[0]),
        .Q(\numOfOutNeurons_read_reg_248_reg_n_3_[0] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_248_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[10]),
        .Q(\numOfOutNeurons_read_reg_248_reg_n_3_[10] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_248_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[11]),
        .Q(\numOfOutNeurons_read_reg_248_reg_n_3_[11] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_248_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[12]),
        .Q(\numOfOutNeurons_read_reg_248_reg_n_3_[12] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_248_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[13]),
        .Q(\numOfOutNeurons_read_reg_248_reg_n_3_[13] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_248_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[14]),
        .Q(\numOfOutNeurons_read_reg_248_reg_n_3_[14] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_248_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[15]),
        .Q(\numOfOutNeurons_read_reg_248_reg_n_3_[15] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_248_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[1]),
        .Q(\numOfOutNeurons_read_reg_248_reg_n_3_[1] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_248_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[2]),
        .Q(\numOfOutNeurons_read_reg_248_reg_n_3_[2] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_248_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[3]),
        .Q(\numOfOutNeurons_read_reg_248_reg_n_3_[3] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_248_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[4]),
        .Q(\numOfOutNeurons_read_reg_248_reg_n_3_[4] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_248_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[5]),
        .Q(\numOfOutNeurons_read_reg_248_reg_n_3_[5] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_248_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[6]),
        .Q(\numOfOutNeurons_read_reg_248_reg_n_3_[6] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_248_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[7]),
        .Q(\numOfOutNeurons_read_reg_248_reg_n_3_[7] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_248_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[8]),
        .Q(\numOfOutNeurons_read_reg_248_reg_n_3_[8] ),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_248_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[9]),
        .Q(\numOfOutNeurons_read_reg_248_reg_n_3_[9] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \outNeurons_2_reg_273[0]_i_1 
       (.I0(\outNeurons_fu_78_reg_n_3_[0] ),
        .O(outNeurons_2_fu_181_p2[0]));
  FDRE \outNeurons_2_reg_273_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(outNeurons_2_fu_181_p2[0]),
        .Q(outNeurons_2_reg_273[0]),
        .R(1'b0));
  FDRE \outNeurons_2_reg_273_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(outNeurons_2_fu_181_p2[10]),
        .Q(outNeurons_2_reg_273[10]),
        .R(1'b0));
  FDRE \outNeurons_2_reg_273_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(outNeurons_2_fu_181_p2[11]),
        .Q(outNeurons_2_reg_273[11]),
        .R(1'b0));
  FDRE \outNeurons_2_reg_273_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(outNeurons_2_fu_181_p2[12]),
        .Q(outNeurons_2_reg_273[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \outNeurons_2_reg_273_reg[12]_i_1 
       (.CI(\outNeurons_2_reg_273_reg[8]_i_1_n_3 ),
        .CO({\outNeurons_2_reg_273_reg[12]_i_1_n_3 ,\outNeurons_2_reg_273_reg[12]_i_1_n_4 ,\outNeurons_2_reg_273_reg[12]_i_1_n_5 ,\outNeurons_2_reg_273_reg[12]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(outNeurons_2_fu_181_p2[12:9]),
        .S({\outNeurons_fu_78_reg_n_3_[12] ,\outNeurons_fu_78_reg_n_3_[11] ,\outNeurons_fu_78_reg_n_3_[10] ,\outNeurons_fu_78_reg_n_3_[9] }));
  FDRE \outNeurons_2_reg_273_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(outNeurons_2_fu_181_p2[13]),
        .Q(outNeurons_2_reg_273[13]),
        .R(1'b0));
  FDRE \outNeurons_2_reg_273_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(outNeurons_2_fu_181_p2[14]),
        .Q(outNeurons_2_reg_273[14]),
        .R(1'b0));
  FDRE \outNeurons_2_reg_273_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(outNeurons_2_fu_181_p2[15]),
        .Q(outNeurons_2_reg_273[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \outNeurons_2_reg_273_reg[15]_i_1 
       (.CI(\outNeurons_2_reg_273_reg[12]_i_1_n_3 ),
        .CO({\NLW_outNeurons_2_reg_273_reg[15]_i_1_CO_UNCONNECTED [3:2],\outNeurons_2_reg_273_reg[15]_i_1_n_5 ,\outNeurons_2_reg_273_reg[15]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_outNeurons_2_reg_273_reg[15]_i_1_O_UNCONNECTED [3],outNeurons_2_fu_181_p2[15:13]}),
        .S({1'b0,\outNeurons_fu_78_reg_n_3_[15] ,\outNeurons_fu_78_reg_n_3_[14] ,\outNeurons_fu_78_reg_n_3_[13] }));
  FDRE \outNeurons_2_reg_273_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(outNeurons_2_fu_181_p2[1]),
        .Q(outNeurons_2_reg_273[1]),
        .R(1'b0));
  FDRE \outNeurons_2_reg_273_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(outNeurons_2_fu_181_p2[2]),
        .Q(outNeurons_2_reg_273[2]),
        .R(1'b0));
  FDRE \outNeurons_2_reg_273_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(outNeurons_2_fu_181_p2[3]),
        .Q(outNeurons_2_reg_273[3]),
        .R(1'b0));
  FDRE \outNeurons_2_reg_273_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(outNeurons_2_fu_181_p2[4]),
        .Q(outNeurons_2_reg_273[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \outNeurons_2_reg_273_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\outNeurons_2_reg_273_reg[4]_i_1_n_3 ,\outNeurons_2_reg_273_reg[4]_i_1_n_4 ,\outNeurons_2_reg_273_reg[4]_i_1_n_5 ,\outNeurons_2_reg_273_reg[4]_i_1_n_6 }),
        .CYINIT(\outNeurons_fu_78_reg_n_3_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(outNeurons_2_fu_181_p2[4:1]),
        .S({\outNeurons_fu_78_reg_n_3_[4] ,\outNeurons_fu_78_reg_n_3_[3] ,\outNeurons_fu_78_reg_n_3_[2] ,\outNeurons_fu_78_reg_n_3_[1] }));
  FDRE \outNeurons_2_reg_273_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(outNeurons_2_fu_181_p2[5]),
        .Q(outNeurons_2_reg_273[5]),
        .R(1'b0));
  FDRE \outNeurons_2_reg_273_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(outNeurons_2_fu_181_p2[6]),
        .Q(outNeurons_2_reg_273[6]),
        .R(1'b0));
  FDRE \outNeurons_2_reg_273_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(outNeurons_2_fu_181_p2[7]),
        .Q(outNeurons_2_reg_273[7]),
        .R(1'b0));
  FDRE \outNeurons_2_reg_273_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(outNeurons_2_fu_181_p2[8]),
        .Q(outNeurons_2_reg_273[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \outNeurons_2_reg_273_reg[8]_i_1 
       (.CI(\outNeurons_2_reg_273_reg[4]_i_1_n_3 ),
        .CO({\outNeurons_2_reg_273_reg[8]_i_1_n_3 ,\outNeurons_2_reg_273_reg[8]_i_1_n_4 ,\outNeurons_2_reg_273_reg[8]_i_1_n_5 ,\outNeurons_2_reg_273_reg[8]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(outNeurons_2_fu_181_p2[8:5]),
        .S({\outNeurons_fu_78_reg_n_3_[8] ,\outNeurons_fu_78_reg_n_3_[7] ,\outNeurons_fu_78_reg_n_3_[6] ,\outNeurons_fu_78_reg_n_3_[5] }));
  FDRE \outNeurons_2_reg_273_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(outNeurons_2_fu_181_p2[9]),
        .Q(outNeurons_2_reg_273[9]),
        .R(1'b0));
  FDRE \outNeurons_fu_78_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(outNeurons_2_reg_273[0]),
        .Q(\outNeurons_fu_78_reg_n_3_[0] ),
        .R(ap_NS_fsm15_out));
  FDRE \outNeurons_fu_78_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(outNeurons_2_reg_273[10]),
        .Q(\outNeurons_fu_78_reg_n_3_[10] ),
        .R(ap_NS_fsm15_out));
  FDRE \outNeurons_fu_78_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(outNeurons_2_reg_273[11]),
        .Q(\outNeurons_fu_78_reg_n_3_[11] ),
        .R(ap_NS_fsm15_out));
  FDRE \outNeurons_fu_78_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(outNeurons_2_reg_273[12]),
        .Q(\outNeurons_fu_78_reg_n_3_[12] ),
        .R(ap_NS_fsm15_out));
  FDRE \outNeurons_fu_78_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(outNeurons_2_reg_273[13]),
        .Q(\outNeurons_fu_78_reg_n_3_[13] ),
        .R(ap_NS_fsm15_out));
  FDRE \outNeurons_fu_78_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(outNeurons_2_reg_273[14]),
        .Q(\outNeurons_fu_78_reg_n_3_[14] ),
        .R(ap_NS_fsm15_out));
  FDRE \outNeurons_fu_78_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(outNeurons_2_reg_273[15]),
        .Q(\outNeurons_fu_78_reg_n_3_[15] ),
        .R(ap_NS_fsm15_out));
  FDRE \outNeurons_fu_78_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(outNeurons_2_reg_273[1]),
        .Q(\outNeurons_fu_78_reg_n_3_[1] ),
        .R(ap_NS_fsm15_out));
  FDRE \outNeurons_fu_78_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(outNeurons_2_reg_273[2]),
        .Q(\outNeurons_fu_78_reg_n_3_[2] ),
        .R(ap_NS_fsm15_out));
  FDRE \outNeurons_fu_78_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(outNeurons_2_reg_273[3]),
        .Q(\outNeurons_fu_78_reg_n_3_[3] ),
        .R(ap_NS_fsm15_out));
  FDRE \outNeurons_fu_78_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(outNeurons_2_reg_273[4]),
        .Q(\outNeurons_fu_78_reg_n_3_[4] ),
        .R(ap_NS_fsm15_out));
  FDRE \outNeurons_fu_78_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(outNeurons_2_reg_273[5]),
        .Q(\outNeurons_fu_78_reg_n_3_[5] ),
        .R(ap_NS_fsm15_out));
  FDRE \outNeurons_fu_78_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(outNeurons_2_reg_273[6]),
        .Q(\outNeurons_fu_78_reg_n_3_[6] ),
        .R(ap_NS_fsm15_out));
  FDRE \outNeurons_fu_78_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(outNeurons_2_reg_273[7]),
        .Q(\outNeurons_fu_78_reg_n_3_[7] ),
        .R(ap_NS_fsm15_out));
  FDRE \outNeurons_fu_78_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(outNeurons_2_reg_273[8]),
        .Q(\outNeurons_fu_78_reg_n_3_[8] ),
        .R(ap_NS_fsm15_out));
  FDRE \outNeurons_fu_78_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(outNeurons_2_reg_273[9]),
        .Q(\outNeurons_fu_78_reg_n_3_[9] ),
        .R(ap_NS_fsm15_out));
  FDRE \output_r_addr_reg_288_reg[0] 
       (.C(ap_clk),
        .CE(empty_reg_2780),
        .D(\outNeurons_fu_78_reg_n_3_[0] ),
        .Q(output_r_addr_reg_288[0]),
        .R(1'b0));
  FDRE \output_r_addr_reg_288_reg[1] 
       (.C(ap_clk),
        .CE(empty_reg_2780),
        .D(\outNeurons_fu_78_reg_n_3_[1] ),
        .Q(output_r_addr_reg_288[1]),
        .R(1'b0));
  FDRE \output_r_addr_reg_288_reg[2] 
       (.C(ap_clk),
        .CE(empty_reg_2780),
        .D(\outNeurons_fu_78_reg_n_3_[2] ),
        .Q(output_r_addr_reg_288[2]),
        .R(1'b0));
  FDRE \output_r_addr_reg_288_reg[3] 
       (.C(ap_clk),
        .CE(empty_reg_2780),
        .D(\outNeurons_fu_78_reg_n_3_[3] ),
        .Q(output_r_addr_reg_288[3]),
        .R(1'b0));
  FDRE \output_r_addr_reg_288_reg[4] 
       (.C(ap_clk),
        .CE(empty_reg_2780),
        .D(\outNeurons_fu_78_reg_n_3_[4] ),
        .Q(output_r_addr_reg_288[4]),
        .R(1'b0));
  FDRE \output_r_addr_reg_288_reg[5] 
       (.C(ap_clk),
        .CE(empty_reg_2780),
        .D(\outNeurons_fu_78_reg_n_3_[5] ),
        .Q(output_r_addr_reg_288[5]),
        .R(1'b0));
  FDRE \output_r_addr_reg_288_reg[6] 
       (.C(ap_clk),
        .CE(empty_reg_2780),
        .D(\outNeurons_fu_78_reg_n_3_[6] ),
        .Q(output_r_addr_reg_288[6]),
        .R(1'b0));
  FDRE \output_r_addr_reg_288_reg[7] 
       (.C(ap_clk),
        .CE(empty_reg_2780),
        .D(\outNeurons_fu_78_reg_n_3_[7] ),
        .Q(output_r_addr_reg_288[7]),
        .R(1'b0));
  FDRE \output_r_load_reg_302_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[0]),
        .Q(output_r_load_reg_302[0]),
        .R(1'b0));
  FDRE \output_r_load_reg_302_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[10]),
        .Q(output_r_load_reg_302[10]),
        .R(1'b0));
  FDRE \output_r_load_reg_302_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[11]),
        .Q(output_r_load_reg_302[11]),
        .R(1'b0));
  FDRE \output_r_load_reg_302_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[12]),
        .Q(output_r_load_reg_302[12]),
        .R(1'b0));
  FDRE \output_r_load_reg_302_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[13]),
        .Q(output_r_load_reg_302[13]),
        .R(1'b0));
  FDRE \output_r_load_reg_302_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[14]),
        .Q(output_r_load_reg_302[14]),
        .R(1'b0));
  FDRE \output_r_load_reg_302_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[15]),
        .Q(output_r_load_reg_302[15]),
        .R(1'b0));
  FDRE \output_r_load_reg_302_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[1]),
        .Q(output_r_load_reg_302[1]),
        .R(1'b0));
  FDRE \output_r_load_reg_302_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[2]),
        .Q(output_r_load_reg_302[2]),
        .R(1'b0));
  FDRE \output_r_load_reg_302_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[3]),
        .Q(output_r_load_reg_302[3]),
        .R(1'b0));
  FDRE \output_r_load_reg_302_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[4]),
        .Q(output_r_load_reg_302[4]),
        .R(1'b0));
  FDRE \output_r_load_reg_302_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[5]),
        .Q(output_r_load_reg_302[5]),
        .R(1'b0));
  FDRE \output_r_load_reg_302_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[6]),
        .Q(output_r_load_reg_302[6]),
        .R(1'b0));
  FDRE \output_r_load_reg_302_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[7]),
        .Q(output_r_load_reg_302[7]),
        .R(1'b0));
  FDRE \output_r_load_reg_302_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[8]),
        .Q(output_r_load_reg_302[8]),
        .R(1'b0));
  FDRE \output_r_load_reg_302_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[9]),
        .Q(output_r_load_reg_302[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[0]_i_2 
       (.I0(numOfInNeurons_read_reg_254[3]),
        .I1(weightIndexAdded_fu_82_reg[3]),
        .O(\weightIndexAdded_fu_82[0]_i_2_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[0]_i_3 
       (.I0(numOfInNeurons_read_reg_254[2]),
        .I1(weightIndexAdded_fu_82_reg[2]),
        .O(\weightIndexAdded_fu_82[0]_i_3_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[0]_i_4 
       (.I0(numOfInNeurons_read_reg_254[1]),
        .I1(weightIndexAdded_fu_82_reg[1]),
        .O(\weightIndexAdded_fu_82[0]_i_4_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[0]_i_5 
       (.I0(numOfInNeurons_read_reg_254[0]),
        .I1(weightIndexAdded_fu_82_reg[0]),
        .O(\weightIndexAdded_fu_82[0]_i_5_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[12]_i_2 
       (.I0(numOfInNeurons_read_reg_254[14]),
        .I1(weightIndexAdded_fu_82_reg[14]),
        .O(\weightIndexAdded_fu_82[12]_i_2_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[12]_i_3 
       (.I0(numOfInNeurons_read_reg_254[13]),
        .I1(weightIndexAdded_fu_82_reg[13]),
        .O(\weightIndexAdded_fu_82[12]_i_3_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[12]_i_4 
       (.I0(numOfInNeurons_read_reg_254[12]),
        .I1(weightIndexAdded_fu_82_reg[12]),
        .O(\weightIndexAdded_fu_82[12]_i_4_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[4]_i_2 
       (.I0(numOfInNeurons_read_reg_254[7]),
        .I1(weightIndexAdded_fu_82_reg[7]),
        .O(\weightIndexAdded_fu_82[4]_i_2_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[4]_i_3 
       (.I0(numOfInNeurons_read_reg_254[6]),
        .I1(weightIndexAdded_fu_82_reg[6]),
        .O(\weightIndexAdded_fu_82[4]_i_3_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[4]_i_4 
       (.I0(numOfInNeurons_read_reg_254[5]),
        .I1(weightIndexAdded_fu_82_reg[5]),
        .O(\weightIndexAdded_fu_82[4]_i_4_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[4]_i_5 
       (.I0(numOfInNeurons_read_reg_254[4]),
        .I1(weightIndexAdded_fu_82_reg[4]),
        .O(\weightIndexAdded_fu_82[4]_i_5_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[8]_i_2 
       (.I0(numOfInNeurons_read_reg_254[11]),
        .I1(weightIndexAdded_fu_82_reg[11]),
        .O(\weightIndexAdded_fu_82[8]_i_2_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[8]_i_3 
       (.I0(numOfInNeurons_read_reg_254[10]),
        .I1(weightIndexAdded_fu_82_reg[10]),
        .O(\weightIndexAdded_fu_82[8]_i_3_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[8]_i_4 
       (.I0(numOfInNeurons_read_reg_254[9]),
        .I1(weightIndexAdded_fu_82_reg[9]),
        .O(\weightIndexAdded_fu_82[8]_i_4_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_82[8]_i_5 
       (.I0(numOfInNeurons_read_reg_254[8]),
        .I1(weightIndexAdded_fu_82_reg[8]),
        .O(\weightIndexAdded_fu_82[8]_i_5_n_3 ));
  FDRE \weightIndexAdded_fu_82_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(\weightIndexAdded_fu_82_reg[0]_i_1_n_10 ),
        .Q(weightIndexAdded_fu_82_reg[0]),
        .R(ap_NS_fsm15_out));
  CARRY4 \weightIndexAdded_fu_82_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\weightIndexAdded_fu_82_reg[0]_i_1_n_3 ,\weightIndexAdded_fu_82_reg[0]_i_1_n_4 ,\weightIndexAdded_fu_82_reg[0]_i_1_n_5 ,\weightIndexAdded_fu_82_reg[0]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI(numOfInNeurons_read_reg_254[3:0]),
        .O({\weightIndexAdded_fu_82_reg[0]_i_1_n_7 ,\weightIndexAdded_fu_82_reg[0]_i_1_n_8 ,\weightIndexAdded_fu_82_reg[0]_i_1_n_9 ,\weightIndexAdded_fu_82_reg[0]_i_1_n_10 }),
        .S({\weightIndexAdded_fu_82[0]_i_2_n_3 ,\weightIndexAdded_fu_82[0]_i_3_n_3 ,\weightIndexAdded_fu_82[0]_i_4_n_3 ,\weightIndexAdded_fu_82[0]_i_5_n_3 }));
  FDRE \weightIndexAdded_fu_82_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(\weightIndexAdded_fu_82_reg[8]_i_1_n_8 ),
        .Q(weightIndexAdded_fu_82_reg[10]),
        .R(ap_NS_fsm15_out));
  FDRE \weightIndexAdded_fu_82_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(\weightIndexAdded_fu_82_reg[8]_i_1_n_7 ),
        .Q(weightIndexAdded_fu_82_reg[11]),
        .R(ap_NS_fsm15_out));
  FDRE \weightIndexAdded_fu_82_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(\weightIndexAdded_fu_82_reg[12]_i_1_n_10 ),
        .Q(weightIndexAdded_fu_82_reg[12]),
        .R(ap_NS_fsm15_out));
  CARRY4 \weightIndexAdded_fu_82_reg[12]_i_1 
       (.CI(\weightIndexAdded_fu_82_reg[8]_i_1_n_3 ),
        .CO({\NLW_weightIndexAdded_fu_82_reg[12]_i_1_CO_UNCONNECTED [3:2],\weightIndexAdded_fu_82_reg[12]_i_1_n_5 ,\weightIndexAdded_fu_82_reg[12]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,numOfInNeurons_read_reg_254[13:12]}),
        .O({\NLW_weightIndexAdded_fu_82_reg[12]_i_1_O_UNCONNECTED [3],\weightIndexAdded_fu_82_reg[12]_i_1_n_8 ,\weightIndexAdded_fu_82_reg[12]_i_1_n_9 ,\weightIndexAdded_fu_82_reg[12]_i_1_n_10 }),
        .S({1'b0,\weightIndexAdded_fu_82[12]_i_2_n_3 ,\weightIndexAdded_fu_82[12]_i_3_n_3 ,\weightIndexAdded_fu_82[12]_i_4_n_3 }));
  FDRE \weightIndexAdded_fu_82_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(\weightIndexAdded_fu_82_reg[12]_i_1_n_9 ),
        .Q(weightIndexAdded_fu_82_reg[13]),
        .R(ap_NS_fsm15_out));
  FDRE \weightIndexAdded_fu_82_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(\weightIndexAdded_fu_82_reg[12]_i_1_n_8 ),
        .Q(weightIndexAdded_fu_82_reg[14]),
        .R(ap_NS_fsm15_out));
  FDRE \weightIndexAdded_fu_82_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(\weightIndexAdded_fu_82_reg[0]_i_1_n_9 ),
        .Q(weightIndexAdded_fu_82_reg[1]),
        .R(ap_NS_fsm15_out));
  FDRE \weightIndexAdded_fu_82_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(\weightIndexAdded_fu_82_reg[0]_i_1_n_8 ),
        .Q(weightIndexAdded_fu_82_reg[2]),
        .R(ap_NS_fsm15_out));
  FDRE \weightIndexAdded_fu_82_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(\weightIndexAdded_fu_82_reg[0]_i_1_n_7 ),
        .Q(weightIndexAdded_fu_82_reg[3]),
        .R(ap_NS_fsm15_out));
  FDRE \weightIndexAdded_fu_82_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(\weightIndexAdded_fu_82_reg[4]_i_1_n_10 ),
        .Q(weightIndexAdded_fu_82_reg[4]),
        .R(ap_NS_fsm15_out));
  CARRY4 \weightIndexAdded_fu_82_reg[4]_i_1 
       (.CI(\weightIndexAdded_fu_82_reg[0]_i_1_n_3 ),
        .CO({\weightIndexAdded_fu_82_reg[4]_i_1_n_3 ,\weightIndexAdded_fu_82_reg[4]_i_1_n_4 ,\weightIndexAdded_fu_82_reg[4]_i_1_n_5 ,\weightIndexAdded_fu_82_reg[4]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI(numOfInNeurons_read_reg_254[7:4]),
        .O({\weightIndexAdded_fu_82_reg[4]_i_1_n_7 ,\weightIndexAdded_fu_82_reg[4]_i_1_n_8 ,\weightIndexAdded_fu_82_reg[4]_i_1_n_9 ,\weightIndexAdded_fu_82_reg[4]_i_1_n_10 }),
        .S({\weightIndexAdded_fu_82[4]_i_2_n_3 ,\weightIndexAdded_fu_82[4]_i_3_n_3 ,\weightIndexAdded_fu_82[4]_i_4_n_3 ,\weightIndexAdded_fu_82[4]_i_5_n_3 }));
  FDRE \weightIndexAdded_fu_82_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(\weightIndexAdded_fu_82_reg[4]_i_1_n_9 ),
        .Q(weightIndexAdded_fu_82_reg[5]),
        .R(ap_NS_fsm15_out));
  FDRE \weightIndexAdded_fu_82_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(\weightIndexAdded_fu_82_reg[4]_i_1_n_8 ),
        .Q(weightIndexAdded_fu_82_reg[6]),
        .R(ap_NS_fsm15_out));
  FDRE \weightIndexAdded_fu_82_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(\weightIndexAdded_fu_82_reg[4]_i_1_n_7 ),
        .Q(weightIndexAdded_fu_82_reg[7]),
        .R(ap_NS_fsm15_out));
  FDRE \weightIndexAdded_fu_82_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(\weightIndexAdded_fu_82_reg[8]_i_1_n_10 ),
        .Q(weightIndexAdded_fu_82_reg[8]),
        .R(ap_NS_fsm15_out));
  CARRY4 \weightIndexAdded_fu_82_reg[8]_i_1 
       (.CI(\weightIndexAdded_fu_82_reg[4]_i_1_n_3 ),
        .CO({\weightIndexAdded_fu_82_reg[8]_i_1_n_3 ,\weightIndexAdded_fu_82_reg[8]_i_1_n_4 ,\weightIndexAdded_fu_82_reg[8]_i_1_n_5 ,\weightIndexAdded_fu_82_reg[8]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI(numOfInNeurons_read_reg_254[11:8]),
        .O({\weightIndexAdded_fu_82_reg[8]_i_1_n_7 ,\weightIndexAdded_fu_82_reg[8]_i_1_n_8 ,\weightIndexAdded_fu_82_reg[8]_i_1_n_9 ,\weightIndexAdded_fu_82_reg[8]_i_1_n_10 }),
        .S({\weightIndexAdded_fu_82[8]_i_2_n_3 ,\weightIndexAdded_fu_82[8]_i_3_n_3 ,\weightIndexAdded_fu_82[8]_i_4_n_3 ,\weightIndexAdded_fu_82[8]_i_5_n_3 }));
  FDRE \weightIndexAdded_fu_82_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(\weightIndexAdded_fu_82_reg[8]_i_1_n_9 ),
        .Q(weightIndexAdded_fu_82_reg[9]),
        .R(ap_NS_fsm15_out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_control_s_axi
   (ap_rst_n_inv,
    ap_idle,
    \int_input_r_shift0_reg[0]_0 ,
    \int_output_r_shift0_reg[0]_0 ,
    \ap_CS_fsm_reg[6] ,
    D,
    s_axi_control_ARREADY,
    \int_numOfOutNeurons_reg[15]_0 ,
    \int_numOfInNeurons_reg[15]_0 ,
    s_axi_control_WREADY,
    s_axi_control_RVALID,
    s_axi_control_AWREADY,
    \int_activation_reg[7]_0 ,
    interrupt,
    s_axi_control_BVALID,
    ap_NS_fsm15_out,
    CO,
    empty_reg_2780,
    \ap_CS_fsm_reg[0] ,
    mem_reg,
    s_axi_control_RDATA,
    A,
    mem_reg_0,
    B,
    ap_clk,
    grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg,
    ADDRBWRADDR,
    s_axi_control_WDATA,
    output_r_ce0,
    mem_reg_1,
    Q,
    output_r_addr_reg_288,
    grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0,
    \int_input_r_shift0_reg[0]_1 ,
    \int_output_r_shift0_reg[0]_1 ,
    mem_reg_2,
    mem_reg_3,
    mem_reg_i_51,
    ap_rst_n,
    mem_reg_4,
    mem_reg_5,
    s_axi_control_ARVALID,
    s_axi_control_ARADDR,
    s_axi_control_WVALID,
    s_axi_control_RREADY,
    s_axi_control_WSTRB,
    s_axi_control_AWVALID,
    s_axi_control_BREADY,
    s_axi_control_AWADDR,
    \ap_CS_fsm_reg[2] ,
    mem_reg_i_51_0,
    mem_reg_6,
    mem_reg_i_63,
    int_ap_start_reg_0);
  output ap_rst_n_inv;
  output ap_idle;
  output \int_input_r_shift0_reg[0]_0 ;
  output \int_output_r_shift0_reg[0]_0 ;
  output \ap_CS_fsm_reg[6] ;
  output [1:0]D;
  output s_axi_control_ARREADY;
  output [15:0]\int_numOfOutNeurons_reg[15]_0 ;
  output [15:0]\int_numOfInNeurons_reg[15]_0 ;
  output s_axi_control_WREADY;
  output s_axi_control_RVALID;
  output s_axi_control_AWREADY;
  output [7:0]\int_activation_reg[7]_0 ;
  output interrupt;
  output s_axi_control_BVALID;
  output ap_NS_fsm15_out;
  output [0:0]CO;
  output empty_reg_2780;
  output \ap_CS_fsm_reg[0] ;
  output [15:0]mem_reg;
  output [31:0]s_axi_control_RDATA;
  output [15:0]A;
  output [15:0]mem_reg_0;
  output [15:0]B;
  input ap_clk;
  input grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg;
  input [5:0]ADDRBWRADDR;
  input [31:0]s_axi_control_WDATA;
  input output_r_ce0;
  input [6:0]mem_reg_1;
  input [4:0]Q;
  input [7:0]output_r_addr_reg_288;
  input [14:0]grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0;
  input \int_input_r_shift0_reg[0]_1 ;
  input \int_output_r_shift0_reg[0]_1 ;
  input mem_reg_2;
  input mem_reg_3;
  input [15:0]mem_reg_i_51;
  input ap_rst_n;
  input mem_reg_4;
  input mem_reg_5;
  input s_axi_control_ARVALID;
  input [16:0]s_axi_control_ARADDR;
  input s_axi_control_WVALID;
  input s_axi_control_RREADY;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_AWVALID;
  input s_axi_control_BREADY;
  input [16:0]s_axi_control_AWADDR;
  input \ap_CS_fsm_reg[2] ;
  input [15:0]mem_reg_i_51_0;
  input [15:0]mem_reg_6;
  input [15:0]mem_reg_i_63;
  input int_ap_start_reg_0;

  wire [15:0]A;
  wire [5:0]ADDRBWRADDR;
  wire [15:0]B;
  wire [0:0]CO;
  wire [1:0]D;
  wire [4:0]Q;
  wire \ap_CS_fsm_reg[0] ;
  wire \ap_CS_fsm_reg[2] ;
  wire \ap_CS_fsm_reg[6] ;
  wire ap_NS_fsm15_out;
  wire ap_clk;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire auto_restart_status_i_1_n_3;
  wire auto_restart_status_reg_n_3;
  wire aw_hs;
  wire \cmp45_reg_266[0]_i_2_n_3 ;
  wire \cmp45_reg_266[0]_i_3_n_3 ;
  wire \cmp45_reg_266[0]_i_4_n_3 ;
  wire \cmp45_reg_266[0]_i_5_n_3 ;
  wire empty_reg_2780;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg;
  wire [14:0]grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0;
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
  wire int_bias_n_51;
  wire int_bias_n_52;
  wire int_bias_n_53;
  wire int_bias_n_54;
  wire int_bias_n_55;
  wire int_bias_n_56;
  wire int_bias_n_57;
  wire int_bias_n_58;
  wire int_bias_n_59;
  wire int_bias_n_60;
  wire int_bias_n_61;
  wire int_bias_n_62;
  wire int_bias_n_63;
  wire int_bias_n_64;
  wire int_bias_n_65;
  wire int_bias_n_66;
  wire [31:0]int_bias_q0;
  wire [30:1]int_bias_q1;
  wire int_bias_read;
  wire int_bias_read0;
  wire int_bias_read_i_2_n_3;
  wire \int_bias_shift0[0]_i_1_n_3 ;
  wire \int_bias_shift0_reg_n_3_[0] ;
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
  wire int_input_r_n_67;
  wire [31:0]int_input_r_q0;
  wire [29:5]int_input_r_q1;
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
  wire int_weights_n_12;
  wire int_weights_n_13;
  wire int_weights_n_21;
  wire int_weights_n_3;
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
  wire [15:0]mem_reg;
  wire [15:0]mem_reg_0;
  wire [6:0]mem_reg_1;
  wire mem_reg_2;
  wire mem_reg_3;
  wire mem_reg_4;
  wire mem_reg_5;
  wire [15:0]mem_reg_6;
  wire [15:0]mem_reg_i_51;
  wire [15:0]mem_reg_i_51_0;
  wire [15:0]mem_reg_i_63;
  wire [7:0]output_r_addr_reg_288;
  wire output_r_ce0;
  wire [7:2]p_3_in;
  wire \rdata[0]_i_4_n_3 ;
  wire \rdata[0]_i_5_n_3 ;
  wire \rdata[10]_i_2_n_3 ;
  wire \rdata[11]_i_3_n_3 ;
  wire \rdata[12]_i_2_n_3 ;
  wire \rdata[13]_i_2_n_3 ;
  wire \rdata[14]_i_2_n_3 ;
  wire \rdata[15]_i_3_n_3 ;
  wire \rdata[15]_i_4_n_3 ;
  wire \rdata[15]_i_5_n_3 ;
  wire \rdata[15]_i_6_n_3 ;
  wire \rdata[1]_i_4_n_3 ;
  wire \rdata[1]_i_5_n_3 ;
  wire \rdata[2]_i_2_n_3 ;
  wire \rdata[2]_i_5_n_3 ;
  wire \rdata[2]_i_6_n_3 ;
  wire \rdata[31]_i_1_n_3 ;
  wire \rdata[3]_i_2_n_3 ;
  wire \rdata[3]_i_4_n_3 ;
  wire \rdata[3]_i_5_n_3 ;
  wire \rdata[4]_i_2_n_3 ;
  wire \rdata[4]_i_4_n_3 ;
  wire \rdata[4]_i_5_n_3 ;
  wire \rdata[5]_i_3_n_3 ;
  wire \rdata[5]_i_4_n_3 ;
  wire \rdata[5]_i_5_n_3 ;
  wire \rdata[6]_i_2_n_3 ;
  wire \rdata[6]_i_3_n_3 ;
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

  LUT3 #(
    .INIT(8'hEA)) 
    \ap_CS_fsm[1]_i_1__0 
       (.I0(Q[4]),
        .I1(ap_start),
        .I2(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
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
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_312[0]_i_1 
       (.I0(int_bias_q0[16]),
        .I1(\int_bias_shift0_reg_n_3_[0] ),
        .I2(int_bias_q0[0]),
        .O(mem_reg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_312[10]_i_1 
       (.I0(int_bias_q0[26]),
        .I1(\int_bias_shift0_reg_n_3_[0] ),
        .I2(int_bias_q0[10]),
        .O(mem_reg_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_312[11]_i_1 
       (.I0(int_bias_q0[27]),
        .I1(\int_bias_shift0_reg_n_3_[0] ),
        .I2(int_bias_q0[11]),
        .O(mem_reg_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_312[12]_i_1 
       (.I0(int_bias_q0[28]),
        .I1(\int_bias_shift0_reg_n_3_[0] ),
        .I2(int_bias_q0[12]),
        .O(mem_reg_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_312[13]_i_1 
       (.I0(int_bias_q0[29]),
        .I1(\int_bias_shift0_reg_n_3_[0] ),
        .I2(int_bias_q0[13]),
        .O(mem_reg_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_312[14]_i_1 
       (.I0(int_bias_q0[30]),
        .I1(\int_bias_shift0_reg_n_3_[0] ),
        .I2(int_bias_q0[14]),
        .O(mem_reg_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_312[15]_i_1 
       (.I0(int_bias_q0[31]),
        .I1(\int_bias_shift0_reg_n_3_[0] ),
        .I2(int_bias_q0[15]),
        .O(mem_reg_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_312[1]_i_1 
       (.I0(int_bias_q0[17]),
        .I1(\int_bias_shift0_reg_n_3_[0] ),
        .I2(int_bias_q0[1]),
        .O(mem_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_312[2]_i_1 
       (.I0(int_bias_q0[18]),
        .I1(\int_bias_shift0_reg_n_3_[0] ),
        .I2(int_bias_q0[2]),
        .O(mem_reg_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_312[3]_i_1 
       (.I0(int_bias_q0[19]),
        .I1(\int_bias_shift0_reg_n_3_[0] ),
        .I2(int_bias_q0[3]),
        .O(mem_reg_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_312[4]_i_1 
       (.I0(int_bias_q0[20]),
        .I1(\int_bias_shift0_reg_n_3_[0] ),
        .I2(int_bias_q0[4]),
        .O(mem_reg_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_312[5]_i_1 
       (.I0(int_bias_q0[21]),
        .I1(\int_bias_shift0_reg_n_3_[0] ),
        .I2(int_bias_q0[5]),
        .O(mem_reg_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_312[6]_i_1 
       (.I0(int_bias_q0[22]),
        .I1(\int_bias_shift0_reg_n_3_[0] ),
        .I2(int_bias_q0[6]),
        .O(mem_reg_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_312[7]_i_1 
       (.I0(int_bias_q0[23]),
        .I1(\int_bias_shift0_reg_n_3_[0] ),
        .I2(int_bias_q0[7]),
        .O(mem_reg_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_312[8]_i_1 
       (.I0(int_bias_q0[24]),
        .I1(\int_bias_shift0_reg_n_3_[0] ),
        .I2(int_bias_q0[8]),
        .O(mem_reg_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_312[9]_i_1 
       (.I0(int_bias_q0[25]),
        .I1(\int_bias_shift0_reg_n_3_[0] ),
        .I2(int_bias_q0[9]),
        .O(mem_reg_0[9]));
  LUT6 #(
    .INIT(64'h4444444F44444444)) 
    \cmp45_reg_266[0]_i_1 
       (.I0(Q[0]),
        .I1(\ap_CS_fsm_reg[2] ),
        .I2(\cmp45_reg_266[0]_i_2_n_3 ),
        .I3(\cmp45_reg_266[0]_i_3_n_3 ),
        .I4(\cmp45_reg_266[0]_i_4_n_3 ),
        .I5(\cmp45_reg_266[0]_i_5_n_3 ),
        .O(\ap_CS_fsm_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \cmp45_reg_266[0]_i_2 
       (.I0(\int_numOfInNeurons_reg[15]_0 [6]),
        .I1(\int_numOfInNeurons_reg[15]_0 [15]),
        .I2(\int_numOfInNeurons_reg[15]_0 [14]),
        .O(\cmp45_reg_266[0]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \cmp45_reg_266[0]_i_3 
       (.I0(\int_numOfInNeurons_reg[15]_0 [11]),
        .I1(\int_numOfInNeurons_reg[15]_0 [8]),
        .I2(Q[0]),
        .I3(\int_numOfInNeurons_reg[15]_0 [2]),
        .O(\cmp45_reg_266[0]_i_3_n_3 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cmp45_reg_266[0]_i_4 
       (.I0(\int_numOfInNeurons_reg[15]_0 [13]),
        .I1(\int_numOfInNeurons_reg[15]_0 [0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [4]),
        .I3(\int_numOfInNeurons_reg[15]_0 [3]),
        .O(\cmp45_reg_266[0]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cmp45_reg_266[0]_i_5 
       (.I0(\int_numOfInNeurons_reg[15]_0 [9]),
        .I1(\int_numOfInNeurons_reg[15]_0 [7]),
        .I2(\int_numOfInNeurons_reg[15]_0 [1]),
        .I3(\int_numOfInNeurons_reg[15]_0 [5]),
        .I4(\int_numOfInNeurons_reg[15]_0 [10]),
        .I5(\int_numOfInNeurons_reg[15]_0 [12]),
        .O(\cmp45_reg_266[0]_i_5_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_activation[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_activation_reg[7]_0 [0]),
        .O(\int_activation[0]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_activation[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_activation_reg[7]_0 [1]),
        .O(\int_activation[1]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_activation[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_activation_reg[7]_0 [2]),
        .O(\int_activation[2]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_activation[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_activation_reg[7]_0 [3]),
        .O(\int_activation[3]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_activation[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_activation_reg[7]_0 [4]),
        .O(\int_activation[4]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_activation[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_activation_reg[7]_0 [5]),
        .O(\int_activation[5]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
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
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[1] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_3 ),
        .D(\int_activation[1]_i_1_n_3 ),
        .Q(\int_activation_reg[7]_0 [1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[2] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_3 ),
        .D(\int_activation[2]_i_1_n_3 ),
        .Q(\int_activation_reg[7]_0 [2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[3] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_3 ),
        .D(\int_activation[3]_i_1_n_3 ),
        .Q(\int_activation_reg[7]_0 [3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[4] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_3 ),
        .D(\int_activation[4]_i_1_n_3 ),
        .Q(\int_activation_reg[7]_0 [4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[5] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_3 ),
        .D(\int_activation[5]_i_1_n_3 ),
        .Q(\int_activation_reg[7]_0 [5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[6] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_3 ),
        .D(\int_activation[6]_i_1_n_3 ),
        .Q(\int_activation_reg[7]_0 [6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_activation_reg[7] 
       (.C(ap_clk),
        .CE(\int_activation[7]_i_1_n_3 ),
        .D(\int_activation[7]_i_2_n_3 ),
        .Q(\int_activation_reg[7]_0 [7]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
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
        .R(ap_rst_n_inv));
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
        .R(ap_rst_n_inv));
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
        .R(ap_rst_n_inv));
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
        .R(ap_rst_n_inv));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_control_s_axi_ram__parameterized1 int_bias
       (.ADDRARDADDR({int_output_r_address1,int_input_r_address1}),
        .D({int_bias_n_51,int_bias_n_52,int_bias_n_53,int_bias_n_54,int_bias_n_55,int_bias_n_56,int_bias_n_57,int_bias_n_58,int_bias_n_59}),
        .DOADO({int_bias_q1[30:28],int_bias_q1[25],int_bias_q1[21],int_bias_q1[18:17],int_bias_q1[14:13],int_bias_q1[10:6],int_bias_q1[3],int_bias_q1[1]}),
        .DOBDO(int_bias_q0),
        .Q(Q[2]),
        .ap_clk(ap_clk),
        .int_bias_read(int_bias_read),
        .int_input_r_read(int_input_r_read),
        .int_output_r_read(int_output_r_read),
        .mem_reg_0(int_bias_n_60),
        .mem_reg_1(int_bias_n_61),
        .mem_reg_2(int_bias_n_62),
        .mem_reg_3(int_bias_n_63),
        .mem_reg_4(int_bias_n_64),
        .mem_reg_5(int_bias_n_65),
        .mem_reg_6(int_bias_n_66),
        .mem_reg_7(int_bias_write_reg_n_3),
        .output_r_addr_reg_288(output_r_addr_reg_288[7:1]),
        .q1({int_weights_q1[31],int_weights_q1[27:26],int_weights_q1[24:22],int_weights_q1[20:19],int_weights_q1[16:15],int_weights_q1[12:11],int_weights_q1[5:4],int_weights_q1[2],int_weights_q1[0]}),
        .\rdata_reg[12] (\rdata[15]_i_4_n_3 ),
        .\rdata_reg[12]_0 (\rdata[12]_i_2_n_3 ),
        .\rdata_reg[12]_1 (int_input_r_n_67),
        .\rdata_reg[27] ({int_input_r_q1[27:26],int_input_r_q1[24],int_input_r_q1[22],int_input_r_q1[20:19],int_input_r_q1[16],int_input_r_q1[12],int_input_r_q1[5]}),
        .\rdata_reg[31] ({int_output_r_q1[31],int_output_r_q1[27:26],int_output_r_q1[24:22],int_output_r_q1[20:19],int_output_r_q1[16:15],int_output_r_q1[12:11],int_output_r_q1[5:4],int_output_r_q1[2],int_output_r_q1[0]}),
        .\rdata_reg[5] (\rdata[5]_i_3_n_3 ),
        .\rdata_reg[5]_0 (\rdata[7]_i_3_n_3 ),
        .rstate(rstate),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
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
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_shift0[0]_i_1 
       (.I0(output_r_addr_reg_288[0]),
        .I1(Q[2]),
        .I2(\int_bias_shift0_reg_n_3_[0] ),
        .O(\int_bias_shift0[0]_i_1_n_3 ));
  FDRE \int_bias_shift0_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_bias_shift0[0]_i_1_n_3 ),
        .Q(\int_bias_shift0_reg_n_3_[0] ),
        .R(ap_rst_n_inv));
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
        .R(ap_rst_n_inv));
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
        .R(ap_rst_n_inv));
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
       (.I0(\waddr_reg_n_3_[13] ),
        .I1(\waddr_reg_n_3_[14] ),
        .I2(\waddr_reg_n_3_[0] ),
        .I3(\int_ier[5]_i_3_n_3 ),
        .I4(\int_ier[5]_i_4_n_3 ),
        .I5(int_output_r_write_i_2_n_3),
        .O(\int_ier[5]_i_2_n_3 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \int_ier[5]_i_3 
       (.I0(\waddr_reg_n_3_[9] ),
        .I1(\waddr_reg_n_3_[6] ),
        .I2(\waddr_reg_n_3_[16] ),
        .I3(\waddr_reg_n_3_[1] ),
        .O(\int_ier[5]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \int_ier[5]_i_4 
       (.I0(\waddr_reg_n_3_[12] ),
        .I1(\waddr_reg_n_3_[11] ),
        .I2(\waddr_reg_n_3_[7] ),
        .I3(\waddr_reg_n_3_[15] ),
        .I4(\waddr_reg_n_3_[8] ),
        .I5(\waddr_reg_n_3_[10] ),
        .O(\int_ier[5]_i_4_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(int_ier12_out),
        .D(s_axi_control_WDATA[0]),
        .Q(\int_ier_reg_n_3_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(int_ier12_out),
        .D(s_axi_control_WDATA[1]),
        .Q(\int_ier_reg_n_3_[1] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[2] 
       (.C(ap_clk),
        .CE(int_ier12_out),
        .D(s_axi_control_WDATA[2]),
        .Q(\int_ier_reg_n_3_[2] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[3] 
       (.C(ap_clk),
        .CE(int_ier12_out),
        .D(s_axi_control_WDATA[3]),
        .Q(\int_ier_reg_n_3_[3] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[4] 
       (.C(ap_clk),
        .CE(int_ier12_out),
        .D(s_axi_control_WDATA[4]),
        .Q(\int_ier_reg_n_3_[4] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[5] 
       (.C(ap_clk),
        .CE(int_ier12_out),
        .D(s_axi_control_WDATA[5]),
        .Q(\int_ier_reg_n_3_[5] ),
        .R(ap_rst_n_inv));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_control_s_axi_ram int_input_r
       (.ADDRARDADDR(int_input_r_address1),
        .ADDRBWRADDR(ADDRBWRADDR),
        .D({int_input_r_n_55,int_input_r_n_56,int_input_r_n_57,int_input_r_n_58,int_input_r_n_59,int_input_r_n_60,int_input_r_n_61,int_input_r_n_62,int_input_r_n_63,int_input_r_n_64,int_input_r_n_65,int_input_r_n_66}),
        .DOADO({int_input_r_q1[29:24],int_input_r_q1[22:16],int_input_r_q1[14:12],int_input_r_q1[10:8],int_input_r_q1[5]}),
        .DOBDO(int_input_r_q0),
        .ap_clk(ap_clk),
        .grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .int_input_r_read(int_input_r_read),
        .mem_reg_0(int_input_r_write_reg_n_3),
        .\rdata_reg[0] (\rdata_reg[0]_i_2_n_3 ),
        .\rdata_reg[0]_0 (int_bias_n_66),
        .\rdata_reg[11] (int_bias_n_62),
        .\rdata_reg[11]_0 (\rdata[11]_i_3_n_3 ),
        .\rdata_reg[11]_1 (\rdata[15]_i_4_n_3 ),
        .\rdata_reg[15] (int_bias_n_63),
        .\rdata_reg[15]_0 (\rdata[15]_i_3_n_3 ),
        .\rdata_reg[1] (\rdata_reg[1]_i_2_n_3 ),
        .\rdata_reg[1]_0 (int_weights_n_21),
        .\rdata_reg[23] (int_bias_n_64),
        .\rdata_reg[2] (\rdata[2]_i_2_n_3 ),
        .\rdata_reg[2]_0 (int_bias_n_60),
        .\rdata_reg[2]_1 (\rdata[2]_i_5_n_3 ),
        .\rdata_reg[2]_2 (\rdata[5]_i_5_n_3 ),
        .\rdata_reg[2]_3 (\rdata[2]_i_6_n_3 ),
        .\rdata_reg[30] (int_weights_n_41),
        .\rdata_reg[31] (int_bias_n_65),
        .\rdata_reg[3] (\rdata[3]_i_2_n_3 ),
        .\rdata_reg[3]_0 (int_weights_n_38),
        .\rdata_reg[4] (\rdata[4]_i_2_n_3 ),
        .\rdata_reg[4]_0 (int_bias_n_61),
        .\rdata_reg[6] (\rdata[6]_i_2_n_3 ),
        .\rdata_reg[6]_0 (\rdata[6]_i_3_n_3 ),
        .\rdata_reg[6]_1 (int_weights_n_39),
        .\rdata_reg[7] (\rdata[7]_i_2_n_3 ),
        .\rdata_reg[7]_0 (\rdata[7]_i_3_n_3 ),
        .\rdata_reg[7]_1 (int_weights_n_40),
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
        .R(ap_rst_n_inv));
  FDRE \int_input_r_shift0_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_input_r_shift0_reg[0]_1 ),
        .Q(\int_input_r_shift0_reg[0]_0 ),
        .R(ap_rst_n_inv));
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
        .R(ap_rst_n_inv));
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
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_3 ),
        .Q(\int_isr_reg_n_3_[1] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[5]_i_1_n_3 ),
        .Q(\int_isr_reg_n_3_[5] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [0]),
        .O(int_numOfInNeurons0[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [10]),
        .O(int_numOfInNeurons0[10]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [11]),
        .O(int_numOfInNeurons0[11]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [12]),
        .O(int_numOfInNeurons0[12]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [13]),
        .O(int_numOfInNeurons0[13]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[15]_i_2 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [15]),
        .O(int_numOfInNeurons0[15]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [1]),
        .O(int_numOfInNeurons0[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [2]),
        .O(int_numOfInNeurons0[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [3]),
        .O(int_numOfInNeurons0[3]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [4]),
        .O(int_numOfInNeurons0[4]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [5]),
        .O(int_numOfInNeurons0[5]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [6]),
        .O(int_numOfInNeurons0[6]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [7]),
        .O(int_numOfInNeurons0[7]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [8]),
        .O(int_numOfInNeurons0[8]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
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
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[10] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[10]),
        .Q(\int_numOfInNeurons_reg[15]_0 [10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[11] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[11]),
        .Q(\int_numOfInNeurons_reg[15]_0 [11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[12] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[12]),
        .Q(\int_numOfInNeurons_reg[15]_0 [12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[13] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[13]),
        .Q(\int_numOfInNeurons_reg[15]_0 [13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[14] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[14]),
        .Q(\int_numOfInNeurons_reg[15]_0 [14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[15] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[15]),
        .Q(\int_numOfInNeurons_reg[15]_0 [15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[1] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[1]),
        .Q(\int_numOfInNeurons_reg[15]_0 [1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[2] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[2]),
        .Q(\int_numOfInNeurons_reg[15]_0 [2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[3] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[3]),
        .Q(\int_numOfInNeurons_reg[15]_0 [3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[4] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[4]),
        .Q(\int_numOfInNeurons_reg[15]_0 [4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[5] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[5]),
        .Q(\int_numOfInNeurons_reg[15]_0 [5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[6] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[6]),
        .Q(\int_numOfInNeurons_reg[15]_0 [6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[7] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[7]),
        .Q(\int_numOfInNeurons_reg[15]_0 [7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[8] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[8]),
        .Q(\int_numOfInNeurons_reg[15]_0 [8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[9] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_3 ),
        .D(int_numOfInNeurons0[9]),
        .Q(\int_numOfInNeurons_reg[15]_0 [9]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [0]),
        .O(int_numOfOutNeurons0[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [10]),
        .O(int_numOfOutNeurons0[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [11]),
        .O(int_numOfOutNeurons0[11]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [12]),
        .O(int_numOfOutNeurons0[12]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [13]),
        .O(int_numOfOutNeurons0[13]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[15]_i_2 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [15]),
        .O(int_numOfOutNeurons0[15]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [1]),
        .O(int_numOfOutNeurons0[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [2]),
        .O(int_numOfOutNeurons0[2]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [3]),
        .O(int_numOfOutNeurons0[3]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [4]),
        .O(int_numOfOutNeurons0[4]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [5]),
        .O(int_numOfOutNeurons0[5]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [6]),
        .O(int_numOfOutNeurons0[6]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [7]),
        .O(int_numOfOutNeurons0[7]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [8]),
        .O(int_numOfOutNeurons0[8]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
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
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[10] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[10]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[11] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[11]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[12] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[12]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[13] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[13]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[14] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[14]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[15] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[15]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[1] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[1]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[2] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[2]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[3] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[3]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[4] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[4]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[5] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[5]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[6] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[6]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[7] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[7]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[8] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[8]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfOutNeurons_reg[9] 
       (.C(ap_clk),
        .CE(\int_numOfOutNeurons[15]_i_1_n_3 ),
        .D(int_numOfOutNeurons0[9]),
        .Q(\int_numOfOutNeurons_reg[15]_0 [9]),
        .R(ap_rst_n_inv));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_control_s_axi_ram__parameterized0 int_output_r
       (.ADDRARDADDR({int_output_r_address1,int_input_r_address1}),
        .CO(CO),
        .D(D[1]),
        .DOADO(int_output_r_q1),
        .Q(Q[4:1]),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm_reg[2] ),
        .\ap_CS_fsm_reg[6] (\ap_CS_fsm_reg[6] ),
        .ap_clk(ap_clk),
        .empty_reg_2780(empty_reg_2780),
        .mem_reg_0(mem_reg),
        .mem_reg_1(mem_reg_1),
        .mem_reg_2(mem_reg_2),
        .mem_reg_3(mem_reg_3),
        .mem_reg_4(mem_reg_4),
        .mem_reg_5(mem_reg_5),
        .mem_reg_6(int_output_r_write_reg_n_3),
        .mem_reg_7(int_input_r_n_67),
        .mem_reg_8(mem_reg_6),
        .mem_reg_i_51_0(mem_reg_i_51),
        .mem_reg_i_51_1(mem_reg_i_51_0),
        .mem_reg_i_63_0(mem_reg_i_63),
        .output_r_addr_reg_288(output_r_addr_reg_288[0]),
        .output_r_ce0(output_r_ce0),
        .\output_r_load_reg_302_reg[0] (\int_output_r_shift0_reg[0]_0 ),
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
        .R(ap_rst_n_inv));
  FDRE \int_output_r_shift0_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_output_r_shift0_reg[0]_1 ),
        .Q(\int_output_r_shift0_reg[0]_0 ),
        .R(ap_rst_n_inv));
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
        .R(ap_rst_n_inv));
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
    .INIT(32'h00000400)) 
    int_task_ap_done_i_2
       (.I0(\rdata[5]_i_5_n_3 ),
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
        .R(ap_rst_n_inv));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_control_s_axi_ram__parameterized2 int_weights
       (.ADDRARDADDR({int_output_r_address1,int_input_r_address1}),
        .D({int_weights_n_3,int_weights_n_4,int_weights_n_5,int_weights_n_6,int_weights_n_7,int_weights_n_8,int_weights_n_9,int_weights_n_10,int_weights_n_11,int_weights_n_12,int_weights_n_13}),
        .DOADO({int_input_r_q1[29:28],int_input_r_q1[25],int_input_r_q1[21],int_input_r_q1[18:17],int_input_r_q1[14:13],int_input_r_q1[10:8]}),
        .Q({\waddr_reg_n_3_[15] ,\waddr_reg_n_3_[14] ,\waddr_reg_n_3_[13] ,\waddr_reg_n_3_[12] ,\waddr_reg_n_3_[11] ,\waddr_reg_n_3_[10] ,\waddr_reg_n_3_[9] ,\waddr_reg_n_3_[8] ,\waddr_reg_n_3_[7] ,\waddr_reg_n_3_[6] ,\waddr_reg_n_3_[5] ,\waddr_reg_n_3_[4] ,\waddr_reg_n_3_[3] ,\waddr_reg_n_3_[2] }),
        .ap_clk(ap_clk),
        .grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0[14:1]),
        .int_bias_read(int_bias_read),
        .int_input_r_read(int_input_r_read),
        .int_output_r_read(int_output_r_read),
        .mem_reg_0_0_0(int_weights_n_21),
        .mem_reg_0_0_1(int_weights_write_reg_n_3),
        .mem_reg_0_1_0(int_weights_n_38),
        .mem_reg_0_3_0(int_weights_n_39),
        .mem_reg_0_3_1(int_weights_n_40),
        .mem_reg_3_3_0(int_weights_n_41),
        .q0(int_weights_q0),
        .q1({int_weights_q1[31],int_weights_q1[27:26],int_weights_q1[24:22],int_weights_q1[20:19],int_weights_q1[16:15],int_weights_q1[12:11],int_weights_q1[5:4],int_weights_q1[2],int_weights_q1[0]}),
        .\rdata_reg[10] (\rdata[10]_i_2_n_3 ),
        .\rdata_reg[13] (\rdata[13]_i_2_n_3 ),
        .\rdata_reg[14] (\rdata[15]_i_4_n_3 ),
        .\rdata_reg[14]_0 (\rdata[14]_i_2_n_3 ),
        .\rdata_reg[14]_1 (int_input_r_n_67),
        .\rdata_reg[30] ({int_bias_q1[30:28],int_bias_q1[25],int_bias_q1[21],int_bias_q1[18:17],int_bias_q1[14:13],int_bias_q1[10:6],int_bias_q1[3],int_bias_q1[1]}),
        .\rdata_reg[30]_0 ({int_output_r_q1[30:28],int_output_r_q1[25],int_output_r_q1[21],int_output_r_q1[18:17],int_output_r_q1[14:13],int_output_r_q1[10:6],int_output_r_q1[3],int_output_r_q1[1]}),
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
        .R(ap_rst_n_inv));
  FDRE \int_weights_shift0_reg[0] 
       (.C(ap_clk),
        .CE(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .D(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0[0]),
        .Q(\int_weights_shift0_reg_n_3_[0] ),
        .R(ap_rst_n_inv));
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
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hAAA8)) 
    interrupt_INST_0
       (.I0(int_gie_reg_n_3),
        .I1(\int_isr_reg_n_3_[1] ),
        .I2(\int_isr_reg_n_3_[5] ),
        .I3(\int_isr_reg_n_3_[0] ),
        .O(interrupt));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \outNeurons_fu_78[15]_i_1 
       (.I0(Q[0]),
        .I1(ap_start),
        .O(ap_NS_fsm15_out));
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
  LUT6 #(
    .INIT(64'h5050303F5F5F303F)) 
    \rdata[0]_i_4 
       (.I0(ap_start),
        .I1(int_gie_reg_n_3),
        .I2(\rdata[15]_i_6_n_3 ),
        .I3(\int_isr_reg_n_3_[0] ),
        .I4(\rdata[15]_i_5_n_3 ),
        .I5(\int_ier_reg_n_3_[0] ),
        .O(\rdata[0]_i_4_n_3 ));
  LUT5 #(
    .INIT(32'h303F5F5F)) 
    \rdata[0]_i_5 
       (.I0(\int_numOfOutNeurons_reg[15]_0 [0]),
        .I1(\int_numOfInNeurons_reg[15]_0 [0]),
        .I2(\rdata[15]_i_6_n_3 ),
        .I3(\int_activation_reg[7]_0 [0]),
        .I4(\rdata[15]_i_5_n_3 ),
        .O(\rdata[0]_i_5_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \rdata[10]_i_2 
       (.I0(\int_numOfOutNeurons_reg[15]_0 [10]),
        .I1(\rdata[15]_i_5_n_3 ),
        .I2(\int_numOfInNeurons_reg[15]_0 [10]),
        .O(\rdata[10]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hEFEFEFFFFFFFEFFF)) 
    \rdata[11]_i_3 
       (.I0(rstate[0]),
        .I1(rstate[1]),
        .I2(s_axi_control_ARVALID),
        .I3(\int_numOfOutNeurons_reg[15]_0 [11]),
        .I4(\rdata[15]_i_5_n_3 ),
        .I5(\int_numOfInNeurons_reg[15]_0 [11]),
        .O(\rdata[11]_i_3_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \rdata[12]_i_2 
       (.I0(\int_numOfInNeurons_reg[15]_0 [12]),
        .I1(\rdata[15]_i_5_n_3 ),
        .I2(\int_numOfOutNeurons_reg[15]_0 [12]),
        .O(\rdata[12]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \rdata[13]_i_2 
       (.I0(\int_numOfInNeurons_reg[15]_0 [13]),
        .I1(\rdata[15]_i_5_n_3 ),
        .I2(\int_numOfOutNeurons_reg[15]_0 [13]),
        .O(\rdata[13]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \rdata[14]_i_2 
       (.I0(\int_numOfInNeurons_reg[15]_0 [14]),
        .I1(\rdata[15]_i_5_n_3 ),
        .I2(\int_numOfOutNeurons_reg[15]_0 [14]),
        .O(\rdata[14]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hEFEFEFFFFFFFEFFF)) 
    \rdata[15]_i_3 
       (.I0(rstate[0]),
        .I1(rstate[1]),
        .I2(s_axi_control_ARVALID),
        .I3(\int_numOfOutNeurons_reg[15]_0 [15]),
        .I4(\rdata[15]_i_5_n_3 ),
        .I5(\int_numOfInNeurons_reg[15]_0 [15]),
        .O(\rdata[15]_i_3_n_3 ));
  LUT3 #(
    .INIT(8'h80)) 
    \rdata[15]_i_4 
       (.I0(\rdata[7]_i_3_n_3 ),
        .I1(\rdata[15]_i_6_n_3 ),
        .I2(s_axi_control_ARADDR[4]),
        .O(\rdata[15]_i_4_n_3 ));
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
       (.I0(s_axi_control_ARADDR[0]),
        .I1(s_axi_control_ARADDR[1]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[15]_i_6_n_3 ));
  LUT5 #(
    .INIT(32'h47CC47FF)) 
    \rdata[1]_i_4 
       (.I0(int_task_ap_done__0),
        .I1(\rdata[15]_i_6_n_3 ),
        .I2(\int_ier_reg_n_3_[1] ),
        .I3(\rdata[15]_i_5_n_3 ),
        .I4(\int_isr_reg_n_3_[1] ),
        .O(\rdata[1]_i_4_n_3 ));
  LUT5 #(
    .INIT(32'h505F3F3F)) 
    \rdata[1]_i_5 
       (.I0(\int_numOfInNeurons_reg[15]_0 [1]),
        .I1(\int_numOfOutNeurons_reg[15]_0 [1]),
        .I2(\rdata[15]_i_6_n_3 ),
        .I3(\int_activation_reg[7]_0 [1]),
        .I4(\rdata[15]_i_5_n_3 ),
        .O(\rdata[1]_i_5_n_3 ));
  LUT4 #(
    .INIT(16'h5455)) 
    \rdata[2]_i_2 
       (.I0(int_input_r_read),
        .I1(rstate[0]),
        .I2(rstate[1]),
        .I3(s_axi_control_ARVALID),
        .O(\rdata[2]_i_2_n_3 ));
  LUT4 #(
    .INIT(16'hFF1D)) 
    \rdata[2]_i_5 
       (.I0(\int_ier_reg_n_3_[2] ),
        .I1(\rdata[15]_i_6_n_3 ),
        .I2(p_3_in[2]),
        .I3(\rdata[7]_i_5_n_3 ),
        .O(\rdata[2]_i_5_n_3 ));
  LUT5 #(
    .INIT(32'h505F3F3F)) 
    \rdata[2]_i_6 
       (.I0(\int_numOfInNeurons_reg[15]_0 [2]),
        .I1(\int_numOfOutNeurons_reg[15]_0 [2]),
        .I2(\rdata[15]_i_6_n_3 ),
        .I3(\int_activation_reg[7]_0 [2]),
        .I4(\rdata[15]_i_5_n_3 ),
        .O(\rdata[2]_i_6_n_3 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rdata[31]_i_1 
       (.I0(int_input_r_n_67),
        .I1(int_weights_read),
        .I2(int_input_r_read),
        .I3(int_bias_read),
        .I4(int_output_r_read),
        .O(\rdata[31]_i_1_n_3 ));
  LUT5 #(
    .INIT(32'h4F0FFF0F)) 
    \rdata[3]_i_2 
       (.I0(\rdata[3]_i_4_n_3 ),
        .I1(\rdata[5]_i_5_n_3 ),
        .I2(int_input_r_n_67),
        .I3(\rdata[7]_i_3_n_3 ),
        .I4(\rdata[3]_i_5_n_3 ),
        .O(\rdata[3]_i_2_n_3 ));
  LUT5 #(
    .INIT(32'h505F3F3F)) 
    \rdata[3]_i_4 
       (.I0(\int_numOfInNeurons_reg[15]_0 [3]),
        .I1(\int_numOfOutNeurons_reg[15]_0 [3]),
        .I2(\rdata[15]_i_6_n_3 ),
        .I3(\int_activation_reg[7]_0 [3]),
        .I4(\rdata[15]_i_5_n_3 ),
        .O(\rdata[3]_i_4_n_3 ));
  LUT4 #(
    .INIT(16'hFF1D)) 
    \rdata[3]_i_5 
       (.I0(\int_ier_reg_n_3_[3] ),
        .I1(\rdata[15]_i_6_n_3 ),
        .I2(int_ap_ready__0),
        .I3(\rdata[7]_i_5_n_3 ),
        .O(\rdata[3]_i_5_n_3 ));
  LUT6 #(
    .INIT(64'h00A8000000000000)) 
    \rdata[4]_i_2 
       (.I0(\rdata[4]_i_4_n_3 ),
        .I1(\int_numOfOutNeurons_reg[15]_0 [4]),
        .I2(\rdata[15]_i_5_n_3 ),
        .I3(\rdata[4]_i_5_n_3 ),
        .I4(int_input_r_n_67),
        .I5(\rdata[7]_i_3_n_3 ),
        .O(\rdata[4]_i_2_n_3 ));
  LUT5 #(
    .INIT(32'hAAFFF300)) 
    \rdata[4]_i_4 
       (.I0(\int_numOfInNeurons_reg[15]_0 [4]),
        .I1(\rdata[5]_i_5_n_3 ),
        .I2(\int_activation_reg[7]_0 [4]),
        .I3(\rdata[15]_i_5_n_3 ),
        .I4(\rdata[15]_i_6_n_3 ),
        .O(\rdata[4]_i_4_n_3 ));
  LUT5 #(
    .INIT(32'h000047FF)) 
    \rdata[4]_i_5 
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(\int_ier_reg_n_3_[4] ),
        .I4(\rdata[5]_i_5_n_3 ),
        .O(\rdata[4]_i_5_n_3 ));
  LUT6 #(
    .INIT(64'hB8B8B8BBBBBBB8BB)) 
    \rdata[5]_i_3 
       (.I0(\rdata[5]_i_4_n_3 ),
        .I1(\rdata[5]_i_5_n_3 ),
        .I2(\rdata[15]_i_6_n_3 ),
        .I3(\int_isr_reg_n_3_[5] ),
        .I4(\rdata[15]_i_5_n_3 ),
        .I5(\int_ier_reg_n_3_[5] ),
        .O(\rdata[5]_i_3_n_3 ));
  LUT5 #(
    .INIT(32'h505F3F3F)) 
    \rdata[5]_i_4 
       (.I0(\int_numOfInNeurons_reg[15]_0 [5]),
        .I1(\int_numOfOutNeurons_reg[15]_0 [5]),
        .I2(\rdata[15]_i_6_n_3 ),
        .I3(\int_activation_reg[7]_0 [5]),
        .I4(\rdata[15]_i_5_n_3 ),
        .O(\rdata[5]_i_4_n_3 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rdata[5]_i_5 
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARADDR[0]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[5]),
        .O(\rdata[5]_i_5_n_3 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \rdata[6]_i_2 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[0]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(\rdata[7]_i_3_n_3 ),
        .I5(int_input_r_n_67),
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
    .INIT(64'hF8A8580800000000)) 
    \rdata[7]_i_6 
       (.I0(\rdata[15]_i_5_n_3 ),
        .I1(\int_activation_reg[7]_0 [7]),
        .I2(\rdata[15]_i_6_n_3 ),
        .I3(\int_numOfOutNeurons_reg[15]_0 [7]),
        .I4(\int_numOfInNeurons_reg[15]_0 [7]),
        .I5(\rdata[5]_i_5_n_3 ),
        .O(\rdata[7]_i_6_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \rdata[8]_i_2 
       (.I0(\int_numOfOutNeurons_reg[15]_0 [8]),
        .I1(\rdata[15]_i_5_n_3 ),
        .I2(\int_numOfInNeurons_reg[15]_0 [8]),
        .O(\rdata[8]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \rdata[9]_i_2 
       (.I0(\int_numOfOutNeurons_reg[15]_0 [9]),
        .I1(\rdata[15]_i_5_n_3 ),
        .I2(\int_numOfInNeurons_reg[15]_0 [9]),
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
        .S(\rdata[5]_i_5_n_3 ));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_weights_n_11),
        .Q(s_axi_control_RDATA[10]),
        .R(1'b0));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_input_r_n_59),
        .Q(s_axi_control_RDATA[11]),
        .R(1'b0));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_58),
        .Q(s_axi_control_RDATA[12]),
        .R(1'b0));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_weights_n_10),
        .Q(s_axi_control_RDATA[13]),
        .R(1'b0));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_weights_n_9),
        .Q(s_axi_control_RDATA[14]),
        .R(1'b0));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_input_r_n_58),
        .Q(s_axi_control_RDATA[15]),
        .R(1'b0));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_57),
        .Q(s_axi_control_RDATA[16]),
        .R(1'b0));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_weights_n_8),
        .Q(s_axi_control_RDATA[17]),
        .R(1'b0));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_weights_n_7),
        .Q(s_axi_control_RDATA[18]),
        .R(1'b0));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_56),
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
        .S(\rdata[5]_i_5_n_3 ));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_55),
        .Q(s_axi_control_RDATA[20]),
        .R(1'b0));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_weights_n_6),
        .Q(s_axi_control_RDATA[21]),
        .R(1'b0));
  FDRE \rdata_reg[22] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_54),
        .Q(s_axi_control_RDATA[22]),
        .R(1'b0));
  FDRE \rdata_reg[23] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_input_r_n_57),
        .Q(s_axi_control_RDATA[23]),
        .R(1'b0));
  FDRE \rdata_reg[24] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_53),
        .Q(s_axi_control_RDATA[24]),
        .R(1'b0));
  FDRE \rdata_reg[25] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_weights_n_5),
        .Q(s_axi_control_RDATA[25]),
        .R(1'b0));
  FDRE \rdata_reg[26] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_52),
        .Q(s_axi_control_RDATA[26]),
        .R(1'b0));
  FDRE \rdata_reg[27] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_51),
        .Q(s_axi_control_RDATA[27]),
        .R(1'b0));
  FDRE \rdata_reg[28] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_weights_n_4),
        .Q(s_axi_control_RDATA[28]),
        .R(1'b0));
  FDRE \rdata_reg[29] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_weights_n_3),
        .Q(s_axi_control_RDATA[29]),
        .R(1'b0));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_input_r_n_64),
        .Q(s_axi_control_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[30] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_input_r_n_56),
        .Q(s_axi_control_RDATA[30]),
        .R(1'b0));
  FDRE \rdata_reg[31] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_input_r_n_55),
        .Q(s_axi_control_RDATA[31]),
        .R(1'b0));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_input_r_n_63),
        .Q(s_axi_control_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_input_r_n_62),
        .Q(s_axi_control_RDATA[4]),
        .R(1'b0));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_59),
        .Q(s_axi_control_RDATA[5]),
        .R(1'b0));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_input_r_n_61),
        .Q(s_axi_control_RDATA[6]),
        .R(1'b0));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_input_r_n_60),
        .Q(s_axi_control_RDATA[7]),
        .R(1'b0));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_weights_n_13),
        .Q(s_axi_control_RDATA[8]),
        .R(1'b0));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_weights_n_12),
        .Q(s_axi_control_RDATA[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
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
        .O(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \rstate_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\rstate[0]_i_1_n_3 ),
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
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_control_ARREADY_INST_0
       (.I0(rstate[1]),
        .I1(rstate[0]),
        .O(s_axi_control_ARREADY));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_control_AWREADY_INST_0
       (.I0(wstate[0]),
        .I1(wstate[1]),
        .O(s_axi_control_AWREADY));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00CA00FA)) 
    \wstate[0]_i_1 
       (.I0(s_axi_control_AWVALID),
        .I1(int_input_r_n_67),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .I4(s_axi_control_WVALID),
        .O(\wstate[0]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
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
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\wstate[1]_i_1_n_3 ),
        .Q(wstate[1]),
        .S(ap_rst_n_inv));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_control_s_axi_ram
   (DOADO,
    DOBDO,
    D,
    s_axi_control_ARVALID_0,
    ap_clk,
    grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_control_WDATA,
    \rdata_reg[7] ,
    \rdata_reg[7]_0 ,
    \rdata_reg[7]_1 ,
    int_input_r_read,
    \rdata_reg[3] ,
    \rdata_reg[3]_0 ,
    \rdata_reg[2] ,
    \rdata_reg[2]_0 ,
    \rdata_reg[2]_1 ,
    \rdata_reg[2]_2 ,
    \rdata_reg[2]_3 ,
    \rdata_reg[1] ,
    \rdata_reg[1]_0 ,
    \rdata_reg[0] ,
    \rdata_reg[0]_0 ,
    rstate,
    s_axi_control_ARVALID,
    \rdata_reg[31] ,
    \rdata_reg[23] ,
    \rdata_reg[4] ,
    \rdata_reg[4]_0 ,
    \rdata_reg[6] ,
    \rdata_reg[6]_0 ,
    \rdata_reg[6]_1 ,
    \rdata_reg[11] ,
    \rdata_reg[11]_0 ,
    \rdata_reg[11]_1 ,
    \rdata_reg[15] ,
    \rdata_reg[15]_0 ,
    \rdata_reg[30] ,
    mem_reg_0,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    wstate);
  output [19:0]DOADO;
  output [31:0]DOBDO;
  output [11:0]D;
  output s_axi_control_ARVALID_0;
  input ap_clk;
  input grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg;
  input [5:0]ADDRARDADDR;
  input [5:0]ADDRBWRADDR;
  input [31:0]s_axi_control_WDATA;
  input \rdata_reg[7] ;
  input \rdata_reg[7]_0 ;
  input \rdata_reg[7]_1 ;
  input int_input_r_read;
  input \rdata_reg[3] ;
  input \rdata_reg[3]_0 ;
  input \rdata_reg[2] ;
  input \rdata_reg[2]_0 ;
  input \rdata_reg[2]_1 ;
  input \rdata_reg[2]_2 ;
  input \rdata_reg[2]_3 ;
  input \rdata_reg[1] ;
  input \rdata_reg[1]_0 ;
  input \rdata_reg[0] ;
  input \rdata_reg[0]_0 ;
  input [1:0]rstate;
  input s_axi_control_ARVALID;
  input \rdata_reg[31] ;
  input \rdata_reg[23] ;
  input \rdata_reg[4] ;
  input \rdata_reg[4]_0 ;
  input \rdata_reg[6] ;
  input \rdata_reg[6]_0 ;
  input \rdata_reg[6]_1 ;
  input \rdata_reg[11] ;
  input \rdata_reg[11]_0 ;
  input \rdata_reg[11]_1 ;
  input \rdata_reg[15] ;
  input \rdata_reg[15]_0 ;
  input \rdata_reg[30] ;
  input mem_reg_0;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_WSTRB;
  input [1:0]wstate;

  wire [5:0]ADDRARDADDR;
  wire [5:0]ADDRBWRADDR;
  wire [11:0]D;
  wire [19:0]DOADO;
  wire [31:0]DOBDO;
  wire ap_clk;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg;
  wire [3:0]int_input_r_be1;
  wire int_input_r_ce1;
  wire [31:0]int_input_r_q1;
  wire int_input_r_read;
  wire mem_reg_0;
  wire [31:24]p_1_in;
  wire \rdata[2]_i_3_n_3 ;
  wire \rdata_reg[0] ;
  wire \rdata_reg[0]_0 ;
  wire \rdata_reg[11] ;
  wire \rdata_reg[11]_0 ;
  wire \rdata_reg[11]_1 ;
  wire \rdata_reg[15] ;
  wire \rdata_reg[15]_0 ;
  wire \rdata_reg[1] ;
  wire \rdata_reg[1]_0 ;
  wire \rdata_reg[23] ;
  wire \rdata_reg[2] ;
  wire \rdata_reg[2]_0 ;
  wire \rdata_reg[2]_1 ;
  wire \rdata_reg[2]_2 ;
  wire \rdata_reg[2]_3 ;
  wire \rdata_reg[30] ;
  wire \rdata_reg[31] ;
  wire \rdata_reg[3] ;
  wire \rdata_reg[3]_0 ;
  wire \rdata_reg[4] ;
  wire \rdata_reg[4]_0 ;
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
        .DOADO({int_input_r_q1[31:30],DOADO[19:14],int_input_r_q1[23],DOADO[13:7],int_input_r_q1[15],DOADO[6:4],int_input_r_q1[11],DOADO[3:1],int_input_r_q1[7:6],DOADO[0],int_input_r_q1[4:0]}),
        .DOBDO(DOBDO),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_input_r_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
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
    mem_reg_i_14__0
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
    mem_reg_i_19__0
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
    mem_reg_i_20__0
       (.I0(s_axi_control_WDATA[25]),
        .I1(int_input_r_be1[3]),
        .O(p_1_in[25]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_21__0
       (.I0(s_axi_control_WDATA[24]),
        .I1(int_input_r_be1[3]),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_22__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_0),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_input_r_be1[3]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_23__0
       (.I0(s_axi_control_WSTRB[2]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_0),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_input_r_be1[2]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_24__0
       (.I0(s_axi_control_WSTRB[1]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_0),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_input_r_be1[1]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_25__0
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
    .INIT(64'h4500FFFF45004500)) 
    \rdata[11]_i_1 
       (.I0(s_axi_control_ARVALID_0),
        .I1(int_input_r_q1[11]),
        .I2(int_input_r_read),
        .I3(\rdata_reg[11] ),
        .I4(\rdata_reg[11]_0 ),
        .I5(\rdata_reg[11]_1 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h4500FFFF45004500)) 
    \rdata[15]_i_1 
       (.I0(s_axi_control_ARVALID_0),
        .I1(int_input_r_q1[15]),
        .I2(int_input_r_read),
        .I3(\rdata_reg[15] ),
        .I4(\rdata_reg[15]_0 ),
        .I5(\rdata_reg[11]_1 ),
        .O(D[8]));
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
  LUT6 #(
    .INIT(64'h00000000A8AAFCFF)) 
    \rdata[23]_i_1 
       (.I0(int_input_r_q1[23]),
        .I1(rstate[0]),
        .I2(rstate[1]),
        .I3(s_axi_control_ARVALID),
        .I4(int_input_r_read),
        .I5(\rdata_reg[23] ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h44C4FFFF44C40000)) 
    \rdata[2]_i_3 
       (.I0(\rdata_reg[2]_1 ),
        .I1(\rdata_reg[7]_0 ),
        .I2(\rdata_reg[2]_2 ),
        .I3(\rdata_reg[2]_3 ),
        .I4(s_axi_control_ARVALID_0),
        .I5(int_input_r_q1[2]),
        .O(\rdata[2]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h00000000FD00FDFD)) 
    \rdata[30]_i_1 
       (.I0(s_axi_control_ARVALID),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(int_input_r_q1[30]),
        .I4(int_input_r_read),
        .I5(\rdata_reg[30] ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h00000000A8AAFCFF)) 
    \rdata[31]_i_2 
       (.I0(int_input_r_q1[31]),
        .I1(rstate[0]),
        .I2(rstate[1]),
        .I3(s_axi_control_ARVALID),
        .I4(int_input_r_read),
        .I5(\rdata_reg[31] ),
        .O(D[11]));
  LUT3 #(
    .INIT(8'h02)) 
    \rdata[31]_i_3 
       (.I0(s_axi_control_ARVALID),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .O(s_axi_control_ARVALID_0));
  LUT5 #(
    .INIT(32'hCCCC880F)) 
    \rdata[3]_i_1 
       (.I0(int_input_r_q1[3]),
        .I1(\rdata_reg[3] ),
        .I2(\rdata_reg[3]_0 ),
        .I3(int_input_r_read),
        .I4(s_axi_control_ARVALID_0),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hBABBAAAA)) 
    \rdata[4]_i_1 
       (.I0(\rdata_reg[4] ),
        .I1(s_axi_control_ARVALID_0),
        .I2(int_input_r_q1[4]),
        .I3(int_input_r_read),
        .I4(\rdata_reg[4]_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h8F888F8F88888888)) 
    \rdata[6]_i_1 
       (.I0(\rdata_reg[6] ),
        .I1(\rdata_reg[6]_0 ),
        .I2(s_axi_control_ARVALID_0),
        .I3(int_input_r_q1[6]),
        .I4(int_input_r_read),
        .I5(\rdata_reg[6]_1 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h30303030AAAA00FF)) 
    \rdata[7]_i_1 
       (.I0(int_input_r_q1[7]),
        .I1(\rdata_reg[7] ),
        .I2(\rdata_reg[7]_0 ),
        .I3(\rdata_reg[7]_1 ),
        .I4(int_input_r_read),
        .I5(s_axi_control_ARVALID_0),
        .O(D[6]));
  MUXF7 \rdata_reg[2]_i_1 
       (.I0(\rdata[2]_i_3_n_3 ),
        .I1(\rdata_reg[2]_0 ),
        .O(D[2]),
        .S(\rdata_reg[2] ));
endmodule

(* ORIG_REF_NAME = "nnlayer_control_s_axi_ram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_control_s_axi_ram__parameterized0
   (DOADO,
    \ap_CS_fsm_reg[6] ,
    D,
    CO,
    empty_reg_2780,
    mem_reg_0,
    ap_clk,
    output_r_ce0,
    ADDRARDADDR,
    mem_reg_1,
    s_axi_control_WDATA,
    mem_reg_2,
    output_r_addr_reg_288,
    mem_reg_3,
    mem_reg_i_51_0,
    \output_r_load_reg_302_reg[0] ,
    mem_reg_4,
    mem_reg_5,
    rstate,
    s_axi_control_ARVALID,
    mem_reg_6,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    mem_reg_7,
    wstate,
    Q,
    \ap_CS_fsm_reg[2] ,
    mem_reg_i_51_1,
    mem_reg_8,
    mem_reg_i_63_0);
  output [31:0]DOADO;
  output \ap_CS_fsm_reg[6] ;
  output [0:0]D;
  output [0:0]CO;
  output empty_reg_2780;
  output [15:0]mem_reg_0;
  input ap_clk;
  input output_r_ce0;
  input [6:0]ADDRARDADDR;
  input [6:0]mem_reg_1;
  input [31:0]s_axi_control_WDATA;
  input mem_reg_2;
  input [0:0]output_r_addr_reg_288;
  input mem_reg_3;
  input [15:0]mem_reg_i_51_0;
  input \output_r_load_reg_302_reg[0] ;
  input mem_reg_4;
  input mem_reg_5;
  input [1:0]rstate;
  input s_axi_control_ARVALID;
  input mem_reg_6;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_WSTRB;
  input mem_reg_7;
  input [1:0]wstate;
  input [3:0]Q;
  input \ap_CS_fsm_reg[2] ;
  input [15:0]mem_reg_i_51_1;
  input [15:0]mem_reg_8;
  input [15:0]mem_reg_i_63_0;

  wire [6:0]ADDRARDADDR;
  wire [0:0]CO;
  wire [0:0]D;
  wire [31:0]DOADO;
  wire [3:0]Q;
  wire [15:0]add_ln37_fu_223_p2;
  wire \ap_CS_fsm_reg[2] ;
  wire \ap_CS_fsm_reg[6] ;
  wire ap_clk;
  wire empty_reg_2780;
  wire [3:1]int_output_r_be0;
  wire [3:0]int_output_r_be1;
  wire int_output_r_ce1;
  wire [31:0]int_output_r_q0;
  wire [15:0]mem_reg_0;
  wire [6:0]mem_reg_1;
  wire mem_reg_2;
  wire mem_reg_3;
  wire mem_reg_4;
  wire mem_reg_5;
  wire mem_reg_6;
  wire mem_reg_7;
  wire [15:0]mem_reg_8;
  wire [15:0]mem_reg_i_51_0;
  wire [15:0]mem_reg_i_51_1;
  wire mem_reg_i_51_n_6;
  wire mem_reg_i_60_n_3;
  wire mem_reg_i_61_n_3;
  wire mem_reg_i_61_n_4;
  wire mem_reg_i_61_n_5;
  wire mem_reg_i_61_n_6;
  wire mem_reg_i_62_n_3;
  wire mem_reg_i_62_n_4;
  wire mem_reg_i_62_n_5;
  wire mem_reg_i_62_n_6;
  wire [15:0]mem_reg_i_63_0;
  wire mem_reg_i_63_n_4;
  wire mem_reg_i_63_n_5;
  wire mem_reg_i_63_n_6;
  wire mem_reg_i_64_n_3;
  wire mem_reg_i_64_n_4;
  wire mem_reg_i_64_n_5;
  wire mem_reg_i_64_n_6;
  wire mem_reg_i_66_n_3;
  wire mem_reg_i_66_n_4;
  wire mem_reg_i_66_n_5;
  wire mem_reg_i_66_n_6;
  wire mem_reg_i_67_n_3;
  wire mem_reg_i_68_n_3;
  wire mem_reg_i_70_n_3;
  wire mem_reg_i_71_n_3;
  wire mem_reg_i_72_n_3;
  wire mem_reg_i_73_n_3;
  wire mem_reg_i_74_n_3;
  wire mem_reg_i_75_n_3;
  wire mem_reg_i_76_n_3;
  wire mem_reg_i_77_n_3;
  wire mem_reg_i_78_n_3;
  wire mem_reg_i_79_n_3;
  wire mem_reg_i_80_n_3;
  wire mem_reg_i_81_n_3;
  wire mem_reg_i_82_n_3;
  wire mem_reg_i_83_n_3;
  wire mem_reg_i_84_n_3;
  wire mem_reg_i_85_n_3;
  wire mem_reg_i_86_n_3;
  wire mem_reg_i_87_n_3;
  wire mem_reg_i_88_n_3;
  wire mem_reg_i_89_n_3;
  wire mem_reg_i_90_n_3;
  wire [0:0]output_r_addr_reg_288;
  wire output_r_ce0;
  wire [15:0]output_r_d0;
  wire \output_r_load_reg_302_reg[0] ;
  wire [31:24]p_1_in;
  wire [31:24]p_2_in;
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
  wire [3:2]NLW_mem_reg_i_51_CO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_i_51_O_UNCONNECTED;
  wire [3:3]NLW_mem_reg_i_63_CO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_i_66_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(CO),
        .I1(Q[0]),
        .I2(\ap_CS_fsm_reg[2] ),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \empty_reg_278[14]_i_1 
       (.I0(Q[0]),
        .I1(CO),
        .O(empty_reg_2780));
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
        .DIBDI({p_1_in,output_r_d0[7:0],output_r_d0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(DOADO),
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
        .WEBWE({1'b0,1'b0,1'b0,1'b0,int_output_r_be0[3],int_output_r_be0[3],int_output_r_be0[1],int_output_r_be0[1]}));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_11__0
       (.I0(s_axi_control_WDATA[31]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[31]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_12__0
       (.I0(s_axi_control_WDATA[30]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[30]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_13__0
       (.I0(s_axi_control_WDATA[29]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[29]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_14
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
    .INIT(32'hB8000000)) 
    mem_reg_i_19
       (.I0(mem_reg_2),
        .I1(\ap_CS_fsm_reg[6] ),
        .I2(output_r_addr_reg_288),
        .I3(mem_reg_i_60_n_3),
        .I4(output_r_d0[15]),
        .O(p_1_in[31]));
  LUT5 #(
    .INIT(32'hFF101010)) 
    mem_reg_i_1__0
       (.I0(rstate[0]),
        .I1(rstate[1]),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_6),
        .I4(s_axi_control_WVALID),
        .O(int_output_r_ce1));
  LUT5 #(
    .INIT(32'hB8000000)) 
    mem_reg_i_20
       (.I0(mem_reg_2),
        .I1(\ap_CS_fsm_reg[6] ),
        .I2(output_r_addr_reg_288),
        .I3(mem_reg_i_60_n_3),
        .I4(output_r_d0[14]),
        .O(p_1_in[30]));
  LUT5 #(
    .INIT(32'hB8000000)) 
    mem_reg_i_21
       (.I0(mem_reg_2),
        .I1(\ap_CS_fsm_reg[6] ),
        .I2(output_r_addr_reg_288),
        .I3(mem_reg_i_60_n_3),
        .I4(output_r_d0[13]),
        .O(p_1_in[29]));
  LUT5 #(
    .INIT(32'hB8000000)) 
    mem_reg_i_22
       (.I0(mem_reg_2),
        .I1(\ap_CS_fsm_reg[6] ),
        .I2(output_r_addr_reg_288),
        .I3(mem_reg_i_60_n_3),
        .I4(output_r_d0[12]),
        .O(p_1_in[28]));
  LUT5 #(
    .INIT(32'hB8000000)) 
    mem_reg_i_23
       (.I0(mem_reg_2),
        .I1(\ap_CS_fsm_reg[6] ),
        .I2(output_r_addr_reg_288),
        .I3(mem_reg_i_60_n_3),
        .I4(output_r_d0[11]),
        .O(p_1_in[27]));
  LUT5 #(
    .INIT(32'hB8000000)) 
    mem_reg_i_24
       (.I0(mem_reg_2),
        .I1(\ap_CS_fsm_reg[6] ),
        .I2(output_r_addr_reg_288),
        .I3(mem_reg_i_60_n_3),
        .I4(output_r_d0[10]),
        .O(p_1_in[26]));
  LUT5 #(
    .INIT(32'hB8000000)) 
    mem_reg_i_25
       (.I0(mem_reg_2),
        .I1(\ap_CS_fsm_reg[6] ),
        .I2(output_r_addr_reg_288),
        .I3(mem_reg_i_60_n_3),
        .I4(output_r_d0[9]),
        .O(p_1_in[25]));
  LUT5 #(
    .INIT(32'hB8000000)) 
    mem_reg_i_26
       (.I0(mem_reg_2),
        .I1(\ap_CS_fsm_reg[6] ),
        .I2(output_r_addr_reg_288),
        .I3(mem_reg_i_60_n_3),
        .I4(output_r_d0[8]),
        .O(p_1_in[24]));
  LUT4 #(
    .INIT(16'hB888)) 
    mem_reg_i_27
       (.I0(add_ln37_fu_223_p2[7]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(mem_reg_8[7]),
        .O(output_r_d0[7]));
  LUT4 #(
    .INIT(16'hB888)) 
    mem_reg_i_28
       (.I0(add_ln37_fu_223_p2[6]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(mem_reg_8[6]),
        .O(output_r_d0[6]));
  LUT4 #(
    .INIT(16'hB888)) 
    mem_reg_i_29
       (.I0(add_ln37_fu_223_p2[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(mem_reg_8[5]),
        .O(output_r_d0[5]));
  LUT4 #(
    .INIT(16'hB888)) 
    mem_reg_i_30
       (.I0(add_ln37_fu_223_p2[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(mem_reg_8[4]),
        .O(output_r_d0[4]));
  LUT4 #(
    .INIT(16'hB888)) 
    mem_reg_i_31
       (.I0(add_ln37_fu_223_p2[3]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(mem_reg_8[3]),
        .O(output_r_d0[3]));
  LUT4 #(
    .INIT(16'hB888)) 
    mem_reg_i_32
       (.I0(add_ln37_fu_223_p2[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(mem_reg_8[2]),
        .O(output_r_d0[2]));
  LUT4 #(
    .INIT(16'hB888)) 
    mem_reg_i_33
       (.I0(add_ln37_fu_223_p2[1]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(mem_reg_8[1]),
        .O(output_r_d0[1]));
  LUT4 #(
    .INIT(16'hB888)) 
    mem_reg_i_34
       (.I0(add_ln37_fu_223_p2[0]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(mem_reg_8[0]),
        .O(output_r_d0[0]));
  LUT4 #(
    .INIT(16'hB888)) 
    mem_reg_i_35
       (.I0(add_ln37_fu_223_p2[15]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(mem_reg_8[15]),
        .O(output_r_d0[15]));
  LUT4 #(
    .INIT(16'hB888)) 
    mem_reg_i_36
       (.I0(add_ln37_fu_223_p2[14]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(mem_reg_8[14]),
        .O(output_r_d0[14]));
  LUT4 #(
    .INIT(16'hB888)) 
    mem_reg_i_37
       (.I0(add_ln37_fu_223_p2[13]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(mem_reg_8[13]),
        .O(output_r_d0[13]));
  LUT4 #(
    .INIT(16'hB888)) 
    mem_reg_i_38
       (.I0(add_ln37_fu_223_p2[12]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(mem_reg_8[12]),
        .O(output_r_d0[12]));
  LUT4 #(
    .INIT(16'hB888)) 
    mem_reg_i_39
       (.I0(add_ln37_fu_223_p2[11]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(mem_reg_8[11]),
        .O(output_r_d0[11]));
  LUT4 #(
    .INIT(16'hB888)) 
    mem_reg_i_40
       (.I0(add_ln37_fu_223_p2[10]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(mem_reg_8[10]),
        .O(output_r_d0[10]));
  LUT4 #(
    .INIT(16'hB888)) 
    mem_reg_i_41
       (.I0(add_ln37_fu_223_p2[9]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(mem_reg_8[9]),
        .O(output_r_d0[9]));
  LUT4 #(
    .INIT(16'hB888)) 
    mem_reg_i_42
       (.I0(add_ln37_fu_223_p2[8]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(mem_reg_8[8]),
        .O(output_r_d0[8]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_43
       (.I0(s_axi_control_WSTRB[3]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_6),
        .I3(mem_reg_7),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_output_r_be1[3]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_44
       (.I0(s_axi_control_WSTRB[2]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_6),
        .I3(mem_reg_7),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_output_r_be1[2]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_45
       (.I0(s_axi_control_WSTRB[1]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_6),
        .I3(mem_reg_7),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_output_r_be1[1]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_46
       (.I0(s_axi_control_WSTRB[0]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_6),
        .I3(mem_reg_7),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_output_r_be1[0]));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    mem_reg_i_47
       (.I0(mem_reg_i_60_n_3),
        .I1(output_r_addr_reg_288),
        .I2(\ap_CS_fsm_reg[6] ),
        .I3(mem_reg_3),
        .I4(D),
        .I5(mem_reg_i_51_0[0]),
        .O(int_output_r_be0[3]));
  LUT6 #(
    .INIT(64'h020202A2A2A202A2)) 
    mem_reg_i_48
       (.I0(mem_reg_i_60_n_3),
        .I1(output_r_addr_reg_288),
        .I2(\ap_CS_fsm_reg[6] ),
        .I3(mem_reg_3),
        .I4(D),
        .I5(mem_reg_i_51_0[0]),
        .O(int_output_r_be0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h01)) 
    mem_reg_i_50
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\ap_CS_fsm_reg[6] ));
  CARRY4 mem_reg_i_51
       (.CI(mem_reg_i_66_n_3),
        .CO({NLW_mem_reg_i_51_CO_UNCONNECTED[3:2],CO,mem_reg_i_51_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_mem_reg_i_51_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,mem_reg_i_67_n_3,mem_reg_i_68_n_3}));
  LUT6 #(
    .INIT(64'hFFFFFFFFE2000000)) 
    mem_reg_i_60
       (.I0(int_output_r_q0[15]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[31]),
        .I3(mem_reg_4),
        .I4(mem_reg_5),
        .I5(mem_reg_i_70_n_3),
        .O(mem_reg_i_60_n_3));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_i_61
       (.CI(mem_reg_i_62_n_3),
        .CO({mem_reg_i_61_n_3,mem_reg_i_61_n_4,mem_reg_i_61_n_5,mem_reg_i_61_n_6}),
        .CYINIT(1'b0),
        .DI(mem_reg_i_63_0[7:4]),
        .O(add_ln37_fu_223_p2[7:4]),
        .S({mem_reg_i_71_n_3,mem_reg_i_72_n_3,mem_reg_i_73_n_3,mem_reg_i_74_n_3}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_i_62
       (.CI(1'b0),
        .CO({mem_reg_i_62_n_3,mem_reg_i_62_n_4,mem_reg_i_62_n_5,mem_reg_i_62_n_6}),
        .CYINIT(1'b0),
        .DI(mem_reg_i_63_0[3:0]),
        .O(add_ln37_fu_223_p2[3:0]),
        .S({mem_reg_i_75_n_3,mem_reg_i_76_n_3,mem_reg_i_77_n_3,mem_reg_i_78_n_3}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_i_63
       (.CI(mem_reg_i_64_n_3),
        .CO({NLW_mem_reg_i_63_CO_UNCONNECTED[3],mem_reg_i_63_n_4,mem_reg_i_63_n_5,mem_reg_i_63_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,mem_reg_i_63_0[14:12]}),
        .O(add_ln37_fu_223_p2[15:12]),
        .S({mem_reg_i_79_n_3,mem_reg_i_80_n_3,mem_reg_i_81_n_3,mem_reg_i_82_n_3}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_i_64
       (.CI(mem_reg_i_61_n_3),
        .CO({mem_reg_i_64_n_3,mem_reg_i_64_n_4,mem_reg_i_64_n_5,mem_reg_i_64_n_6}),
        .CYINIT(1'b0),
        .DI(mem_reg_i_63_0[11:8]),
        .O(add_ln37_fu_223_p2[11:8]),
        .S({mem_reg_i_83_n_3,mem_reg_i_84_n_3,mem_reg_i_85_n_3,mem_reg_i_86_n_3}));
  CARRY4 mem_reg_i_66
       (.CI(1'b0),
        .CO({mem_reg_i_66_n_3,mem_reg_i_66_n_4,mem_reg_i_66_n_5,mem_reg_i_66_n_6}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_mem_reg_i_66_O_UNCONNECTED[3:0]),
        .S({mem_reg_i_87_n_3,mem_reg_i_88_n_3,mem_reg_i_89_n_3,mem_reg_i_90_n_3}));
  LUT2 #(
    .INIT(4'h9)) 
    mem_reg_i_67
       (.I0(mem_reg_i_51_1[15]),
        .I1(mem_reg_i_51_0[15]),
        .O(mem_reg_i_67_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mem_reg_i_68
       (.I0(mem_reg_i_51_0[12]),
        .I1(mem_reg_i_51_1[12]),
        .I2(mem_reg_i_51_0[13]),
        .I3(mem_reg_i_51_1[13]),
        .I4(mem_reg_i_51_1[14]),
        .I5(mem_reg_i_51_0[14]),
        .O(mem_reg_i_68_n_3));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    mem_reg_i_70
       (.I0(Q[3]),
        .I1(\ap_CS_fsm_reg[2] ),
        .I2(Q[1]),
        .O(mem_reg_i_70_n_3));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_71
       (.I0(int_output_r_q0[7]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[23]),
        .I3(mem_reg_i_63_0[7]),
        .O(mem_reg_i_71_n_3));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_72
       (.I0(int_output_r_q0[6]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[22]),
        .I3(mem_reg_i_63_0[6]),
        .O(mem_reg_i_72_n_3));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_73
       (.I0(int_output_r_q0[5]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[21]),
        .I3(mem_reg_i_63_0[5]),
        .O(mem_reg_i_73_n_3));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_74
       (.I0(int_output_r_q0[4]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[20]),
        .I3(mem_reg_i_63_0[4]),
        .O(mem_reg_i_74_n_3));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_75
       (.I0(int_output_r_q0[3]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[19]),
        .I3(mem_reg_i_63_0[3]),
        .O(mem_reg_i_75_n_3));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_76
       (.I0(int_output_r_q0[2]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[18]),
        .I3(mem_reg_i_63_0[2]),
        .O(mem_reg_i_76_n_3));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_77
       (.I0(int_output_r_q0[1]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[17]),
        .I3(mem_reg_i_63_0[1]),
        .O(mem_reg_i_77_n_3));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_78
       (.I0(int_output_r_q0[0]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[16]),
        .I3(mem_reg_i_63_0[0]),
        .O(mem_reg_i_78_n_3));
  LUT4 #(
    .INIT(16'h56A6)) 
    mem_reg_i_79
       (.I0(mem_reg_i_63_0[15]),
        .I1(int_output_r_q0[15]),
        .I2(\output_r_load_reg_302_reg[0] ),
        .I3(int_output_r_q0[31]),
        .O(mem_reg_i_79_n_3));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_80
       (.I0(int_output_r_q0[14]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[30]),
        .I3(mem_reg_i_63_0[14]),
        .O(mem_reg_i_80_n_3));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_81
       (.I0(int_output_r_q0[13]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[29]),
        .I3(mem_reg_i_63_0[13]),
        .O(mem_reg_i_81_n_3));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_82
       (.I0(int_output_r_q0[12]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[28]),
        .I3(mem_reg_i_63_0[12]),
        .O(mem_reg_i_82_n_3));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_83
       (.I0(int_output_r_q0[11]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[27]),
        .I3(mem_reg_i_63_0[11]),
        .O(mem_reg_i_83_n_3));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_84
       (.I0(int_output_r_q0[10]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[26]),
        .I3(mem_reg_i_63_0[10]),
        .O(mem_reg_i_84_n_3));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_85
       (.I0(int_output_r_q0[9]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[25]),
        .I3(mem_reg_i_63_0[9]),
        .O(mem_reg_i_85_n_3));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_86
       (.I0(int_output_r_q0[8]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[24]),
        .I3(mem_reg_i_63_0[8]),
        .O(mem_reg_i_86_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mem_reg_i_87
       (.I0(mem_reg_i_51_0[10]),
        .I1(mem_reg_i_51_1[10]),
        .I2(mem_reg_i_51_0[9]),
        .I3(mem_reg_i_51_1[9]),
        .I4(mem_reg_i_51_1[11]),
        .I5(mem_reg_i_51_0[11]),
        .O(mem_reg_i_87_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mem_reg_i_88
       (.I0(mem_reg_i_51_0[7]),
        .I1(mem_reg_i_51_1[7]),
        .I2(mem_reg_i_51_0[6]),
        .I3(mem_reg_i_51_1[6]),
        .I4(mem_reg_i_51_1[8]),
        .I5(mem_reg_i_51_0[8]),
        .O(mem_reg_i_88_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mem_reg_i_89
       (.I0(mem_reg_i_51_0[3]),
        .I1(mem_reg_i_51_1[3]),
        .I2(mem_reg_i_51_0[4]),
        .I3(mem_reg_i_51_1[4]),
        .I4(mem_reg_i_51_1[5]),
        .I5(mem_reg_i_51_0[5]),
        .O(mem_reg_i_89_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mem_reg_i_90
       (.I0(mem_reg_i_51_0[0]),
        .I1(mem_reg_i_51_1[0]),
        .I2(mem_reg_i_51_0[1]),
        .I3(mem_reg_i_51_1[1]),
        .I4(mem_reg_i_51_1[2]),
        .I5(mem_reg_i_51_0[2]),
        .O(mem_reg_i_90_n_3));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_302[0]_i_1 
       (.I0(int_output_r_q0[16]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[0]),
        .O(mem_reg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_302[10]_i_1 
       (.I0(int_output_r_q0[26]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[10]),
        .O(mem_reg_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_302[11]_i_1 
       (.I0(int_output_r_q0[27]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[11]),
        .O(mem_reg_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_302[12]_i_1 
       (.I0(int_output_r_q0[28]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[12]),
        .O(mem_reg_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_302[13]_i_1 
       (.I0(int_output_r_q0[29]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[13]),
        .O(mem_reg_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_302[14]_i_1 
       (.I0(int_output_r_q0[30]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[14]),
        .O(mem_reg_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_302[15]_i_1 
       (.I0(int_output_r_q0[31]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[15]),
        .O(mem_reg_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_302[1]_i_1 
       (.I0(int_output_r_q0[17]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[1]),
        .O(mem_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_302[2]_i_1 
       (.I0(int_output_r_q0[18]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[2]),
        .O(mem_reg_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_302[3]_i_1 
       (.I0(int_output_r_q0[19]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[3]),
        .O(mem_reg_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_302[4]_i_1 
       (.I0(int_output_r_q0[20]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[4]),
        .O(mem_reg_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_302[5]_i_1 
       (.I0(int_output_r_q0[21]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[5]),
        .O(mem_reg_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_302[6]_i_1 
       (.I0(int_output_r_q0[22]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[6]),
        .O(mem_reg_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_302[7]_i_1 
       (.I0(int_output_r_q0[23]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[7]),
        .O(mem_reg_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_302[8]_i_1 
       (.I0(int_output_r_q0[24]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[8]),
        .O(mem_reg_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_302[9]_i_1 
       (.I0(int_output_r_q0[25]),
        .I1(\output_r_load_reg_302_reg[0] ),
        .I2(int_output_r_q0[9]),
        .O(mem_reg_0[9]));
endmodule

(* ORIG_REF_NAME = "nnlayer_control_s_axi_ram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_control_s_axi_ram__parameterized1
   (DOADO,
    DOBDO,
    D,
    mem_reg_0,
    mem_reg_1,
    mem_reg_2,
    mem_reg_3,
    mem_reg_4,
    mem_reg_5,
    mem_reg_6,
    ap_clk,
    Q,
    ADDRARDADDR,
    output_r_addr_reg_288,
    s_axi_control_WDATA,
    \rdata_reg[12] ,
    \rdata_reg[12]_0 ,
    \rdata_reg[12]_1 ,
    int_input_r_read,
    \rdata_reg[27] ,
    \rdata_reg[5] ,
    \rdata_reg[5]_0 ,
    s_axi_control_ARVALID,
    rstate,
    mem_reg_7,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    wstate,
    \rdata_reg[31] ,
    q1,
    int_bias_read,
    int_output_r_read);
  output [15:0]DOADO;
  output [31:0]DOBDO;
  output [8:0]D;
  output mem_reg_0;
  output mem_reg_1;
  output mem_reg_2;
  output mem_reg_3;
  output mem_reg_4;
  output mem_reg_5;
  output mem_reg_6;
  input ap_clk;
  input [0:0]Q;
  input [6:0]ADDRARDADDR;
  input [6:0]output_r_addr_reg_288;
  input [31:0]s_axi_control_WDATA;
  input \rdata_reg[12] ;
  input \rdata_reg[12]_0 ;
  input \rdata_reg[12]_1 ;
  input int_input_r_read;
  input [8:0]\rdata_reg[27] ;
  input \rdata_reg[5] ;
  input \rdata_reg[5]_0 ;
  input s_axi_control_ARVALID;
  input [1:0]rstate;
  input mem_reg_7;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_WSTRB;
  input [1:0]wstate;
  input [15:0]\rdata_reg[31] ;
  input [15:0]q1;
  input int_bias_read;
  input int_output_r_read;

  wire [6:0]ADDRARDADDR;
  wire [8:0]D;
  wire [15:0]DOADO;
  wire [31:0]DOBDO;
  wire [0:0]Q;
  wire ap_clk;
  wire [3:0]int_bias_be1;
  wire int_bias_ce1;
  wire [31:0]int_bias_q1;
  wire int_bias_read;
  wire int_input_r_read;
  wire int_output_r_read;
  wire mem_reg_0;
  wire mem_reg_1;
  wire mem_reg_2;
  wire mem_reg_3;
  wire mem_reg_4;
  wire mem_reg_5;
  wire mem_reg_6;
  wire mem_reg_7;
  wire [6:0]output_r_addr_reg_288;
  wire [31:24]p_1_in;
  wire [15:0]q1;
  wire \rdata[12]_i_3_n_3 ;
  wire \rdata[16]_i_2_n_3 ;
  wire \rdata[19]_i_2_n_3 ;
  wire \rdata[20]_i_2_n_3 ;
  wire \rdata[22]_i_2_n_3 ;
  wire \rdata[24]_i_2_n_3 ;
  wire \rdata[26]_i_2_n_3 ;
  wire \rdata[27]_i_2_n_3 ;
  wire \rdata[5]_i_2_n_3 ;
  wire \rdata_reg[12] ;
  wire \rdata_reg[12]_0 ;
  wire \rdata_reg[12]_1 ;
  wire [8:0]\rdata_reg[27] ;
  wire [15:0]\rdata_reg[31] ;
  wire \rdata_reg[5] ;
  wire \rdata_reg[5]_0 ;
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
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,output_r_addr_reg_288,1'b1,1'b1,1'b1,1'b1,1'b1}),
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
        .DOADO({int_bias_q1[31],DOADO[15:13],int_bias_q1[27:26],DOADO[12],int_bias_q1[24:22],DOADO[11],int_bias_q1[20:19],DOADO[10:9],int_bias_q1[16:15],DOADO[8:7],int_bias_q1[12:11],DOADO[6:2],int_bias_q1[5:4],DOADO[1],int_bias_q1[2],DOADO[0],int_bias_q1[0]}),
        .DOBDO(DOBDO),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_bias_ce1),
        .ENBWREN(Q),
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
        .I3(mem_reg_7),
        .I4(s_axi_control_WVALID),
        .O(int_bias_ce1));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_10__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_7),
        .I3(\rdata_reg[12]_1 ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_bias_be1[3]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_11
       (.I0(s_axi_control_WSTRB[2]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_7),
        .I3(\rdata_reg[12]_1 ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_bias_be1[2]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_12
       (.I0(s_axi_control_WSTRB[1]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_7),
        .I3(\rdata_reg[12]_1 ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_bias_be1[1]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_13
       (.I0(s_axi_control_WSTRB[0]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_7),
        .I3(\rdata_reg[12]_1 ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_bias_be1[0]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_2__1
       (.I0(s_axi_control_WDATA[31]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[31]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_3__1
       (.I0(s_axi_control_WDATA[30]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[30]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_4__1
       (.I0(s_axi_control_WDATA[29]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[29]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_5__1
       (.I0(s_axi_control_WDATA[28]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[28]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_6__1
       (.I0(s_axi_control_WDATA[27]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[27]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_7__1
       (.I0(s_axi_control_WDATA[26]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[26]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_8__0
       (.I0(s_axi_control_WDATA[25]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[25]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_9__0
       (.I0(s_axi_control_WDATA[24]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[24]));
  LUT5 #(
    .INIT(32'h0047FF47)) 
    \rdata[0]_i_3 
       (.I0(int_bias_q1[0]),
        .I1(int_bias_read),
        .I2(q1[0]),
        .I3(int_output_r_read),
        .I4(\rdata_reg[31] [0]),
        .O(mem_reg_6));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[11]_i_2 
       (.I0(int_bias_q1[11]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31] [4]),
        .I3(int_output_r_read),
        .I4(q1[4]),
        .I5(int_bias_read),
        .O(mem_reg_2));
  LUT6 #(
    .INIT(64'h2F2F2F20202F2020)) 
    \rdata[12]_i_1 
       (.I0(\rdata_reg[12] ),
        .I1(\rdata_reg[12]_0 ),
        .I2(\rdata_reg[12]_1 ),
        .I3(int_input_r_read),
        .I4(\rdata[12]_i_3_n_3 ),
        .I5(\rdata_reg[27] [1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \rdata[12]_i_3 
       (.I0(int_bias_q1[12]),
        .I1(int_bias_read),
        .I2(q1[5]),
        .I3(int_output_r_read),
        .I4(\rdata_reg[31] [5]),
        .O(\rdata[12]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[15]_i_2 
       (.I0(int_bias_q1[15]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31] [6]),
        .I3(int_output_r_read),
        .I4(q1[6]),
        .I5(int_bias_read),
        .O(mem_reg_3));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[16]_i_1 
       (.I0(\rdata[16]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(\rdata_reg[27] [2]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[16]_i_2 
       (.I0(int_bias_q1[16]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31] [7]),
        .I3(int_output_r_read),
        .I4(q1[7]),
        .I5(int_bias_read),
        .O(\rdata[16]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[19]_i_1 
       (.I0(\rdata[19]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(\rdata_reg[27] [3]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[19]_i_2 
       (.I0(int_bias_q1[19]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31] [8]),
        .I3(int_output_r_read),
        .I4(q1[8]),
        .I5(int_bias_read),
        .O(\rdata[19]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[20]_i_1 
       (.I0(\rdata[20]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(\rdata_reg[27] [4]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[20]_i_2 
       (.I0(int_bias_q1[20]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31] [9]),
        .I3(int_output_r_read),
        .I4(q1[9]),
        .I5(int_bias_read),
        .O(\rdata[20]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[22]_i_1 
       (.I0(\rdata[22]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(\rdata_reg[27] [5]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[22]_i_2 
       (.I0(int_bias_q1[22]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31] [10]),
        .I3(int_output_r_read),
        .I4(q1[10]),
        .I5(int_bias_read),
        .O(\rdata[22]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'h0311031103000333)) 
    \rdata[23]_i_2 
       (.I0(int_bias_q1[23]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31] [11]),
        .I3(int_output_r_read),
        .I4(q1[11]),
        .I5(int_bias_read),
        .O(mem_reg_4));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[24]_i_1 
       (.I0(\rdata[24]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(\rdata_reg[27] [6]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[24]_i_2 
       (.I0(int_bias_q1[24]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31] [12]),
        .I3(int_output_r_read),
        .I4(q1[12]),
        .I5(int_bias_read),
        .O(\rdata[24]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[26]_i_1 
       (.I0(\rdata[26]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(\rdata_reg[27] [7]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[26]_i_2 
       (.I0(int_bias_q1[26]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31] [13]),
        .I3(int_output_r_read),
        .I4(q1[13]),
        .I5(int_bias_read),
        .O(\rdata[26]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[27]_i_1 
       (.I0(\rdata[27]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(\rdata_reg[27] [8]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[27]_i_2 
       (.I0(int_bias_q1[27]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31] [14]),
        .I3(int_output_r_read),
        .I4(q1[14]),
        .I5(int_bias_read),
        .O(\rdata[27]_i_2_n_3 ));
  LUT5 #(
    .INIT(32'hCCCCAAF0)) 
    \rdata[2]_i_4 
       (.I0(int_bias_q1[2]),
        .I1(\rdata_reg[31] [1]),
        .I2(q1[1]),
        .I3(int_bias_read),
        .I4(int_output_r_read),
        .O(mem_reg_0));
  LUT6 #(
    .INIT(64'h0311031103000333)) 
    \rdata[31]_i_4 
       (.I0(int_bias_q1[31]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31] [15]),
        .I3(int_output_r_read),
        .I4(q1[15]),
        .I5(int_bias_read),
        .O(mem_reg_5));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[4]_i_3 
       (.I0(int_bias_q1[4]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31] [2]),
        .I3(int_output_r_read),
        .I4(q1[2]),
        .I5(int_bias_read),
        .O(mem_reg_1));
  LUT6 #(
    .INIT(64'h00C5FFC500C500C5)) 
    \rdata[5]_i_1 
       (.I0(\rdata[5]_i_2_n_3 ),
        .I1(\rdata_reg[27] [0]),
        .I2(int_input_r_read),
        .I3(\rdata_reg[12]_1 ),
        .I4(\rdata_reg[5] ),
        .I5(\rdata_reg[5]_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h00FF4747)) 
    \rdata[5]_i_2 
       (.I0(int_bias_q1[5]),
        .I1(int_bias_read),
        .I2(q1[3]),
        .I3(\rdata_reg[31] [3]),
        .I4(int_output_r_read),
        .O(\rdata[5]_i_2_n_3 ));
endmodule

(* ORIG_REF_NAME = "nnlayer_control_s_axi_ram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_control_s_axi_ram__parameterized2
   (D,
    ADDRARDADDR,
    mem_reg_0_0_0,
    q1,
    mem_reg_0_1_0,
    mem_reg_0_3_0,
    mem_reg_0_3_1,
    mem_reg_3_3_0,
    q0,
    \rdata_reg[14] ,
    \rdata_reg[14]_0 ,
    \rdata_reg[14]_1 ,
    int_input_r_read,
    DOADO,
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
    \rdata_reg[30] ,
    int_bias_read,
    int_output_r_read,
    \rdata_reg[30]_0 ,
    ap_clk,
    grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg,
    grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0);
  output [10:0]D;
  output [6:0]ADDRARDADDR;
  output mem_reg_0_0_0;
  output [15:0]q1;
  output mem_reg_0_1_0;
  output mem_reg_0_3_0;
  output mem_reg_0_3_1;
  output mem_reg_3_3_0;
  output [31:0]q0;
  input \rdata_reg[14] ;
  input \rdata_reg[14]_0 ;
  input \rdata_reg[14]_1 ;
  input int_input_r_read;
  input [10:0]DOADO;
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
  input [15:0]\rdata_reg[30] ;
  input int_bias_read;
  input int_output_r_read;
  input [15:0]\rdata_reg[30]_0 ;
  input ap_clk;
  input grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg;
  input [13:0]grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0;

  wire [6:0]ADDRARDADDR;
  wire [10:0]D;
  wire [10:0]DOADO;
  wire [13:0]Q;
  wire ap_clk;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg;
  wire [13:0]grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0;
  wire int_bias_read;
  wire int_input_r_read;
  wire int_output_r_read;
  wire [13:7]int_weights_address1;
  wire [3:0]int_weights_be1;
  wire int_weights_ce1;
  wire [30:1]int_weights_q1;
  wire mem_reg_0_0_0;
  wire mem_reg_0_0_1;
  wire mem_reg_0_1_0;
  wire mem_reg_0_3_0;
  wire mem_reg_0_3_1;
  wire mem_reg_3_3_0;
  wire [31:24]p_1_in;
  wire [31:0]q0;
  wire [15:0]q1;
  wire \rdata[10]_i_3_n_3 ;
  wire \rdata[13]_i_3_n_3 ;
  wire \rdata[14]_i_3_n_3 ;
  wire \rdata[17]_i_2_n_3 ;
  wire \rdata[18]_i_2_n_3 ;
  wire \rdata[21]_i_2_n_3 ;
  wire \rdata[25]_i_2_n_3 ;
  wire \rdata[28]_i_2_n_3 ;
  wire \rdata[29]_i_2_n_3 ;
  wire \rdata[8]_i_3_n_3 ;
  wire \rdata[9]_i_3_n_3 ;
  wire \rdata_reg[10] ;
  wire \rdata_reg[13] ;
  wire \rdata_reg[14] ;
  wire \rdata_reg[14]_0 ;
  wire \rdata_reg[14]_1 ;
  wire [15:0]\rdata_reg[30] ;
  wire [15:0]\rdata_reg[30]_0 ;
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
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0,1'b1}),
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
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
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
        .I3(\rdata_reg[14]_1 ),
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
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0,1'b1}),
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
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
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
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0,1'b1}),
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
        .DOADO({NLW_mem_reg_0_2_DOADO_UNCONNECTED[31:2],q1[3:2]}),
        .DOBDO({NLW_mem_reg_0_2_DOBDO_UNCONNECTED[31:2],q0[5:4]}),
        .DOPADOP(NLW_mem_reg_0_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
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
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0,1'b1}),
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
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
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
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0,1'b1}),
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
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
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
        .I3(\rdata_reg[14]_1 ),
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
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0,1'b1}),
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
        .DOADO({NLW_mem_reg_1_1_DOADO_UNCONNECTED[31:2],q1[4],int_weights_q1[10]}),
        .DOBDO({NLW_mem_reg_1_1_DOBDO_UNCONNECTED[31:2],q0[11:10]}),
        .DOPADOP(NLW_mem_reg_1_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
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
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0,1'b1}),
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
        .DOADO({NLW_mem_reg_1_2_DOADO_UNCONNECTED[31:2],int_weights_q1[13],q1[5]}),
        .DOBDO({NLW_mem_reg_1_2_DOBDO_UNCONNECTED[31:2],q0[13:12]}),
        .DOPADOP(NLW_mem_reg_1_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
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
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0,1'b1}),
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
        .DOADO({NLW_mem_reg_1_3_DOADO_UNCONNECTED[31:2],q1[6],int_weights_q1[14]}),
        .DOBDO({NLW_mem_reg_1_3_DOBDO_UNCONNECTED[31:2],q0[15:14]}),
        .DOPADOP(NLW_mem_reg_1_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
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
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0,1'b1}),
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
        .DOADO({NLW_mem_reg_2_0_DOADO_UNCONNECTED[31:2],int_weights_q1[17],q1[7]}),
        .DOBDO({NLW_mem_reg_2_0_DOBDO_UNCONNECTED[31:2],q0[17:16]}),
        .DOPADOP(NLW_mem_reg_2_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
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
        .I3(\rdata_reg[14]_1 ),
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
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0,1'b1}),
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
        .DOADO({NLW_mem_reg_2_1_DOADO_UNCONNECTED[31:2],q1[8],int_weights_q1[18]}),
        .DOBDO({NLW_mem_reg_2_1_DOBDO_UNCONNECTED[31:2],q0[19:18]}),
        .DOPADOP(NLW_mem_reg_2_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
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
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0,1'b1}),
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
        .DOADO({NLW_mem_reg_2_2_DOADO_UNCONNECTED[31:2],int_weights_q1[21],q1[9]}),
        .DOBDO({NLW_mem_reg_2_2_DOBDO_UNCONNECTED[31:2],q0[21:20]}),
        .DOPADOP(NLW_mem_reg_2_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
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
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0,1'b1}),
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
        .DOADO({NLW_mem_reg_2_3_DOADO_UNCONNECTED[31:2],q1[11:10]}),
        .DOBDO({NLW_mem_reg_2_3_DOBDO_UNCONNECTED[31:2],q0[23:22]}),
        .DOPADOP(NLW_mem_reg_2_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
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
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0,1'b1}),
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
        .DOADO({NLW_mem_reg_3_0_DOADO_UNCONNECTED[31:2],int_weights_q1[25],q1[12]}),
        .DOBDO({NLW_mem_reg_3_0_DOBDO_UNCONNECTED[31:2],q0[25:24]}),
        .DOPADOP(NLW_mem_reg_3_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
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
        .I3(\rdata_reg[14]_1 ),
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
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0,1'b1}),
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
        .DOADO({NLW_mem_reg_3_1_DOADO_UNCONNECTED[31:2],q1[14:13]}),
        .DOBDO({NLW_mem_reg_3_1_DOBDO_UNCONNECTED[31:2],q0[27:26]}),
        .DOPADOP(NLW_mem_reg_3_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
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
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0,1'b1}),
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
        .DOADO({NLW_mem_reg_3_2_DOADO_UNCONNECTED[31:2],int_weights_q1[29:28]}),
        .DOBDO({NLW_mem_reg_3_2_DOBDO_UNCONNECTED[31:2],q0[29:28]}),
        .DOPADOP(NLW_mem_reg_3_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
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
        .ADDRBWRADDR({1'b1,grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0,1'b1}),
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
        .DOADO({NLW_mem_reg_3_3_DOADO_UNCONNECTED[31:2],q1[15],int_weights_q1[30]}),
        .DOBDO({NLW_mem_reg_3_3_DOBDO_UNCONNECTED[31:2],q0[31:30]}),
        .DOPADOP(NLW_mem_reg_3_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
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
       (.I0(\rdata_reg[14] ),
        .I1(\rdata_reg[10] ),
        .I2(\rdata_reg[14]_1 ),
        .I3(int_input_r_read),
        .I4(\rdata[10]_i_3_n_3 ),
        .I5(DOADO[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hFFCA00CA)) 
    \rdata[10]_i_3 
       (.I0(int_weights_q1[10]),
        .I1(\rdata_reg[30] [6]),
        .I2(int_bias_read),
        .I3(int_output_r_read),
        .I4(\rdata_reg[30]_0 [6]),
        .O(\rdata[10]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h2F2F2F20202F2020)) 
    \rdata[13]_i_1 
       (.I0(\rdata_reg[14] ),
        .I1(\rdata_reg[13] ),
        .I2(\rdata_reg[14]_1 ),
        .I3(int_input_r_read),
        .I4(\rdata[13]_i_3_n_3 ),
        .I5(DOADO[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hFFCA00CA)) 
    \rdata[13]_i_3 
       (.I0(int_weights_q1[13]),
        .I1(\rdata_reg[30] [7]),
        .I2(int_bias_read),
        .I3(int_output_r_read),
        .I4(\rdata_reg[30]_0 [7]),
        .O(\rdata[13]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h2F2F2F20202F2020)) 
    \rdata[14]_i_1 
       (.I0(\rdata_reg[14] ),
        .I1(\rdata_reg[14]_0 ),
        .I2(\rdata_reg[14]_1 ),
        .I3(int_input_r_read),
        .I4(\rdata[14]_i_3_n_3 ),
        .I5(DOADO[4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hFFCA00CA)) 
    \rdata[14]_i_3 
       (.I0(int_weights_q1[14]),
        .I1(\rdata_reg[30] [8]),
        .I2(int_bias_read),
        .I3(int_output_r_read),
        .I4(\rdata_reg[30]_0 [8]),
        .O(\rdata[14]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[17]_i_1 
       (.I0(\rdata[17]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(DOADO[5]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFCFFFCCCFCEEFCEE)) 
    \rdata[17]_i_2 
       (.I0(int_weights_q1[17]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [9]),
        .I3(int_output_r_read),
        .I4(\rdata_reg[30] [9]),
        .I5(int_bias_read),
        .O(\rdata[17]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[18]_i_1 
       (.I0(\rdata[18]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(DOADO[6]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFCFFFCCCFCEEFCEE)) 
    \rdata[18]_i_2 
       (.I0(int_weights_q1[18]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [10]),
        .I3(int_output_r_read),
        .I4(\rdata_reg[30] [10]),
        .I5(int_bias_read),
        .O(\rdata[18]_i_2_n_3 ));
  LUT5 #(
    .INIT(32'h0035FF35)) 
    \rdata[1]_i_3 
       (.I0(int_weights_q1[1]),
        .I1(\rdata_reg[30] [0]),
        .I2(int_bias_read),
        .I3(int_output_r_read),
        .I4(\rdata_reg[30]_0 [0]),
        .O(mem_reg_0_0_0));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[21]_i_1 
       (.I0(\rdata[21]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(DOADO[7]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFCFFFCCCFCEEFCEE)) 
    \rdata[21]_i_2 
       (.I0(int_weights_q1[21]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [11]),
        .I3(int_output_r_read),
        .I4(\rdata_reg[30] [11]),
        .I5(int_bias_read),
        .O(\rdata[21]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[25]_i_1 
       (.I0(\rdata[25]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(DOADO[8]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFCFFFCCCFCEEFCEE)) 
    \rdata[25]_i_2 
       (.I0(int_weights_q1[25]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [12]),
        .I3(int_output_r_read),
        .I4(\rdata_reg[30] [12]),
        .I5(int_bias_read),
        .O(\rdata[25]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[28]_i_1 
       (.I0(\rdata[28]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(DOADO[9]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hFCFFFCCCFCEEFCEE)) 
    \rdata[28]_i_2 
       (.I0(int_weights_q1[28]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [13]),
        .I3(int_output_r_read),
        .I4(\rdata_reg[30] [13]),
        .I5(int_bias_read),
        .O(\rdata[28]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[29]_i_1 
       (.I0(\rdata[29]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(DOADO[10]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFCFFFCCCFCEEFCEE)) 
    \rdata[29]_i_2 
       (.I0(int_weights_q1[29]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [14]),
        .I3(int_output_r_read),
        .I4(\rdata_reg[30] [14]),
        .I5(int_bias_read),
        .O(\rdata[29]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'h0300033303110311)) 
    \rdata[30]_i_2 
       (.I0(int_weights_q1[30]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [15]),
        .I3(int_output_r_read),
        .I4(\rdata_reg[30] [15]),
        .I5(int_bias_read),
        .O(mem_reg_3_3_0));
  LUT5 #(
    .INIT(32'h0035FF35)) 
    \rdata[3]_i_3 
       (.I0(int_weights_q1[3]),
        .I1(\rdata_reg[30] [1]),
        .I2(int_bias_read),
        .I3(int_output_r_read),
        .I4(\rdata_reg[30]_0 [1]),
        .O(mem_reg_0_1_0));
  LUT6 #(
    .INIT(64'hFFFFFFCAFFFF00CA)) 
    \rdata[6]_i_4 
       (.I0(int_weights_q1[6]),
        .I1(\rdata_reg[30] [2]),
        .I2(int_bias_read),
        .I3(int_output_r_read),
        .I4(int_input_r_read),
        .I5(\rdata_reg[30]_0 [2]),
        .O(mem_reg_0_3_0));
  LUT5 #(
    .INIT(32'h0035FF35)) 
    \rdata[7]_i_4 
       (.I0(int_weights_q1[7]),
        .I1(\rdata_reg[30] [3]),
        .I2(int_bias_read),
        .I3(int_output_r_read),
        .I4(\rdata_reg[30]_0 [3]),
        .O(mem_reg_0_3_1));
  LUT6 #(
    .INIT(64'h2F2F2F20202F2020)) 
    \rdata[8]_i_1 
       (.I0(\rdata_reg[14] ),
        .I1(\rdata_reg[8] ),
        .I2(\rdata_reg[14]_1 ),
        .I3(int_input_r_read),
        .I4(\rdata[8]_i_3_n_3 ),
        .I5(DOADO[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFFCA00CA)) 
    \rdata[8]_i_3 
       (.I0(int_weights_q1[8]),
        .I1(\rdata_reg[30] [4]),
        .I2(int_bias_read),
        .I3(int_output_r_read),
        .I4(\rdata_reg[30]_0 [4]),
        .O(\rdata[8]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h2F2F2F20202F2020)) 
    \rdata[9]_i_1 
       (.I0(\rdata_reg[14] ),
        .I1(\rdata_reg[9] ),
        .I2(\rdata_reg[14]_1 ),
        .I3(int_input_r_read),
        .I4(\rdata[9]_i_3_n_3 ),
        .I5(DOADO[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFFCA00CA)) 
    \rdata[9]_i_3 
       (.I0(int_weights_q1[9]),
        .I1(\rdata_reg[30] [5]),
        .I2(int_bias_read),
        .I3(int_output_r_read),
        .I4(\rdata_reg[30]_0 [5]),
        .O(\rdata[9]_i_3_n_3 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_flow_control_loop_pipe_sequential_init
   (E,
    SR,
    grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_ready,
    D,
    \output_r_load_reg_302_reg[15] ,
    DI,
    S,
    ADDRBWRADDR,
    \inNeurons_fu_56_reg[15] ,
    \numOfInNeurons_read_reg_254_reg[15] ,
    \inNeurons_fu_56_reg[15]_0 ,
    grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg,
    \inNeurons_fu_56_reg[15]_1 ,
    \inNeurons_fu_56_reg[3] ,
    \inNeurons_fu_56_reg[6] ,
    \empty_reg_278_reg[14] ,
    grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg_0,
    grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg_1,
    grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg_2,
    \inNeurons_fu_56_reg[0] ,
    ap_rst_n_inv,
    ap_clk,
    grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg,
    CO,
    empty_reg_2780,
    \ap_CS_fsm_reg[4] ,
    Q,
    ap_loop_exit_ready_pp0_iter3_reg,
    ap_rst_n,
    \conv1514_fu_60_reg[15] ,
    P,
    ap_enable_reg_pp0_iter4,
    \conv1514_fu_60_reg[15]_0 ,
    icmp_ln33_fu_136_p2_carry__0,
    \inNeurons_fu_56_reg[15]_2 ,
    mem_reg_0_0,
    \int_input_r_shift0_reg[0] );
  output [0:0]E;
  output [0:0]SR;
  output grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_ready;
  output [1:0]D;
  output [15:0]\output_r_load_reg_302_reg[15] ;
  output [3:0]DI;
  output [3:0]S;
  output [5:0]ADDRBWRADDR;
  output [7:0]\inNeurons_fu_56_reg[15] ;
  output [3:0]\numOfInNeurons_read_reg_254_reg[15] ;
  output [3:0]\inNeurons_fu_56_reg[15]_0 ;
  output [0:0]grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg;
  output [15:0]\inNeurons_fu_56_reg[15]_1 ;
  output [3:0]\inNeurons_fu_56_reg[3] ;
  output [2:0]\inNeurons_fu_56_reg[6] ;
  output [2:0]\empty_reg_278_reg[14] ;
  output [3:0]grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg_0;
  output [3:0]grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg_1;
  output [3:0]grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg_2;
  output \inNeurons_fu_56_reg[0] ;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg;
  input [0:0]CO;
  input empty_reg_2780;
  input \ap_CS_fsm_reg[4] ;
  input [1:0]Q;
  input ap_loop_exit_ready_pp0_iter3_reg;
  input ap_rst_n;
  input [15:0]\conv1514_fu_60_reg[15] ;
  input [15:0]P;
  input ap_enable_reg_pp0_iter4;
  input [15:0]\conv1514_fu_60_reg[15]_0 ;
  input [15:0]icmp_ln33_fu_136_p2_carry__0;
  input [15:0]\inNeurons_fu_56_reg[15]_2 ;
  input [14:0]mem_reg_0_0;
  input \int_input_r_shift0_reg[0] ;

  wire [5:0]ADDRBWRADDR;
  wire [0:0]CO;
  wire [1:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [15:0]P;
  wire [1:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire \ap_CS_fsm_reg[4] ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1__0_n_3;
  wire ap_enable_reg_pp0_iter4;
  wire ap_loop_exit_ready_pp0_iter3_reg;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__0_n_3;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [14:14]ap_sig_allocacmp_inNeurons_1;
  wire [15:0]\conv1514_fu_60_reg[15] ;
  wire [15:0]\conv1514_fu_60_reg[15]_0 ;
  wire empty_reg_2780;
  wire [2:0]\empty_reg_278_reg[14] ;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_ready;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg;
  wire [0:0]grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg;
  wire [3:0]grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg_0;
  wire [3:0]grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg_1;
  wire [3:0]grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg_2;
  wire [0:0]grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_input_r_address0;
  wire [15:0]icmp_ln33_fu_136_p2_carry__0;
  wire \inNeurons_fu_56[12]_i_2_n_3 ;
  wire \inNeurons_fu_56[12]_i_3_n_3 ;
  wire \inNeurons_fu_56[12]_i_4_n_3 ;
  wire \inNeurons_fu_56[12]_i_5_n_3 ;
  wire \inNeurons_fu_56[15]_i_4_n_3 ;
  wire \inNeurons_fu_56[15]_i_6_n_3 ;
  wire \inNeurons_fu_56[4]_i_3_n_3 ;
  wire \inNeurons_fu_56[4]_i_4_n_3 ;
  wire \inNeurons_fu_56[4]_i_5_n_3 ;
  wire \inNeurons_fu_56[4]_i_6_n_3 ;
  wire \inNeurons_fu_56[8]_i_2_n_3 ;
  wire \inNeurons_fu_56[8]_i_3_n_3 ;
  wire \inNeurons_fu_56[8]_i_4_n_3 ;
  wire \inNeurons_fu_56[8]_i_5_n_3 ;
  wire \inNeurons_fu_56_reg[0] ;
  wire \inNeurons_fu_56_reg[12]_i_1_n_3 ;
  wire \inNeurons_fu_56_reg[12]_i_1_n_4 ;
  wire \inNeurons_fu_56_reg[12]_i_1_n_5 ;
  wire \inNeurons_fu_56_reg[12]_i_1_n_6 ;
  wire [7:0]\inNeurons_fu_56_reg[15] ;
  wire [3:0]\inNeurons_fu_56_reg[15]_0 ;
  wire [15:0]\inNeurons_fu_56_reg[15]_1 ;
  wire [15:0]\inNeurons_fu_56_reg[15]_2 ;
  wire \inNeurons_fu_56_reg[15]_i_3_n_5 ;
  wire \inNeurons_fu_56_reg[15]_i_3_n_6 ;
  wire [3:0]\inNeurons_fu_56_reg[3] ;
  wire \inNeurons_fu_56_reg[4]_i_1_n_3 ;
  wire \inNeurons_fu_56_reg[4]_i_1_n_4 ;
  wire \inNeurons_fu_56_reg[4]_i_1_n_5 ;
  wire \inNeurons_fu_56_reg[4]_i_1_n_6 ;
  wire [2:0]\inNeurons_fu_56_reg[6] ;
  wire \inNeurons_fu_56_reg[8]_i_1_n_3 ;
  wire \inNeurons_fu_56_reg[8]_i_1_n_4 ;
  wire \inNeurons_fu_56_reg[8]_i_1_n_5 ;
  wire \inNeurons_fu_56_reg[8]_i_1_n_6 ;
  wire \int_input_r_shift0_reg[0] ;
  wire [14:0]mem_reg_0_0;
  wire [3:0]\numOfInNeurons_read_reg_254_reg[15] ;
  wire [15:0]\output_r_load_reg_302_reg[15] ;
  wire [3:2]\NLW_inNeurons_fu_56_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_inNeurons_fu_56_reg[15]_i_3_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h2A)) 
    add_ln35_fu_152_p2_carry__0_i_1
       (.I0(\inNeurons_fu_56_reg[15]_2 [7]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\inNeurons_fu_56_reg[15] [0]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln35_fu_152_p2_carry__0_i_2
       (.I0(\inNeurons_fu_56_reg[15]_2 [6]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\inNeurons_fu_56_reg[6] [2]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln35_fu_152_p2_carry__0_i_3
       (.I0(\inNeurons_fu_56_reg[15]_2 [5]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\inNeurons_fu_56_reg[6] [1]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln35_fu_152_p2_carry__0_i_4
       (.I0(\inNeurons_fu_56_reg[15]_2 [4]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\inNeurons_fu_56_reg[6] [0]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln35_fu_152_p2_carry__0_i_5
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_2 [7]),
        .I3(mem_reg_0_0[7]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg_1[3]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln35_fu_152_p2_carry__0_i_6
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_2 [6]),
        .I3(mem_reg_0_0[6]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg_1[2]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln35_fu_152_p2_carry__0_i_7
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_2 [5]),
        .I3(mem_reg_0_0[5]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg_1[1]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln35_fu_152_p2_carry__0_i_8
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_2 [4]),
        .I3(mem_reg_0_0[4]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg_1[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln35_fu_152_p2_carry__1_i_1
       (.I0(\inNeurons_fu_56_reg[15]_2 [11]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\inNeurons_fu_56_reg[15] [4]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln35_fu_152_p2_carry__1_i_2
       (.I0(\inNeurons_fu_56_reg[15]_2 [10]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\inNeurons_fu_56_reg[15] [3]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln35_fu_152_p2_carry__1_i_3
       (.I0(\inNeurons_fu_56_reg[15]_2 [9]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\inNeurons_fu_56_reg[15] [2]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln35_fu_152_p2_carry__1_i_4
       (.I0(\inNeurons_fu_56_reg[15]_2 [8]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\inNeurons_fu_56_reg[15] [1]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln35_fu_152_p2_carry__1_i_5
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_2 [11]),
        .I3(mem_reg_0_0[11]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg_2[3]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln35_fu_152_p2_carry__1_i_6
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_2 [10]),
        .I3(mem_reg_0_0[10]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg_2[2]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln35_fu_152_p2_carry__1_i_7
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_2 [9]),
        .I3(mem_reg_0_0[9]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg_2[1]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln35_fu_152_p2_carry__1_i_8
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_2 [8]),
        .I3(mem_reg_0_0[8]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg_2[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln35_fu_152_p2_carry__2_i_1
       (.I0(\inNeurons_fu_56_reg[15]_2 [13]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\inNeurons_fu_56_reg[15] [6]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln35_fu_152_p2_carry__2_i_2
       (.I0(\inNeurons_fu_56_reg[15]_2 [12]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\inNeurons_fu_56_reg[15] [5]));
  LUT4 #(
    .INIT(16'h95AA)) 
    add_ln35_fu_152_p2_carry__2_i_3
       (.I0(mem_reg_0_0[14]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\inNeurons_fu_56_reg[15]_2 [14]),
        .O(\empty_reg_278_reg[14] [2]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln35_fu_152_p2_carry__2_i_4
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_2 [13]),
        .I3(mem_reg_0_0[13]),
        .O(\empty_reg_278_reg[14] [1]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln35_fu_152_p2_carry__2_i_5
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_2 [12]),
        .I3(mem_reg_0_0[12]),
        .O(\empty_reg_278_reg[14] [0]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln35_fu_152_p2_carry_i_1
       (.I0(\inNeurons_fu_56_reg[15]_2 [3]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\inNeurons_fu_56_reg[3] [3]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln35_fu_152_p2_carry_i_2
       (.I0(\inNeurons_fu_56_reg[15]_2 [2]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\inNeurons_fu_56_reg[3] [2]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln35_fu_152_p2_carry_i_3
       (.I0(\inNeurons_fu_56_reg[15]_2 [1]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\inNeurons_fu_56_reg[3] [1]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln35_fu_152_p2_carry_i_4
       (.I0(\inNeurons_fu_56_reg[15]_2 [0]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\inNeurons_fu_56_reg[3] [0]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln35_fu_152_p2_carry_i_5
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_2 [3]),
        .I3(mem_reg_0_0[3]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg_0[3]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln35_fu_152_p2_carry_i_6
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_2 [2]),
        .I3(mem_reg_0_0[2]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg_0[2]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln35_fu_152_p2_carry_i_7
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_2 [1]),
        .I3(mem_reg_0_0[1]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg_0[1]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln35_fu_152_p2_carry_i_8
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_2 [0]),
        .I3(mem_reg_0_0[0]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hBABBAAAA)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(Q[0]),
        .I1(ap_loop_exit_ready_pp0_iter3_reg),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I3(ap_done_cache),
        .I4(Q[1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hF888F8F8F888F888)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(empty_reg_2780),
        .I1(\ap_CS_fsm_reg[4] ),
        .I2(Q[1]),
        .I3(ap_loop_exit_ready_pp0_iter3_reg),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I5(ap_done_cache),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    ap_done_cache_i_1__0
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I1(ap_loop_exit_ready_pp0_iter3_reg),
        .I2(ap_done_cache),
        .O(ap_done_cache_i_1__0_n_3));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__0_n_3),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_i_1
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I1(CO),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_ready));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hBBFB)) 
    ap_loop_init_int_i_1__0
       (.I0(ap_loop_exit_ready_pp0_iter3_reg),
        .I1(ap_rst_n),
        .I2(ap_loop_init_int),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
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
    .INIT(64'hBF80BFBFBF808080)) 
    \conv1514_fu_60[0]_i_1 
       (.I0(\conv1514_fu_60_reg[15] [0]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[0]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv1514_fu_60_reg[15]_0 [0]),
        .O(\output_r_load_reg_302_reg[15] [0]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv1514_fu_60[10]_i_1 
       (.I0(\conv1514_fu_60_reg[15] [10]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[10]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv1514_fu_60_reg[15]_0 [10]),
        .O(\output_r_load_reg_302_reg[15] [10]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv1514_fu_60[11]_i_1 
       (.I0(\conv1514_fu_60_reg[15] [11]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[11]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv1514_fu_60_reg[15]_0 [11]),
        .O(\output_r_load_reg_302_reg[15] [11]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv1514_fu_60[12]_i_1 
       (.I0(\conv1514_fu_60_reg[15] [12]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[12]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv1514_fu_60_reg[15]_0 [12]),
        .O(\output_r_load_reg_302_reg[15] [12]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv1514_fu_60[13]_i_1 
       (.I0(\conv1514_fu_60_reg[15] [13]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[13]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv1514_fu_60_reg[15]_0 [13]),
        .O(\output_r_load_reg_302_reg[15] [13]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv1514_fu_60[14]_i_1 
       (.I0(\conv1514_fu_60_reg[15] [14]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[14]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv1514_fu_60_reg[15]_0 [14]),
        .O(\output_r_load_reg_302_reg[15] [14]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv1514_fu_60[15]_i_1 
       (.I0(\conv1514_fu_60_reg[15] [15]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[15]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv1514_fu_60_reg[15]_0 [15]),
        .O(\output_r_load_reg_302_reg[15] [15]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv1514_fu_60[1]_i_1 
       (.I0(\conv1514_fu_60_reg[15] [1]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[1]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv1514_fu_60_reg[15]_0 [1]),
        .O(\output_r_load_reg_302_reg[15] [1]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv1514_fu_60[2]_i_1 
       (.I0(\conv1514_fu_60_reg[15] [2]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[2]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv1514_fu_60_reg[15]_0 [2]),
        .O(\output_r_load_reg_302_reg[15] [2]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv1514_fu_60[3]_i_1 
       (.I0(\conv1514_fu_60_reg[15] [3]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[3]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv1514_fu_60_reg[15]_0 [3]),
        .O(\output_r_load_reg_302_reg[15] [3]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv1514_fu_60[4]_i_1 
       (.I0(\conv1514_fu_60_reg[15] [4]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[4]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv1514_fu_60_reg[15]_0 [4]),
        .O(\output_r_load_reg_302_reg[15] [4]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv1514_fu_60[5]_i_1 
       (.I0(\conv1514_fu_60_reg[15] [5]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[5]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv1514_fu_60_reg[15]_0 [5]),
        .O(\output_r_load_reg_302_reg[15] [5]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv1514_fu_60[6]_i_1 
       (.I0(\conv1514_fu_60_reg[15] [6]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[6]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv1514_fu_60_reg[15]_0 [6]),
        .O(\output_r_load_reg_302_reg[15] [6]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv1514_fu_60[7]_i_1 
       (.I0(\conv1514_fu_60_reg[15] [7]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[7]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv1514_fu_60_reg[15]_0 [7]),
        .O(\output_r_load_reg_302_reg[15] [7]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv1514_fu_60[8]_i_1 
       (.I0(\conv1514_fu_60_reg[15] [8]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[8]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv1514_fu_60_reg[15]_0 [8]),
        .O(\output_r_load_reg_302_reg[15] [8]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv1514_fu_60[9]_i_1 
       (.I0(\conv1514_fu_60_reg[15] [9]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[9]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv1514_fu_60_reg[15]_0 [9]),
        .O(\output_r_load_reg_302_reg[15] [9]));
  LUT6 #(
    .INIT(64'hC0EA80AAEAFF80AA)) 
    icmp_ln33_fu_136_p2_carry__0_i_1
       (.I0(icmp_ln33_fu_136_p2_carry__0[15]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\inNeurons_fu_56_reg[15]_2 [15]),
        .I4(icmp_ln33_fu_136_p2_carry__0[14]),
        .I5(\inNeurons_fu_56_reg[15]_2 [14]),
        .O(\numOfInNeurons_read_reg_254_reg[15] [3]));
  LUT6 #(
    .INIT(64'hC0EA80AAEAFF80AA)) 
    icmp_ln33_fu_136_p2_carry__0_i_2
       (.I0(icmp_ln33_fu_136_p2_carry__0[13]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\inNeurons_fu_56_reg[15]_2 [13]),
        .I4(icmp_ln33_fu_136_p2_carry__0[12]),
        .I5(\inNeurons_fu_56_reg[15]_2 [12]),
        .O(\numOfInNeurons_read_reg_254_reg[15] [2]));
  LUT6 #(
    .INIT(64'hC0EA80AAEAFF80AA)) 
    icmp_ln33_fu_136_p2_carry__0_i_3
       (.I0(icmp_ln33_fu_136_p2_carry__0[11]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\inNeurons_fu_56_reg[15]_2 [11]),
        .I4(icmp_ln33_fu_136_p2_carry__0[10]),
        .I5(\inNeurons_fu_56_reg[15]_2 [10]),
        .O(\numOfInNeurons_read_reg_254_reg[15] [1]));
  LUT6 #(
    .INIT(64'hC0EA80AAEAFF80AA)) 
    icmp_ln33_fu_136_p2_carry__0_i_4
       (.I0(icmp_ln33_fu_136_p2_carry__0[9]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\inNeurons_fu_56_reg[15]_2 [9]),
        .I4(icmp_ln33_fu_136_p2_carry__0[8]),
        .I5(\inNeurons_fu_56_reg[15]_2 [8]),
        .O(\numOfInNeurons_read_reg_254_reg[15] [0]));
  LUT6 #(
    .INIT(64'h0090909033090909)) 
    icmp_ln33_fu_136_p2_carry__0_i_5
       (.I0(\inNeurons_fu_56_reg[15]_2 [15]),
        .I1(icmp_ln33_fu_136_p2_carry__0[15]),
        .I2(\inNeurons_fu_56_reg[15]_2 [14]),
        .I3(ap_loop_init_int),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I5(icmp_ln33_fu_136_p2_carry__0[14]),
        .O(\inNeurons_fu_56_reg[15]_0 [3]));
  LUT6 #(
    .INIT(64'h0090909033090909)) 
    icmp_ln33_fu_136_p2_carry__0_i_6
       (.I0(\inNeurons_fu_56_reg[15]_2 [13]),
        .I1(icmp_ln33_fu_136_p2_carry__0[13]),
        .I2(\inNeurons_fu_56_reg[15]_2 [12]),
        .I3(ap_loop_init_int),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I5(icmp_ln33_fu_136_p2_carry__0[12]),
        .O(\inNeurons_fu_56_reg[15]_0 [2]));
  LUT6 #(
    .INIT(64'h0090909033090909)) 
    icmp_ln33_fu_136_p2_carry__0_i_7
       (.I0(\inNeurons_fu_56_reg[15]_2 [11]),
        .I1(icmp_ln33_fu_136_p2_carry__0[11]),
        .I2(\inNeurons_fu_56_reg[15]_2 [10]),
        .I3(ap_loop_init_int),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I5(icmp_ln33_fu_136_p2_carry__0[10]),
        .O(\inNeurons_fu_56_reg[15]_0 [1]));
  LUT6 #(
    .INIT(64'h0090909033090909)) 
    icmp_ln33_fu_136_p2_carry__0_i_8
       (.I0(\inNeurons_fu_56_reg[15]_2 [9]),
        .I1(icmp_ln33_fu_136_p2_carry__0[9]),
        .I2(\inNeurons_fu_56_reg[15]_2 [8]),
        .I3(ap_loop_init_int),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I5(icmp_ln33_fu_136_p2_carry__0[8]),
        .O(\inNeurons_fu_56_reg[15]_0 [0]));
  LUT3 #(
    .INIT(8'h2A)) 
    icmp_ln33_fu_136_p2_carry__1_i_1
       (.I0(\inNeurons_fu_56_reg[15]_2 [15]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\inNeurons_fu_56_reg[15] [7]));
  LUT3 #(
    .INIT(8'h8F)) 
    icmp_ln33_fu_136_p2_carry__1_i_2
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_2 [15]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg));
  LUT6 #(
    .INIT(64'hC0EA80AAEAFF80AA)) 
    icmp_ln33_fu_136_p2_carry_i_1
       (.I0(icmp_ln33_fu_136_p2_carry__0[7]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\inNeurons_fu_56_reg[15]_2 [7]),
        .I4(icmp_ln33_fu_136_p2_carry__0[6]),
        .I5(\inNeurons_fu_56_reg[15]_2 [6]),
        .O(DI[3]));
  LUT6 #(
    .INIT(64'hC0EA80AAEAFF80AA)) 
    icmp_ln33_fu_136_p2_carry_i_2
       (.I0(icmp_ln33_fu_136_p2_carry__0[5]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\inNeurons_fu_56_reg[15]_2 [5]),
        .I4(icmp_ln33_fu_136_p2_carry__0[4]),
        .I5(\inNeurons_fu_56_reg[15]_2 [4]),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'hC0EA80AAEAFF80AA)) 
    icmp_ln33_fu_136_p2_carry_i_3
       (.I0(icmp_ln33_fu_136_p2_carry__0[3]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\inNeurons_fu_56_reg[15]_2 [3]),
        .I4(icmp_ln33_fu_136_p2_carry__0[2]),
        .I5(\inNeurons_fu_56_reg[15]_2 [2]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'hC0EA80AAEAFF80AA)) 
    icmp_ln33_fu_136_p2_carry_i_4
       (.I0(icmp_ln33_fu_136_p2_carry__0[1]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\inNeurons_fu_56_reg[15]_2 [1]),
        .I4(icmp_ln33_fu_136_p2_carry__0[0]),
        .I5(\inNeurons_fu_56_reg[15]_2 [0]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h0090909033090909)) 
    icmp_ln33_fu_136_p2_carry_i_5
       (.I0(\inNeurons_fu_56_reg[15]_2 [7]),
        .I1(icmp_ln33_fu_136_p2_carry__0[7]),
        .I2(\inNeurons_fu_56_reg[15]_2 [6]),
        .I3(ap_loop_init_int),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I5(icmp_ln33_fu_136_p2_carry__0[6]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h0090909033090909)) 
    icmp_ln33_fu_136_p2_carry_i_6
       (.I0(\inNeurons_fu_56_reg[15]_2 [5]),
        .I1(icmp_ln33_fu_136_p2_carry__0[5]),
        .I2(\inNeurons_fu_56_reg[15]_2 [4]),
        .I3(ap_loop_init_int),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I5(icmp_ln33_fu_136_p2_carry__0[4]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h0090909033090909)) 
    icmp_ln33_fu_136_p2_carry_i_7
       (.I0(\inNeurons_fu_56_reg[15]_2 [3]),
        .I1(icmp_ln33_fu_136_p2_carry__0[3]),
        .I2(\inNeurons_fu_56_reg[15]_2 [2]),
        .I3(ap_loop_init_int),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I5(icmp_ln33_fu_136_p2_carry__0[2]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h0090909033090909)) 
    icmp_ln33_fu_136_p2_carry_i_8
       (.I0(\inNeurons_fu_56_reg[15]_2 [1]),
        .I1(icmp_ln33_fu_136_p2_carry__0[1]),
        .I2(\inNeurons_fu_56_reg[15]_2 [0]),
        .I3(ap_loop_init_int),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I5(icmp_ln33_fu_136_p2_carry__0[0]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \inNeurons_fu_56[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\inNeurons_fu_56_reg[15]_2 [0]),
        .O(\inNeurons_fu_56_reg[15]_1 [0]));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[12]_i_2 
       (.I0(\inNeurons_fu_56_reg[15]_2 [12]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\inNeurons_fu_56[12]_i_2_n_3 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[12]_i_3 
       (.I0(\inNeurons_fu_56_reg[15]_2 [11]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\inNeurons_fu_56[12]_i_3_n_3 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[12]_i_4 
       (.I0(\inNeurons_fu_56_reg[15]_2 [10]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\inNeurons_fu_56[12]_i_4_n_3 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[12]_i_5 
       (.I0(\inNeurons_fu_56_reg[15]_2 [9]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\inNeurons_fu_56[12]_i_5_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \inNeurons_fu_56[15]_i_1 
       (.I0(ap_loop_init_int),
        .I1(CO),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \inNeurons_fu_56[15]_i_2 
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I1(CO),
        .O(E));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[15]_i_4 
       (.I0(\inNeurons_fu_56_reg[15]_2 [15]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\inNeurons_fu_56[15]_i_4_n_3 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[15]_i_5 
       (.I0(\inNeurons_fu_56_reg[15]_2 [14]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(ap_sig_allocacmp_inNeurons_1));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[15]_i_6 
       (.I0(\inNeurons_fu_56_reg[15]_2 [13]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\inNeurons_fu_56[15]_i_6_n_3 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[4]_i_2 
       (.I0(\inNeurons_fu_56_reg[15]_2 [0]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_input_r_address0));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[4]_i_3 
       (.I0(\inNeurons_fu_56_reg[15]_2 [4]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\inNeurons_fu_56[4]_i_3_n_3 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[4]_i_4 
       (.I0(\inNeurons_fu_56_reg[15]_2 [3]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\inNeurons_fu_56[4]_i_4_n_3 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[4]_i_5 
       (.I0(\inNeurons_fu_56_reg[15]_2 [2]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\inNeurons_fu_56[4]_i_5_n_3 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[4]_i_6 
       (.I0(\inNeurons_fu_56_reg[15]_2 [1]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\inNeurons_fu_56[4]_i_6_n_3 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[8]_i_2 
       (.I0(\inNeurons_fu_56_reg[15]_2 [8]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\inNeurons_fu_56[8]_i_2_n_3 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[8]_i_3 
       (.I0(\inNeurons_fu_56_reg[15]_2 [7]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\inNeurons_fu_56[8]_i_3_n_3 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[8]_i_4 
       (.I0(\inNeurons_fu_56_reg[15]_2 [6]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\inNeurons_fu_56[8]_i_4_n_3 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[8]_i_5 
       (.I0(\inNeurons_fu_56_reg[15]_2 [5]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\inNeurons_fu_56[8]_i_5_n_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \inNeurons_fu_56_reg[12]_i_1 
       (.CI(\inNeurons_fu_56_reg[8]_i_1_n_3 ),
        .CO({\inNeurons_fu_56_reg[12]_i_1_n_3 ,\inNeurons_fu_56_reg[12]_i_1_n_4 ,\inNeurons_fu_56_reg[12]_i_1_n_5 ,\inNeurons_fu_56_reg[12]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\inNeurons_fu_56_reg[15]_1 [12:9]),
        .S({\inNeurons_fu_56[12]_i_2_n_3 ,\inNeurons_fu_56[12]_i_3_n_3 ,\inNeurons_fu_56[12]_i_4_n_3 ,\inNeurons_fu_56[12]_i_5_n_3 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \inNeurons_fu_56_reg[15]_i_3 
       (.CI(\inNeurons_fu_56_reg[12]_i_1_n_3 ),
        .CO({\NLW_inNeurons_fu_56_reg[15]_i_3_CO_UNCONNECTED [3:2],\inNeurons_fu_56_reg[15]_i_3_n_5 ,\inNeurons_fu_56_reg[15]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_inNeurons_fu_56_reg[15]_i_3_O_UNCONNECTED [3],\inNeurons_fu_56_reg[15]_1 [15:13]}),
        .S({1'b0,\inNeurons_fu_56[15]_i_4_n_3 ,ap_sig_allocacmp_inNeurons_1,\inNeurons_fu_56[15]_i_6_n_3 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \inNeurons_fu_56_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\inNeurons_fu_56_reg[4]_i_1_n_3 ,\inNeurons_fu_56_reg[4]_i_1_n_4 ,\inNeurons_fu_56_reg[4]_i_1_n_5 ,\inNeurons_fu_56_reg[4]_i_1_n_6 }),
        .CYINIT(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_input_r_address0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\inNeurons_fu_56_reg[15]_1 [4:1]),
        .S({\inNeurons_fu_56[4]_i_3_n_3 ,\inNeurons_fu_56[4]_i_4_n_3 ,\inNeurons_fu_56[4]_i_5_n_3 ,\inNeurons_fu_56[4]_i_6_n_3 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \inNeurons_fu_56_reg[8]_i_1 
       (.CI(\inNeurons_fu_56_reg[4]_i_1_n_3 ),
        .CO({\inNeurons_fu_56_reg[8]_i_1_n_3 ,\inNeurons_fu_56_reg[8]_i_1_n_4 ,\inNeurons_fu_56_reg[8]_i_1_n_5 ,\inNeurons_fu_56_reg[8]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\inNeurons_fu_56_reg[15]_1 [8:5]),
        .S({\inNeurons_fu_56[8]_i_2_n_3 ,\inNeurons_fu_56[8]_i_3_n_3 ,\inNeurons_fu_56[8]_i_4_n_3 ,\inNeurons_fu_56[8]_i_5_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \int_input_r_shift0[0]_i_1 
       (.I0(\inNeurons_fu_56_reg[15]_2 [0]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .I3(\int_input_r_shift0_reg[0] ),
        .O(\inNeurons_fu_56_reg[0] ));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_10__1
       (.I0(\inNeurons_fu_56_reg[15]_2 [4]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(ADDRBWRADDR[3]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_11__1
       (.I0(\inNeurons_fu_56_reg[15]_2 [3]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(ADDRBWRADDR[2]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_12__1
       (.I0(\inNeurons_fu_56_reg[15]_2 [2]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(ADDRBWRADDR[1]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_13__1
       (.I0(\inNeurons_fu_56_reg[15]_2 [1]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(ADDRBWRADDR[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_8__1
       (.I0(\inNeurons_fu_56_reg[15]_2 [6]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(ADDRBWRADDR[5]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_9__1
       (.I0(\inNeurons_fu_56_reg[15]_2 [5]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(ADDRBWRADDR[4]));
endmodule

(* ORIG_REF_NAME = "nnlayer_flow_control_loop_pipe_sequential_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_flow_control_loop_pipe_sequential_init_0
   (ap_enable_reg_pp0_iter0_reg_reg,
    D,
    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg_reg,
    \ap_CS_fsm_reg[7] ,
    SR,
    E,
    \i_fu_46_reg[7] ,
    \outNeurons_fu_78_reg[7] ,
    ap_loop_init_int_reg_0,
    \outNeurons_fu_78_reg[0] ,
    \output_r_addr_reg_119_reg[0] ,
    \output_r_addr_reg_288_reg[0] ,
    \ap_CS_fsm_reg[0] ,
    \ap_CS_fsm_reg[0]_0 ,
    \ap_CS_fsm_reg[1] ,
    ap_rst_n_inv,
    ap_clk,
    ap_loop_init_int_reg_1,
    ap_rst_n,
    ap_enable_reg_pp0_iter0_reg,
    Q,
    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg,
    ap_enable_reg_pp0_iter1,
    ap_NS_fsm14_out,
    icmp_ln41_reg_293,
    \ap_CS_fsm_reg[0]_1 ,
    int_ap_start_reg,
    int_ap_start_i_3_0,
    \i_fu_46_reg[7]_0 ,
    mem_reg,
    empty_reg_2780,
    mem_reg_0,
    mem_reg_1,
    output_r_addr_reg_288,
    mem_reg_2,
    CO,
    output_r_ce0,
    \int_output_r_shift0_reg[0] ,
    ap_idle,
    icmp_ln10_reg_115,
    icmp_ln41_fu_196_p2);
  output ap_enable_reg_pp0_iter0_reg_reg;
  output [1:0]D;
  output [1:0]grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg_reg;
  output \ap_CS_fsm_reg[7] ;
  output [0:0]SR;
  output [0:0]E;
  output [7:0]\i_fu_46_reg[7] ;
  output [6:0]\outNeurons_fu_78_reg[7] ;
  output [7:0]ap_loop_init_int_reg_0;
  output \outNeurons_fu_78_reg[0] ;
  output \output_r_addr_reg_119_reg[0] ;
  output \output_r_addr_reg_288_reg[0] ;
  output [0:0]\ap_CS_fsm_reg[0] ;
  output \ap_CS_fsm_reg[0]_0 ;
  output \ap_CS_fsm_reg[1] ;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_loop_init_int_reg_1;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter0_reg;
  input [1:0]Q;
  input grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg;
  input ap_enable_reg_pp0_iter1;
  input ap_NS_fsm14_out;
  input icmp_ln41_reg_293;
  input [1:0]\ap_CS_fsm_reg[0]_1 ;
  input int_ap_start_reg;
  input [7:0]int_ap_start_i_3_0;
  input [7:0]\i_fu_46_reg[7]_0 ;
  input [7:0]mem_reg;
  input empty_reg_2780;
  input mem_reg_0;
  input mem_reg_1;
  input [7:0]output_r_addr_reg_288;
  input [7:0]mem_reg_2;
  input [0:0]CO;
  input output_r_ce0;
  input \int_output_r_shift0_reg[0] ;
  input ap_idle;
  input icmp_ln10_reg_115;
  input icmp_ln41_fu_196_p2;

  wire [0:0]CO;
  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire \ap_CS_fsm[1]_i_2_n_3 ;
  wire \ap_CS_fsm[1]_i_3_n_3 ;
  wire \ap_CS_fsm[1]_i_4_n_3 ;
  wire [0:0]\ap_CS_fsm_reg[0] ;
  wire \ap_CS_fsm_reg[0]_0 ;
  wire [1:0]\ap_CS_fsm_reg[0]_1 ;
  wire \ap_CS_fsm_reg[1] ;
  wire \ap_CS_fsm_reg[7] ;
  wire ap_NS_fsm14_out;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1_n_3;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter0_reg_reg;
  wire ap_enable_reg_pp0_iter1;
  wire ap_idle;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1_n_3;
  wire [7:0]ap_loop_init_int_reg_0;
  wire ap_loop_init_int_reg_1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire empty_reg_2780;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg;
  wire [1:0]grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg_reg;
  wire \i_fu_46[4]_i_2_n_3 ;
  wire \i_fu_46[5]_i_2_n_3 ;
  wire \i_fu_46[7]_i_5_n_3 ;
  wire [7:0]\i_fu_46_reg[7] ;
  wire [7:0]\i_fu_46_reg[7]_0 ;
  wire icmp_ln10_fu_78_p2;
  wire icmp_ln10_reg_115;
  wire icmp_ln41_fu_196_p2;
  wire icmp_ln41_reg_293;
  wire int_ap_start_i_10_n_3;
  wire [7:0]int_ap_start_i_3_0;
  wire int_ap_start_i_4_n_3;
  wire int_ap_start_i_5_n_3;
  wire int_ap_start_i_6_n_3;
  wire int_ap_start_i_7_n_3;
  wire int_ap_start_i_9_n_3;
  wire int_ap_start_reg;
  wire \int_output_r_shift0_reg[0] ;
  wire [7:0]mem_reg;
  wire mem_reg_0;
  wire mem_reg_1;
  wire [7:0]mem_reg_2;
  wire mem_reg_i_52_n_3;
  wire mem_reg_i_53_n_3;
  wire mem_reg_i_54_n_3;
  wire mem_reg_i_55_n_3;
  wire mem_reg_i_56_n_3;
  wire mem_reg_i_57_n_3;
  wire mem_reg_i_58_n_3;
  wire \outNeurons_fu_78_reg[0] ;
  wire [6:0]\outNeurons_fu_78_reg[7] ;
  wire \output_r_addr_reg_119_reg[0] ;
  wire [7:0]output_r_addr_reg_288;
  wire \output_r_addr_reg_288_reg[0] ;
  wire output_r_ce0;

  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hAFBF)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(\ap_CS_fsm[1]_i_2_n_3 ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[0]),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hEAEEEAEAEEEEEEEE)) 
    \ap_CS_fsm[0]_i_1__0 
       (.I0(ap_idle),
        .I1(\ap_CS_fsm_reg[0]_1 [1]),
        .I2(\ap_CS_fsm[1]_i_2_n_3 ),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .I4(ap_done_cache),
        .I5(icmp_ln41_reg_293),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h000E)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[1]),
        .I3(\ap_CS_fsm[1]_i_2_n_3 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(int_ap_start_i_5_n_3),
        .I1(int_ap_start_i_6_n_3),
        .I2(\ap_CS_fsm[1]_i_3_n_3 ),
        .I3(\ap_CS_fsm[1]_i_4_n_3 ),
        .I4(Q[0]),
        .I5(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .O(\ap_CS_fsm[1]_i_2_n_3 ));
  LUT5 #(
    .INIT(32'h00903309)) 
    \ap_CS_fsm[1]_i_3 
       (.I0(\i_fu_46_reg[7]_0 [3]),
        .I1(int_ap_start_i_3_0[3]),
        .I2(\i_fu_46_reg[7]_0 [5]),
        .I3(\i_fu_46[4]_i_2_n_3 ),
        .I4(int_ap_start_i_3_0[5]),
        .O(\ap_CS_fsm[1]_i_3_n_3 ));
  LUT5 #(
    .INIT(32'hFF6FCCF6)) 
    \ap_CS_fsm[1]_i_4 
       (.I0(\i_fu_46_reg[7]_0 [0]),
        .I1(int_ap_start_i_3_0[0]),
        .I2(\i_fu_46_reg[7]_0 [6]),
        .I3(\i_fu_46[4]_i_2_n_3 ),
        .I4(int_ap_start_i_3_0[6]),
        .O(\ap_CS_fsm[1]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'hBABBAAAAAAAAAAAA)) 
    \ap_CS_fsm[7]_i_1 
       (.I0(ap_NS_fsm14_out),
        .I1(\ap_CS_fsm[1]_i_2_n_3 ),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .I3(ap_done_cache),
        .I4(icmp_ln41_reg_293),
        .I5(\ap_CS_fsm_reg[0]_1 [1]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ap_done_cache_i_1
       (.I0(\ap_CS_fsm[1]_i_2_n_3 ),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .I2(ap_done_cache),
        .O(ap_done_cache_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1_n_3),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h0000E200)) 
    ap_enable_reg_pp0_iter0_reg_i_1
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(Q[0]),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .I3(ap_rst_n),
        .I4(\ap_CS_fsm[1]_i_2_n_3 ),
        .O(ap_enable_reg_pp0_iter0_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    ap_loop_init_int_i_1
       (.I0(ap_loop_init_int_reg_1),
        .I1(ap_loop_init_int),
        .I2(ap_rst_n),
        .I3(\ap_CS_fsm[1]_i_2_n_3 ),
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
    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg_i_1
       (.I0(\ap_CS_fsm_reg[0]_1 [0]),
        .I1(CO),
        .I2(icmp_ln41_fu_196_p2),
        .I3(\ap_CS_fsm[1]_i_2_n_3 ),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .O(\ap_CS_fsm_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \i_fu_46[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\i_fu_46_reg[7]_0 [0]),
        .O(ap_loop_init_int_reg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \i_fu_46[1]_i_1 
       (.I0(\i_fu_46_reg[7]_0 [0]),
        .I1(ap_loop_init_int),
        .I2(\i_fu_46_reg[7]_0 [1]),
        .O(ap_loop_init_int_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h060A)) 
    \i_fu_46[2]_i_1 
       (.I0(\i_fu_46_reg[7]_0 [2]),
        .I1(\i_fu_46_reg[7]_0 [1]),
        .I2(ap_loop_init_int),
        .I3(\i_fu_46_reg[7]_0 [0]),
        .O(ap_loop_init_int_reg_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h12222222)) 
    \i_fu_46[3]_i_1 
       (.I0(\i_fu_46_reg[7]_0 [3]),
        .I1(\i_fu_46[4]_i_2_n_3 ),
        .I2(\i_fu_46_reg[7]_0 [1]),
        .I3(\i_fu_46_reg[7]_0 [0]),
        .I4(\i_fu_46_reg[7]_0 [2]),
        .O(ap_loop_init_int_reg_0[3]));
  LUT6 #(
    .INIT(64'h060A0A0A0A0A0A0A)) 
    \i_fu_46[4]_i_1 
       (.I0(\i_fu_46_reg[7]_0 [4]),
        .I1(\i_fu_46_reg[7]_0 [3]),
        .I2(\i_fu_46[4]_i_2_n_3 ),
        .I3(\i_fu_46_reg[7]_0 [1]),
        .I4(\i_fu_46_reg[7]_0 [0]),
        .I5(\i_fu_46_reg[7]_0 [2]),
        .O(ap_loop_init_int_reg_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \i_fu_46[4]_i_2 
       (.I0(ap_loop_init_int),
        .I1(Q[0]),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .O(\i_fu_46[4]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h44B4)) 
    \i_fu_46[5]_i_1 
       (.I0(\i_fu_46[5]_i_2_n_3 ),
        .I1(\i_fu_46_reg[7]_0 [4]),
        .I2(\i_fu_46_reg[7]_0 [5]),
        .I3(ap_loop_init_int),
        .O(ap_loop_init_int_reg_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \i_fu_46[5]_i_2 
       (.I0(\i_fu_46_reg[7]_0 [2]),
        .I1(\i_fu_46_reg[7]_0 [0]),
        .I2(\i_fu_46_reg[7]_0 [1]),
        .I3(\i_fu_46[4]_i_2_n_3 ),
        .I4(\i_fu_46_reg[7]_0 [3]),
        .O(\i_fu_46[5]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \i_fu_46[6]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\i_fu_46_reg[7]_0 [6]),
        .I2(\i_fu_46[7]_i_5_n_3 ),
        .O(ap_loop_init_int_reg_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \i_fu_46[7]_i_1 
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .I1(Q[0]),
        .I2(ap_loop_init_int),
        .I3(icmp_ln10_fu_78_p2),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \i_fu_46[7]_i_2 
       (.I0(Q[0]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .I2(icmp_ln10_fu_78_p2),
        .O(\ap_CS_fsm_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hB444)) 
    \i_fu_46[7]_i_3 
       (.I0(ap_loop_init_int),
        .I1(\i_fu_46_reg[7]_0 [7]),
        .I2(\i_fu_46[7]_i_5_n_3 ),
        .I3(\i_fu_46_reg[7]_0 [6]),
        .O(ap_loop_init_int_reg_0[7]));
  LUT4 #(
    .INIT(16'h0004)) 
    \i_fu_46[7]_i_4 
       (.I0(\ap_CS_fsm[1]_i_4_n_3 ),
        .I1(\ap_CS_fsm[1]_i_3_n_3 ),
        .I2(int_ap_start_i_6_n_3),
        .I3(int_ap_start_i_5_n_3),
        .O(icmp_ln10_fu_78_p2));
  LUT6 #(
    .INIT(64'h000000007F000000)) 
    \i_fu_46[7]_i_5 
       (.I0(ap_loop_init_int),
        .I1(Q[0]),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .I3(\i_fu_46_reg[7]_0 [5]),
        .I4(\i_fu_46_reg[7]_0 [4]),
        .I5(\i_fu_46[5]_i_2_n_3 ),
        .O(\i_fu_46[7]_i_5_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \icmp_ln10_reg_115[0]_i_1 
       (.I0(icmp_ln10_fu_78_p2),
        .I1(Q[0]),
        .I2(icmp_ln10_reg_115),
        .O(\ap_CS_fsm_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h9555AAAA)) 
    int_ap_start_i_10
       (.I0(int_ap_start_i_3_0[0]),
        .I1(ap_loop_init_int),
        .I2(Q[0]),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .I4(\i_fu_46_reg[7]_0 [0]),
        .O(int_ap_start_i_10_n_3));
  LUT6 #(
    .INIT(64'h55555455FFFFFFFF)) 
    int_ap_start_i_3
       (.I0(int_ap_start_i_4_n_3),
        .I1(int_ap_start_i_5_n_3),
        .I2(int_ap_start_i_6_n_3),
        .I3(int_ap_start_i_7_n_3),
        .I4(int_ap_start_reg),
        .I5(\ap_CS_fsm_reg[0]_1 [1]),
        .O(\ap_CS_fsm_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    int_ap_start_i_4
       (.I0(icmp_ln41_reg_293),
        .I1(ap_done_cache),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .O(int_ap_start_i_4_n_3));
  LUT5 #(
    .INIT(32'hFF6FCCF6)) 
    int_ap_start_i_5
       (.I0(\i_fu_46_reg[7]_0 [4]),
        .I1(int_ap_start_i_3_0[4]),
        .I2(\i_fu_46_reg[7]_0 [2]),
        .I3(\i_fu_46[4]_i_2_n_3 ),
        .I4(int_ap_start_i_3_0[2]),
        .O(int_ap_start_i_5_n_3));
  LUT5 #(
    .INIT(32'hFF6FCCF6)) 
    int_ap_start_i_6
       (.I0(\i_fu_46_reg[7]_0 [1]),
        .I1(int_ap_start_i_3_0[1]),
        .I2(\i_fu_46_reg[7]_0 [7]),
        .I3(\i_fu_46[4]_i_2_n_3 ),
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
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h9555AAAA)) 
    int_ap_start_i_9
       (.I0(int_ap_start_i_3_0[6]),
        .I1(ap_loop_init_int),
        .I2(Q[0]),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .I4(\i_fu_46_reg[7]_0 [6]),
        .O(int_ap_start_i_9_n_3));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \int_output_r_shift0[0]_i_1 
       (.I0(\outNeurons_fu_78_reg[0] ),
        .I1(mem_reg_1),
        .I2(output_r_addr_reg_288[0]),
        .I3(output_r_ce0),
        .I4(\int_output_r_shift0_reg[0] ),
        .O(\output_r_addr_reg_288_reg[0] ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    mem_reg_i_10
       (.I0(mem_reg[1]),
        .I1(empty_reg_2780),
        .I2(mem_reg_0),
        .I3(mem_reg_i_58_n_3),
        .I4(mem_reg_1),
        .I5(output_r_addr_reg_288[1]),
        .O(\outNeurons_fu_78_reg[7] [0]));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    mem_reg_i_4
       (.I0(mem_reg[7]),
        .I1(empty_reg_2780),
        .I2(mem_reg_0),
        .I3(mem_reg_i_52_n_3),
        .I4(mem_reg_1),
        .I5(output_r_addr_reg_288[7]),
        .O(\outNeurons_fu_78_reg[7] [6]));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    mem_reg_i_5
       (.I0(mem_reg[6]),
        .I1(empty_reg_2780),
        .I2(mem_reg_0),
        .I3(mem_reg_i_53_n_3),
        .I4(mem_reg_1),
        .I5(output_r_addr_reg_288[6]),
        .O(\outNeurons_fu_78_reg[7] [5]));
  LUT6 #(
    .INIT(64'h88B8B8B8B8B8B8B8)) 
    mem_reg_i_52
       (.I0(mem_reg_2[7]),
        .I1(Q[1]),
        .I2(\i_fu_46_reg[7]_0 [7]),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .I4(Q[0]),
        .I5(ap_loop_init_int),
        .O(mem_reg_i_52_n_3));
  LUT6 #(
    .INIT(64'h88B8B8B8B8B8B8B8)) 
    mem_reg_i_53
       (.I0(mem_reg_2[6]),
        .I1(Q[1]),
        .I2(\i_fu_46_reg[7]_0 [6]),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .I4(Q[0]),
        .I5(ap_loop_init_int),
        .O(mem_reg_i_53_n_3));
  LUT6 #(
    .INIT(64'h88B8B8B8B8B8B8B8)) 
    mem_reg_i_54
       (.I0(mem_reg_2[5]),
        .I1(Q[1]),
        .I2(\i_fu_46_reg[7]_0 [5]),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .I4(Q[0]),
        .I5(ap_loop_init_int),
        .O(mem_reg_i_54_n_3));
  LUT6 #(
    .INIT(64'h88B8B8B8B8B8B8B8)) 
    mem_reg_i_55
       (.I0(mem_reg_2[4]),
        .I1(Q[1]),
        .I2(\i_fu_46_reg[7]_0 [4]),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .I4(Q[0]),
        .I5(ap_loop_init_int),
        .O(mem_reg_i_55_n_3));
  LUT6 #(
    .INIT(64'h88B8B8B8B8B8B8B8)) 
    mem_reg_i_56
       (.I0(mem_reg_2[3]),
        .I1(Q[1]),
        .I2(\i_fu_46_reg[7]_0 [3]),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .I4(Q[0]),
        .I5(ap_loop_init_int),
        .O(mem_reg_i_56_n_3));
  LUT6 #(
    .INIT(64'h88B8B8B8B8B8B8B8)) 
    mem_reg_i_57
       (.I0(mem_reg_2[2]),
        .I1(Q[1]),
        .I2(\i_fu_46_reg[7]_0 [2]),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .I4(Q[0]),
        .I5(ap_loop_init_int),
        .O(mem_reg_i_57_n_3));
  LUT6 #(
    .INIT(64'h88B8B8B8B8B8B8B8)) 
    mem_reg_i_58
       (.I0(mem_reg_2[1]),
        .I1(Q[1]),
        .I2(\i_fu_46_reg[7]_0 [1]),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .I4(Q[0]),
        .I5(ap_loop_init_int),
        .O(mem_reg_i_58_n_3));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    mem_reg_i_59
       (.I0(mem_reg[0]),
        .I1(CO),
        .I2(\ap_CS_fsm_reg[0]_1 [0]),
        .I3(mem_reg_0),
        .I4(\output_r_addr_reg_119_reg[0] ),
        .O(\outNeurons_fu_78_reg[0] ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    mem_reg_i_6
       (.I0(mem_reg[5]),
        .I1(empty_reg_2780),
        .I2(mem_reg_0),
        .I3(mem_reg_i_54_n_3),
        .I4(mem_reg_1),
        .I5(output_r_addr_reg_288[5]),
        .O(\outNeurons_fu_78_reg[7] [4]));
  LUT6 #(
    .INIT(64'h88B8B8B8B8B8B8B8)) 
    mem_reg_i_65
       (.I0(mem_reg_2[0]),
        .I1(Q[1]),
        .I2(\i_fu_46_reg[7]_0 [0]),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .I4(Q[0]),
        .I5(ap_loop_init_int),
        .O(\output_r_addr_reg_119_reg[0] ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    mem_reg_i_7
       (.I0(mem_reg[4]),
        .I1(empty_reg_2780),
        .I2(mem_reg_0),
        .I3(mem_reg_i_55_n_3),
        .I4(mem_reg_1),
        .I5(output_r_addr_reg_288[4]),
        .O(\outNeurons_fu_78_reg[7] [3]));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    mem_reg_i_8
       (.I0(mem_reg[3]),
        .I1(empty_reg_2780),
        .I2(mem_reg_0),
        .I3(mem_reg_i_56_n_3),
        .I4(mem_reg_1),
        .I5(output_r_addr_reg_288[3]),
        .O(\outNeurons_fu_78_reg[7] [2]));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    mem_reg_i_9
       (.I0(mem_reg[2]),
        .I1(empty_reg_2780),
        .I2(mem_reg_0),
        .I3(mem_reg_i_57_n_3),
        .I4(mem_reg_1),
        .I5(output_r_addr_reg_288[2]),
        .O(\outNeurons_fu_78_reg[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \output_r_addr_reg_119[0]_i_1 
       (.I0(\i_fu_46_reg[7]_0 [0]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\i_fu_46_reg[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \output_r_addr_reg_119[1]_i_1 
       (.I0(\i_fu_46_reg[7]_0 [1]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\i_fu_46_reg[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \output_r_addr_reg_119[2]_i_1 
       (.I0(\i_fu_46_reg[7]_0 [2]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\i_fu_46_reg[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \output_r_addr_reg_119[3]_i_1 
       (.I0(\i_fu_46_reg[7]_0 [3]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .I2(Q[0]),
        .I3(ap_loop_init_int),
        .O(\i_fu_46_reg[7] [3]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \output_r_addr_reg_119[4]_i_1 
       (.I0(\i_fu_46_reg[7]_0 [4]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\i_fu_46_reg[7] [4]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \output_r_addr_reg_119[5]_i_1 
       (.I0(\i_fu_46_reg[7]_0 [5]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .I2(Q[0]),
        .I3(ap_loop_init_int),
        .O(\i_fu_46_reg[7] [5]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \output_r_addr_reg_119[6]_i_1 
       (.I0(\i_fu_46_reg[7]_0 [6]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\i_fu_46_reg[7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \output_r_addr_reg_119[7]_i_1 
       (.I0(Q[0]),
        .I1(icmp_ln10_fu_78_p2),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \output_r_addr_reg_119[7]_i_2 
       (.I0(\i_fu_46_reg[7]_0 [7]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\i_fu_46_reg[7] [7]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_mac_muladd_16s_16s_16ns_16_4_1
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0 nnlayer_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U
       (.A(A),
        .B(B),
        .P(P),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter4(ap_enable_reg_pp0_iter4),
        .p_reg_reg_0(p_reg_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0
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
  wire [15:0]ap_sig_allocacmp_conv1514_load;
  wire [15:0]p_reg_reg_0;
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
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ap_sig_allocacmp_conv1514_load}),
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
        .I2(p_reg_reg_0[15]),
        .O(ap_sig_allocacmp_conv1514_load[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_34
       (.I0(P[14]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[14]),
        .O(ap_sig_allocacmp_conv1514_load[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_35
       (.I0(P[13]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[13]),
        .O(ap_sig_allocacmp_conv1514_load[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_36
       (.I0(P[12]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[12]),
        .O(ap_sig_allocacmp_conv1514_load[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_37
       (.I0(P[11]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[11]),
        .O(ap_sig_allocacmp_conv1514_load[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_38
       (.I0(P[10]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[10]),
        .O(ap_sig_allocacmp_conv1514_load[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_39
       (.I0(P[9]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[9]),
        .O(ap_sig_allocacmp_conv1514_load[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_40
       (.I0(P[8]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[8]),
        .O(ap_sig_allocacmp_conv1514_load[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_41
       (.I0(P[7]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[7]),
        .O(ap_sig_allocacmp_conv1514_load[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_42
       (.I0(P[6]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[6]),
        .O(ap_sig_allocacmp_conv1514_load[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_43
       (.I0(P[5]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[5]),
        .O(ap_sig_allocacmp_conv1514_load[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_44
       (.I0(P[4]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[4]),
        .O(ap_sig_allocacmp_conv1514_load[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_45
       (.I0(P[3]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[3]),
        .O(ap_sig_allocacmp_conv1514_load[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_46
       (.I0(P[2]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[2]),
        .O(ap_sig_allocacmp_conv1514_load[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_47
       (.I0(P[1]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[1]),
        .O(ap_sig_allocacmp_conv1514_load[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_48
       (.I0(P[0]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(p_reg_reg_0[0]),
        .O(ap_sig_allocacmp_conv1514_load[0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_nnlayer_Pipeline_VITIS_LOOP_10_1
   (ap_enable_reg_pp0_iter0_reg_reg_0,
    D,
    \ap_CS_fsm_reg[7] ,
    output_r_ce0,
    \outNeurons_fu_78_reg[7] ,
    \outNeurons_fu_78_reg[0] ,
    \output_r_addr_reg_119_reg[0]_0 ,
    \ap_CS_fsm_reg[7]_0 ,
    \output_r_addr_reg_288_reg[0] ,
    \ap_CS_fsm_reg[1]_0 ,
    ap_rst_n_inv,
    ap_clk,
    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg,
    ap_rst_n,
    ap_NS_fsm14_out,
    icmp_ln41_reg_293,
    Q,
    mem_reg,
    CO,
    mem_reg_0,
    int_ap_start_i_3,
    mem_reg_1,
    empty_reg_2780,
    output_r_addr_reg_288,
    \int_output_r_shift0_reg[0] ,
    ap_idle,
    icmp_ln41_fu_196_p2);
  output ap_enable_reg_pp0_iter0_reg_reg_0;
  output [1:0]D;
  output \ap_CS_fsm_reg[7] ;
  output output_r_ce0;
  output [6:0]\outNeurons_fu_78_reg[7] ;
  output \outNeurons_fu_78_reg[0] ;
  output \output_r_addr_reg_119_reg[0]_0 ;
  output \ap_CS_fsm_reg[7]_0 ;
  output \output_r_addr_reg_288_reg[0] ;
  output \ap_CS_fsm_reg[1]_0 ;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg;
  input ap_rst_n;
  input ap_NS_fsm14_out;
  input icmp_ln41_reg_293;
  input [1:0]Q;
  input mem_reg;
  input [0:0]CO;
  input mem_reg_0;
  input [7:0]int_ap_start_i_3;
  input [7:0]mem_reg_1;
  input empty_reg_2780;
  input [7:0]output_r_addr_reg_288;
  input \int_output_r_shift0_reg[0] ;
  input ap_idle;
  input icmp_ln41_fu_196_p2;

  wire [0:0]CO;
  wire [1:0]D;
  wire [1:0]Q;
  wire ap_CS_fsm_pp0_stage1;
  wire \ap_CS_fsm_reg[1]_0 ;
  wire \ap_CS_fsm_reg[7] ;
  wire \ap_CS_fsm_reg[7]_0 ;
  wire \ap_CS_fsm_reg_n_3_[0] ;
  wire [1:0]ap_NS_fsm;
  wire ap_NS_fsm14_out;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter0_reg_reg_0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1_n_3;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [7:0]ap_sig_allocacmp_i_1;
  wire empty_reg_2780;
  wire flow_control_loop_pipe_sequential_init_U_n_29;
  wire flow_control_loop_pipe_sequential_init_U_n_3;
  wire flow_control_loop_pipe_sequential_init_U_n_31;
  wire flow_control_loop_pipe_sequential_init_U_n_37;
  wire flow_control_loop_pipe_sequential_init_U_n_38;
  wire flow_control_loop_pipe_sequential_init_U_n_9;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg;
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
  wire icmp_ln41_fu_196_p2;
  wire icmp_ln41_reg_293;
  wire [7:0]int_ap_start_i_3;
  wire int_ap_start_i_8_n_3;
  wire \int_output_r_shift0_reg[0] ;
  wire mem_reg;
  wire mem_reg_0;
  wire [7:0]mem_reg_1;
  wire mem_reg_i_49_n_3;
  wire \outNeurons_fu_78_reg[0] ;
  wire [6:0]\outNeurons_fu_78_reg[7] ;
  wire [7:0]output_r_addr_reg_119;
  wire output_r_addr_reg_1190;
  wire \output_r_addr_reg_119_reg[0]_0 ;
  wire [7:0]output_r_addr_reg_288;
  wire \output_r_addr_reg_288_reg[0] ;
  wire output_r_ce0;

  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_3_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_pp0_stage1),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_3),
        .Q(ap_enable_reg_pp0_iter0_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000CF00A000C000)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
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
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    ap_loop_init_int_i_2
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(\ap_CS_fsm_reg_n_3_[0] ),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .I3(ap_CS_fsm_pp0_stage1),
        .O(ap_enable_reg_pp0_iter0_reg_reg_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_flow_control_loop_pipe_sequential_init_0 flow_control_loop_pipe_sequential_init_U
       (.CO(CO),
        .D(ap_NS_fsm),
        .E(output_r_addr_reg_1190),
        .Q({ap_CS_fsm_pp0_stage1,\ap_CS_fsm_reg_n_3_[0] }),
        .SR(flow_control_loop_pipe_sequential_init_U_n_9),
        .\ap_CS_fsm_reg[0] (flow_control_loop_pipe_sequential_init_U_n_37),
        .\ap_CS_fsm_reg[0]_0 (flow_control_loop_pipe_sequential_init_U_n_38),
        .\ap_CS_fsm_reg[0]_1 (Q),
        .\ap_CS_fsm_reg[1] (\ap_CS_fsm_reg[1]_0 ),
        .\ap_CS_fsm_reg[7] (\ap_CS_fsm_reg[7] ),
        .ap_NS_fsm14_out(ap_NS_fsm14_out),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_enable_reg_pp0_iter0_reg_reg(flow_control_loop_pipe_sequential_init_U_n_3),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_idle(ap_idle),
        .ap_loop_init_int_reg_0({i_2_fu_84_p2[7:5],flow_control_loop_pipe_sequential_init_U_n_29,i_2_fu_84_p2[3],flow_control_loop_pipe_sequential_init_U_n_31,i_2_fu_84_p2[1:0]}),
        .ap_loop_init_int_reg_1(ap_enable_reg_pp0_iter0_reg_reg_0),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .empty_reg_2780(empty_reg_2780),
        .grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg_reg(D),
        .\i_fu_46_reg[7] (ap_sig_allocacmp_i_1),
        .\i_fu_46_reg[7]_0 ({\i_fu_46_reg_n_3_[7] ,\i_fu_46_reg_n_3_[6] ,\i_fu_46_reg_n_3_[5] ,\i_fu_46_reg_n_3_[4] ,\i_fu_46_reg_n_3_[3] ,\i_fu_46_reg_n_3_[2] ,\i_fu_46_reg_n_3_[1] ,\i_fu_46_reg_n_3_[0] }),
        .icmp_ln10_reg_115(icmp_ln10_reg_115),
        .icmp_ln41_fu_196_p2(icmp_ln41_fu_196_p2),
        .icmp_ln41_reg_293(icmp_ln41_reg_293),
        .int_ap_start_i_3_0(int_ap_start_i_3),
        .int_ap_start_reg(int_ap_start_i_8_n_3),
        .\int_output_r_shift0_reg[0] (\int_output_r_shift0_reg[0] ),
        .mem_reg(mem_reg_1),
        .mem_reg_0(mem_reg_0),
        .mem_reg_1(mem_reg),
        .mem_reg_2(output_r_addr_reg_119),
        .\outNeurons_fu_78_reg[0] (\outNeurons_fu_78_reg[0] ),
        .\outNeurons_fu_78_reg[7] (\outNeurons_fu_78_reg[7] ),
        .\output_r_addr_reg_119_reg[0] (\output_r_addr_reg_119_reg[0]_0 ),
        .output_r_addr_reg_288(output_r_addr_reg_288),
        .\output_r_addr_reg_288_reg[0] (\output_r_addr_reg_288_reg[0] ),
        .output_r_ce0(output_r_ce0));
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
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h7)) 
    int_ap_start_i_8
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_3_[0] ),
        .O(int_ap_start_i_8_n_3));
  LUT5 #(
    .INIT(32'hBBBBBFBB)) 
    mem_reg_i_2
       (.I0(mem_reg_i_49_n_3),
        .I1(mem_reg),
        .I2(CO),
        .I3(Q[0]),
        .I4(mem_reg_0),
        .O(output_r_ce0));
  LUT6 #(
    .INIT(64'h8888808088808080)) 
    mem_reg_i_49
       (.I0(Q[1]),
        .I1(icmp_ln41_reg_293),
        .I2(ap_enable_reg_pp0_iter0_reg_reg_0),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_134_ap_start_reg),
        .I4(\ap_CS_fsm_reg_n_3_[0] ),
        .I5(ap_enable_reg_pp0_iter1),
        .O(mem_reg_i_49_n_3));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_69
       (.I0(Q[1]),
        .I1(icmp_ln41_reg_293),
        .I2(icmp_ln10_reg_115),
        .O(\ap_CS_fsm_reg[7]_0 ));
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_nnlayer_Pipeline_VITIS_LOOP_33_2
   (grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0,
    D,
    \conv1514_fu_60_reg[15]_0 ,
    ADDRBWRADDR,
    \ap_CS_fsm_reg[2] ,
    \inNeurons_fu_56_reg[0]_0 ,
    ap_rst_n_inv,
    ap_clk,
    B,
    A,
    grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg,
    empty_reg_2780,
    \ap_CS_fsm_reg[4] ,
    Q,
    ap_rst_n,
    \conv1514_fu_60_reg[15]_1 ,
    icmp_ln33_fu_136_p2_carry__0_0,
    mem_reg_0_0,
    \int_input_r_shift0_reg[0] );
  output [14:0]grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0;
  output [1:0]D;
  output [15:0]\conv1514_fu_60_reg[15]_0 ;
  output [5:0]ADDRBWRADDR;
  output \ap_CS_fsm_reg[2] ;
  output \inNeurons_fu_56_reg[0]_0 ;
  input ap_rst_n_inv;
  input ap_clk;
  input [15:0]B;
  input [15:0]A;
  input grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg;
  input empty_reg_2780;
  input \ap_CS_fsm_reg[4] ;
  input [1:0]Q;
  input ap_rst_n;
  input [15:0]\conv1514_fu_60_reg[15]_1 ;
  input [15:0]icmp_ln33_fu_136_p2_carry__0_0;
  input [14:0]mem_reg_0_0;
  input \int_input_r_shift0_reg[0] ;

  wire [15:0]A;
  wire [5:0]ADDRBWRADDR;
  wire [15:0]B;
  wire [1:0]D;
  wire [1:0]Q;
  wire add_ln35_fu_152_p2_carry__0_n_3;
  wire add_ln35_fu_152_p2_carry__0_n_4;
  wire add_ln35_fu_152_p2_carry__0_n_5;
  wire add_ln35_fu_152_p2_carry__0_n_6;
  wire add_ln35_fu_152_p2_carry__1_n_3;
  wire add_ln35_fu_152_p2_carry__1_n_4;
  wire add_ln35_fu_152_p2_carry__1_n_5;
  wire add_ln35_fu_152_p2_carry__1_n_6;
  wire add_ln35_fu_152_p2_carry__2_n_5;
  wire add_ln35_fu_152_p2_carry__2_n_6;
  wire add_ln35_fu_152_p2_carry_n_3;
  wire add_ln35_fu_152_p2_carry_n_4;
  wire add_ln35_fu_152_p2_carry_n_5;
  wire add_ln35_fu_152_p2_carry_n_6;
  wire \ap_CS_fsm_reg[2] ;
  wire \ap_CS_fsm_reg[4] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1__0_n_3;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter4;
  wire ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_3;
  wire ap_loop_exit_ready_pp0_iter3_reg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [15:7]ap_sig_allocacmp_inNeurons_1;
  wire [15:0]\conv1514_fu_60_reg[15]_0 ;
  wire [15:0]\conv1514_fu_60_reg[15]_1 ;
  wire empty_reg_2780;
  wire flow_control_loop_pipe_sequential_init_U_n_24;
  wire flow_control_loop_pipe_sequential_init_U_n_25;
  wire flow_control_loop_pipe_sequential_init_U_n_26;
  wire flow_control_loop_pipe_sequential_init_U_n_27;
  wire flow_control_loop_pipe_sequential_init_U_n_28;
  wire flow_control_loop_pipe_sequential_init_U_n_29;
  wire flow_control_loop_pipe_sequential_init_U_n_30;
  wire flow_control_loop_pipe_sequential_init_U_n_31;
  wire flow_control_loop_pipe_sequential_init_U_n_4;
  wire flow_control_loop_pipe_sequential_init_U_n_46;
  wire flow_control_loop_pipe_sequential_init_U_n_47;
  wire flow_control_loop_pipe_sequential_init_U_n_48;
  wire flow_control_loop_pipe_sequential_init_U_n_49;
  wire flow_control_loop_pipe_sequential_init_U_n_50;
  wire flow_control_loop_pipe_sequential_init_U_n_51;
  wire flow_control_loop_pipe_sequential_init_U_n_52;
  wire flow_control_loop_pipe_sequential_init_U_n_53;
  wire flow_control_loop_pipe_sequential_init_U_n_54;
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
  wire flow_control_loop_pipe_sequential_init_U_n_92;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_ready;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg;
  wire [14:0]grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0;
  wire icmp_ln33_fu_136_p2;
  wire [15:0]icmp_ln33_fu_136_p2_carry__0_0;
  wire icmp_ln33_fu_136_p2_carry__0_n_3;
  wire icmp_ln33_fu_136_p2_carry__0_n_4;
  wire icmp_ln33_fu_136_p2_carry__0_n_5;
  wire icmp_ln33_fu_136_p2_carry__0_n_6;
  wire icmp_ln33_fu_136_p2_carry_n_3;
  wire icmp_ln33_fu_136_p2_carry_n_4;
  wire icmp_ln33_fu_136_p2_carry_n_5;
  wire icmp_ln33_fu_136_p2_carry_n_6;
  wire [15:0]inNeurons_2_fu_142_p2;
  wire inNeurons_fu_560;
  wire \inNeurons_fu_56_reg[0]_0 ;
  wire \inNeurons_fu_56_reg_n_3_[0] ;
  wire \inNeurons_fu_56_reg_n_3_[10] ;
  wire \inNeurons_fu_56_reg_n_3_[11] ;
  wire \inNeurons_fu_56_reg_n_3_[12] ;
  wire \inNeurons_fu_56_reg_n_3_[13] ;
  wire \inNeurons_fu_56_reg_n_3_[14] ;
  wire \inNeurons_fu_56_reg_n_3_[15] ;
  wire \inNeurons_fu_56_reg_n_3_[1] ;
  wire \inNeurons_fu_56_reg_n_3_[2] ;
  wire \inNeurons_fu_56_reg_n_3_[3] ;
  wire \inNeurons_fu_56_reg_n_3_[4] ;
  wire \inNeurons_fu_56_reg_n_3_[5] ;
  wire \inNeurons_fu_56_reg_n_3_[6] ;
  wire \inNeurons_fu_56_reg_n_3_[7] ;
  wire \inNeurons_fu_56_reg_n_3_[8] ;
  wire \inNeurons_fu_56_reg_n_3_[9] ;
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
  wire [14:0]mem_reg_0_0;
  wire [15:0]p_0_in;
  wire [3:2]NLW_add_ln35_fu_152_p2_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_add_ln35_fu_152_p2_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln33_fu_136_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln33_fu_136_p2_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_icmp_ln33_fu_136_p2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_icmp_ln33_fu_136_p2_carry__1_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln35_fu_152_p2_carry
       (.CI(1'b0),
        .CO({add_ln35_fu_152_p2_carry_n_3,add_ln35_fu_152_p2_carry_n_4,add_ln35_fu_152_p2_carry_n_5,add_ln35_fu_152_p2_carry_n_6}),
        .CYINIT(1'b0),
        .DI({flow_control_loop_pipe_sequential_init_U_n_71,flow_control_loop_pipe_sequential_init_U_n_72,flow_control_loop_pipe_sequential_init_U_n_73,flow_control_loop_pipe_sequential_init_U_n_74}),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_81,flow_control_loop_pipe_sequential_init_U_n_82,flow_control_loop_pipe_sequential_init_U_n_83,flow_control_loop_pipe_sequential_init_U_n_84}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln35_fu_152_p2_carry__0
       (.CI(add_ln35_fu_152_p2_carry_n_3),
        .CO({add_ln35_fu_152_p2_carry__0_n_3,add_ln35_fu_152_p2_carry__0_n_4,add_ln35_fu_152_p2_carry__0_n_5,add_ln35_fu_152_p2_carry__0_n_6}),
        .CYINIT(1'b0),
        .DI({ap_sig_allocacmp_inNeurons_1[7],flow_control_loop_pipe_sequential_init_U_n_75,flow_control_loop_pipe_sequential_init_U_n_76,flow_control_loop_pipe_sequential_init_U_n_77}),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0[7:4]),
        .S({flow_control_loop_pipe_sequential_init_U_n_85,flow_control_loop_pipe_sequential_init_U_n_86,flow_control_loop_pipe_sequential_init_U_n_87,flow_control_loop_pipe_sequential_init_U_n_88}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln35_fu_152_p2_carry__1
       (.CI(add_ln35_fu_152_p2_carry__0_n_3),
        .CO({add_ln35_fu_152_p2_carry__1_n_3,add_ln35_fu_152_p2_carry__1_n_4,add_ln35_fu_152_p2_carry__1_n_5,add_ln35_fu_152_p2_carry__1_n_6}),
        .CYINIT(1'b0),
        .DI(ap_sig_allocacmp_inNeurons_1[11:8]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0[11:8]),
        .S({flow_control_loop_pipe_sequential_init_U_n_89,flow_control_loop_pipe_sequential_init_U_n_90,flow_control_loop_pipe_sequential_init_U_n_91,flow_control_loop_pipe_sequential_init_U_n_92}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln35_fu_152_p2_carry__2
       (.CI(add_ln35_fu_152_p2_carry__1_n_3),
        .CO({NLW_add_ln35_fu_152_p2_carry__2_CO_UNCONNECTED[3:2],add_ln35_fu_152_p2_carry__2_n_5,add_ln35_fu_152_p2_carry__2_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,ap_sig_allocacmp_inNeurons_1[13:12]}),
        .O({NLW_add_ln35_fu_152_p2_carry__2_O_UNCONNECTED[3],grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_weights_address0[14:12]}),
        .S({1'b0,flow_control_loop_pipe_sequential_init_U_n_78,flow_control_loop_pipe_sequential_init_U_n_79,flow_control_loop_pipe_sequential_init_U_n_80}));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h80)) 
    ap_enable_reg_pp0_iter1_i_1__0
       (.I0(icmp_ln33_fu_136_p2),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
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
  (* srl_name = "inst/\grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141/ap_loop_exit_ready_pp0_iter2_reg_reg_srl2 " *) 
  SRL16E ap_loop_exit_ready_pp0_iter2_reg_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_ready),
        .Q(ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_3));
  FDRE ap_loop_exit_ready_pp0_iter3_reg_reg__0
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_3),
        .Q(ap_loop_exit_ready_pp0_iter3_reg),
        .R(1'b0));
  FDRE \conv1514_fu_60_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\conv1514_fu_60_reg[15]_0 [0]),
        .R(1'b0));
  FDRE \conv1514_fu_60_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(\conv1514_fu_60_reg[15]_0 [10]),
        .R(1'b0));
  FDRE \conv1514_fu_60_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[11]),
        .Q(\conv1514_fu_60_reg[15]_0 [11]),
        .R(1'b0));
  FDRE \conv1514_fu_60_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[12]),
        .Q(\conv1514_fu_60_reg[15]_0 [12]),
        .R(1'b0));
  FDRE \conv1514_fu_60_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[13]),
        .Q(\conv1514_fu_60_reg[15]_0 [13]),
        .R(1'b0));
  FDRE \conv1514_fu_60_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[14]),
        .Q(\conv1514_fu_60_reg[15]_0 [14]),
        .R(1'b0));
  FDRE \conv1514_fu_60_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[15]),
        .Q(\conv1514_fu_60_reg[15]_0 [15]),
        .R(1'b0));
  FDRE \conv1514_fu_60_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(\conv1514_fu_60_reg[15]_0 [1]),
        .R(1'b0));
  FDRE \conv1514_fu_60_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(\conv1514_fu_60_reg[15]_0 [2]),
        .R(1'b0));
  FDRE \conv1514_fu_60_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(\conv1514_fu_60_reg[15]_0 [3]),
        .R(1'b0));
  FDRE \conv1514_fu_60_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(\conv1514_fu_60_reg[15]_0 [4]),
        .R(1'b0));
  FDRE \conv1514_fu_60_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(\conv1514_fu_60_reg[15]_0 [5]),
        .R(1'b0));
  FDRE \conv1514_fu_60_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(\conv1514_fu_60_reg[15]_0 [6]),
        .R(1'b0));
  FDRE \conv1514_fu_60_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(\conv1514_fu_60_reg[15]_0 [7]),
        .R(1'b0));
  FDRE \conv1514_fu_60_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(\conv1514_fu_60_reg[15]_0 [8]),
        .R(1'b0));
  FDRE \conv1514_fu_60_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(\conv1514_fu_60_reg[15]_0 [9]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U
       (.ADDRBWRADDR(ADDRBWRADDR),
        .CO(icmp_ln33_fu_136_p2),
        .D(D),
        .DI({flow_control_loop_pipe_sequential_init_U_n_24,flow_control_loop_pipe_sequential_init_U_n_25,flow_control_loop_pipe_sequential_init_U_n_26,flow_control_loop_pipe_sequential_init_U_n_27}),
        .E(inNeurons_fu_560),
        .P({mac_muladd_16s_16s_16ns_16_4_1_U1_n_3,mac_muladd_16s_16s_16ns_16_4_1_U1_n_4,mac_muladd_16s_16s_16ns_16_4_1_U1_n_5,mac_muladd_16s_16s_16ns_16_4_1_U1_n_6,mac_muladd_16s_16s_16ns_16_4_1_U1_n_7,mac_muladd_16s_16s_16ns_16_4_1_U1_n_8,mac_muladd_16s_16s_16ns_16_4_1_U1_n_9,mac_muladd_16s_16s_16ns_16_4_1_U1_n_10,mac_muladd_16s_16s_16ns_16_4_1_U1_n_11,mac_muladd_16s_16s_16ns_16_4_1_U1_n_12,mac_muladd_16s_16s_16ns_16_4_1_U1_n_13,mac_muladd_16s_16s_16ns_16_4_1_U1_n_14,mac_muladd_16s_16s_16ns_16_4_1_U1_n_15,mac_muladd_16s_16s_16ns_16_4_1_U1_n_16,mac_muladd_16s_16s_16ns_16_4_1_U1_n_17,mac_muladd_16s_16s_16ns_16_4_1_U1_n_18}),
        .Q(Q),
        .S({flow_control_loop_pipe_sequential_init_U_n_28,flow_control_loop_pipe_sequential_init_U_n_29,flow_control_loop_pipe_sequential_init_U_n_30,flow_control_loop_pipe_sequential_init_U_n_31}),
        .SR(flow_control_loop_pipe_sequential_init_U_n_4),
        .\ap_CS_fsm_reg[4] (\ap_CS_fsm_reg[4] ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter4(ap_enable_reg_pp0_iter4),
        .ap_loop_exit_ready_pp0_iter3_reg(ap_loop_exit_ready_pp0_iter3_reg),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\conv1514_fu_60_reg[15] (\conv1514_fu_60_reg[15]_1 ),
        .\conv1514_fu_60_reg[15]_0 (\conv1514_fu_60_reg[15]_0 ),
        .empty_reg_2780(empty_reg_2780),
        .\empty_reg_278_reg[14] ({flow_control_loop_pipe_sequential_init_U_n_78,flow_control_loop_pipe_sequential_init_U_n_79,flow_control_loop_pipe_sequential_init_U_n_80}),
        .grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_ready(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_ready),
        .grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg(flow_control_loop_pipe_sequential_init_U_n_54),
        .grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg_0({flow_control_loop_pipe_sequential_init_U_n_81,flow_control_loop_pipe_sequential_init_U_n_82,flow_control_loop_pipe_sequential_init_U_n_83,flow_control_loop_pipe_sequential_init_U_n_84}),
        .grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg_1({flow_control_loop_pipe_sequential_init_U_n_85,flow_control_loop_pipe_sequential_init_U_n_86,flow_control_loop_pipe_sequential_init_U_n_87,flow_control_loop_pipe_sequential_init_U_n_88}),
        .grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_reg_2({flow_control_loop_pipe_sequential_init_U_n_89,flow_control_loop_pipe_sequential_init_U_n_90,flow_control_loop_pipe_sequential_init_U_n_91,flow_control_loop_pipe_sequential_init_U_n_92}),
        .icmp_ln33_fu_136_p2_carry__0(icmp_ln33_fu_136_p2_carry__0_0),
        .\inNeurons_fu_56_reg[0] (\inNeurons_fu_56_reg[0]_0 ),
        .\inNeurons_fu_56_reg[15] ({ap_sig_allocacmp_inNeurons_1[15],ap_sig_allocacmp_inNeurons_1[13:7]}),
        .\inNeurons_fu_56_reg[15]_0 ({flow_control_loop_pipe_sequential_init_U_n_50,flow_control_loop_pipe_sequential_init_U_n_51,flow_control_loop_pipe_sequential_init_U_n_52,flow_control_loop_pipe_sequential_init_U_n_53}),
        .\inNeurons_fu_56_reg[15]_1 (inNeurons_2_fu_142_p2),
        .\inNeurons_fu_56_reg[15]_2 ({\inNeurons_fu_56_reg_n_3_[15] ,\inNeurons_fu_56_reg_n_3_[14] ,\inNeurons_fu_56_reg_n_3_[13] ,\inNeurons_fu_56_reg_n_3_[12] ,\inNeurons_fu_56_reg_n_3_[11] ,\inNeurons_fu_56_reg_n_3_[10] ,\inNeurons_fu_56_reg_n_3_[9] ,\inNeurons_fu_56_reg_n_3_[8] ,\inNeurons_fu_56_reg_n_3_[7] ,\inNeurons_fu_56_reg_n_3_[6] ,\inNeurons_fu_56_reg_n_3_[5] ,\inNeurons_fu_56_reg_n_3_[4] ,\inNeurons_fu_56_reg_n_3_[3] ,\inNeurons_fu_56_reg_n_3_[2] ,\inNeurons_fu_56_reg_n_3_[1] ,\inNeurons_fu_56_reg_n_3_[0] }),
        .\inNeurons_fu_56_reg[3] ({flow_control_loop_pipe_sequential_init_U_n_71,flow_control_loop_pipe_sequential_init_U_n_72,flow_control_loop_pipe_sequential_init_U_n_73,flow_control_loop_pipe_sequential_init_U_n_74}),
        .\inNeurons_fu_56_reg[6] ({flow_control_loop_pipe_sequential_init_U_n_75,flow_control_loop_pipe_sequential_init_U_n_76,flow_control_loop_pipe_sequential_init_U_n_77}),
        .\int_input_r_shift0_reg[0] (\int_input_r_shift0_reg[0] ),
        .mem_reg_0_0(mem_reg_0_0),
        .\numOfInNeurons_read_reg_254_reg[15] ({flow_control_loop_pipe_sequential_init_U_n_46,flow_control_loop_pipe_sequential_init_U_n_47,flow_control_loop_pipe_sequential_init_U_n_48,flow_control_loop_pipe_sequential_init_U_n_49}),
        .\output_r_load_reg_302_reg[15] (p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg_i_1
       (.I0(Q[0]),
        .I1(icmp_ln33_fu_136_p2),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_33_2_fu_141_ap_start_reg),
        .O(\ap_CS_fsm_reg[2] ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln33_fu_136_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln33_fu_136_p2_carry_n_3,icmp_ln33_fu_136_p2_carry_n_4,icmp_ln33_fu_136_p2_carry_n_5,icmp_ln33_fu_136_p2_carry_n_6}),
        .CYINIT(1'b0),
        .DI({flow_control_loop_pipe_sequential_init_U_n_24,flow_control_loop_pipe_sequential_init_U_n_25,flow_control_loop_pipe_sequential_init_U_n_26,flow_control_loop_pipe_sequential_init_U_n_27}),
        .O(NLW_icmp_ln33_fu_136_p2_carry_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_28,flow_control_loop_pipe_sequential_init_U_n_29,flow_control_loop_pipe_sequential_init_U_n_30,flow_control_loop_pipe_sequential_init_U_n_31}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln33_fu_136_p2_carry__0
       (.CI(icmp_ln33_fu_136_p2_carry_n_3),
        .CO({icmp_ln33_fu_136_p2_carry__0_n_3,icmp_ln33_fu_136_p2_carry__0_n_4,icmp_ln33_fu_136_p2_carry__0_n_5,icmp_ln33_fu_136_p2_carry__0_n_6}),
        .CYINIT(1'b0),
        .DI({flow_control_loop_pipe_sequential_init_U_n_46,flow_control_loop_pipe_sequential_init_U_n_47,flow_control_loop_pipe_sequential_init_U_n_48,flow_control_loop_pipe_sequential_init_U_n_49}),
        .O(NLW_icmp_ln33_fu_136_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_50,flow_control_loop_pipe_sequential_init_U_n_51,flow_control_loop_pipe_sequential_init_U_n_52,flow_control_loop_pipe_sequential_init_U_n_53}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln33_fu_136_p2_carry__1
       (.CI(icmp_ln33_fu_136_p2_carry__0_n_3),
        .CO({NLW_icmp_ln33_fu_136_p2_carry__1_CO_UNCONNECTED[3:1],icmp_ln33_fu_136_p2}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,ap_sig_allocacmp_inNeurons_1[15]}),
        .O(NLW_icmp_ln33_fu_136_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,flow_control_loop_pipe_sequential_init_U_n_54}));
  FDRE \inNeurons_fu_56_reg[0] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[0]),
        .Q(\inNeurons_fu_56_reg_n_3_[0] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \inNeurons_fu_56_reg[10] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[10]),
        .Q(\inNeurons_fu_56_reg_n_3_[10] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \inNeurons_fu_56_reg[11] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[11]),
        .Q(\inNeurons_fu_56_reg_n_3_[11] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \inNeurons_fu_56_reg[12] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[12]),
        .Q(\inNeurons_fu_56_reg_n_3_[12] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \inNeurons_fu_56_reg[13] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[13]),
        .Q(\inNeurons_fu_56_reg_n_3_[13] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \inNeurons_fu_56_reg[14] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[14]),
        .Q(\inNeurons_fu_56_reg_n_3_[14] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \inNeurons_fu_56_reg[15] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[15]),
        .Q(\inNeurons_fu_56_reg_n_3_[15] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \inNeurons_fu_56_reg[1] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[1]),
        .Q(\inNeurons_fu_56_reg_n_3_[1] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \inNeurons_fu_56_reg[2] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[2]),
        .Q(\inNeurons_fu_56_reg_n_3_[2] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \inNeurons_fu_56_reg[3] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[3]),
        .Q(\inNeurons_fu_56_reg_n_3_[3] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \inNeurons_fu_56_reg[4] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[4]),
        .Q(\inNeurons_fu_56_reg_n_3_[4] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \inNeurons_fu_56_reg[5] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[5]),
        .Q(\inNeurons_fu_56_reg_n_3_[5] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \inNeurons_fu_56_reg[6] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[6]),
        .Q(\inNeurons_fu_56_reg_n_3_[6] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \inNeurons_fu_56_reg[7] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[7]),
        .Q(\inNeurons_fu_56_reg_n_3_[7] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \inNeurons_fu_56_reg[8] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[8]),
        .Q(\inNeurons_fu_56_reg_n_3_[8] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \inNeurons_fu_56_reg[9] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[9]),
        .Q(\inNeurons_fu_56_reg_n_3_[9] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_mac_muladd_16s_16s_16ns_16_4_1 mac_muladd_16s_16s_16ns_16_4_1_U1
       (.A(A),
        .B(B),
        .P({mac_muladd_16s_16s_16ns_16_4_1_U1_n_3,mac_muladd_16s_16s_16ns_16_4_1_U1_n_4,mac_muladd_16s_16s_16ns_16_4_1_U1_n_5,mac_muladd_16s_16s_16ns_16_4_1_U1_n_6,mac_muladd_16s_16s_16ns_16_4_1_U1_n_7,mac_muladd_16s_16s_16ns_16_4_1_U1_n_8,mac_muladd_16s_16s_16ns_16_4_1_U1_n_9,mac_muladd_16s_16s_16ns_16_4_1_U1_n_10,mac_muladd_16s_16s_16ns_16_4_1_U1_n_11,mac_muladd_16s_16s_16ns_16_4_1_U1_n_12,mac_muladd_16s_16s_16ns_16_4_1_U1_n_13,mac_muladd_16s_16s_16ns_16_4_1_U1_n_14,mac_muladd_16s_16s_16ns_16_4_1_U1_n_15,mac_muladd_16s_16s_16ns_16_4_1_U1_n_16,mac_muladd_16s_16s_16ns_16_4_1_U1_n_17,mac_muladd_16s_16s_16ns_16_4_1_U1_n_18}),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter4(ap_enable_reg_pp0_iter4),
        .p_reg_reg(\conv1514_fu_60_reg[15]_0 ));
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