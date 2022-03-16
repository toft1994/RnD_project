// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Mar 16 12:38:18 2022
// Host        : DESKTOP-IFL7HB3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_nnlayer_0_0_sim_netlist.v
// Design      : design_1_nnlayer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_nnlayer_0_0,nnlayer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
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
  (* ap_ST_fsm_state1 = "10'b0000000001" *) 
  (* ap_ST_fsm_state10 = "10'b1000000000" *) 
  (* ap_ST_fsm_state2 = "10'b0000000010" *) 
  (* ap_ST_fsm_state3 = "10'b0000000100" *) 
  (* ap_ST_fsm_state4 = "10'b0000001000" *) 
  (* ap_ST_fsm_state5 = "10'b0000010000" *) 
  (* ap_ST_fsm_state6 = "10'b0000100000" *) 
  (* ap_ST_fsm_state7 = "10'b0001000000" *) 
  (* ap_ST_fsm_state8 = "10'b0010000000" *) 
  (* ap_ST_fsm_state9 = "10'b0100000000" *) 
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

(* C_S_AXI_CONTROL_ADDR_WIDTH = "18" *) (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ap_ST_fsm_state1 = "10'b0000000001" *) 
(* ap_ST_fsm_state10 = "10'b1000000000" *) (* ap_ST_fsm_state2 = "10'b0000000010" *) (* ap_ST_fsm_state3 = "10'b0000000100" *) 
(* ap_ST_fsm_state4 = "10'b0000001000" *) (* ap_ST_fsm_state5 = "10'b0000010000" *) (* ap_ST_fsm_state6 = "10'b0000100000" *) 
(* ap_ST_fsm_state7 = "10'b0001000000" *) (* ap_ST_fsm_state8 = "10'b0010000000" *) (* ap_ST_fsm_state9 = "10'b0100000000" *) 
(* hls_module = "yes" *) 
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
  wire [7:0]activation;
  wire [7:0]activation_read_reg_333;
  wire \ap_CS_fsm[4]_rep_i_1__0_n_3 ;
  wire \ap_CS_fsm[4]_rep_i_1__1_n_3 ;
  wire \ap_CS_fsm[4]_rep_i_1__2_n_3 ;
  wire \ap_CS_fsm[4]_rep_i_1__3_n_3 ;
  wire \ap_CS_fsm[4]_rep_i_1__4_n_3 ;
  wire \ap_CS_fsm[4]_rep_i_1__5_n_3 ;
  wire \ap_CS_fsm[4]_rep_i_1_n_3 ;
  wire \ap_CS_fsm_reg[4]_rep__0_n_3 ;
  wire \ap_CS_fsm_reg[4]_rep__1_n_3 ;
  wire \ap_CS_fsm_reg[4]_rep__2_n_3 ;
  wire \ap_CS_fsm_reg[4]_rep__3_n_3 ;
  wire \ap_CS_fsm_reg[4]_rep__4_n_3 ;
  wire \ap_CS_fsm_reg[4]_rep__5_n_3 ;
  wire \ap_CS_fsm_reg[4]_rep_n_3 ;
  wire \ap_CS_fsm_reg_n_3_[5] ;
  wire \ap_CS_fsm_reg_n_3_[6] ;
  wire \ap_CS_fsm_reg_n_3_[7] ;
  wire ap_CS_fsm_state1;
  wire ap_CS_fsm_state10;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire ap_CS_fsm_state9;
  wire [9:1]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_NS_fsm18_out;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire \cmp980_reg_374[0]_i_1_n_3 ;
  wire \cmp980_reg_374[0]_i_2_n_3 ;
  wire \cmp980_reg_374[0]_i_3_n_3 ;
  wire \cmp980_reg_374[0]_i_4_n_3 ;
  wire \cmp980_reg_374_reg_n_3_[0] ;
  wire control_s_axi_U_n_4;
  wire control_s_axi_U_n_5;
  wire control_s_axi_U_n_55;
  wire control_s_axi_U_n_57;
  wire control_s_axi_U_n_59;
  wire control_s_axi_U_n_6;
  wire control_s_axi_U_n_76;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg_i_3_n_3;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_n_16;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_n_17;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_n_18;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_n_19;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_n_5;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg;
  wire [7:1]grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_bias_address0;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_n_10;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_n_12;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_n_13;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_n_14;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_n_15;
  wire icmp_ln10_reg_109;
  wire icmp_ln32_fu_206_p2;
  wire \icmp_ln32_reg_351_reg_n_3_[0] ;
  wire icmp_ln36_fu_233_p2;
  wire icmp_ln46_fu_249_p2;
  wire icmp_ln46_reg_391;
  wire \icmp_ln46_reg_391[0]_i_1_n_3 ;
  wire [15:0]inNeurons_1_fu_263_p2;
  wire [15:0]inNeurons_1_reg_403;
  wire \inNeurons_1_reg_403_reg[12]_i_1_n_3 ;
  wire \inNeurons_1_reg_403_reg[12]_i_1_n_4 ;
  wire \inNeurons_1_reg_403_reg[12]_i_1_n_5 ;
  wire \inNeurons_1_reg_403_reg[12]_i_1_n_6 ;
  wire \inNeurons_1_reg_403_reg[15]_i_2_n_5 ;
  wire \inNeurons_1_reg_403_reg[15]_i_2_n_6 ;
  wire \inNeurons_1_reg_403_reg[4]_i_1_n_3 ;
  wire \inNeurons_1_reg_403_reg[4]_i_1_n_4 ;
  wire \inNeurons_1_reg_403_reg[4]_i_1_n_5 ;
  wire \inNeurons_1_reg_403_reg[4]_i_1_n_6 ;
  wire \inNeurons_1_reg_403_reg[8]_i_1_n_3 ;
  wire \inNeurons_1_reg_403_reg[8]_i_1_n_4 ;
  wire \inNeurons_1_reg_403_reg[8]_i_1_n_5 ;
  wire \inNeurons_1_reg_403_reg[8]_i_1_n_6 ;
  wire inNeurons_reg_176;
  wire \inNeurons_reg_176_reg_n_3_[0] ;
  wire \inNeurons_reg_176_reg_n_3_[10] ;
  wire \inNeurons_reg_176_reg_n_3_[11] ;
  wire \inNeurons_reg_176_reg_n_3_[12] ;
  wire \inNeurons_reg_176_reg_n_3_[13] ;
  wire \inNeurons_reg_176_reg_n_3_[14] ;
  wire \inNeurons_reg_176_reg_n_3_[15] ;
  wire \inNeurons_reg_176_reg_n_3_[1] ;
  wire \inNeurons_reg_176_reg_n_3_[2] ;
  wire \inNeurons_reg_176_reg_n_3_[3] ;
  wire \inNeurons_reg_176_reg_n_3_[4] ;
  wire \inNeurons_reg_176_reg_n_3_[5] ;
  wire \inNeurons_reg_176_reg_n_3_[6] ;
  wire \inNeurons_reg_176_reg_n_3_[7] ;
  wire \inNeurons_reg_176_reg_n_3_[8] ;
  wire \inNeurons_reg_176_reg_n_3_[9] ;
  wire [15:0]input_r_q0;
  wire [3:1]int_output_r_be0;
  wire interrupt;
  wire [15:0]lhs_reg_165;
  wire mac_muladd_16s_16s_24ns_24_4_1_U5_n_10;
  wire mac_muladd_16s_16s_24ns_24_4_1_U5_n_11;
  wire mac_muladd_16s_16s_24ns_24_4_1_U5_n_12;
  wire mac_muladd_16s_16s_24ns_24_4_1_U5_n_13;
  wire mac_muladd_16s_16s_24ns_24_4_1_U5_n_14;
  wire mac_muladd_16s_16s_24ns_24_4_1_U5_n_15;
  wire mac_muladd_16s_16s_24ns_24_4_1_U5_n_16;
  wire mac_muladd_16s_16s_24ns_24_4_1_U5_n_17;
  wire mac_muladd_16s_16s_24ns_24_4_1_U5_n_18;
  wire mac_muladd_16s_16s_24ns_24_4_1_U5_n_19;
  wire mac_muladd_16s_16s_24ns_24_4_1_U5_n_3;
  wire mac_muladd_16s_16s_24ns_24_4_1_U5_n_4;
  wire mac_muladd_16s_16s_24ns_24_4_1_U5_n_5;
  wire mac_muladd_16s_16s_24ns_24_4_1_U5_n_6;
  wire mac_muladd_16s_16s_24ns_24_4_1_U5_n_7;
  wire mac_muladd_16s_16s_24ns_24_4_1_U5_n_8;
  wire mac_muladd_16s_16s_24ns_24_4_1_U5_n_9;
  wire [15:0]numOfInNeurons;
  wire [15:0]numOfInNeurons_cast_reg_369;
  wire [15:0]numOfInNeurons_read_reg_344;
  wire [15:0]numOfOutNeurons;
  wire [15:0]numOfOutNeurons_read_reg_338;
  wire \outNeurons_2_fu_100_reg_n_3_[0] ;
  wire \outNeurons_2_fu_100_reg_n_3_[10] ;
  wire \outNeurons_2_fu_100_reg_n_3_[11] ;
  wire \outNeurons_2_fu_100_reg_n_3_[12] ;
  wire \outNeurons_2_fu_100_reg_n_3_[13] ;
  wire \outNeurons_2_fu_100_reg_n_3_[14] ;
  wire \outNeurons_2_fu_100_reg_n_3_[15] ;
  wire \outNeurons_2_fu_100_reg_n_3_[1] ;
  wire \outNeurons_2_fu_100_reg_n_3_[2] ;
  wire \outNeurons_2_fu_100_reg_n_3_[3] ;
  wire \outNeurons_2_fu_100_reg_n_3_[4] ;
  wire \outNeurons_2_fu_100_reg_n_3_[5] ;
  wire \outNeurons_2_fu_100_reg_n_3_[6] ;
  wire \outNeurons_2_fu_100_reg_n_3_[7] ;
  wire \outNeurons_2_fu_100_reg_n_3_[8] ;
  wire \outNeurons_2_fu_100_reg_n_3_[9] ;
  wire [15:0]outNeurons_3_fu_238_p2;
  wire [15:0]outNeurons_3_reg_381;
  wire outNeurons_3_reg_3810;
  wire \outNeurons_3_reg_381_reg[12]_i_1_n_3 ;
  wire \outNeurons_3_reg_381_reg[12]_i_1_n_4 ;
  wire \outNeurons_3_reg_381_reg[12]_i_1_n_5 ;
  wire \outNeurons_3_reg_381_reg[12]_i_1_n_6 ;
  wire \outNeurons_3_reg_381_reg[15]_i_2_n_5 ;
  wire \outNeurons_3_reg_381_reg[15]_i_2_n_6 ;
  wire \outNeurons_3_reg_381_reg[4]_i_1_n_3 ;
  wire \outNeurons_3_reg_381_reg[4]_i_1_n_4 ;
  wire \outNeurons_3_reg_381_reg[4]_i_1_n_5 ;
  wire \outNeurons_3_reg_381_reg[4]_i_1_n_6 ;
  wire \outNeurons_3_reg_381_reg[8]_i_1_n_3 ;
  wire \outNeurons_3_reg_381_reg[8]_i_1_n_4 ;
  wire \outNeurons_3_reg_381_reg[8]_i_1_n_5 ;
  wire \outNeurons_3_reg_381_reg[8]_i_1_n_6 ;
  wire [7:0]output_r_addr_reg_386;
  wire [7:1]output_r_address0;
  wire output_r_ce0;
  wire p_12_in;
  wire [15:0]p_1_in;
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
  wire \weightIndexAdded_fu_104[0]_i_2_n_3 ;
  wire \weightIndexAdded_fu_104[0]_i_3_n_3 ;
  wire \weightIndexAdded_fu_104[0]_i_4_n_3 ;
  wire \weightIndexAdded_fu_104[0]_i_5_n_3 ;
  wire \weightIndexAdded_fu_104[12]_i_2_n_3 ;
  wire \weightIndexAdded_fu_104[12]_i_3_n_3 ;
  wire \weightIndexAdded_fu_104[12]_i_4_n_3 ;
  wire \weightIndexAdded_fu_104[12]_i_5_n_3 ;
  wire \weightIndexAdded_fu_104[4]_i_2_n_3 ;
  wire \weightIndexAdded_fu_104[4]_i_3_n_3 ;
  wire \weightIndexAdded_fu_104[4]_i_4_n_3 ;
  wire \weightIndexAdded_fu_104[4]_i_5_n_3 ;
  wire \weightIndexAdded_fu_104[8]_i_2_n_3 ;
  wire \weightIndexAdded_fu_104[8]_i_3_n_3 ;
  wire \weightIndexAdded_fu_104[8]_i_4_n_3 ;
  wire \weightIndexAdded_fu_104[8]_i_5_n_3 ;
  wire [15:0]weightIndexAdded_fu_104_reg;
  wire \weightIndexAdded_fu_104_reg[0]_i_1_n_10 ;
  wire \weightIndexAdded_fu_104_reg[0]_i_1_n_3 ;
  wire \weightIndexAdded_fu_104_reg[0]_i_1_n_4 ;
  wire \weightIndexAdded_fu_104_reg[0]_i_1_n_5 ;
  wire \weightIndexAdded_fu_104_reg[0]_i_1_n_6 ;
  wire \weightIndexAdded_fu_104_reg[0]_i_1_n_7 ;
  wire \weightIndexAdded_fu_104_reg[0]_i_1_n_8 ;
  wire \weightIndexAdded_fu_104_reg[0]_i_1_n_9 ;
  wire \weightIndexAdded_fu_104_reg[12]_i_1_n_10 ;
  wire \weightIndexAdded_fu_104_reg[12]_i_1_n_4 ;
  wire \weightIndexAdded_fu_104_reg[12]_i_1_n_5 ;
  wire \weightIndexAdded_fu_104_reg[12]_i_1_n_6 ;
  wire \weightIndexAdded_fu_104_reg[12]_i_1_n_7 ;
  wire \weightIndexAdded_fu_104_reg[12]_i_1_n_8 ;
  wire \weightIndexAdded_fu_104_reg[12]_i_1_n_9 ;
  wire \weightIndexAdded_fu_104_reg[4]_i_1_n_10 ;
  wire \weightIndexAdded_fu_104_reg[4]_i_1_n_3 ;
  wire \weightIndexAdded_fu_104_reg[4]_i_1_n_4 ;
  wire \weightIndexAdded_fu_104_reg[4]_i_1_n_5 ;
  wire \weightIndexAdded_fu_104_reg[4]_i_1_n_6 ;
  wire \weightIndexAdded_fu_104_reg[4]_i_1_n_7 ;
  wire \weightIndexAdded_fu_104_reg[4]_i_1_n_8 ;
  wire \weightIndexAdded_fu_104_reg[4]_i_1_n_9 ;
  wire \weightIndexAdded_fu_104_reg[8]_i_1_n_10 ;
  wire \weightIndexAdded_fu_104_reg[8]_i_1_n_3 ;
  wire \weightIndexAdded_fu_104_reg[8]_i_1_n_4 ;
  wire \weightIndexAdded_fu_104_reg[8]_i_1_n_5 ;
  wire \weightIndexAdded_fu_104_reg[8]_i_1_n_6 ;
  wire \weightIndexAdded_fu_104_reg[8]_i_1_n_7 ;
  wire \weightIndexAdded_fu_104_reg[8]_i_1_n_8 ;
  wire \weightIndexAdded_fu_104_reg[8]_i_1_n_9 ;
  wire [15:0]weights_q0;
  wire [7:0]zext_ln33_reg_119_reg;
  wire [3:2]\NLW_inNeurons_1_reg_403_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_inNeurons_1_reg_403_reg[15]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_outNeurons_3_reg_381_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_outNeurons_3_reg_381_reg[15]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_weightIndexAdded_fu_104_reg[12]_i_1_CO_UNCONNECTED ;

  assign ap_local_block = \<const0> ;
  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE \activation_read_reg_333_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(activation[0]),
        .Q(activation_read_reg_333[0]),
        .R(1'b0));
  FDRE \activation_read_reg_333_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(activation[1]),
        .Q(activation_read_reg_333[1]),
        .R(1'b0));
  FDRE \activation_read_reg_333_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(activation[2]),
        .Q(activation_read_reg_333[2]),
        .R(1'b0));
  FDRE \activation_read_reg_333_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(activation[3]),
        .Q(activation_read_reg_333[3]),
        .R(1'b0));
  FDRE \activation_read_reg_333_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(activation[4]),
        .Q(activation_read_reg_333[4]),
        .R(1'b0));
  FDRE \activation_read_reg_333_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(activation[5]),
        .Q(activation_read_reg_333[5]),
        .R(1'b0));
  FDRE \activation_read_reg_333_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(activation[6]),
        .Q(activation_read_reg_333[6]),
        .R(1'b0));
  FDRE \activation_read_reg_333_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(activation[7]),
        .Q(activation_read_reg_333[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0010)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(icmp_ln36_fu_233_p2),
        .I1(\icmp_ln32_reg_351_reg_n_3_[0] ),
        .I2(ap_CS_fsm_state3),
        .I3(\cmp980_reg_374_reg_n_3_[0] ),
        .O(ap_NS_fsm[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1000)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(icmp_ln36_fu_233_p2),
        .I1(\icmp_ln32_reg_351_reg_n_3_[0] ),
        .I2(ap_CS_fsm_state3),
        .I3(\cmp980_reg_374_reg_n_3_[0] ),
        .I4(ap_CS_fsm_state4),
        .I5(ap_CS_fsm_state9),
        .O(ap_NS_fsm[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1000)) 
    \ap_CS_fsm[4]_rep_i_1 
       (.I0(icmp_ln36_fu_233_p2),
        .I1(\icmp_ln32_reg_351_reg_n_3_[0] ),
        .I2(ap_CS_fsm_state3),
        .I3(\cmp980_reg_374_reg_n_3_[0] ),
        .I4(ap_CS_fsm_state4),
        .I5(ap_CS_fsm_state9),
        .O(\ap_CS_fsm[4]_rep_i_1_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1000)) 
    \ap_CS_fsm[4]_rep_i_1__0 
       (.I0(icmp_ln36_fu_233_p2),
        .I1(\icmp_ln32_reg_351_reg_n_3_[0] ),
        .I2(ap_CS_fsm_state3),
        .I3(\cmp980_reg_374_reg_n_3_[0] ),
        .I4(ap_CS_fsm_state4),
        .I5(ap_CS_fsm_state9),
        .O(\ap_CS_fsm[4]_rep_i_1__0_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1000)) 
    \ap_CS_fsm[4]_rep_i_1__1 
       (.I0(icmp_ln36_fu_233_p2),
        .I1(\icmp_ln32_reg_351_reg_n_3_[0] ),
        .I2(ap_CS_fsm_state3),
        .I3(\cmp980_reg_374_reg_n_3_[0] ),
        .I4(ap_CS_fsm_state4),
        .I5(ap_CS_fsm_state9),
        .O(\ap_CS_fsm[4]_rep_i_1__1_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1000)) 
    \ap_CS_fsm[4]_rep_i_1__2 
       (.I0(icmp_ln36_fu_233_p2),
        .I1(\icmp_ln32_reg_351_reg_n_3_[0] ),
        .I2(ap_CS_fsm_state3),
        .I3(\cmp980_reg_374_reg_n_3_[0] ),
        .I4(ap_CS_fsm_state4),
        .I5(ap_CS_fsm_state9),
        .O(\ap_CS_fsm[4]_rep_i_1__2_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1000)) 
    \ap_CS_fsm[4]_rep_i_1__3 
       (.I0(icmp_ln36_fu_233_p2),
        .I1(\icmp_ln32_reg_351_reg_n_3_[0] ),
        .I2(ap_CS_fsm_state3),
        .I3(\cmp980_reg_374_reg_n_3_[0] ),
        .I4(ap_CS_fsm_state4),
        .I5(ap_CS_fsm_state9),
        .O(\ap_CS_fsm[4]_rep_i_1__3_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1000)) 
    \ap_CS_fsm[4]_rep_i_1__4 
       (.I0(icmp_ln36_fu_233_p2),
        .I1(\icmp_ln32_reg_351_reg_n_3_[0] ),
        .I2(ap_CS_fsm_state3),
        .I3(\cmp980_reg_374_reg_n_3_[0] ),
        .I4(ap_CS_fsm_state4),
        .I5(ap_CS_fsm_state9),
        .O(\ap_CS_fsm[4]_rep_i_1__4_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1000)) 
    \ap_CS_fsm[4]_rep_i_1__5 
       (.I0(icmp_ln36_fu_233_p2),
        .I1(\icmp_ln32_reg_351_reg_n_3_[0] ),
        .I2(ap_CS_fsm_state3),
        .I3(\cmp980_reg_374_reg_n_3_[0] ),
        .I4(ap_CS_fsm_state4),
        .I5(ap_CS_fsm_state9),
        .O(\ap_CS_fsm[4]_rep_i_1__5_n_3 ));
  LUT3 #(
    .INIT(8'h20)) 
    \ap_CS_fsm[5]_i_1 
       (.I0(\ap_CS_fsm_reg[4]_rep__0_n_3 ),
        .I1(\cmp980_reg_374_reg_n_3_[0] ),
        .I2(control_s_axi_U_n_76),
        .O(ap_NS_fsm[5]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(control_s_axi_U_n_55),
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
  (* ORIG_CELL_NAME = "ap_CS_fsm_reg[4]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  (* ORIG_CELL_NAME = "ap_CS_fsm_reg[4]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4]_rep 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[4]_rep_i_1_n_3 ),
        .Q(\ap_CS_fsm_reg[4]_rep_n_3 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  (* ORIG_CELL_NAME = "ap_CS_fsm_reg[4]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4]_rep__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[4]_rep_i_1__0_n_3 ),
        .Q(\ap_CS_fsm_reg[4]_rep__0_n_3 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  (* ORIG_CELL_NAME = "ap_CS_fsm_reg[4]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4]_rep__1 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[4]_rep_i_1__1_n_3 ),
        .Q(\ap_CS_fsm_reg[4]_rep__1_n_3 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  (* ORIG_CELL_NAME = "ap_CS_fsm_reg[4]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4]_rep__2 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[4]_rep_i_1__2_n_3 ),
        .Q(\ap_CS_fsm_reg[4]_rep__2_n_3 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  (* ORIG_CELL_NAME = "ap_CS_fsm_reg[4]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4]_rep__3 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[4]_rep_i_1__3_n_3 ),
        .Q(\ap_CS_fsm_reg[4]_rep__3_n_3 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  (* ORIG_CELL_NAME = "ap_CS_fsm_reg[4]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4]_rep__4 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[4]_rep_i_1__4_n_3 ),
        .Q(\ap_CS_fsm_reg[4]_rep__4_n_3 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  (* ORIG_CELL_NAME = "ap_CS_fsm_reg[4]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4]_rep__5 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[4]_rep_i_1__5_n_3 ),
        .Q(\ap_CS_fsm_reg[4]_rep__5_n_3 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(\ap_CS_fsm_reg_n_3_[5] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_3_[5] ),
        .Q(\ap_CS_fsm_reg_n_3_[6] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_3_[6] ),
        .Q(\ap_CS_fsm_reg_n_3_[7] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_3_[7] ),
        .Q(ap_CS_fsm_state9),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[9]),
        .Q(ap_CS_fsm_state10),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h0A0A0A3A0A0A0A0A)) 
    \cmp980_reg_374[0]_i_1 
       (.I0(\cmp980_reg_374_reg_n_3_[0] ),
        .I1(numOfInNeurons_read_reg_344[13]),
        .I2(ap_CS_fsm_state2),
        .I3(numOfInNeurons_read_reg_344[1]),
        .I4(\cmp980_reg_374[0]_i_2_n_3 ),
        .I5(\cmp980_reg_374[0]_i_3_n_3 ),
        .O(\cmp980_reg_374[0]_i_1_n_3 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cmp980_reg_374[0]_i_2 
       (.I0(numOfInNeurons_read_reg_344[15]),
        .I1(numOfInNeurons_read_reg_344[6]),
        .I2(numOfInNeurons_read_reg_344[4]),
        .I3(numOfInNeurons_read_reg_344[8]),
        .I4(\cmp980_reg_374[0]_i_4_n_3 ),
        .O(\cmp980_reg_374[0]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cmp980_reg_374[0]_i_3 
       (.I0(numOfInNeurons_read_reg_344[14]),
        .I1(numOfInNeurons_read_reg_344[5]),
        .I2(numOfInNeurons_read_reg_344[11]),
        .I3(numOfInNeurons_read_reg_344[12]),
        .I4(numOfInNeurons_read_reg_344[2]),
        .I5(numOfInNeurons_read_reg_344[9]),
        .O(\cmp980_reg_374[0]_i_3_n_3 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cmp980_reg_374[0]_i_4 
       (.I0(numOfInNeurons_read_reg_344[10]),
        .I1(numOfInNeurons_read_reg_344[0]),
        .I2(numOfInNeurons_read_reg_344[7]),
        .I3(numOfInNeurons_read_reg_344[3]),
        .O(\cmp980_reg_374[0]_i_4_n_3 ));
  FDRE \cmp980_reg_374_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\cmp980_reg_374[0]_i_1_n_3 ),
        .Q(\cmp980_reg_374_reg_n_3_[0] ),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_control_s_axi control_s_axi_U
       (.A(input_r_q0),
        .ADDRBWRADDR(output_r_address0),
        .B(weights_q0),
        .CO(icmp_ln36_fu_233_p2),
        .D(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_bias_address0),
        .P({mac_muladd_16s_16s_24ns_24_4_1_U5_n_3,mac_muladd_16s_16s_24ns_24_4_1_U5_n_4,mac_muladd_16s_16s_24ns_24_4_1_U5_n_5,mac_muladd_16s_16s_24ns_24_4_1_U5_n_6,mac_muladd_16s_16s_24ns_24_4_1_U5_n_7,mac_muladd_16s_16s_24ns_24_4_1_U5_n_8,mac_muladd_16s_16s_24ns_24_4_1_U5_n_9,mac_muladd_16s_16s_24ns_24_4_1_U5_n_10,mac_muladd_16s_16s_24ns_24_4_1_U5_n_11,mac_muladd_16s_16s_24ns_24_4_1_U5_n_12,mac_muladd_16s_16s_24ns_24_4_1_U5_n_13,mac_muladd_16s_16s_24ns_24_4_1_U5_n_14,mac_muladd_16s_16s_24ns_24_4_1_U5_n_15,mac_muladd_16s_16s_24ns_24_4_1_U5_n_16,mac_muladd_16s_16s_24ns_24_4_1_U5_n_17,mac_muladd_16s_16s_24ns_24_4_1_U5_n_18}),
        .Q({\inNeurons_reg_176_reg_n_3_[15] ,\inNeurons_reg_176_reg_n_3_[14] ,\inNeurons_reg_176_reg_n_3_[13] ,\inNeurons_reg_176_reg_n_3_[12] ,\inNeurons_reg_176_reg_n_3_[11] ,\inNeurons_reg_176_reg_n_3_[10] ,\inNeurons_reg_176_reg_n_3_[9] ,\inNeurons_reg_176_reg_n_3_[8] ,\inNeurons_reg_176_reg_n_3_[7] ,\inNeurons_reg_176_reg_n_3_[6] ,\inNeurons_reg_176_reg_n_3_[5] ,\inNeurons_reg_176_reg_n_3_[4] ,\inNeurons_reg_176_reg_n_3_[3] ,\inNeurons_reg_176_reg_n_3_[2] ,\inNeurons_reg_176_reg_n_3_[1] ,\inNeurons_reg_176_reg_n_3_[0] }),
        .WEBWE({int_output_r_be0[3],int_output_r_be0[1]}),
        .\ap_CS_fsm_reg[2] (grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_n_10),
        .\ap_CS_fsm_reg[5]_i_3 (numOfInNeurons_cast_reg_369),
        .ap_NS_fsm1(ap_NS_fsm1),
        .ap_NS_fsm18_out(ap_NS_fsm18_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ce0(\ap_CS_fsm_reg[4]_rep__4_n_3 ),
        .\cmp980_reg_374_reg[0] (control_s_axi_U_n_57),
        .grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .icmp_ln10_reg_109(icmp_ln10_reg_109),
        .icmp_ln32_fu_206_p2(icmp_ln32_fu_206_p2),
        .icmp_ln46_reg_391(icmp_ln46_reg_391),
        .\icmp_ln46_reg_391_reg[0] (control_s_axi_U_n_6),
        .\inNeurons_reg_176_reg[15] (control_s_axi_U_n_76),
        .\int_activation_reg[7]_0 (activation),
        .int_ap_start_reg_0({ap_NS_fsm[2],control_s_axi_U_n_55}),
        .int_ap_start_reg_1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_n_5),
        .\int_bias_shift0_reg[0]_0 (control_s_axi_U_n_5),
        .\int_bias_shift0_reg[0]_1 (grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_n_15),
        .\int_numOfInNeurons_reg[15]_0 (numOfInNeurons),
        .\int_numOfOutNeurons_reg[15]_0 (numOfOutNeurons),
        .\int_output_r_shift0_reg[0]_0 (control_s_axi_U_n_4),
        .\int_output_r_shift0_reg[0]_1 (grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_n_18),
        .interrupt(interrupt),
        .mem_reg(control_s_axi_U_n_59),
        .mem_reg_0(\ap_CS_fsm_reg[4]_rep__5_n_3 ),
        .mem_reg_1({ap_CS_fsm_state10,ap_CS_fsm_state9,ap_CS_fsm_state5,ap_CS_fsm_state3,ap_CS_fsm_state2,ap_CS_fsm_state1}),
        .mem_reg_10(\ap_CS_fsm_reg[4]_rep_n_3 ),
        .mem_reg_1_0_1(\ap_CS_fsm_reg[4]_rep__1_n_3 ),
        .mem_reg_2(output_r_addr_reg_386[0]),
        .mem_reg_2_0_3(\ap_CS_fsm_reg[4]_rep__2_n_3 ),
        .mem_reg_3(\ap_CS_fsm_reg[4]_rep__0_n_3 ),
        .mem_reg_3_0_5(\ap_CS_fsm_reg[4]_rep__3_n_3 ),
        .mem_reg_4(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_n_17),
        .mem_reg_5(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_n_12),
        .mem_reg_6(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_n_16),
        .mem_reg_7(\cmp980_reg_374_reg_n_3_[0] ),
        .mem_reg_8(\icmp_ln32_reg_351_reg_n_3_[0] ),
        .mem_reg_9(lhs_reg_165),
        .mem_reg_i_57(numOfOutNeurons_read_reg_338),
        .mem_reg_i_57_0({\outNeurons_2_fu_100_reg_n_3_[15] ,\outNeurons_2_fu_100_reg_n_3_[14] ,\outNeurons_2_fu_100_reg_n_3_[13] ,\outNeurons_2_fu_100_reg_n_3_[12] ,\outNeurons_2_fu_100_reg_n_3_[11] ,\outNeurons_2_fu_100_reg_n_3_[10] ,\outNeurons_2_fu_100_reg_n_3_[9] ,\outNeurons_2_fu_100_reg_n_3_[8] ,\outNeurons_2_fu_100_reg_n_3_[7] ,\outNeurons_2_fu_100_reg_n_3_[6] ,\outNeurons_2_fu_100_reg_n_3_[5] ,\outNeurons_2_fu_100_reg_n_3_[4] ,\outNeurons_2_fu_100_reg_n_3_[3] ,\outNeurons_2_fu_100_reg_n_3_[2] ,\outNeurons_2_fu_100_reg_n_3_[1] ,\outNeurons_2_fu_100_reg_n_3_[0] }),
        .output_r_ce0(output_r_ce0),
        .p_reg_reg(p_1_in),
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
        .weightIndexAdded_fu_104_reg(weightIndexAdded_fu_104_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_nnlayer_Pipeline_VITIS_LOOP_10_1 grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197
       (.ADDRBWRADDR(output_r_address0),
        .CO(icmp_ln36_fu_233_p2),
        .D(ap_NS_fsm[9]),
        .Q({ap_CS_fsm_state10,ap_CS_fsm_state3}),
        .WEBWE({int_output_r_be0[3],int_output_r_be0[1]}),
        .\ap_CS_fsm_reg[2] (grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_n_19),
        .\ap_CS_fsm_reg[9] (\icmp_ln32_reg_351_reg_n_3_[0] ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg_reg_0(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_n_16),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\cmp980_reg_374_reg[0] (grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_n_17),
        .grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
        .icmp_ln10_reg_109(icmp_ln10_reg_109),
        .icmp_ln46_fu_249_p2(icmp_ln46_fu_249_p2),
        .icmp_ln46_reg_391(icmp_ln46_reg_391),
        .\icmp_ln46_reg_391_reg[0] (grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_n_5),
        .\int_output_r_shift0_reg[0] (\ap_CS_fsm_reg[4]_rep__0_n_3 ),
        .\int_output_r_shift0_reg[0]_0 (control_s_axi_U_n_4),
        .mem_reg(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_n_13),
        .mem_reg_0(\cmp980_reg_374_reg_n_3_[0] ),
        .mem_reg_1(control_s_axi_U_n_6),
        .mem_reg_2(output_r_addr_reg_386),
        .mem_reg_3(control_s_axi_U_n_57),
        .mem_reg_4({\outNeurons_2_fu_100_reg_n_3_[7] ,\outNeurons_2_fu_100_reg_n_3_[6] ,\outNeurons_2_fu_100_reg_n_3_[5] ,\outNeurons_2_fu_100_reg_n_3_[4] ,\outNeurons_2_fu_100_reg_n_3_[3] ,\outNeurons_2_fu_100_reg_n_3_[2] ,\outNeurons_2_fu_100_reg_n_3_[1] ,\outNeurons_2_fu_100_reg_n_3_[0] }),
        .mem_reg_5(zext_ln33_reg_119_reg),
        .mem_reg_6(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_n_12),
        .mem_reg_7(control_s_axi_U_n_59),
        .\output_r_addr_reg_386_reg[0] (grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_n_18),
        .output_r_ce0(output_r_ce0));
  LUT5 #(
    .INIT(32'h00000004)) 
    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg_i_2
       (.I0(activation_read_reg_333[2]),
        .I1(activation_read_reg_333[0]),
        .I2(activation_read_reg_333[5]),
        .I3(activation_read_reg_333[6]),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg_i_3_n_3),
        .O(icmp_ln46_fu_249_p2));
  LUT4 #(
    .INIT(16'hFFFE)) 
    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg_i_3
       (.I0(activation_read_reg_333[3]),
        .I1(activation_read_reg_333[1]),
        .I2(activation_read_reg_333[7]),
        .I3(activation_read_reg_333[4]),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg_i_3_n_3));
  FDRE #(
    .INIT(1'b0)) 
    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_n_19),
        .Q(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
        .R(ap_rst_n_inv));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_nnlayer_Pipeline_VITIS_LOOP_32_1 grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187
       (.D(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_bias_address0),
        .Q({ap_CS_fsm_state10,ap_CS_fsm_state2}),
        .\ap_CS_fsm_reg[4]_rep (grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_n_12),
        .\ap_CS_fsm_reg[4]_rep_0 (grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_n_13),
        .ap_NS_fsm18_out(ap_NS_fsm18_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_n_10),
        .grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg_0(ap_NS_fsm[1]),
        .grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg_1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_n_14),
        .icmp_ln32_fu_87_p2_carry__0_0(numOfOutNeurons_read_reg_338),
        .icmp_ln46_reg_391(icmp_ln46_reg_391),
        .\int_bias_shift0_reg[0] (control_s_axi_U_n_5),
        .mem_reg(control_s_axi_U_n_76),
        .mem_reg_0(\ap_CS_fsm_reg[4]_rep_n_3 ),
        .mem_reg_1(\cmp980_reg_374_reg_n_3_[0] ),
        .mem_reg_2(control_s_axi_U_n_6),
        .\outNeurons_fu_42_reg[0]_0 (grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_n_15),
        .\zext_ln33_reg_119_reg[7]_0 (zext_ln33_reg_119_reg));
  FDRE #(
    .INIT(1'b0)) 
    grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_n_14),
        .Q(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .R(ap_rst_n_inv));
  FDRE \icmp_ln32_reg_351_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(icmp_ln32_fu_206_p2),
        .Q(\icmp_ln32_reg_351_reg_n_3_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBF8880)) 
    \icmp_ln46_reg_391[0]_i_1 
       (.I0(icmp_ln46_fu_249_p2),
        .I1(ap_CS_fsm_state3),
        .I2(icmp_ln36_fu_233_p2),
        .I3(\icmp_ln32_reg_351_reg_n_3_[0] ),
        .I4(icmp_ln46_reg_391),
        .O(\icmp_ln46_reg_391[0]_i_1_n_3 ));
  FDRE \icmp_ln46_reg_391_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln46_reg_391[0]_i_1_n_3 ),
        .Q(icmp_ln46_reg_391),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \inNeurons_1_reg_403[0]_i_1 
       (.I0(\inNeurons_reg_176_reg_n_3_[0] ),
        .O(inNeurons_1_fu_263_p2[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \inNeurons_1_reg_403[15]_i_1 
       (.I0(\ap_CS_fsm_reg[4]_rep_n_3 ),
        .I1(\cmp980_reg_374_reg_n_3_[0] ),
        .O(p_12_in));
  FDRE \inNeurons_1_reg_403_reg[0] 
       (.C(ap_clk),
        .CE(p_12_in),
        .D(inNeurons_1_fu_263_p2[0]),
        .Q(inNeurons_1_reg_403[0]),
        .R(1'b0));
  FDRE \inNeurons_1_reg_403_reg[10] 
       (.C(ap_clk),
        .CE(p_12_in),
        .D(inNeurons_1_fu_263_p2[10]),
        .Q(inNeurons_1_reg_403[10]),
        .R(1'b0));
  FDRE \inNeurons_1_reg_403_reg[11] 
       (.C(ap_clk),
        .CE(p_12_in),
        .D(inNeurons_1_fu_263_p2[11]),
        .Q(inNeurons_1_reg_403[11]),
        .R(1'b0));
  FDRE \inNeurons_1_reg_403_reg[12] 
       (.C(ap_clk),
        .CE(p_12_in),
        .D(inNeurons_1_fu_263_p2[12]),
        .Q(inNeurons_1_reg_403[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \inNeurons_1_reg_403_reg[12]_i_1 
       (.CI(\inNeurons_1_reg_403_reg[8]_i_1_n_3 ),
        .CO({\inNeurons_1_reg_403_reg[12]_i_1_n_3 ,\inNeurons_1_reg_403_reg[12]_i_1_n_4 ,\inNeurons_1_reg_403_reg[12]_i_1_n_5 ,\inNeurons_1_reg_403_reg[12]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(inNeurons_1_fu_263_p2[12:9]),
        .S({\inNeurons_reg_176_reg_n_3_[12] ,\inNeurons_reg_176_reg_n_3_[11] ,\inNeurons_reg_176_reg_n_3_[10] ,\inNeurons_reg_176_reg_n_3_[9] }));
  FDRE \inNeurons_1_reg_403_reg[13] 
       (.C(ap_clk),
        .CE(p_12_in),
        .D(inNeurons_1_fu_263_p2[13]),
        .Q(inNeurons_1_reg_403[13]),
        .R(1'b0));
  FDRE \inNeurons_1_reg_403_reg[14] 
       (.C(ap_clk),
        .CE(p_12_in),
        .D(inNeurons_1_fu_263_p2[14]),
        .Q(inNeurons_1_reg_403[14]),
        .R(1'b0));
  FDRE \inNeurons_1_reg_403_reg[15] 
       (.C(ap_clk),
        .CE(p_12_in),
        .D(inNeurons_1_fu_263_p2[15]),
        .Q(inNeurons_1_reg_403[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \inNeurons_1_reg_403_reg[15]_i_2 
       (.CI(\inNeurons_1_reg_403_reg[12]_i_1_n_3 ),
        .CO({\NLW_inNeurons_1_reg_403_reg[15]_i_2_CO_UNCONNECTED [3:2],\inNeurons_1_reg_403_reg[15]_i_2_n_5 ,\inNeurons_1_reg_403_reg[15]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_inNeurons_1_reg_403_reg[15]_i_2_O_UNCONNECTED [3],inNeurons_1_fu_263_p2[15:13]}),
        .S({1'b0,\inNeurons_reg_176_reg_n_3_[15] ,\inNeurons_reg_176_reg_n_3_[14] ,\inNeurons_reg_176_reg_n_3_[13] }));
  FDRE \inNeurons_1_reg_403_reg[1] 
       (.C(ap_clk),
        .CE(p_12_in),
        .D(inNeurons_1_fu_263_p2[1]),
        .Q(inNeurons_1_reg_403[1]),
        .R(1'b0));
  FDRE \inNeurons_1_reg_403_reg[2] 
       (.C(ap_clk),
        .CE(p_12_in),
        .D(inNeurons_1_fu_263_p2[2]),
        .Q(inNeurons_1_reg_403[2]),
        .R(1'b0));
  FDRE \inNeurons_1_reg_403_reg[3] 
       (.C(ap_clk),
        .CE(p_12_in),
        .D(inNeurons_1_fu_263_p2[3]),
        .Q(inNeurons_1_reg_403[3]),
        .R(1'b0));
  FDRE \inNeurons_1_reg_403_reg[4] 
       (.C(ap_clk),
        .CE(p_12_in),
        .D(inNeurons_1_fu_263_p2[4]),
        .Q(inNeurons_1_reg_403[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \inNeurons_1_reg_403_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\inNeurons_1_reg_403_reg[4]_i_1_n_3 ,\inNeurons_1_reg_403_reg[4]_i_1_n_4 ,\inNeurons_1_reg_403_reg[4]_i_1_n_5 ,\inNeurons_1_reg_403_reg[4]_i_1_n_6 }),
        .CYINIT(\inNeurons_reg_176_reg_n_3_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(inNeurons_1_fu_263_p2[4:1]),
        .S({\inNeurons_reg_176_reg_n_3_[4] ,\inNeurons_reg_176_reg_n_3_[3] ,\inNeurons_reg_176_reg_n_3_[2] ,\inNeurons_reg_176_reg_n_3_[1] }));
  FDRE \inNeurons_1_reg_403_reg[5] 
       (.C(ap_clk),
        .CE(p_12_in),
        .D(inNeurons_1_fu_263_p2[5]),
        .Q(inNeurons_1_reg_403[5]),
        .R(1'b0));
  FDRE \inNeurons_1_reg_403_reg[6] 
       (.C(ap_clk),
        .CE(p_12_in),
        .D(inNeurons_1_fu_263_p2[6]),
        .Q(inNeurons_1_reg_403[6]),
        .R(1'b0));
  FDRE \inNeurons_1_reg_403_reg[7] 
       (.C(ap_clk),
        .CE(p_12_in),
        .D(inNeurons_1_fu_263_p2[7]),
        .Q(inNeurons_1_reg_403[7]),
        .R(1'b0));
  FDRE \inNeurons_1_reg_403_reg[8] 
       (.C(ap_clk),
        .CE(p_12_in),
        .D(inNeurons_1_fu_263_p2[8]),
        .Q(inNeurons_1_reg_403[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \inNeurons_1_reg_403_reg[8]_i_1 
       (.CI(\inNeurons_1_reg_403_reg[4]_i_1_n_3 ),
        .CO({\inNeurons_1_reg_403_reg[8]_i_1_n_3 ,\inNeurons_1_reg_403_reg[8]_i_1_n_4 ,\inNeurons_1_reg_403_reg[8]_i_1_n_5 ,\inNeurons_1_reg_403_reg[8]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(inNeurons_1_fu_263_p2[8:5]),
        .S({\inNeurons_reg_176_reg_n_3_[8] ,\inNeurons_reg_176_reg_n_3_[7] ,\inNeurons_reg_176_reg_n_3_[6] ,\inNeurons_reg_176_reg_n_3_[5] }));
  FDRE \inNeurons_1_reg_403_reg[9] 
       (.C(ap_clk),
        .CE(p_12_in),
        .D(inNeurons_1_fu_263_p2[9]),
        .Q(inNeurons_1_reg_403[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \inNeurons_reg_176[15]_i_1 
       (.I0(ap_CS_fsm_state4),
        .I1(ap_CS_fsm_state9),
        .O(inNeurons_reg_176));
  FDRE \inNeurons_reg_176_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(inNeurons_1_reg_403[0]),
        .Q(\inNeurons_reg_176_reg_n_3_[0] ),
        .R(inNeurons_reg_176));
  FDRE \inNeurons_reg_176_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(inNeurons_1_reg_403[10]),
        .Q(\inNeurons_reg_176_reg_n_3_[10] ),
        .R(inNeurons_reg_176));
  FDRE \inNeurons_reg_176_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(inNeurons_1_reg_403[11]),
        .Q(\inNeurons_reg_176_reg_n_3_[11] ),
        .R(inNeurons_reg_176));
  FDRE \inNeurons_reg_176_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(inNeurons_1_reg_403[12]),
        .Q(\inNeurons_reg_176_reg_n_3_[12] ),
        .R(inNeurons_reg_176));
  FDRE \inNeurons_reg_176_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(inNeurons_1_reg_403[13]),
        .Q(\inNeurons_reg_176_reg_n_3_[13] ),
        .R(inNeurons_reg_176));
  FDRE \inNeurons_reg_176_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(inNeurons_1_reg_403[14]),
        .Q(\inNeurons_reg_176_reg_n_3_[14] ),
        .R(inNeurons_reg_176));
  FDRE \inNeurons_reg_176_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(inNeurons_1_reg_403[15]),
        .Q(\inNeurons_reg_176_reg_n_3_[15] ),
        .R(inNeurons_reg_176));
  FDRE \inNeurons_reg_176_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(inNeurons_1_reg_403[1]),
        .Q(\inNeurons_reg_176_reg_n_3_[1] ),
        .R(inNeurons_reg_176));
  FDRE \inNeurons_reg_176_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(inNeurons_1_reg_403[2]),
        .Q(\inNeurons_reg_176_reg_n_3_[2] ),
        .R(inNeurons_reg_176));
  FDRE \inNeurons_reg_176_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(inNeurons_1_reg_403[3]),
        .Q(\inNeurons_reg_176_reg_n_3_[3] ),
        .R(inNeurons_reg_176));
  FDRE \inNeurons_reg_176_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(inNeurons_1_reg_403[4]),
        .Q(\inNeurons_reg_176_reg_n_3_[4] ),
        .R(inNeurons_reg_176));
  FDRE \inNeurons_reg_176_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(inNeurons_1_reg_403[5]),
        .Q(\inNeurons_reg_176_reg_n_3_[5] ),
        .R(inNeurons_reg_176));
  FDRE \inNeurons_reg_176_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(inNeurons_1_reg_403[6]),
        .Q(\inNeurons_reg_176_reg_n_3_[6] ),
        .R(inNeurons_reg_176));
  FDRE \inNeurons_reg_176_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(inNeurons_1_reg_403[7]),
        .Q(\inNeurons_reg_176_reg_n_3_[7] ),
        .R(inNeurons_reg_176));
  FDRE \inNeurons_reg_176_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(inNeurons_1_reg_403[8]),
        .Q(\inNeurons_reg_176_reg_n_3_[8] ),
        .R(inNeurons_reg_176));
  FDRE \inNeurons_reg_176_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(inNeurons_1_reg_403[9]),
        .Q(\inNeurons_reg_176_reg_n_3_[9] ),
        .R(inNeurons_reg_176));
  FDRE \lhs_reg_165_reg[0] 
       (.C(ap_clk),
        .CE(mac_muladd_16s_16s_24ns_24_4_1_U5_n_19),
        .D(p_1_in[0]),
        .Q(lhs_reg_165[0]),
        .R(1'b0));
  FDRE \lhs_reg_165_reg[10] 
       (.C(ap_clk),
        .CE(mac_muladd_16s_16s_24ns_24_4_1_U5_n_19),
        .D(p_1_in[10]),
        .Q(lhs_reg_165[10]),
        .R(1'b0));
  FDRE \lhs_reg_165_reg[11] 
       (.C(ap_clk),
        .CE(mac_muladd_16s_16s_24ns_24_4_1_U5_n_19),
        .D(p_1_in[11]),
        .Q(lhs_reg_165[11]),
        .R(1'b0));
  FDRE \lhs_reg_165_reg[12] 
       (.C(ap_clk),
        .CE(mac_muladd_16s_16s_24ns_24_4_1_U5_n_19),
        .D(p_1_in[12]),
        .Q(lhs_reg_165[12]),
        .R(1'b0));
  FDRE \lhs_reg_165_reg[13] 
       (.C(ap_clk),
        .CE(mac_muladd_16s_16s_24ns_24_4_1_U5_n_19),
        .D(p_1_in[13]),
        .Q(lhs_reg_165[13]),
        .R(1'b0));
  FDRE \lhs_reg_165_reg[14] 
       (.C(ap_clk),
        .CE(mac_muladd_16s_16s_24ns_24_4_1_U5_n_19),
        .D(p_1_in[14]),
        .Q(lhs_reg_165[14]),
        .R(1'b0));
  FDRE \lhs_reg_165_reg[15] 
       (.C(ap_clk),
        .CE(mac_muladd_16s_16s_24ns_24_4_1_U5_n_19),
        .D(p_1_in[15]),
        .Q(lhs_reg_165[15]),
        .R(1'b0));
  FDRE \lhs_reg_165_reg[1] 
       (.C(ap_clk),
        .CE(mac_muladd_16s_16s_24ns_24_4_1_U5_n_19),
        .D(p_1_in[1]),
        .Q(lhs_reg_165[1]),
        .R(1'b0));
  FDRE \lhs_reg_165_reg[2] 
       (.C(ap_clk),
        .CE(mac_muladd_16s_16s_24ns_24_4_1_U5_n_19),
        .D(p_1_in[2]),
        .Q(lhs_reg_165[2]),
        .R(1'b0));
  FDRE \lhs_reg_165_reg[3] 
       (.C(ap_clk),
        .CE(mac_muladd_16s_16s_24ns_24_4_1_U5_n_19),
        .D(p_1_in[3]),
        .Q(lhs_reg_165[3]),
        .R(1'b0));
  FDRE \lhs_reg_165_reg[4] 
       (.C(ap_clk),
        .CE(mac_muladd_16s_16s_24ns_24_4_1_U5_n_19),
        .D(p_1_in[4]),
        .Q(lhs_reg_165[4]),
        .R(1'b0));
  FDRE \lhs_reg_165_reg[5] 
       (.C(ap_clk),
        .CE(mac_muladd_16s_16s_24ns_24_4_1_U5_n_19),
        .D(p_1_in[5]),
        .Q(lhs_reg_165[5]),
        .R(1'b0));
  FDRE \lhs_reg_165_reg[6] 
       (.C(ap_clk),
        .CE(mac_muladd_16s_16s_24ns_24_4_1_U5_n_19),
        .D(p_1_in[6]),
        .Q(lhs_reg_165[6]),
        .R(1'b0));
  FDRE \lhs_reg_165_reg[7] 
       (.C(ap_clk),
        .CE(mac_muladd_16s_16s_24ns_24_4_1_U5_n_19),
        .D(p_1_in[7]),
        .Q(lhs_reg_165[7]),
        .R(1'b0));
  FDRE \lhs_reg_165_reg[8] 
       (.C(ap_clk),
        .CE(mac_muladd_16s_16s_24ns_24_4_1_U5_n_19),
        .D(p_1_in[8]),
        .Q(lhs_reg_165[8]),
        .R(1'b0));
  FDRE \lhs_reg_165_reg[9] 
       (.C(ap_clk),
        .CE(mac_muladd_16s_16s_24ns_24_4_1_U5_n_19),
        .D(p_1_in[9]),
        .Q(lhs_reg_165[9]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_mac_muladd_16s_16s_24ns_24_4_1 mac_muladd_16s_16s_24ns_24_4_1_U5
       (.A(input_r_q0),
        .B(weights_q0),
        .D(p_1_in),
        .E(mac_muladd_16s_16s_24ns_24_4_1_U5_n_19),
        .P({mac_muladd_16s_16s_24ns_24_4_1_U5_n_3,mac_muladd_16s_16s_24ns_24_4_1_U5_n_4,mac_muladd_16s_16s_24ns_24_4_1_U5_n_5,mac_muladd_16s_16s_24ns_24_4_1_U5_n_6,mac_muladd_16s_16s_24ns_24_4_1_U5_n_7,mac_muladd_16s_16s_24ns_24_4_1_U5_n_8,mac_muladd_16s_16s_24ns_24_4_1_U5_n_9,mac_muladd_16s_16s_24ns_24_4_1_U5_n_10,mac_muladd_16s_16s_24ns_24_4_1_U5_n_11,mac_muladd_16s_16s_24ns_24_4_1_U5_n_12,mac_muladd_16s_16s_24ns_24_4_1_U5_n_13,mac_muladd_16s_16s_24ns_24_4_1_U5_n_14,mac_muladd_16s_16s_24ns_24_4_1_U5_n_15,mac_muladd_16s_16s_24ns_24_4_1_U5_n_16,mac_muladd_16s_16s_24ns_24_4_1_U5_n_17,mac_muladd_16s_16s_24ns_24_4_1_U5_n_18}),
        .Q({ap_CS_fsm_state9,ap_CS_fsm_state4}),
        .ap_clk(ap_clk));
  FDRE \numOfInNeurons_cast_reg_369_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(numOfInNeurons_read_reg_344[0]),
        .Q(numOfInNeurons_cast_reg_369[0]),
        .R(1'b0));
  FDRE \numOfInNeurons_cast_reg_369_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(numOfInNeurons_read_reg_344[10]),
        .Q(numOfInNeurons_cast_reg_369[10]),
        .R(1'b0));
  FDRE \numOfInNeurons_cast_reg_369_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(numOfInNeurons_read_reg_344[11]),
        .Q(numOfInNeurons_cast_reg_369[11]),
        .R(1'b0));
  FDRE \numOfInNeurons_cast_reg_369_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(numOfInNeurons_read_reg_344[12]),
        .Q(numOfInNeurons_cast_reg_369[12]),
        .R(1'b0));
  FDRE \numOfInNeurons_cast_reg_369_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(numOfInNeurons_read_reg_344[13]),
        .Q(numOfInNeurons_cast_reg_369[13]),
        .R(1'b0));
  FDRE \numOfInNeurons_cast_reg_369_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(numOfInNeurons_read_reg_344[14]),
        .Q(numOfInNeurons_cast_reg_369[14]),
        .R(1'b0));
  FDRE \numOfInNeurons_cast_reg_369_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(numOfInNeurons_read_reg_344[15]),
        .Q(numOfInNeurons_cast_reg_369[15]),
        .R(1'b0));
  FDRE \numOfInNeurons_cast_reg_369_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(numOfInNeurons_read_reg_344[1]),
        .Q(numOfInNeurons_cast_reg_369[1]),
        .R(1'b0));
  FDRE \numOfInNeurons_cast_reg_369_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(numOfInNeurons_read_reg_344[2]),
        .Q(numOfInNeurons_cast_reg_369[2]),
        .R(1'b0));
  FDRE \numOfInNeurons_cast_reg_369_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(numOfInNeurons_read_reg_344[3]),
        .Q(numOfInNeurons_cast_reg_369[3]),
        .R(1'b0));
  FDRE \numOfInNeurons_cast_reg_369_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(numOfInNeurons_read_reg_344[4]),
        .Q(numOfInNeurons_cast_reg_369[4]),
        .R(1'b0));
  FDRE \numOfInNeurons_cast_reg_369_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(numOfInNeurons_read_reg_344[5]),
        .Q(numOfInNeurons_cast_reg_369[5]),
        .R(1'b0));
  FDRE \numOfInNeurons_cast_reg_369_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(numOfInNeurons_read_reg_344[6]),
        .Q(numOfInNeurons_cast_reg_369[6]),
        .R(1'b0));
  FDRE \numOfInNeurons_cast_reg_369_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(numOfInNeurons_read_reg_344[7]),
        .Q(numOfInNeurons_cast_reg_369[7]),
        .R(1'b0));
  FDRE \numOfInNeurons_cast_reg_369_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(numOfInNeurons_read_reg_344[8]),
        .Q(numOfInNeurons_cast_reg_369[8]),
        .R(1'b0));
  FDRE \numOfInNeurons_cast_reg_369_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(numOfInNeurons_read_reg_344[9]),
        .Q(numOfInNeurons_cast_reg_369[9]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_344_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[0]),
        .Q(numOfInNeurons_read_reg_344[0]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_344_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[10]),
        .Q(numOfInNeurons_read_reg_344[10]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_344_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[11]),
        .Q(numOfInNeurons_read_reg_344[11]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_344_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[12]),
        .Q(numOfInNeurons_read_reg_344[12]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_344_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[13]),
        .Q(numOfInNeurons_read_reg_344[13]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_344_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[14]),
        .Q(numOfInNeurons_read_reg_344[14]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_344_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[15]),
        .Q(numOfInNeurons_read_reg_344[15]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_344_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[1]),
        .Q(numOfInNeurons_read_reg_344[1]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_344_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[2]),
        .Q(numOfInNeurons_read_reg_344[2]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_344_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[3]),
        .Q(numOfInNeurons_read_reg_344[3]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_344_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[4]),
        .Q(numOfInNeurons_read_reg_344[4]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_344_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[5]),
        .Q(numOfInNeurons_read_reg_344[5]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_344_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[6]),
        .Q(numOfInNeurons_read_reg_344[6]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_344_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[7]),
        .Q(numOfInNeurons_read_reg_344[7]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_344_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[8]),
        .Q(numOfInNeurons_read_reg_344[8]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_344_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[9]),
        .Q(numOfInNeurons_read_reg_344[9]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_338_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[0]),
        .Q(numOfOutNeurons_read_reg_338[0]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_338_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[10]),
        .Q(numOfOutNeurons_read_reg_338[10]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_338_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[11]),
        .Q(numOfOutNeurons_read_reg_338[11]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_338_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[12]),
        .Q(numOfOutNeurons_read_reg_338[12]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_338_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[13]),
        .Q(numOfOutNeurons_read_reg_338[13]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_338_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[14]),
        .Q(numOfOutNeurons_read_reg_338[14]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_338_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[15]),
        .Q(numOfOutNeurons_read_reg_338[15]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_338_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[1]),
        .Q(numOfOutNeurons_read_reg_338[1]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_338_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[2]),
        .Q(numOfOutNeurons_read_reg_338[2]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_338_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[3]),
        .Q(numOfOutNeurons_read_reg_338[3]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_338_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[4]),
        .Q(numOfOutNeurons_read_reg_338[4]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_338_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[5]),
        .Q(numOfOutNeurons_read_reg_338[5]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_338_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[6]),
        .Q(numOfOutNeurons_read_reg_338[6]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_338_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[7]),
        .Q(numOfOutNeurons_read_reg_338[7]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_338_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[8]),
        .Q(numOfOutNeurons_read_reg_338[8]),
        .R(1'b0));
  FDRE \numOfOutNeurons_read_reg_338_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfOutNeurons[9]),
        .Q(numOfOutNeurons_read_reg_338[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \outNeurons_2_fu_100[15]_i_2 
       (.I0(\ap_CS_fsm_reg[4]_rep__0_n_3 ),
        .I1(\cmp980_reg_374_reg_n_3_[0] ),
        .I2(control_s_axi_U_n_76),
        .O(ap_NS_fsm1));
  FDRE \outNeurons_2_fu_100_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(outNeurons_3_reg_381[0]),
        .Q(\outNeurons_2_fu_100_reg_n_3_[0] ),
        .R(ap_NS_fsm18_out));
  FDRE \outNeurons_2_fu_100_reg[10] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(outNeurons_3_reg_381[10]),
        .Q(\outNeurons_2_fu_100_reg_n_3_[10] ),
        .R(ap_NS_fsm18_out));
  FDRE \outNeurons_2_fu_100_reg[11] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(outNeurons_3_reg_381[11]),
        .Q(\outNeurons_2_fu_100_reg_n_3_[11] ),
        .R(ap_NS_fsm18_out));
  FDRE \outNeurons_2_fu_100_reg[12] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(outNeurons_3_reg_381[12]),
        .Q(\outNeurons_2_fu_100_reg_n_3_[12] ),
        .R(ap_NS_fsm18_out));
  FDRE \outNeurons_2_fu_100_reg[13] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(outNeurons_3_reg_381[13]),
        .Q(\outNeurons_2_fu_100_reg_n_3_[13] ),
        .R(ap_NS_fsm18_out));
  FDRE \outNeurons_2_fu_100_reg[14] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(outNeurons_3_reg_381[14]),
        .Q(\outNeurons_2_fu_100_reg_n_3_[14] ),
        .R(ap_NS_fsm18_out));
  FDRE \outNeurons_2_fu_100_reg[15] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(outNeurons_3_reg_381[15]),
        .Q(\outNeurons_2_fu_100_reg_n_3_[15] ),
        .R(ap_NS_fsm18_out));
  FDRE \outNeurons_2_fu_100_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(outNeurons_3_reg_381[1]),
        .Q(\outNeurons_2_fu_100_reg_n_3_[1] ),
        .R(ap_NS_fsm18_out));
  FDRE \outNeurons_2_fu_100_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(outNeurons_3_reg_381[2]),
        .Q(\outNeurons_2_fu_100_reg_n_3_[2] ),
        .R(ap_NS_fsm18_out));
  FDRE \outNeurons_2_fu_100_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(outNeurons_3_reg_381[3]),
        .Q(\outNeurons_2_fu_100_reg_n_3_[3] ),
        .R(ap_NS_fsm18_out));
  FDRE \outNeurons_2_fu_100_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(outNeurons_3_reg_381[4]),
        .Q(\outNeurons_2_fu_100_reg_n_3_[4] ),
        .R(ap_NS_fsm18_out));
  FDRE \outNeurons_2_fu_100_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(outNeurons_3_reg_381[5]),
        .Q(\outNeurons_2_fu_100_reg_n_3_[5] ),
        .R(ap_NS_fsm18_out));
  FDRE \outNeurons_2_fu_100_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(outNeurons_3_reg_381[6]),
        .Q(\outNeurons_2_fu_100_reg_n_3_[6] ),
        .R(ap_NS_fsm18_out));
  FDRE \outNeurons_2_fu_100_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(outNeurons_3_reg_381[7]),
        .Q(\outNeurons_2_fu_100_reg_n_3_[7] ),
        .R(ap_NS_fsm18_out));
  FDRE \outNeurons_2_fu_100_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(outNeurons_3_reg_381[8]),
        .Q(\outNeurons_2_fu_100_reg_n_3_[8] ),
        .R(ap_NS_fsm18_out));
  FDRE \outNeurons_2_fu_100_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(outNeurons_3_reg_381[9]),
        .Q(\outNeurons_2_fu_100_reg_n_3_[9] ),
        .R(ap_NS_fsm18_out));
  LUT1 #(
    .INIT(2'h1)) 
    \outNeurons_3_reg_381[0]_i_1 
       (.I0(\outNeurons_2_fu_100_reg_n_3_[0] ),
        .O(outNeurons_3_fu_238_p2[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \outNeurons_3_reg_381[15]_i_1 
       (.I0(ap_CS_fsm_state3),
        .I1(\icmp_ln32_reg_351_reg_n_3_[0] ),
        .O(outNeurons_3_reg_3810));
  FDRE \outNeurons_3_reg_381_reg[0] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_3810),
        .D(outNeurons_3_fu_238_p2[0]),
        .Q(outNeurons_3_reg_381[0]),
        .R(1'b0));
  FDRE \outNeurons_3_reg_381_reg[10] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_3810),
        .D(outNeurons_3_fu_238_p2[10]),
        .Q(outNeurons_3_reg_381[10]),
        .R(1'b0));
  FDRE \outNeurons_3_reg_381_reg[11] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_3810),
        .D(outNeurons_3_fu_238_p2[11]),
        .Q(outNeurons_3_reg_381[11]),
        .R(1'b0));
  FDRE \outNeurons_3_reg_381_reg[12] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_3810),
        .D(outNeurons_3_fu_238_p2[12]),
        .Q(outNeurons_3_reg_381[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \outNeurons_3_reg_381_reg[12]_i_1 
       (.CI(\outNeurons_3_reg_381_reg[8]_i_1_n_3 ),
        .CO({\outNeurons_3_reg_381_reg[12]_i_1_n_3 ,\outNeurons_3_reg_381_reg[12]_i_1_n_4 ,\outNeurons_3_reg_381_reg[12]_i_1_n_5 ,\outNeurons_3_reg_381_reg[12]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(outNeurons_3_fu_238_p2[12:9]),
        .S({\outNeurons_2_fu_100_reg_n_3_[12] ,\outNeurons_2_fu_100_reg_n_3_[11] ,\outNeurons_2_fu_100_reg_n_3_[10] ,\outNeurons_2_fu_100_reg_n_3_[9] }));
  FDRE \outNeurons_3_reg_381_reg[13] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_3810),
        .D(outNeurons_3_fu_238_p2[13]),
        .Q(outNeurons_3_reg_381[13]),
        .R(1'b0));
  FDRE \outNeurons_3_reg_381_reg[14] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_3810),
        .D(outNeurons_3_fu_238_p2[14]),
        .Q(outNeurons_3_reg_381[14]),
        .R(1'b0));
  FDRE \outNeurons_3_reg_381_reg[15] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_3810),
        .D(outNeurons_3_fu_238_p2[15]),
        .Q(outNeurons_3_reg_381[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \outNeurons_3_reg_381_reg[15]_i_2 
       (.CI(\outNeurons_3_reg_381_reg[12]_i_1_n_3 ),
        .CO({\NLW_outNeurons_3_reg_381_reg[15]_i_2_CO_UNCONNECTED [3:2],\outNeurons_3_reg_381_reg[15]_i_2_n_5 ,\outNeurons_3_reg_381_reg[15]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_outNeurons_3_reg_381_reg[15]_i_2_O_UNCONNECTED [3],outNeurons_3_fu_238_p2[15:13]}),
        .S({1'b0,\outNeurons_2_fu_100_reg_n_3_[15] ,\outNeurons_2_fu_100_reg_n_3_[14] ,\outNeurons_2_fu_100_reg_n_3_[13] }));
  FDRE \outNeurons_3_reg_381_reg[1] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_3810),
        .D(outNeurons_3_fu_238_p2[1]),
        .Q(outNeurons_3_reg_381[1]),
        .R(1'b0));
  FDRE \outNeurons_3_reg_381_reg[2] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_3810),
        .D(outNeurons_3_fu_238_p2[2]),
        .Q(outNeurons_3_reg_381[2]),
        .R(1'b0));
  FDRE \outNeurons_3_reg_381_reg[3] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_3810),
        .D(outNeurons_3_fu_238_p2[3]),
        .Q(outNeurons_3_reg_381[3]),
        .R(1'b0));
  FDRE \outNeurons_3_reg_381_reg[4] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_3810),
        .D(outNeurons_3_fu_238_p2[4]),
        .Q(outNeurons_3_reg_381[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \outNeurons_3_reg_381_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\outNeurons_3_reg_381_reg[4]_i_1_n_3 ,\outNeurons_3_reg_381_reg[4]_i_1_n_4 ,\outNeurons_3_reg_381_reg[4]_i_1_n_5 ,\outNeurons_3_reg_381_reg[4]_i_1_n_6 }),
        .CYINIT(\outNeurons_2_fu_100_reg_n_3_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(outNeurons_3_fu_238_p2[4:1]),
        .S({\outNeurons_2_fu_100_reg_n_3_[4] ,\outNeurons_2_fu_100_reg_n_3_[3] ,\outNeurons_2_fu_100_reg_n_3_[2] ,\outNeurons_2_fu_100_reg_n_3_[1] }));
  FDRE \outNeurons_3_reg_381_reg[5] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_3810),
        .D(outNeurons_3_fu_238_p2[5]),
        .Q(outNeurons_3_reg_381[5]),
        .R(1'b0));
  FDRE \outNeurons_3_reg_381_reg[6] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_3810),
        .D(outNeurons_3_fu_238_p2[6]),
        .Q(outNeurons_3_reg_381[6]),
        .R(1'b0));
  FDRE \outNeurons_3_reg_381_reg[7] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_3810),
        .D(outNeurons_3_fu_238_p2[7]),
        .Q(outNeurons_3_reg_381[7]),
        .R(1'b0));
  FDRE \outNeurons_3_reg_381_reg[8] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_3810),
        .D(outNeurons_3_fu_238_p2[8]),
        .Q(outNeurons_3_reg_381[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \outNeurons_3_reg_381_reg[8]_i_1 
       (.CI(\outNeurons_3_reg_381_reg[4]_i_1_n_3 ),
        .CO({\outNeurons_3_reg_381_reg[8]_i_1_n_3 ,\outNeurons_3_reg_381_reg[8]_i_1_n_4 ,\outNeurons_3_reg_381_reg[8]_i_1_n_5 ,\outNeurons_3_reg_381_reg[8]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(outNeurons_3_fu_238_p2[8:5]),
        .S({\outNeurons_2_fu_100_reg_n_3_[8] ,\outNeurons_2_fu_100_reg_n_3_[7] ,\outNeurons_2_fu_100_reg_n_3_[6] ,\outNeurons_2_fu_100_reg_n_3_[5] }));
  FDRE \outNeurons_3_reg_381_reg[9] 
       (.C(ap_clk),
        .CE(outNeurons_3_reg_3810),
        .D(outNeurons_3_fu_238_p2[9]),
        .Q(outNeurons_3_reg_381[9]),
        .R(1'b0));
  FDRE \output_r_addr_reg_386_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\outNeurons_2_fu_100_reg_n_3_[0] ),
        .Q(output_r_addr_reg_386[0]),
        .R(1'b0));
  FDRE \output_r_addr_reg_386_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\outNeurons_2_fu_100_reg_n_3_[1] ),
        .Q(output_r_addr_reg_386[1]),
        .R(1'b0));
  FDRE \output_r_addr_reg_386_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\outNeurons_2_fu_100_reg_n_3_[2] ),
        .Q(output_r_addr_reg_386[2]),
        .R(1'b0));
  FDRE \output_r_addr_reg_386_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\outNeurons_2_fu_100_reg_n_3_[3] ),
        .Q(output_r_addr_reg_386[3]),
        .R(1'b0));
  FDRE \output_r_addr_reg_386_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\outNeurons_2_fu_100_reg_n_3_[4] ),
        .Q(output_r_addr_reg_386[4]),
        .R(1'b0));
  FDRE \output_r_addr_reg_386_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\outNeurons_2_fu_100_reg_n_3_[5] ),
        .Q(output_r_addr_reg_386[5]),
        .R(1'b0));
  FDRE \output_r_addr_reg_386_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\outNeurons_2_fu_100_reg_n_3_[6] ),
        .Q(output_r_addr_reg_386[6]),
        .R(1'b0));
  FDRE \output_r_addr_reg_386_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\outNeurons_2_fu_100_reg_n_3_[7] ),
        .Q(output_r_addr_reg_386[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_104[0]_i_2 
       (.I0(numOfInNeurons_read_reg_344[3]),
        .I1(weightIndexAdded_fu_104_reg[3]),
        .O(\weightIndexAdded_fu_104[0]_i_2_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_104[0]_i_3 
       (.I0(numOfInNeurons_read_reg_344[2]),
        .I1(weightIndexAdded_fu_104_reg[2]),
        .O(\weightIndexAdded_fu_104[0]_i_3_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_104[0]_i_4 
       (.I0(numOfInNeurons_read_reg_344[1]),
        .I1(weightIndexAdded_fu_104_reg[1]),
        .O(\weightIndexAdded_fu_104[0]_i_4_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_104[0]_i_5 
       (.I0(numOfInNeurons_read_reg_344[0]),
        .I1(weightIndexAdded_fu_104_reg[0]),
        .O(\weightIndexAdded_fu_104[0]_i_5_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_104[12]_i_2 
       (.I0(weightIndexAdded_fu_104_reg[15]),
        .I1(numOfInNeurons_read_reg_344[15]),
        .O(\weightIndexAdded_fu_104[12]_i_2_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_104[12]_i_3 
       (.I0(numOfInNeurons_read_reg_344[14]),
        .I1(weightIndexAdded_fu_104_reg[14]),
        .O(\weightIndexAdded_fu_104[12]_i_3_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_104[12]_i_4 
       (.I0(numOfInNeurons_read_reg_344[13]),
        .I1(weightIndexAdded_fu_104_reg[13]),
        .O(\weightIndexAdded_fu_104[12]_i_4_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_104[12]_i_5 
       (.I0(numOfInNeurons_read_reg_344[12]),
        .I1(weightIndexAdded_fu_104_reg[12]),
        .O(\weightIndexAdded_fu_104[12]_i_5_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_104[4]_i_2 
       (.I0(numOfInNeurons_read_reg_344[7]),
        .I1(weightIndexAdded_fu_104_reg[7]),
        .O(\weightIndexAdded_fu_104[4]_i_2_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_104[4]_i_3 
       (.I0(numOfInNeurons_read_reg_344[6]),
        .I1(weightIndexAdded_fu_104_reg[6]),
        .O(\weightIndexAdded_fu_104[4]_i_3_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_104[4]_i_4 
       (.I0(numOfInNeurons_read_reg_344[5]),
        .I1(weightIndexAdded_fu_104_reg[5]),
        .O(\weightIndexAdded_fu_104[4]_i_4_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_104[4]_i_5 
       (.I0(numOfInNeurons_read_reg_344[4]),
        .I1(weightIndexAdded_fu_104_reg[4]),
        .O(\weightIndexAdded_fu_104[4]_i_5_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_104[8]_i_2 
       (.I0(numOfInNeurons_read_reg_344[11]),
        .I1(weightIndexAdded_fu_104_reg[11]),
        .O(\weightIndexAdded_fu_104[8]_i_2_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_104[8]_i_3 
       (.I0(numOfInNeurons_read_reg_344[10]),
        .I1(weightIndexAdded_fu_104_reg[10]),
        .O(\weightIndexAdded_fu_104[8]_i_3_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_104[8]_i_4 
       (.I0(numOfInNeurons_read_reg_344[9]),
        .I1(weightIndexAdded_fu_104_reg[9]),
        .O(\weightIndexAdded_fu_104[8]_i_4_n_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_104[8]_i_5 
       (.I0(numOfInNeurons_read_reg_344[8]),
        .I1(weightIndexAdded_fu_104_reg[8]),
        .O(\weightIndexAdded_fu_104[8]_i_5_n_3 ));
  FDRE \weightIndexAdded_fu_104_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(\weightIndexAdded_fu_104_reg[0]_i_1_n_10 ),
        .Q(weightIndexAdded_fu_104_reg[0]),
        .R(ap_NS_fsm18_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \weightIndexAdded_fu_104_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\weightIndexAdded_fu_104_reg[0]_i_1_n_3 ,\weightIndexAdded_fu_104_reg[0]_i_1_n_4 ,\weightIndexAdded_fu_104_reg[0]_i_1_n_5 ,\weightIndexAdded_fu_104_reg[0]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI(numOfInNeurons_read_reg_344[3:0]),
        .O({\weightIndexAdded_fu_104_reg[0]_i_1_n_7 ,\weightIndexAdded_fu_104_reg[0]_i_1_n_8 ,\weightIndexAdded_fu_104_reg[0]_i_1_n_9 ,\weightIndexAdded_fu_104_reg[0]_i_1_n_10 }),
        .S({\weightIndexAdded_fu_104[0]_i_2_n_3 ,\weightIndexAdded_fu_104[0]_i_3_n_3 ,\weightIndexAdded_fu_104[0]_i_4_n_3 ,\weightIndexAdded_fu_104[0]_i_5_n_3 }));
  FDRE \weightIndexAdded_fu_104_reg[10] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(\weightIndexAdded_fu_104_reg[8]_i_1_n_8 ),
        .Q(weightIndexAdded_fu_104_reg[10]),
        .R(ap_NS_fsm18_out));
  FDRE \weightIndexAdded_fu_104_reg[11] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(\weightIndexAdded_fu_104_reg[8]_i_1_n_7 ),
        .Q(weightIndexAdded_fu_104_reg[11]),
        .R(ap_NS_fsm18_out));
  FDRE \weightIndexAdded_fu_104_reg[12] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(\weightIndexAdded_fu_104_reg[12]_i_1_n_10 ),
        .Q(weightIndexAdded_fu_104_reg[12]),
        .R(ap_NS_fsm18_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \weightIndexAdded_fu_104_reg[12]_i_1 
       (.CI(\weightIndexAdded_fu_104_reg[8]_i_1_n_3 ),
        .CO({\NLW_weightIndexAdded_fu_104_reg[12]_i_1_CO_UNCONNECTED [3],\weightIndexAdded_fu_104_reg[12]_i_1_n_4 ,\weightIndexAdded_fu_104_reg[12]_i_1_n_5 ,\weightIndexAdded_fu_104_reg[12]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,numOfInNeurons_read_reg_344[14:12]}),
        .O({\weightIndexAdded_fu_104_reg[12]_i_1_n_7 ,\weightIndexAdded_fu_104_reg[12]_i_1_n_8 ,\weightIndexAdded_fu_104_reg[12]_i_1_n_9 ,\weightIndexAdded_fu_104_reg[12]_i_1_n_10 }),
        .S({\weightIndexAdded_fu_104[12]_i_2_n_3 ,\weightIndexAdded_fu_104[12]_i_3_n_3 ,\weightIndexAdded_fu_104[12]_i_4_n_3 ,\weightIndexAdded_fu_104[12]_i_5_n_3 }));
  FDRE \weightIndexAdded_fu_104_reg[13] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(\weightIndexAdded_fu_104_reg[12]_i_1_n_9 ),
        .Q(weightIndexAdded_fu_104_reg[13]),
        .R(ap_NS_fsm18_out));
  FDRE \weightIndexAdded_fu_104_reg[14] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(\weightIndexAdded_fu_104_reg[12]_i_1_n_8 ),
        .Q(weightIndexAdded_fu_104_reg[14]),
        .R(ap_NS_fsm18_out));
  FDRE \weightIndexAdded_fu_104_reg[15] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(\weightIndexAdded_fu_104_reg[12]_i_1_n_7 ),
        .Q(weightIndexAdded_fu_104_reg[15]),
        .R(ap_NS_fsm18_out));
  FDRE \weightIndexAdded_fu_104_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(\weightIndexAdded_fu_104_reg[0]_i_1_n_9 ),
        .Q(weightIndexAdded_fu_104_reg[1]),
        .R(ap_NS_fsm18_out));
  FDRE \weightIndexAdded_fu_104_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(\weightIndexAdded_fu_104_reg[0]_i_1_n_8 ),
        .Q(weightIndexAdded_fu_104_reg[2]),
        .R(ap_NS_fsm18_out));
  FDRE \weightIndexAdded_fu_104_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(\weightIndexAdded_fu_104_reg[0]_i_1_n_7 ),
        .Q(weightIndexAdded_fu_104_reg[3]),
        .R(ap_NS_fsm18_out));
  FDRE \weightIndexAdded_fu_104_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(\weightIndexAdded_fu_104_reg[4]_i_1_n_10 ),
        .Q(weightIndexAdded_fu_104_reg[4]),
        .R(ap_NS_fsm18_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \weightIndexAdded_fu_104_reg[4]_i_1 
       (.CI(\weightIndexAdded_fu_104_reg[0]_i_1_n_3 ),
        .CO({\weightIndexAdded_fu_104_reg[4]_i_1_n_3 ,\weightIndexAdded_fu_104_reg[4]_i_1_n_4 ,\weightIndexAdded_fu_104_reg[4]_i_1_n_5 ,\weightIndexAdded_fu_104_reg[4]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI(numOfInNeurons_read_reg_344[7:4]),
        .O({\weightIndexAdded_fu_104_reg[4]_i_1_n_7 ,\weightIndexAdded_fu_104_reg[4]_i_1_n_8 ,\weightIndexAdded_fu_104_reg[4]_i_1_n_9 ,\weightIndexAdded_fu_104_reg[4]_i_1_n_10 }),
        .S({\weightIndexAdded_fu_104[4]_i_2_n_3 ,\weightIndexAdded_fu_104[4]_i_3_n_3 ,\weightIndexAdded_fu_104[4]_i_4_n_3 ,\weightIndexAdded_fu_104[4]_i_5_n_3 }));
  FDRE \weightIndexAdded_fu_104_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(\weightIndexAdded_fu_104_reg[4]_i_1_n_9 ),
        .Q(weightIndexAdded_fu_104_reg[5]),
        .R(ap_NS_fsm18_out));
  FDRE \weightIndexAdded_fu_104_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(\weightIndexAdded_fu_104_reg[4]_i_1_n_8 ),
        .Q(weightIndexAdded_fu_104_reg[6]),
        .R(ap_NS_fsm18_out));
  FDRE \weightIndexAdded_fu_104_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(\weightIndexAdded_fu_104_reg[4]_i_1_n_7 ),
        .Q(weightIndexAdded_fu_104_reg[7]),
        .R(ap_NS_fsm18_out));
  FDRE \weightIndexAdded_fu_104_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(\weightIndexAdded_fu_104_reg[8]_i_1_n_10 ),
        .Q(weightIndexAdded_fu_104_reg[8]),
        .R(ap_NS_fsm18_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \weightIndexAdded_fu_104_reg[8]_i_1 
       (.CI(\weightIndexAdded_fu_104_reg[4]_i_1_n_3 ),
        .CO({\weightIndexAdded_fu_104_reg[8]_i_1_n_3 ,\weightIndexAdded_fu_104_reg[8]_i_1_n_4 ,\weightIndexAdded_fu_104_reg[8]_i_1_n_5 ,\weightIndexAdded_fu_104_reg[8]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI(numOfInNeurons_read_reg_344[11:8]),
        .O({\weightIndexAdded_fu_104_reg[8]_i_1_n_7 ,\weightIndexAdded_fu_104_reg[8]_i_1_n_8 ,\weightIndexAdded_fu_104_reg[8]_i_1_n_9 ,\weightIndexAdded_fu_104_reg[8]_i_1_n_10 }),
        .S({\weightIndexAdded_fu_104[8]_i_2_n_3 ,\weightIndexAdded_fu_104[8]_i_3_n_3 ,\weightIndexAdded_fu_104[8]_i_4_n_3 ,\weightIndexAdded_fu_104[8]_i_5_n_3 }));
  FDRE \weightIndexAdded_fu_104_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(\weightIndexAdded_fu_104_reg[8]_i_1_n_9 ),
        .Q(weightIndexAdded_fu_104_reg[9]),
        .R(ap_NS_fsm18_out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_control_s_axi
   (ap_rst_n_inv,
    \int_output_r_shift0_reg[0]_0 ,
    \int_bias_shift0_reg[0]_0 ,
    \icmp_ln46_reg_391_reg[0] ,
    s_axi_control_ARREADY,
    \int_numOfInNeurons_reg[15]_0 ,
    \int_numOfOutNeurons_reg[15]_0 ,
    s_axi_control_WREADY,
    s_axi_control_RVALID,
    s_axi_control_AWREADY,
    \int_activation_reg[7]_0 ,
    interrupt,
    s_axi_control_BVALID,
    ap_NS_fsm18_out,
    int_ap_start_reg_0,
    icmp_ln32_fu_206_p2,
    \cmp980_reg_374_reg[0] ,
    CO,
    mem_reg,
    p_reg_reg,
    \inNeurons_reg_176_reg[15] ,
    s_axi_control_RDATA,
    A,
    B,
    ap_clk,
    mem_reg_0,
    Q,
    s_axi_control_WDATA,
    output_r_ce0,
    ADDRBWRADDR,
    WEBWE,
    grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg,
    D,
    mem_reg_1,
    \int_output_r_shift0_reg[0]_1 ,
    \int_bias_shift0_reg[0]_1 ,
    ap_rst_n,
    mem_reg_2,
    mem_reg_3,
    mem_reg_4,
    mem_reg_5,
    mem_reg_6,
    icmp_ln10_reg_109,
    s_axi_control_ARVALID,
    s_axi_control_ARADDR,
    s_axi_control_WVALID,
    s_axi_control_RREADY,
    s_axi_control_WSTRB,
    s_axi_control_AWVALID,
    s_axi_control_BREADY,
    s_axi_control_AWADDR,
    \ap_CS_fsm_reg[2] ,
    ap_NS_fsm1,
    mem_reg_7,
    mem_reg_8,
    \ap_CS_fsm_reg[5]_i_3 ,
    mem_reg_i_57,
    mem_reg_i_57_0,
    mem_reg_9,
    mem_reg_10,
    icmp_ln46_reg_391,
    P,
    weightIndexAdded_fu_104_reg,
    int_ap_start_reg_1,
    mem_reg_1_0_1,
    mem_reg_2_0_3,
    mem_reg_3_0_5,
    ce0);
  output ap_rst_n_inv;
  output \int_output_r_shift0_reg[0]_0 ;
  output \int_bias_shift0_reg[0]_0 ;
  output \icmp_ln46_reg_391_reg[0] ;
  output s_axi_control_ARREADY;
  output [15:0]\int_numOfInNeurons_reg[15]_0 ;
  output [15:0]\int_numOfOutNeurons_reg[15]_0 ;
  output s_axi_control_WREADY;
  output s_axi_control_RVALID;
  output s_axi_control_AWREADY;
  output [7:0]\int_activation_reg[7]_0 ;
  output interrupt;
  output s_axi_control_BVALID;
  output ap_NS_fsm18_out;
  output [1:0]int_ap_start_reg_0;
  output icmp_ln32_fu_206_p2;
  output \cmp980_reg_374_reg[0] ;
  output [0:0]CO;
  output mem_reg;
  output [15:0]p_reg_reg;
  output [0:0]\inNeurons_reg_176_reg[15] ;
  output [31:0]s_axi_control_RDATA;
  output [15:0]A;
  output [15:0]B;
  input ap_clk;
  input mem_reg_0;
  input [15:0]Q;
  input [31:0]s_axi_control_WDATA;
  input output_r_ce0;
  input [6:0]ADDRBWRADDR;
  input [1:0]WEBWE;
  input grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg;
  input [6:0]D;
  input [5:0]mem_reg_1;
  input \int_output_r_shift0_reg[0]_1 ;
  input \int_bias_shift0_reg[0]_1 ;
  input ap_rst_n;
  input [0:0]mem_reg_2;
  input mem_reg_3;
  input mem_reg_4;
  input mem_reg_5;
  input mem_reg_6;
  input icmp_ln10_reg_109;
  input s_axi_control_ARVALID;
  input [17:0]s_axi_control_ARADDR;
  input s_axi_control_WVALID;
  input s_axi_control_RREADY;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_AWVALID;
  input s_axi_control_BREADY;
  input [17:0]s_axi_control_AWADDR;
  input \ap_CS_fsm_reg[2] ;
  input ap_NS_fsm1;
  input mem_reg_7;
  input mem_reg_8;
  input [15:0]\ap_CS_fsm_reg[5]_i_3 ;
  input [15:0]mem_reg_i_57;
  input [15:0]mem_reg_i_57_0;
  input [15:0]mem_reg_9;
  input mem_reg_10;
  input icmp_ln46_reg_391;
  input [15:0]P;
  input [15:0]weightIndexAdded_fu_104_reg;
  input int_ap_start_reg_1;
  input mem_reg_1_0_1;
  input mem_reg_2_0_3;
  input mem_reg_3_0_5;
  input ce0;

  wire [15:0]A;
  wire [6:0]ADDRBWRADDR;
  wire [15:0]B;
  wire [0:0]CO;
  wire [6:0]D;
  wire [15:0]P;
  wire [15:0]Q;
  wire [1:0]WEBWE;
  wire \ap_CS_fsm_reg[2] ;
  wire [15:0]\ap_CS_fsm_reg[5]_i_3 ;
  wire ap_NS_fsm1;
  wire ap_NS_fsm18_out;
  wire ap_clk;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire auto_restart_status_i_1_n_3;
  wire auto_restart_status_reg_n_3;
  wire aw_hs;
  wire ce0;
  wire \cmp980_reg_374_reg[0] ;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg;
  wire icmp_ln10_reg_109;
  wire icmp_ln32_fu_206_p2;
  wire \icmp_ln32_reg_351[0]_i_2_n_3 ;
  wire \icmp_ln32_reg_351[0]_i_3_n_3 ;
  wire icmp_ln46_reg_391;
  wire \icmp_ln46_reg_391_reg[0] ;
  wire [0:0]\inNeurons_reg_176_reg[15] ;
  wire \int_activation[0]_i_1_n_3 ;
  wire \int_activation[1]_i_1_n_3 ;
  wire \int_activation[2]_i_1_n_3 ;
  wire \int_activation[3]_i_1_n_3 ;
  wire \int_activation[4]_i_1_n_3 ;
  wire \int_activation[5]_i_1_n_3 ;
  wire \int_activation[6]_i_1_n_3 ;
  wire \int_activation[7]_i_1_n_3 ;
  wire \int_activation[7]_i_2_n_3 ;
  wire \int_activation[7]_i_3_n_3 ;
  wire [7:0]\int_activation_reg[7]_0 ;
  wire int_ap_ready__0;
  wire int_ap_ready_i_1_n_3;
  wire int_ap_start5_out;
  wire int_ap_start_i_1_n_3;
  wire [1:0]int_ap_start_reg_0;
  wire int_ap_start_reg_1;
  wire int_auto_restart_i_1_n_3;
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
  wire int_bias_n_30;
  wire int_bias_n_31;
  wire int_bias_n_32;
  wire int_bias_n_33;
  wire int_bias_n_34;
  wire [30:3]int_bias_q1;
  wire int_bias_read;
  wire int_bias_read0;
  wire int_bias_read_i_2_n_3;
  wire \int_bias_shift0_reg[0]_0 ;
  wire \int_bias_shift0_reg[0]_1 ;
  wire int_bias_write_i_1_n_3;
  wire int_bias_write_reg_n_3;
  wire int_gie_i_1_n_3;
  wire int_gie_reg_n_3;
  wire int_ier12_out;
  wire \int_ier[5]_i_2_n_3 ;
  wire \int_ier[5]_i_3_n_3 ;
  wire \int_ier[5]_i_4_n_3 ;
  wire \int_ier[5]_i_5_n_3 ;
  wire \int_ier_reg_n_3_[0] ;
  wire \int_ier_reg_n_3_[1] ;
  wire \int_ier_reg_n_3_[2] ;
  wire \int_ier_reg_n_3_[3] ;
  wire \int_ier_reg_n_3_[4] ;
  wire \int_ier_reg_n_3_[5] ;
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
  wire [31:4]int_input_r_q1;
  wire int_input_r_read;
  wire int_input_r_read0;
  wire \int_input_r_shift0[0]_i_1_n_3 ;
  wire \int_input_r_shift0_reg_n_3_[0] ;
  wire int_input_r_write_i_1_n_3;
  wire int_input_r_write_i_2_n_3;
  wire int_input_r_write_i_3_n_3;
  wire int_input_r_write_i_4_n_3;
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
  wire \int_numOfInNeurons[15]_i_3_n_3 ;
  wire [15:0]\int_numOfInNeurons_reg[15]_0 ;
  wire [15:0]int_numOfOutNeurons0;
  wire \int_numOfOutNeurons[15]_i_1_n_3 ;
  wire [15:0]\int_numOfOutNeurons_reg[15]_0 ;
  wire int_output_r_n_35;
  wire [31:0]int_output_r_q1;
  wire int_output_r_read;
  wire int_output_r_read0;
  wire int_output_r_read_i_2_n_3;
  wire \int_output_r_shift0_reg[0]_0 ;
  wire \int_output_r_shift0_reg[0]_1 ;
  wire int_output_r_write0;
  wire int_output_r_write_i_1_n_3;
  wire int_output_r_write_reg_n_3;
  wire int_task_ap_done__0;
  wire int_task_ap_done_i_1_n_3;
  wire int_task_ap_done_i_2_n_3;
  wire int_task_ap_done_i_3_n_3;
  wire int_task_ap_done_i_4_n_3;
  wire int_weights_n_3;
  wire int_weights_n_32;
  wire int_weights_n_33;
  wire int_weights_n_34;
  wire int_weights_n_35;
  wire int_weights_n_4;
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
  wire mem_reg;
  wire mem_reg_0;
  wire [5:0]mem_reg_1;
  wire mem_reg_10;
  wire mem_reg_1_0_1;
  wire [0:0]mem_reg_2;
  wire mem_reg_2_0_3;
  wire mem_reg_3;
  wire mem_reg_3_0_5;
  wire mem_reg_4;
  wire mem_reg_5;
  wire mem_reg_6;
  wire mem_reg_7;
  wire mem_reg_8;
  wire [15:0]mem_reg_9;
  wire [15:0]mem_reg_i_57;
  wire [15:0]mem_reg_i_57_0;
  wire \outNeurons_2_fu_100[15]_i_3_n_3 ;
  wire \outNeurons_2_fu_100[15]_i_4_n_3 ;
  wire \outNeurons_2_fu_100[15]_i_5_n_3 ;
  wire output_r_ce0;
  wire [15:0]output_r_d0;
  wire [7:2]p_3_in;
  wire [15:0]p_reg_reg;
  wire \rdata[0]_i_4_n_3 ;
  wire \rdata[0]_i_5_n_3 ;
  wire \rdata[15]_i_4_n_3 ;
  wire \rdata[15]_i_5_n_3 ;
  wire \rdata[15]_i_6_n_3 ;
  wire \rdata[1]_i_4_n_3 ;
  wire \rdata[1]_i_5_n_3 ;
  wire \rdata[2]_i_2_n_3 ;
  wire \rdata[2]_i_3_n_3 ;
  wire \rdata[31]_i_1_n_3 ;
  wire \rdata[3]_i_2_n_3 ;
  wire \rdata[3]_i_3_n_3 ;
  wire \rdata[4]_i_3_n_3 ;
  wire \rdata[4]_i_4_n_3 ;
  wire \rdata[5]_i_3_n_3 ;
  wire \rdata[5]_i_4_n_3 ;
  wire \rdata[5]_i_5_n_3 ;
  wire \rdata[6]_i_3_n_3 ;
  wire \rdata[6]_i_4_n_3 ;
  wire \rdata[6]_i_5_n_3 ;
  wire \rdata[6]_i_6_n_3 ;
  wire \rdata[6]_i_7_n_3 ;
  wire \rdata[7]_i_2_n_3 ;
  wire \rdata[7]_i_5_n_3 ;
  wire \rdata[7]_i_6_n_3 ;
  wire \rdata[7]_i_7_n_3 ;
  wire \rdata_reg[0]_i_2_n_3 ;
  wire \rdata_reg[1]_i_2_n_3 ;
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
  wire [15:0]weightIndexAdded_fu_104_reg;
  wire [0:0]weights_address0;
  wire [1:0]wstate;
  wire \wstate[0]_i_1_n_3 ;
  wire \wstate[1]_i_1_n_3 ;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \ap_CS_fsm[0]_i_1__0 
       (.I0(ap_start),
        .I1(mem_reg_1[0]),
        .I2(int_ap_start_reg_1),
        .O(int_ap_start_reg_0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(icmp_ln32_fu_206_p2),
        .I1(ap_start),
        .I2(mem_reg_1[0]),
        .I3(mem_reg_1[1]),
        .I4(\ap_CS_fsm_reg[2] ),
        .I5(ap_NS_fsm1),
        .O(int_ap_start_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hEFAA)) 
    auto_restart_status_i_1
       (.I0(p_3_in[7]),
        .I1(ap_start),
        .I2(mem_reg_1[0]),
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
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \icmp_ln32_reg_351[0]_i_1 
       (.I0(\icmp_ln32_reg_351[0]_i_2_n_3 ),
        .I1(\int_numOfOutNeurons_reg[15]_0 [11]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [8]),
        .I3(\int_numOfOutNeurons_reg[15]_0 [13]),
        .I4(\int_numOfOutNeurons_reg[15]_0 [10]),
        .I5(\icmp_ln32_reg_351[0]_i_3_n_3 ),
        .O(icmp_ln32_fu_206_p2));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \icmp_ln32_reg_351[0]_i_2 
       (.I0(\int_numOfOutNeurons_reg[15]_0 [5]),
        .I1(\int_numOfOutNeurons_reg[15]_0 [2]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [12]),
        .I3(\int_numOfOutNeurons_reg[15]_0 [7]),
        .O(\icmp_ln32_reg_351[0]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \icmp_ln32_reg_351[0]_i_3 
       (.I0(\int_numOfOutNeurons_reg[15]_0 [3]),
        .I1(\int_numOfOutNeurons_reg[15]_0 [14]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [0]),
        .I3(\int_numOfOutNeurons_reg[15]_0 [6]),
        .I4(\outNeurons_2_fu_100[15]_i_4_n_3 ),
        .O(\icmp_ln32_reg_351[0]_i_3_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_activation[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_activation_reg[7]_0 [0]),
        .O(\int_activation[0]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_activation[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_activation_reg[7]_0 [1]),
        .O(\int_activation[1]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_activation[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_activation_reg[7]_0 [2]),
        .O(\int_activation[2]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_activation[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_activation_reg[7]_0 [3]),
        .O(\int_activation[3]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_activation[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_activation_reg[7]_0 [4]),
        .O(\int_activation[4]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_activation[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_activation_reg[7]_0 [5]),
        .O(\int_activation[5]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_activation[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_activation_reg[7]_0 [6]),
        .O(\int_activation[6]_i_1_n_3 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \int_activation[7]_i_1 
       (.I0(\waddr_reg_n_3_[3] ),
        .I1(\waddr_reg_n_3_[2] ),
        .I2(\waddr_reg_n_3_[5] ),
        .I3(\int_activation[7]_i_3_n_3 ),
        .O(\int_activation[7]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_activation[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_activation_reg[7]_0 [7]),
        .O(\int_activation[7]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \int_activation[7]_i_3 
       (.I0(\waddr_reg_n_3_[4] ),
        .I1(int_input_r_write_i_2_n_3),
        .I2(\int_ier[5]_i_5_n_3 ),
        .I3(\int_ier[5]_i_4_n_3 ),
        .I4(\int_ier[5]_i_3_n_3 ),
        .O(\int_activation[7]_i_3_n_3 ));
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
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
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
  LUT4 #(
    .INIT(16'h5703)) 
    int_ap_ready_i_1
       (.I0(int_task_ap_done_i_2_n_3),
        .I1(int_ap_start_reg_1),
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFECE)) 
    int_ap_start_i_1
       (.I0(p_3_in[7]),
        .I1(int_ap_start5_out),
        .I2(int_ap_start_reg_1),
        .I3(ap_start),
        .O(int_ap_start_i_1_n_3));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    int_ap_start_i_2
       (.I0(s_axi_control_WDATA[0]),
        .I1(\waddr_reg_n_3_[2] ),
        .I2(s_axi_control_WSTRB[0]),
        .I3(\waddr_reg_n_3_[3] ),
        .I4(\int_ier[5]_i_2_n_3 ),
        .O(int_ap_start5_out));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_3),
        .Q(ap_start),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFFEF00100000)) 
    int_auto_restart_i_1
       (.I0(\int_ier[5]_i_2_n_3 ),
        .I1(\waddr_reg_n_3_[3] ),
        .I2(s_axi_control_WSTRB[0]),
        .I3(\waddr_reg_n_3_[2] ),
        .I4(s_axi_control_WDATA[7]),
        .I5(p_3_in[7]),
        .O(int_auto_restart_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_3),
        .Q(p_3_in[7]),
        .R(ap_rst_n_inv));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_control_s_axi_ram int_bias
       (.D(D),
        .DIBDI({output_r_d0[7:0],output_r_d0[15:8]}),
        .DOADO({int_bias_q1[30],int_bias_q1[28],int_bias_q1[25],int_bias_q1[17:16],int_bias_q1[14],int_bias_q1[12],int_bias_q1[7:5],int_bias_q1[3]}),
        .Q({\waddr_reg_n_3_[8] ,\waddr_reg_n_3_[7] ,\waddr_reg_n_3_[6] ,\waddr_reg_n_3_[5] ,\waddr_reg_n_3_[4] ,\waddr_reg_n_3_[3] ,\waddr_reg_n_3_[2] }),
        .ap_clk(ap_clk),
        .grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .int_bias_read(int_bias_read),
        .int_input_r_read(int_input_r_read),
        .int_input_r_read_reg({int_bias_n_14,int_bias_n_15,int_bias_n_16,int_bias_n_17,int_bias_n_18,int_bias_n_19,int_bias_n_20,int_bias_n_21,int_bias_n_22,int_bias_n_23,int_bias_n_24,int_bias_n_25}),
        .int_output_r_read(int_output_r_read),
        .mem_reg_0(int_bias_n_26),
        .mem_reg_1(int_bias_n_27),
        .mem_reg_10(mem_reg_9),
        .mem_reg_11(mem_reg_10),
        .mem_reg_12(\int_bias_shift0_reg[0]_0 ),
        .mem_reg_13(\icmp_ln46_reg_391_reg[0] ),
        .mem_reg_2(int_bias_n_28),
        .mem_reg_3(int_bias_n_29),
        .mem_reg_4(int_bias_n_30),
        .mem_reg_5(int_bias_n_31),
        .mem_reg_6(int_bias_n_32),
        .mem_reg_7(int_bias_n_33),
        .mem_reg_8(int_bias_n_34),
        .mem_reg_9(int_bias_write_reg_n_3),
        .q1({int_weights_q1[31],int_weights_q1[29],int_weights_q1[27:26],int_weights_q1[24:18],int_weights_q1[15],int_weights_q1[13],int_weights_q1[11:8],int_weights_q1[4],int_weights_q1[2:0]}),
        .\rdata_reg[31] ({int_input_r_q1[31],int_input_r_q1[29],int_input_r_q1[27:26],int_input_r_q1[24:18],int_input_r_q1[4]}),
        .\rdata_reg[31]_0 ({int_output_r_q1[31],int_output_r_q1[29],int_output_r_q1[27:26],int_output_r_q1[24:18],int_output_r_q1[15],int_output_r_q1[13],int_output_r_q1[11:8],int_output_r_q1[4],int_output_r_q1[2:0]}),
        .\rdata_reg[4] (int_weights_n_8),
        .\rdata_reg[4]_0 (\rdata[4]_i_3_n_3 ),
        .\rdata_reg[4]_1 (\rdata[5]_i_4_n_3 ),
        .rstate(rstate),
        .s_axi_control_ARADDR(s_axi_control_ARADDR[8:2]),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .wstate(wstate));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    int_bias_read_i_1
       (.I0(int_bias_read_i_2_n_3),
        .I1(s_axi_control_ARADDR[10]),
        .I2(s_axi_control_ARADDR[9]),
        .O(int_bias_read0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    int_bias_read_i_2
       (.I0(s_axi_control_ARADDR[11]),
        .I1(s_axi_control_ARADDR[13]),
        .I2(s_axi_control_ARADDR[12]),
        .I3(int_weights_n_8),
        .I4(\rdata[6]_i_6_n_3 ),
        .O(int_bias_read_i_2_n_3));
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
  LUT5 #(
    .INIT(32'hD555C000)) 
    int_bias_write_i_1
       (.I0(int_input_r_write_i_2_n_3),
        .I1(s_axi_control_AWADDR[10]),
        .I2(s_axi_control_AWADDR[9]),
        .I3(int_input_r_write_i_3_n_3),
        .I4(int_bias_write_reg_n_3),
        .O(int_bias_write_i_1_n_3));
  FDRE int_bias_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_bias_write_i_1_n_3),
        .Q(int_bias_write_reg_n_3),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFEFFFFFF10000000)) 
    int_gie_i_1
       (.I0(\waddr_reg_n_3_[3] ),
        .I1(\int_ier[5]_i_2_n_3 ),
        .I2(s_axi_control_WDATA[0]),
        .I3(\waddr_reg_n_3_[2] ),
        .I4(s_axi_control_WSTRB[0]),
        .I5(int_gie_reg_n_3),
        .O(int_gie_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_3),
        .Q(int_gie_reg_n_3),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'h0040)) 
    \int_ier[5]_i_1 
       (.I0(\int_ier[5]_i_2_n_3 ),
        .I1(\waddr_reg_n_3_[3] ),
        .I2(s_axi_control_WSTRB[0]),
        .I3(\waddr_reg_n_3_[2] ),
        .O(int_ier12_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \int_ier[5]_i_2 
       (.I0(\waddr_reg_n_3_[5] ),
        .I1(\int_ier[5]_i_3_n_3 ),
        .I2(\int_ier[5]_i_4_n_3 ),
        .I3(\int_ier[5]_i_5_n_3 ),
        .I4(int_input_r_write_i_2_n_3),
        .I5(\waddr_reg_n_3_[4] ),
        .O(\int_ier[5]_i_2_n_3 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \int_ier[5]_i_3 
       (.I0(\waddr_reg_n_3_[0] ),
        .I1(\waddr_reg_n_3_[12] ),
        .I2(\waddr_reg_n_3_[14] ),
        .I3(\waddr_reg_n_3_[7] ),
        .O(\int_ier[5]_i_3_n_3 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \int_ier[5]_i_4 
       (.I0(\waddr_reg_n_3_[17] ),
        .I1(\waddr_reg_n_3_[1] ),
        .I2(\waddr_reg_n_3_[13] ),
        .I3(\waddr_reg_n_3_[6] ),
        .O(\int_ier[5]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \int_ier[5]_i_5 
       (.I0(\waddr_reg_n_3_[16] ),
        .I1(\waddr_reg_n_3_[15] ),
        .I2(\waddr_reg_n_3_[8] ),
        .I3(\waddr_reg_n_3_[9] ),
        .I4(\waddr_reg_n_3_[10] ),
        .I5(\waddr_reg_n_3_[11] ),
        .O(\int_ier[5]_i_5_n_3 ));
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_control_s_axi_ram_1 int_input_r
       (.D({int_input_r_n_53,int_input_r_n_54,int_input_r_n_55,int_input_r_n_56,int_input_r_n_57,int_input_r_n_58,int_input_r_n_59,int_input_r_n_60,int_input_r_n_61,int_input_r_n_62,int_input_r_n_63,int_input_r_n_64,int_input_r_n_65,int_input_r_n_66}),
        .DOADO({int_input_r_q1[31:16],int_input_r_q1[5:4]}),
        .DOBDO(int_input_r_q0),
        .Q(Q[7:1]),
        .ap_clk(ap_clk),
        .int_input_r_read(int_input_r_read),
        .mem_reg_0(mem_reg_0),
        .mem_reg_1(int_input_r_write_reg_n_3),
        .mem_reg_2({\waddr_reg_n_3_[8] ,\waddr_reg_n_3_[7] ,\waddr_reg_n_3_[6] ,\waddr_reg_n_3_[5] ,\waddr_reg_n_3_[4] ,\waddr_reg_n_3_[3] ,\waddr_reg_n_3_[2] }),
        .\rdata_reg[0] (\rdata_reg[0]_i_2_n_3 ),
        .\rdata_reg[0]_0 (int_bias_n_32),
        .\rdata_reg[10] (int_bias_n_28),
        .\rdata_reg[11] (int_bias_n_29),
        .\rdata_reg[12] (int_weights_n_33),
        .\rdata_reg[13] (int_bias_n_30),
        .\rdata_reg[14] (int_weights_n_34),
        .\rdata_reg[15] (\int_numOfInNeurons_reg[15]_0 [15:8]),
        .\rdata_reg[15]_0 (\int_numOfOutNeurons_reg[15]_0 [15:8]),
        .\rdata_reg[15]_1 (int_bias_n_31),
        .\rdata_reg[1] (\rdata[5]_i_4_n_3 ),
        .\rdata_reg[1]_0 (\rdata_reg[1]_i_2_n_3 ),
        .\rdata_reg[1]_1 (int_bias_n_33),
        .\rdata_reg[2] (\rdata[2]_i_2_n_3 ),
        .\rdata_reg[2]_0 (\rdata[2]_i_3_n_3 ),
        .\rdata_reg[2]_1 (int_bias_n_34),
        .\rdata_reg[3] (\rdata[3]_i_2_n_3 ),
        .\rdata_reg[3]_0 (\rdata[3]_i_3_n_3 ),
        .\rdata_reg[3]_1 (int_weights_n_9),
        .\rdata_reg[6] (int_weights_n_8),
        .\rdata_reg[6]_0 (int_weights_n_32),
        .\rdata_reg[6]_1 (\rdata[6]_i_3_n_3 ),
        .\rdata_reg[6]_2 (\rdata[6]_i_4_n_3 ),
        .\rdata_reg[7] (\rdata[7]_i_2_n_3 ),
        .\rdata_reg[7]_0 (int_weights_n_35),
        .\rdata_reg[7]_1 (\rdata[7]_i_5_n_3 ),
        .\rdata_reg[7]_2 (\rdata[7]_i_6_n_3 ),
        .\rdata_reg[7]_3 (\rdata[7]_i_7_n_3 ),
        .\rdata_reg[8] (int_bias_n_26),
        .\rdata_reg[8]_0 (\rdata[15]_i_5_n_3 ),
        .\rdata_reg[8]_1 (\rdata[15]_i_4_n_3 ),
        .\rdata_reg[9] (int_bias_n_27),
        .rstate(rstate),
        .s_axi_control_ARADDR(s_axi_control_ARADDR[8:2]),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .wstate(wstate));
  LUT5 #(
    .INIT(32'h00040000)) 
    int_input_r_read_i_1
       (.I0(int_output_r_read_i_2_n_3),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(s_axi_control_ARADDR[9]),
        .O(int_input_r_read0));
  FDRE int_input_r_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_input_r_read0),
        .Q(int_input_r_read),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r_shift0[0]_i_1 
       (.I0(Q[0]),
        .I1(mem_reg_10),
        .I2(\int_input_r_shift0_reg_n_3_[0] ),
        .O(\int_input_r_shift0[0]_i_1_n_3 ));
  FDRE \int_input_r_shift0_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_input_r_shift0[0]_i_1_n_3 ),
        .Q(\int_input_r_shift0_reg_n_3_[0] ),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h75553000)) 
    int_input_r_write_i_1
       (.I0(int_input_r_write_i_2_n_3),
        .I1(s_axi_control_AWADDR[10]),
        .I2(s_axi_control_AWADDR[9]),
        .I3(int_input_r_write_i_3_n_3),
        .I4(int_input_r_write_reg_n_3),
        .O(int_input_r_write_i_1_n_3));
  LUT6 #(
    .INIT(64'h2020202020200020)) 
    int_input_r_write_i_2
       (.I0(s_axi_control_WVALID),
        .I1(wstate[1]),
        .I2(wstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(int_input_r_write_i_2_n_3));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    int_input_r_write_i_3
       (.I0(aw_hs),
        .I1(int_input_r_write_i_4_n_3),
        .I2(s_axi_control_AWADDR[12]),
        .I3(s_axi_control_AWADDR[14]),
        .I4(s_axi_control_AWADDR[11]),
        .I5(s_axi_control_AWADDR[13]),
        .O(int_input_r_write_i_3_n_3));
  LUT3 #(
    .INIT(8'hFE)) 
    int_input_r_write_i_4
       (.I0(s_axi_control_AWADDR[15]),
        .I1(s_axi_control_AWADDR[16]),
        .I2(s_axi_control_AWADDR[17]),
        .O(int_input_r_write_i_4_n_3));
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
        .I2(int_ap_start_reg_1),
        .I3(\int_ier_reg_n_3_[0] ),
        .I4(\int_isr_reg_n_3_[0] ),
        .O(\int_isr[0]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \int_isr[0]_i_2 
       (.I0(\waddr_reg_n_3_[2] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\waddr_reg_n_3_[3] ),
        .I3(\int_ier[5]_i_2_n_3 ),
        .O(int_isr9_out));
  LUT5 #(
    .INIT(32'h7F778F88)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(int_isr9_out),
        .I2(int_ap_start_reg_1),
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
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [0]),
        .O(int_numOfInNeurons0[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [10]),
        .O(int_numOfInNeurons0[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [11]),
        .O(int_numOfInNeurons0[11]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [12]),
        .O(int_numOfInNeurons0[12]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [13]),
        .O(int_numOfInNeurons0[13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
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
       (.I0(\int_numOfInNeurons[15]_i_3_n_3 ),
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \int_numOfInNeurons[15]_i_3 
       (.I0(\int_ier[5]_i_3_n_3 ),
        .I1(\int_ier[5]_i_4_n_3 ),
        .I2(\int_ier[5]_i_5_n_3 ),
        .I3(int_input_r_write_i_2_n_3),
        .O(\int_numOfInNeurons[15]_i_3_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [1]),
        .O(int_numOfInNeurons0[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [2]),
        .O(int_numOfInNeurons0[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [3]),
        .O(int_numOfInNeurons0[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [4]),
        .O(int_numOfInNeurons0[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [5]),
        .O(int_numOfInNeurons0[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [6]),
        .O(int_numOfInNeurons0[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [7]),
        .O(int_numOfInNeurons0[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [8]),
        .O(int_numOfInNeurons0[8]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [0]),
        .O(int_numOfOutNeurons0[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [10]),
        .O(int_numOfOutNeurons0[10]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [11]),
        .O(int_numOfOutNeurons0[11]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [12]),
        .O(int_numOfOutNeurons0[12]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [13]),
        .O(int_numOfOutNeurons0[13]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
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
       (.I0(\int_numOfInNeurons[15]_i_3_n_3 ),
        .I1(\waddr_reg_n_3_[4] ),
        .I2(\waddr_reg_n_3_[5] ),
        .I3(\waddr_reg_n_3_[3] ),
        .I4(\waddr_reg_n_3_[2] ),
        .O(\int_numOfOutNeurons[15]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[15]_i_2 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [15]),
        .O(int_numOfOutNeurons0[15]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [1]),
        .O(int_numOfOutNeurons0[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [2]),
        .O(int_numOfOutNeurons0[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [3]),
        .O(int_numOfOutNeurons0[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [4]),
        .O(int_numOfOutNeurons0[4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [5]),
        .O(int_numOfOutNeurons0[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [6]),
        .O(int_numOfOutNeurons0[6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [7]),
        .O(int_numOfOutNeurons0[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfOutNeurons[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [8]),
        .O(int_numOfOutNeurons0[8]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
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
       (.ADDRBWRADDR(ADDRBWRADDR),
        .CO(CO),
        .D(int_output_r_n_35),
        .DIBDI({output_r_d0[7:0],output_r_d0[15:8]}),
        .DOADO({int_output_r_q1[31:6],int_output_r_q1[4:0]}),
        .P(P),
        .Q(Q),
        .WEBWE(WEBWE),
        .\ap_CS_fsm_reg[5]_i_3_0 (\ap_CS_fsm_reg[5]_i_3 ),
        .ap_clk(ap_clk),
        .\cmp980_reg_374_reg[0] (\cmp980_reg_374_reg[0] ),
        .icmp_ln10_reg_109(icmp_ln10_reg_109),
        .icmp_ln46_reg_391(icmp_ln46_reg_391),
        .\icmp_ln46_reg_391_reg[0] (\icmp_ln46_reg_391_reg[0] ),
        .\inNeurons_reg_176_reg[15] (\inNeurons_reg_176_reg[15] ),
        .int_bias_read(int_bias_read),
        .int_input_r_read(int_input_r_read),
        .int_output_r_read(int_output_r_read),
        .mem_reg_0(mem_reg),
        .mem_reg_1(mem_reg_2),
        .mem_reg_10({\waddr_reg_n_3_[8] ,\waddr_reg_n_3_[7] ,\waddr_reg_n_3_[6] ,\waddr_reg_n_3_[5] ,\waddr_reg_n_3_[4] ,\waddr_reg_n_3_[3] ,\waddr_reg_n_3_[2] }),
        .mem_reg_2(mem_reg_3),
        .mem_reg_3(mem_reg_4),
        .mem_reg_4(mem_reg_5),
        .mem_reg_5(mem_reg_6),
        .mem_reg_6(int_output_r_write_reg_n_3),
        .mem_reg_7(mem_reg_7),
        .mem_reg_8({mem_reg_1[5:4],mem_reg_1[2]}),
        .mem_reg_9(mem_reg_8),
        .mem_reg_i_57_0(mem_reg_i_57),
        .mem_reg_i_57_1(mem_reg_i_57_0),
        .output_r_ce0(output_r_ce0),
        .p_reg_reg(p_reg_reg),
        .p_reg_reg_0(\int_output_r_shift0_reg[0]_0 ),
        .q1(int_weights_q1[5]),
        .\rdata_reg[5] (int_input_r_q1[5]),
        .\rdata_reg[5]_0 (int_weights_n_8),
        .\rdata_reg[5]_1 (\rdata[5]_i_3_n_3 ),
        .\rdata_reg[5]_2 (\rdata[5]_i_4_n_3 ),
        .\rdata_reg[5]_3 (int_bias_q1[5]),
        .rstate(rstate),
        .s_axi_control_ARADDR(s_axi_control_ARADDR[8:2]),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .wstate(wstate));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    int_output_r_read_i_1
       (.I0(int_bias_read_i_2_n_3),
        .I1(int_output_r_read_i_2_n_3),
        .I2(s_axi_control_ARADDR[9]),
        .I3(s_axi_control_ARADDR[10]),
        .O(int_output_r_read0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    int_output_r_read_i_2
       (.I0(s_axi_control_ARADDR[12]),
        .I1(s_axi_control_ARADDR[13]),
        .I2(s_axi_control_ARADDR[11]),
        .I3(\rdata[6]_i_6_n_3 ),
        .I4(s_axi_control_ARADDR[10]),
        .O(int_output_r_read_i_2_n_3));
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
    .INIT(64'hFFFFFBFFFFFF0000)) 
    int_output_r_write_i_1
       (.I0(int_weights_n_8),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(s_axi_control_WVALID),
        .I4(int_output_r_write0),
        .I5(int_output_r_write_reg_n_3),
        .O(int_output_r_write_i_1_n_3));
  LUT6 #(
    .INIT(64'h2A2A2A2A2A2A2A08)) 
    int_output_r_write_i_2
       (.I0(int_input_r_write_i_3_n_3),
        .I1(s_axi_control_AWADDR[10]),
        .I2(s_axi_control_AWADDR[9]),
        .I3(s_axi_control_AWADDR[17]),
        .I4(s_axi_control_AWADDR[16]),
        .I5(s_axi_control_AWADDR[15]),
        .O(int_output_r_write0));
  FDRE int_output_r_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_output_r_write_i_1_n_3),
        .Q(int_output_r_write_reg_n_3),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h1D11FFFF1D111D11)) 
    int_task_ap_done_i_1
       (.I0(int_ap_start_reg_1),
        .I1(auto_restart_status_reg_n_3),
        .I2(p_3_in[2]),
        .I3(ap_idle),
        .I4(int_task_ap_done_i_2_n_3),
        .I5(int_task_ap_done__0),
        .O(int_task_ap_done_i_1_n_3));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    int_task_ap_done_i_2
       (.I0(int_bias_read_i_2_n_3),
        .I1(\rdata[6]_i_7_n_3 ),
        .I2(s_axi_control_ARADDR[10]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(int_task_ap_done_i_3_n_3),
        .I5(int_task_ap_done_i_4_n_3),
        .O(int_task_ap_done_i_2_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    int_task_ap_done_i_3
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[4]),
        .O(int_task_ap_done_i_3_n_3));
  LUT3 #(
    .INIT(8'hFE)) 
    int_task_ap_done_i_4
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARADDR[1]),
        .I2(s_axi_control_ARADDR[0]),
        .O(int_task_ap_done_i_4_n_3));
  FDRE #(
    .INIT(1'b0)) 
    int_task_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_task_ap_done_i_1_n_3),
        .Q(int_task_ap_done__0),
        .R(ap_rst_n_inv));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_control_s_axi_ram__parameterized1 int_weights
       (.D({int_weights_n_3,int_weights_n_4,int_weights_n_5,int_weights_n_6,int_weights_n_7}),
        .DOADO({int_input_r_q1[30],int_input_r_q1[28],int_input_r_q1[25],int_input_r_q1[17:16]}),
        .O(weights_address0),
        .Q({\waddr_reg_n_3_[16] ,\waddr_reg_n_3_[15] ,\waddr_reg_n_3_[14] ,\waddr_reg_n_3_[13] ,\waddr_reg_n_3_[12] ,\waddr_reg_n_3_[11] ,\waddr_reg_n_3_[10] ,\waddr_reg_n_3_[9] ,\waddr_reg_n_3_[8] ,\waddr_reg_n_3_[7] ,\waddr_reg_n_3_[6] ,\waddr_reg_n_3_[5] ,\waddr_reg_n_3_[4] ,\waddr_reg_n_3_[3] ,\waddr_reg_n_3_[2] }),
        .ap_clk(ap_clk),
        .ce0(ce0),
        .int_bias_read(int_bias_read),
        .int_input_r_read(int_input_r_read),
        .int_output_r_read(int_output_r_read),
        .mem_reg_0_0_0_0(Q),
        .mem_reg_0_0_3_0(int_weights_n_9),
        .mem_reg_0_0_6_0(int_weights_n_32),
        .mem_reg_0_0_7_0(int_weights_n_35),
        .mem_reg_1_0_1_0(mem_reg_1_0_1),
        .mem_reg_1_0_4_0(int_weights_n_33),
        .mem_reg_1_0_6_0(int_weights_n_34),
        .mem_reg_2_0_3_0(mem_reg_2_0_3),
        .mem_reg_3_0_2_0(int_weights_write_reg_n_3),
        .mem_reg_3_0_5_0(mem_reg_3_0_5),
        .q0(int_weights_q0),
        .q1({int_weights_q1[31],int_weights_q1[29],int_weights_q1[27:26],int_weights_q1[24:18],int_weights_q1[15],int_weights_q1[13],int_weights_q1[11:8],int_weights_q1[5:4],int_weights_q1[2:0]}),
        .\rdata_reg[30] ({int_bias_q1[30],int_bias_q1[28],int_bias_q1[25],int_bias_q1[17:16],int_bias_q1[14],int_bias_q1[12],int_bias_q1[7:6],int_bias_q1[3]}),
        .\rdata_reg[30]_0 ({int_output_r_q1[30],int_output_r_q1[28],int_output_r_q1[25],int_output_r_q1[17:16],int_output_r_q1[14],int_output_r_q1[12],int_output_r_q1[7:6],int_output_r_q1[3]}),
        .rstate(rstate),
        .s_axi_control_ARADDR(s_axi_control_ARADDR[16:2]),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_ARVALID_0(int_weights_n_8),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .weightIndexAdded_fu_104_reg(weightIndexAdded_fu_104_reg),
        .wstate(wstate));
  LUT4 #(
    .INIT(16'h0200)) 
    int_weights_read_i_1
       (.I0(s_axi_control_ARADDR[17]),
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
        .CE(mem_reg_1[3]),
        .D(weights_address0),
        .Q(\int_weights_shift0_reg_n_3_[0] ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h555D5555000C0000)) 
    int_weights_write_i_1
       (.I0(int_input_r_write_i_2_n_3),
        .I1(s_axi_control_AWVALID),
        .I2(wstate[1]),
        .I3(wstate[0]),
        .I4(s_axi_control_AWADDR[17]),
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
  LUT6 #(
    .INIT(64'h8888888888808888)) 
    \outNeurons_2_fu_100[15]_i_1 
       (.I0(mem_reg_1[0]),
        .I1(ap_start),
        .I2(\outNeurons_2_fu_100[15]_i_3_n_3 ),
        .I3(\outNeurons_2_fu_100[15]_i_4_n_3 ),
        .I4(\outNeurons_2_fu_100[15]_i_5_n_3 ),
        .I5(\icmp_ln32_reg_351[0]_i_2_n_3 ),
        .O(ap_NS_fsm18_out));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \outNeurons_2_fu_100[15]_i_3 
       (.I0(\int_numOfOutNeurons_reg[15]_0 [6]),
        .I1(\int_numOfOutNeurons_reg[15]_0 [0]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [14]),
        .I3(\int_numOfOutNeurons_reg[15]_0 [3]),
        .O(\outNeurons_2_fu_100[15]_i_3_n_3 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \outNeurons_2_fu_100[15]_i_4 
       (.I0(\int_numOfOutNeurons_reg[15]_0 [9]),
        .I1(\int_numOfOutNeurons_reg[15]_0 [4]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [15]),
        .I3(\int_numOfOutNeurons_reg[15]_0 [1]),
        .O(\outNeurons_2_fu_100[15]_i_4_n_3 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \outNeurons_2_fu_100[15]_i_5 
       (.I0(\int_numOfOutNeurons_reg[15]_0 [11]),
        .I1(\int_numOfOutNeurons_reg[15]_0 [8]),
        .I2(\int_numOfOutNeurons_reg[15]_0 [13]),
        .I3(\int_numOfOutNeurons_reg[15]_0 [10]),
        .O(\outNeurons_2_fu_100[15]_i_5_n_3 ));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_10
       (.I0(int_weights_q0[23]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[7]),
        .O(B[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_11
       (.I0(int_weights_q0[22]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[6]),
        .O(B[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_12
       (.I0(int_weights_q0[21]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[5]),
        .O(B[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_13
       (.I0(int_weights_q0[20]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[4]),
        .O(B[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_14
       (.I0(int_weights_q0[19]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[3]),
        .O(B[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_15
       (.I0(int_weights_q0[18]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[2]),
        .O(B[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_16
       (.I0(int_weights_q0[17]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[1]),
        .O(B[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_17
       (.I0(int_weights_q0[16]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[0]),
        .O(B[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_18
       (.I0(int_input_r_q0[31]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[15]),
        .O(A[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_19
       (.I0(int_input_r_q0[30]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[14]),
        .O(A[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_2
       (.I0(int_weights_q0[31]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[15]),
        .O(B[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_20
       (.I0(int_input_r_q0[29]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[13]),
        .O(A[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_21
       (.I0(int_input_r_q0[28]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[12]),
        .O(A[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_22
       (.I0(int_input_r_q0[27]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[11]),
        .O(A[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_23
       (.I0(int_input_r_q0[26]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[10]),
        .O(A[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_24
       (.I0(int_input_r_q0[25]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[9]),
        .O(A[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_25
       (.I0(int_input_r_q0[24]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[8]),
        .O(A[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_26
       (.I0(int_input_r_q0[23]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[7]),
        .O(A[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_27
       (.I0(int_input_r_q0[22]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[6]),
        .O(A[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_28
       (.I0(int_input_r_q0[21]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[5]),
        .O(A[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_29
       (.I0(int_input_r_q0[20]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[4]),
        .O(A[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_3
       (.I0(int_weights_q0[30]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[14]),
        .O(B[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_30
       (.I0(int_input_r_q0[19]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[3]),
        .O(A[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_31
       (.I0(int_input_r_q0[18]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[2]),
        .O(A[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_32
       (.I0(int_input_r_q0[17]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[1]),
        .O(A[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_33
       (.I0(int_input_r_q0[16]),
        .I1(\int_input_r_shift0_reg_n_3_[0] ),
        .I2(int_input_r_q0[0]),
        .O(A[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_4
       (.I0(int_weights_q0[29]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[13]),
        .O(B[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_5
       (.I0(int_weights_q0[28]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[12]),
        .O(B[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_6
       (.I0(int_weights_q0[27]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[11]),
        .O(B[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_7
       (.I0(int_weights_q0[26]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[10]),
        .O(B[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_8
       (.I0(int_weights_q0[25]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[9]),
        .O(B[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_9
       (.I0(int_weights_q0[24]),
        .I1(\int_weights_shift0_reg_n_3_[0] ),
        .I2(int_weights_q0[8]),
        .O(B[8]));
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
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \rdata[15]_i_4 
       (.I0(\rdata[5]_i_4_n_3 ),
        .I1(\rdata[15]_i_6_n_3 ),
        .I2(s_axi_control_ARADDR[4]),
        .I3(rstate[0]),
        .I4(rstate[1]),
        .I5(s_axi_control_ARVALID),
        .O(\rdata[15]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'h0000000100010101)) 
    \rdata[15]_i_5 
       (.I0(s_axi_control_ARADDR[0]),
        .I1(s_axi_control_ARADDR[1]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[3]),
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
  LUT6 #(
    .INIT(64'hAA80888022800080)) 
    \rdata[2]_i_2 
       (.I0(\rdata[6]_i_3_n_3 ),
        .I1(\rdata[15]_i_5_n_3 ),
        .I2(\int_activation_reg[7]_0 [2]),
        .I3(\rdata[15]_i_6_n_3 ),
        .I4(\int_numOfOutNeurons_reg[15]_0 [2]),
        .I5(\int_numOfInNeurons_reg[15]_0 [2]),
        .O(\rdata[2]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'h00008A8000000000)) 
    \rdata[2]_i_3 
       (.I0(\rdata[5]_i_4_n_3 ),
        .I1(p_3_in[2]),
        .I2(\rdata[15]_i_6_n_3 ),
        .I3(\int_ier_reg_n_3_[2] ),
        .I4(\rdata[7]_i_7_n_3 ),
        .I5(\rdata[15]_i_5_n_3 ),
        .O(\rdata[2]_i_3_n_3 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rdata[31]_i_1 
       (.I0(int_weights_n_8),
        .I1(int_weights_read),
        .I2(int_input_r_read),
        .I3(int_bias_read),
        .I4(int_output_r_read),
        .O(\rdata[31]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'hAA80888022800080)) 
    \rdata[3]_i_2 
       (.I0(\rdata[6]_i_3_n_3 ),
        .I1(\rdata[15]_i_5_n_3 ),
        .I2(\int_activation_reg[7]_0 [3]),
        .I3(\rdata[15]_i_6_n_3 ),
        .I4(\int_numOfOutNeurons_reg[15]_0 [3]),
        .I5(\int_numOfInNeurons_reg[15]_0 [3]),
        .O(\rdata[3]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'h00008A8000000000)) 
    \rdata[3]_i_3 
       (.I0(\rdata[5]_i_4_n_3 ),
        .I1(int_ap_ready__0),
        .I2(\rdata[15]_i_6_n_3 ),
        .I3(\int_ier_reg_n_3_[3] ),
        .I4(\rdata[7]_i_7_n_3 ),
        .I5(\rdata[15]_i_5_n_3 ),
        .O(\rdata[3]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'hA0CFA000A0C0A000)) 
    \rdata[4]_i_3 
       (.I0(\rdata[4]_i_4_n_3 ),
        .I1(\int_activation_reg[7]_0 [4]),
        .I2(\rdata[7]_i_7_n_3 ),
        .I3(\rdata[15]_i_6_n_3 ),
        .I4(\rdata[15]_i_5_n_3 ),
        .I5(\int_ier_reg_n_3_[4] ),
        .O(\rdata[4]_i_3_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[4]_i_4 
       (.I0(\int_numOfInNeurons_reg[15]_0 [4]),
        .I1(\rdata[15]_i_5_n_3 ),
        .I2(\int_numOfOutNeurons_reg[15]_0 [4]),
        .O(\rdata[4]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'hB8B8B8BBBBBBB8BB)) 
    \rdata[5]_i_3 
       (.I0(\rdata[5]_i_5_n_3 ),
        .I1(\rdata[7]_i_7_n_3 ),
        .I2(\rdata[15]_i_6_n_3 ),
        .I3(\int_isr_reg_n_3_[5] ),
        .I4(\rdata[15]_i_5_n_3 ),
        .I5(\int_ier_reg_n_3_[5] ),
        .O(\rdata[5]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \rdata[5]_i_4 
       (.I0(\rdata[6]_i_7_n_3 ),
        .I1(s_axi_control_ARADDR[10]),
        .I2(\rdata[6]_i_6_n_3 ),
        .I3(s_axi_control_ARADDR[11]),
        .I4(s_axi_control_ARADDR[13]),
        .I5(s_axi_control_ARADDR[12]),
        .O(\rdata[5]_i_4_n_3 ));
  LUT5 #(
    .INIT(32'h505F3F3F)) 
    \rdata[5]_i_5 
       (.I0(\int_numOfInNeurons_reg[15]_0 [5]),
        .I1(\int_numOfOutNeurons_reg[15]_0 [5]),
        .I2(\rdata[15]_i_6_n_3 ),
        .I3(\int_activation_reg[7]_0 [5]),
        .I4(\rdata[15]_i_5_n_3 ),
        .O(\rdata[5]_i_5_n_3 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \rdata[6]_i_3 
       (.I0(\rdata[6]_i_5_n_3 ),
        .I1(\rdata[6]_i_6_n_3 ),
        .I2(s_axi_control_ARADDR[10]),
        .I3(\rdata[6]_i_7_n_3 ),
        .I4(\rdata[7]_i_7_n_3 ),
        .O(\rdata[6]_i_3_n_3 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \rdata[6]_i_4 
       (.I0(\int_numOfInNeurons_reg[15]_0 [6]),
        .I1(\int_numOfOutNeurons_reg[15]_0 [6]),
        .I2(\rdata[15]_i_6_n_3 ),
        .I3(\int_activation_reg[7]_0 [6]),
        .I4(\rdata[15]_i_5_n_3 ),
        .O(\rdata[6]_i_4_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rdata[6]_i_5 
       (.I0(s_axi_control_ARADDR[11]),
        .I1(s_axi_control_ARADDR[13]),
        .I2(s_axi_control_ARADDR[12]),
        .O(\rdata[6]_i_5_n_3 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rdata[6]_i_6 
       (.I0(s_axi_control_ARADDR[15]),
        .I1(s_axi_control_ARADDR[14]),
        .I2(s_axi_control_ARADDR[16]),
        .I3(s_axi_control_ARADDR[17]),
        .O(\rdata[6]_i_6_n_3 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rdata[6]_i_7 
       (.I0(s_axi_control_ARADDR[7]),
        .I1(s_axi_control_ARADDR[6]),
        .I2(s_axi_control_ARADDR[9]),
        .I3(s_axi_control_ARADDR[8]),
        .O(\rdata[6]_i_7_n_3 ));
  LUT4 #(
    .INIT(16'h5455)) 
    \rdata[7]_i_2 
       (.I0(int_input_r_read),
        .I1(rstate[0]),
        .I2(rstate[1]),
        .I3(s_axi_control_ARVALID),
        .O(\rdata[7]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hFFDFFFFFFFDFDFDF)) 
    \rdata[7]_i_5 
       (.I0(\rdata[15]_i_5_n_3 ),
        .I1(\rdata[7]_i_7_n_3 ),
        .I2(p_3_in[7]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[3]),
        .O(\rdata[7]_i_5_n_3 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \rdata[7]_i_6 
       (.I0(\int_numOfInNeurons_reg[15]_0 [7]),
        .I1(\int_numOfOutNeurons_reg[15]_0 [7]),
        .I2(\rdata[15]_i_6_n_3 ),
        .I3(\int_activation_reg[7]_0 [7]),
        .I4(\rdata[15]_i_5_n_3 ),
        .O(\rdata[7]_i_6_n_3 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rdata[7]_i_7 
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARADDR[0]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[5]),
        .O(\rdata[7]_i_7_n_3 ));
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
        .S(\rdata[7]_i_7_n_3 ));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_input_r_n_58),
        .Q(s_axi_control_RDATA[10]),
        .R(1'b0));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_input_r_n_57),
        .Q(s_axi_control_RDATA[11]),
        .R(1'b0));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_input_r_n_56),
        .Q(s_axi_control_RDATA[12]),
        .R(1'b0));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_input_r_n_55),
        .Q(s_axi_control_RDATA[13]),
        .R(1'b0));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_input_r_n_54),
        .Q(s_axi_control_RDATA[14]),
        .R(1'b0));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_input_r_n_53),
        .Q(s_axi_control_RDATA[15]),
        .R(1'b0));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_weights_n_7),
        .Q(s_axi_control_RDATA[16]),
        .R(1'b0));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_weights_n_6),
        .Q(s_axi_control_RDATA[17]),
        .R(1'b0));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_24),
        .Q(s_axi_control_RDATA[18]),
        .R(1'b0));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_23),
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
        .S(\rdata[7]_i_7_n_3 ));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_22),
        .Q(s_axi_control_RDATA[20]),
        .R(1'b0));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_21),
        .Q(s_axi_control_RDATA[21]),
        .R(1'b0));
  FDRE \rdata_reg[22] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_20),
        .Q(s_axi_control_RDATA[22]),
        .R(1'b0));
  FDRE \rdata_reg[23] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_19),
        .Q(s_axi_control_RDATA[23]),
        .R(1'b0));
  FDRE \rdata_reg[24] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_18),
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
        .D(int_bias_n_17),
        .Q(s_axi_control_RDATA[26]),
        .R(1'b0));
  FDRE \rdata_reg[27] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_16),
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
        .D(int_bias_n_15),
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
        .D(int_weights_n_3),
        .Q(s_axi_control_RDATA[30]),
        .R(1'b0));
  FDRE \rdata_reg[31] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_bias_n_14),
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
        .D(int_bias_n_25),
        .Q(s_axi_control_RDATA[4]),
        .R(1'b0));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_output_r_n_35),
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
        .D(int_input_r_n_60),
        .Q(s_axi_control_RDATA[8]),
        .R(1'b0));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_3 ),
        .D(int_input_r_n_59),
        .Q(s_axi_control_RDATA[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_control_ARREADY_INST_0
       (.I0(rstate[1]),
        .I1(rstate[0]),
        .O(s_axi_control_ARREADY));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_control_AWREADY_INST_0
       (.I0(wstate[0]),
        .I1(wstate[1]),
        .O(s_axi_control_AWREADY));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
    \waddr[17]_i_1 
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00CA00FA)) 
    \wstate[0]_i_1 
       (.I0(s_axi_control_AWVALID),
        .I1(int_weights_n_8),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .I4(s_axi_control_WVALID),
        .O(\wstate[0]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00440F00)) 
    \wstate[1]_i_1 
       (.I0(int_weights_n_8),
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
    int_input_r_read_reg,
    mem_reg_0,
    mem_reg_1,
    mem_reg_2,
    mem_reg_3,
    mem_reg_4,
    mem_reg_5,
    mem_reg_6,
    mem_reg_7,
    mem_reg_8,
    DIBDI,
    ap_clk,
    grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg,
    D,
    s_axi_control_WDATA,
    \rdata_reg[31] ,
    int_input_r_read,
    \rdata_reg[4] ,
    \rdata_reg[4]_0 ,
    \rdata_reg[4]_1 ,
    s_axi_control_ARVALID,
    rstate,
    mem_reg_9,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    wstate,
    int_bias_read,
    q1,
    \rdata_reg[31]_0 ,
    int_output_r_read,
    mem_reg_10,
    mem_reg_11,
    mem_reg_12,
    mem_reg_13,
    s_axi_control_ARADDR,
    Q);
  output [10:0]DOADO;
  output [11:0]int_input_r_read_reg;
  output mem_reg_0;
  output mem_reg_1;
  output mem_reg_2;
  output mem_reg_3;
  output mem_reg_4;
  output mem_reg_5;
  output mem_reg_6;
  output mem_reg_7;
  output mem_reg_8;
  output [15:0]DIBDI;
  input ap_clk;
  input grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg;
  input [6:0]D;
  input [31:0]s_axi_control_WDATA;
  input [11:0]\rdata_reg[31] ;
  input int_input_r_read;
  input \rdata_reg[4] ;
  input \rdata_reg[4]_0 ;
  input \rdata_reg[4]_1 ;
  input s_axi_control_ARVALID;
  input [1:0]rstate;
  input mem_reg_9;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_WSTRB;
  input [1:0]wstate;
  input int_bias_read;
  input [20:0]q1;
  input [20:0]\rdata_reg[31]_0 ;
  input int_output_r_read;
  input [15:0]mem_reg_10;
  input mem_reg_11;
  input mem_reg_12;
  input mem_reg_13;
  input [6:0]s_axi_control_ARADDR;
  input [6:0]Q;

  wire [6:0]D;
  wire [15:0]DIBDI;
  wire [10:0]DOADO;
  wire [6:0]Q;
  wire ap_clk;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg;
  wire [3:0]int_bias_be1;
  wire int_bias_ce1;
  wire [31:0]int_bias_q0;
  wire [31:0]int_bias_q1;
  wire int_bias_read;
  wire int_input_r_read;
  wire [11:0]int_input_r_read_reg;
  wire int_output_r_read;
  wire mem_reg_0;
  wire mem_reg_1;
  wire [15:0]mem_reg_10;
  wire mem_reg_11;
  wire mem_reg_12;
  wire mem_reg_13;
  wire mem_reg_2;
  wire mem_reg_3;
  wire mem_reg_4;
  wire mem_reg_5;
  wire mem_reg_6;
  wire mem_reg_7;
  wire mem_reg_8;
  wire mem_reg_9;
  wire mem_reg_i_2__0_n_3;
  wire mem_reg_i_3_n_3;
  wire mem_reg_i_4_n_3;
  wire mem_reg_i_5_n_3;
  wire mem_reg_i_6_n_3;
  wire mem_reg_i_7_n_3;
  wire mem_reg_i_8_n_3;
  wire [31:24]p_1_in;
  wire [20:0]q1;
  wire \rdata[18]_i_2_n_3 ;
  wire \rdata[19]_i_2_n_3 ;
  wire \rdata[20]_i_2_n_3 ;
  wire \rdata[21]_i_2_n_3 ;
  wire \rdata[22]_i_2_n_3 ;
  wire \rdata[23]_i_2_n_3 ;
  wire \rdata[24]_i_2_n_3 ;
  wire \rdata[26]_i_2_n_3 ;
  wire \rdata[27]_i_2_n_3 ;
  wire \rdata[29]_i_2_n_3 ;
  wire \rdata[31]_i_4_n_3 ;
  wire \rdata[4]_i_2_n_3 ;
  wire [11:0]\rdata_reg[31] ;
  wire [20:0]\rdata_reg[31]_0 ;
  wire \rdata_reg[4] ;
  wire \rdata_reg[4]_0 ;
  wire \rdata_reg[4]_1 ;
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
        .DOADO({int_bias_q1[31],DOADO[10],int_bias_q1[29],DOADO[9],int_bias_q1[27:26],DOADO[8],int_bias_q1[24:18],DOADO[7:6],int_bias_q1[15],DOADO[5],int_bias_q1[13],DOADO[4],int_bias_q1[11:8],DOADO[3:1],int_bias_q1[4],DOADO[0],int_bias_q1[2:0]}),
        .DOBDO(int_bias_q0),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_bias_ce1),
        .ENBWREN(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
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
        .I3(mem_reg_9),
        .I4(s_axi_control_WVALID),
        .O(int_bias_ce1));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_16__0
       (.I0(s_axi_control_WDATA[31]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[31]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_17
       (.I0(s_axi_control_WDATA[30]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[30]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_18
       (.I0(s_axi_control_WDATA[29]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[29]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_19
       (.I0(s_axi_control_WDATA[28]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[28]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_20
       (.I0(s_axi_control_WDATA[27]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[27]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_21
       (.I0(s_axi_control_WDATA[26]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[26]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_22
       (.I0(s_axi_control_WDATA[25]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[25]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_23
       (.I0(s_axi_control_WDATA[24]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_24
       (.I0(s_axi_control_WSTRB[3]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_9),
        .I3(\rdata_reg[4] ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_bias_be1[3]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_25__0
       (.I0(s_axi_control_WSTRB[2]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_9),
        .I3(\rdata_reg[4] ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_bias_be1[2]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_26__0
       (.I0(s_axi_control_WSTRB[1]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_9),
        .I3(\rdata_reg[4] ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_bias_be1[1]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_27__0
       (.I0(s_axi_control_WSTRB[0]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_9),
        .I3(\rdata_reg[4] ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_bias_be1[0]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_2__0
       (.I0(s_axi_control_ARADDR[6]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[6]),
        .O(mem_reg_i_2__0_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_3
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[5]),
        .O(mem_reg_i_3_n_3));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    mem_reg_i_33
       (.I0(mem_reg_10[7]),
        .I1(mem_reg_11),
        .I2(int_bias_q0[7]),
        .I3(mem_reg_12),
        .I4(int_bias_q0[23]),
        .I5(mem_reg_13),
        .O(DIBDI[15]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    mem_reg_i_34
       (.I0(mem_reg_10[6]),
        .I1(mem_reg_11),
        .I2(int_bias_q0[6]),
        .I3(mem_reg_12),
        .I4(int_bias_q0[22]),
        .I5(mem_reg_13),
        .O(DIBDI[14]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    mem_reg_i_35
       (.I0(mem_reg_10[5]),
        .I1(mem_reg_11),
        .I2(int_bias_q0[5]),
        .I3(mem_reg_12),
        .I4(int_bias_q0[21]),
        .I5(mem_reg_13),
        .O(DIBDI[13]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    mem_reg_i_36
       (.I0(mem_reg_10[4]),
        .I1(mem_reg_11),
        .I2(int_bias_q0[4]),
        .I3(mem_reg_12),
        .I4(int_bias_q0[20]),
        .I5(mem_reg_13),
        .O(DIBDI[12]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    mem_reg_i_37
       (.I0(mem_reg_10[3]),
        .I1(mem_reg_11),
        .I2(int_bias_q0[3]),
        .I3(mem_reg_12),
        .I4(int_bias_q0[19]),
        .I5(mem_reg_13),
        .O(DIBDI[11]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    mem_reg_i_38
       (.I0(mem_reg_10[2]),
        .I1(mem_reg_11),
        .I2(int_bias_q0[2]),
        .I3(mem_reg_12),
        .I4(int_bias_q0[18]),
        .I5(mem_reg_13),
        .O(DIBDI[10]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    mem_reg_i_39
       (.I0(mem_reg_10[1]),
        .I1(mem_reg_11),
        .I2(int_bias_q0[1]),
        .I3(mem_reg_12),
        .I4(int_bias_q0[17]),
        .I5(mem_reg_13),
        .O(DIBDI[9]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_4
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[4]),
        .O(mem_reg_i_4_n_3));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    mem_reg_i_40
       (.I0(mem_reg_10[0]),
        .I1(mem_reg_11),
        .I2(int_bias_q0[0]),
        .I3(mem_reg_12),
        .I4(int_bias_q0[16]),
        .I5(mem_reg_13),
        .O(DIBDI[8]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    mem_reg_i_41
       (.I0(mem_reg_10[15]),
        .I1(mem_reg_11),
        .I2(int_bias_q0[15]),
        .I3(mem_reg_12),
        .I4(int_bias_q0[31]),
        .I5(mem_reg_13),
        .O(DIBDI[7]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    mem_reg_i_42
       (.I0(mem_reg_10[14]),
        .I1(mem_reg_11),
        .I2(int_bias_q0[14]),
        .I3(mem_reg_12),
        .I4(int_bias_q0[30]),
        .I5(mem_reg_13),
        .O(DIBDI[6]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    mem_reg_i_43
       (.I0(mem_reg_10[13]),
        .I1(mem_reg_11),
        .I2(int_bias_q0[13]),
        .I3(mem_reg_12),
        .I4(int_bias_q0[29]),
        .I5(mem_reg_13),
        .O(DIBDI[5]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    mem_reg_i_44
       (.I0(mem_reg_10[12]),
        .I1(mem_reg_11),
        .I2(int_bias_q0[12]),
        .I3(mem_reg_12),
        .I4(int_bias_q0[28]),
        .I5(mem_reg_13),
        .O(DIBDI[4]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    mem_reg_i_45
       (.I0(mem_reg_10[11]),
        .I1(mem_reg_11),
        .I2(int_bias_q0[11]),
        .I3(mem_reg_12),
        .I4(int_bias_q0[27]),
        .I5(mem_reg_13),
        .O(DIBDI[3]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    mem_reg_i_46
       (.I0(mem_reg_10[10]),
        .I1(mem_reg_11),
        .I2(int_bias_q0[10]),
        .I3(mem_reg_12),
        .I4(int_bias_q0[26]),
        .I5(mem_reg_13),
        .O(DIBDI[2]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    mem_reg_i_47
       (.I0(mem_reg_10[9]),
        .I1(mem_reg_11),
        .I2(int_bias_q0[9]),
        .I3(mem_reg_12),
        .I4(int_bias_q0[25]),
        .I5(mem_reg_13),
        .O(DIBDI[1]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    mem_reg_i_48
       (.I0(mem_reg_10[8]),
        .I1(mem_reg_11),
        .I2(int_bias_q0[8]),
        .I3(mem_reg_12),
        .I4(int_bias_q0[24]),
        .I5(mem_reg_13),
        .O(DIBDI[0]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_5
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[3]),
        .O(mem_reg_i_5_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_6
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[2]),
        .O(mem_reg_i_6_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_7
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[1]),
        .O(mem_reg_i_7_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_8
       (.I0(s_axi_control_ARADDR[0]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[0]),
        .O(mem_reg_i_8_n_3));
  LUT5 #(
    .INIT(32'h0047FF47)) 
    \rdata[0]_i_3 
       (.I0(int_bias_q1[0]),
        .I1(int_bias_read),
        .I2(q1[0]),
        .I3(int_output_r_read),
        .I4(\rdata_reg[31]_0 [0]),
        .O(mem_reg_6));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[10]_i_3 
       (.I0(int_bias_q1[10]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31]_0 [6]),
        .I3(int_output_r_read),
        .I4(q1[6]),
        .I5(int_bias_read),
        .O(mem_reg_2));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[11]_i_3 
       (.I0(int_bias_q1[11]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31]_0 [7]),
        .I3(int_output_r_read),
        .I4(q1[7]),
        .I5(int_bias_read),
        .O(mem_reg_3));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[13]_i_3 
       (.I0(int_bias_q1[13]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31]_0 [8]),
        .I3(int_output_r_read),
        .I4(q1[8]),
        .I5(int_bias_read),
        .O(mem_reg_4));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[15]_i_3 
       (.I0(int_bias_q1[15]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31]_0 [9]),
        .I3(int_output_r_read),
        .I4(q1[9]),
        .I5(int_bias_read),
        .O(mem_reg_5));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[18]_i_1 
       (.I0(\rdata[18]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31] [1]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(int_input_r_read_reg[1]));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[18]_i_2 
       (.I0(int_bias_q1[18]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31]_0 [10]),
        .I3(int_output_r_read),
        .I4(q1[10]),
        .I5(int_bias_read),
        .O(\rdata[18]_i_2_n_3 ));
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
        .I2(\rdata_reg[31]_0 [11]),
        .I3(int_output_r_read),
        .I4(q1[11]),
        .I5(int_bias_read),
        .O(\rdata[19]_i_2_n_3 ));
  LUT5 #(
    .INIT(32'h0047FF47)) 
    \rdata[1]_i_3 
       (.I0(int_bias_q1[1]),
        .I1(int_bias_read),
        .I2(q1[1]),
        .I3(int_output_r_read),
        .I4(\rdata_reg[31]_0 [1]),
        .O(mem_reg_7));
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
        .I2(\rdata_reg[31]_0 [12]),
        .I3(int_output_r_read),
        .I4(q1[12]),
        .I5(int_bias_read),
        .O(\rdata[20]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[21]_i_1 
       (.I0(\rdata[21]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31] [4]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(int_input_r_read_reg[4]));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[21]_i_2 
       (.I0(int_bias_q1[21]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31]_0 [13]),
        .I3(int_output_r_read),
        .I4(q1[13]),
        .I5(int_bias_read),
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
        .I2(\rdata_reg[31]_0 [14]),
        .I3(int_output_r_read),
        .I4(q1[14]),
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
        .I2(\rdata_reg[31]_0 [15]),
        .I3(int_output_r_read),
        .I4(q1[15]),
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
        .I2(\rdata_reg[31]_0 [16]),
        .I3(int_output_r_read),
        .I4(q1[16]),
        .I5(int_bias_read),
        .O(\rdata[24]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[26]_i_1 
       (.I0(\rdata[26]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31] [8]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(int_input_r_read_reg[8]));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[26]_i_2 
       (.I0(int_bias_q1[26]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31]_0 [17]),
        .I3(int_output_r_read),
        .I4(q1[17]),
        .I5(int_bias_read),
        .O(\rdata[26]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[27]_i_1 
       (.I0(\rdata[27]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31] [9]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(int_input_r_read_reg[9]));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[27]_i_2 
       (.I0(int_bias_q1[27]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31]_0 [18]),
        .I3(int_output_r_read),
        .I4(q1[18]),
        .I5(int_bias_read),
        .O(\rdata[27]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[29]_i_1 
       (.I0(\rdata[29]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31] [10]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(int_input_r_read_reg[10]));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[29]_i_2 
       (.I0(int_bias_q1[29]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31]_0 [19]),
        .I3(int_output_r_read),
        .I4(q1[19]),
        .I5(int_bias_read),
        .O(\rdata[29]_i_2_n_3 ));
  LUT5 #(
    .INIT(32'h0047FF47)) 
    \rdata[2]_i_4 
       (.I0(int_bias_q1[2]),
        .I1(int_bias_read),
        .I2(q1[2]),
        .I3(int_output_r_read),
        .I4(\rdata_reg[31]_0 [2]),
        .O(mem_reg_8));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[31]_i_2 
       (.I0(\rdata[31]_i_4_n_3 ),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31] [11]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(int_input_r_read_reg[11]));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[31]_i_4 
       (.I0(int_bias_q1[31]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31]_0 [20]),
        .I3(int_output_r_read),
        .I4(q1[20]),
        .I5(int_bias_read),
        .O(\rdata[31]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'hFFC500C500C500C5)) 
    \rdata[4]_i_1 
       (.I0(\rdata[4]_i_2_n_3 ),
        .I1(\rdata_reg[31] [0]),
        .I2(int_input_r_read),
        .I3(\rdata_reg[4] ),
        .I4(\rdata_reg[4]_0 ),
        .I5(\rdata_reg[4]_1 ),
        .O(int_input_r_read_reg[0]));
  LUT5 #(
    .INIT(32'h00FF4747)) 
    \rdata[4]_i_2 
       (.I0(int_bias_q1[4]),
        .I1(int_bias_read),
        .I2(q1[3]),
        .I3(\rdata_reg[31]_0 [3]),
        .I4(int_output_r_read),
        .O(\rdata[4]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[8]_i_3 
       (.I0(int_bias_q1[8]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31]_0 [4]),
        .I3(int_output_r_read),
        .I4(q1[4]),
        .I5(int_bias_read),
        .O(mem_reg_0));
  LUT6 #(
    .INIT(64'hFCEEFCEEFCFFFCCC)) 
    \rdata[9]_i_3 
       (.I0(int_bias_q1[9]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[31]_0 [5]),
        .I3(int_output_r_read),
        .I4(q1[5]),
        .I5(int_bias_read),
        .O(mem_reg_1));
endmodule

(* ORIG_REF_NAME = "nnlayer_control_s_axi_ram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_control_s_axi_ram_1
   (DOADO,
    DOBDO,
    D,
    ap_clk,
    mem_reg_0,
    Q,
    s_axi_control_WDATA,
    \rdata_reg[7] ,
    \rdata_reg[7]_0 ,
    \rdata_reg[7]_1 ,
    \rdata_reg[1] ,
    \rdata_reg[7]_2 ,
    \rdata_reg[7]_3 ,
    \rdata_reg[6] ,
    int_input_r_read,
    \rdata_reg[6]_0 ,
    \rdata_reg[6]_1 ,
    \rdata_reg[6]_2 ,
    \rdata_reg[3] ,
    \rdata_reg[3]_0 ,
    \rdata_reg[3]_1 ,
    \rdata_reg[2] ,
    \rdata_reg[2]_0 ,
    \rdata_reg[2]_1 ,
    \rdata_reg[1]_0 ,
    \rdata_reg[1]_1 ,
    \rdata_reg[0] ,
    \rdata_reg[0]_0 ,
    \rdata_reg[8] ,
    \rdata_reg[15] ,
    \rdata_reg[8]_0 ,
    \rdata_reg[15]_0 ,
    \rdata_reg[8]_1 ,
    rstate,
    s_axi_control_ARVALID,
    \rdata_reg[9] ,
    \rdata_reg[10] ,
    \rdata_reg[11] ,
    \rdata_reg[12] ,
    \rdata_reg[13] ,
    \rdata_reg[14] ,
    \rdata_reg[15]_1 ,
    mem_reg_1,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    wstate,
    s_axi_control_ARADDR,
    mem_reg_2);
  output [17:0]DOADO;
  output [31:0]DOBDO;
  output [13:0]D;
  input ap_clk;
  input mem_reg_0;
  input [6:0]Q;
  input [31:0]s_axi_control_WDATA;
  input \rdata_reg[7] ;
  input \rdata_reg[7]_0 ;
  input \rdata_reg[7]_1 ;
  input \rdata_reg[1] ;
  input \rdata_reg[7]_2 ;
  input \rdata_reg[7]_3 ;
  input \rdata_reg[6] ;
  input int_input_r_read;
  input \rdata_reg[6]_0 ;
  input \rdata_reg[6]_1 ;
  input \rdata_reg[6]_2 ;
  input \rdata_reg[3] ;
  input \rdata_reg[3]_0 ;
  input \rdata_reg[3]_1 ;
  input \rdata_reg[2] ;
  input \rdata_reg[2]_0 ;
  input \rdata_reg[2]_1 ;
  input \rdata_reg[1]_0 ;
  input \rdata_reg[1]_1 ;
  input \rdata_reg[0] ;
  input \rdata_reg[0]_0 ;
  input \rdata_reg[8] ;
  input [7:0]\rdata_reg[15] ;
  input \rdata_reg[8]_0 ;
  input [7:0]\rdata_reg[15]_0 ;
  input \rdata_reg[8]_1 ;
  input [1:0]rstate;
  input s_axi_control_ARVALID;
  input \rdata_reg[9] ;
  input \rdata_reg[10] ;
  input \rdata_reg[11] ;
  input \rdata_reg[12] ;
  input \rdata_reg[13] ;
  input \rdata_reg[14] ;
  input \rdata_reg[15]_1 ;
  input mem_reg_1;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_WSTRB;
  input [1:0]wstate;
  input [6:0]s_axi_control_ARADDR;
  input [6:0]mem_reg_2;

  wire [13:0]D;
  wire [17:0]DOADO;
  wire [31:0]DOBDO;
  wire [6:0]Q;
  wire ap_clk;
  wire [3:0]int_input_r_be1;
  wire int_input_r_ce1;
  wire [15:0]int_input_r_q1;
  wire int_input_r_read;
  wire mem_reg_0;
  wire mem_reg_1;
  wire [6:0]mem_reg_2;
  wire mem_reg_i_2__1_n_3;
  wire mem_reg_i_3__0_n_3;
  wire mem_reg_i_4__0_n_3;
  wire mem_reg_i_5__0_n_3;
  wire mem_reg_i_6__0_n_3;
  wire mem_reg_i_7__0_n_3;
  wire mem_reg_i_8__0_n_3;
  wire [31:24]p_1_in;
  wire \rdata[10]_i_2_n_3 ;
  wire \rdata[11]_i_2_n_3 ;
  wire \rdata[12]_i_2_n_3 ;
  wire \rdata[13]_i_2_n_3 ;
  wire \rdata[14]_i_2_n_3 ;
  wire \rdata[15]_i_2_n_3 ;
  wire \rdata[7]_i_3_n_3 ;
  wire \rdata[8]_i_2_n_3 ;
  wire \rdata[9]_i_2_n_3 ;
  wire \rdata_reg[0] ;
  wire \rdata_reg[0]_0 ;
  wire \rdata_reg[10] ;
  wire \rdata_reg[11] ;
  wire \rdata_reg[12] ;
  wire \rdata_reg[13] ;
  wire \rdata_reg[14] ;
  wire [7:0]\rdata_reg[15] ;
  wire [7:0]\rdata_reg[15]_0 ;
  wire \rdata_reg[15]_1 ;
  wire \rdata_reg[1] ;
  wire \rdata_reg[1]_0 ;
  wire \rdata_reg[1]_1 ;
  wire \rdata_reg[2] ;
  wire \rdata_reg[2]_0 ;
  wire \rdata_reg[2]_1 ;
  wire \rdata_reg[3] ;
  wire \rdata_reg[3]_0 ;
  wire \rdata_reg[3]_1 ;
  wire \rdata_reg[6] ;
  wire \rdata_reg[6]_0 ;
  wire \rdata_reg[6]_1 ;
  wire \rdata_reg[6]_2 ;
  wire \rdata_reg[7] ;
  wire \rdata_reg[7]_0 ;
  wire \rdata_reg[7]_1 ;
  wire \rdata_reg[7]_2 ;
  wire \rdata_reg[7]_3 ;
  wire \rdata_reg[8] ;
  wire \rdata_reg[8]_0 ;
  wire \rdata_reg[8]_1 ;
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
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,mem_reg_i_2__1_n_3,mem_reg_i_3__0_n_3,mem_reg_i_4__0_n_3,mem_reg_i_5__0_n_3,mem_reg_i_6__0_n_3,mem_reg_i_7__0_n_3,mem_reg_i_8__0_n_3,1'b1,1'b1,1'b1,1'b1,1'b1}),
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
        .DOADO({DOADO[17:2],int_input_r_q1[15:6],DOADO[1:0],int_input_r_q1[3:0]}),
        .DOBDO(DOBDO),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_input_r_ce1),
        .ENBWREN(mem_reg_0),
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
    mem_reg_i_10__0
       (.I0(s_axi_control_WDATA[30]),
        .I1(int_input_r_be1[3]),
        .O(p_1_in[30]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_11__0
       (.I0(s_axi_control_WDATA[29]),
        .I1(int_input_r_be1[3]),
        .O(p_1_in[29]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_12__0
       (.I0(s_axi_control_WDATA[28]),
        .I1(int_input_r_be1[3]),
        .O(p_1_in[28]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_13__0
       (.I0(s_axi_control_WDATA[27]),
        .I1(int_input_r_be1[3]),
        .O(p_1_in[27]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_14__0
       (.I0(s_axi_control_WDATA[26]),
        .I1(int_input_r_be1[3]),
        .O(p_1_in[26]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_15__0
       (.I0(s_axi_control_WDATA[25]),
        .I1(int_input_r_be1[3]),
        .O(p_1_in[25]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_16__1
       (.I0(s_axi_control_WDATA[24]),
        .I1(int_input_r_be1[3]),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_17__1
       (.I0(s_axi_control_WSTRB[3]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_1),
        .I3(\rdata_reg[6] ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_input_r_be1[3]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_18__1
       (.I0(s_axi_control_WSTRB[2]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_1),
        .I3(\rdata_reg[6] ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_input_r_be1[2]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_19__1
       (.I0(s_axi_control_WSTRB[1]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_1),
        .I3(\rdata_reg[6] ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_input_r_be1[1]));
  LUT5 #(
    .INIT(32'hFF101010)) 
    mem_reg_i_1__1
       (.I0(rstate[0]),
        .I1(rstate[1]),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_1),
        .I4(s_axi_control_WVALID),
        .O(int_input_r_ce1));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_20__1
       (.I0(s_axi_control_WSTRB[0]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_1),
        .I3(\rdata_reg[6] ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_input_r_be1[0]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_2__1
       (.I0(s_axi_control_ARADDR[6]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(mem_reg_2[6]),
        .O(mem_reg_i_2__1_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_3__0
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(mem_reg_2[5]),
        .O(mem_reg_i_3__0_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_4__0
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(mem_reg_2[4]),
        .O(mem_reg_i_4__0_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_5__0
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(mem_reg_2[3]),
        .O(mem_reg_i_5__0_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_6__0
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(mem_reg_2[2]),
        .O(mem_reg_i_6__0_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_7__0
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(mem_reg_2[1]),
        .O(mem_reg_i_7__0_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_8__0
       (.I0(s_axi_control_ARADDR[0]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(mem_reg_2[0]),
        .O(mem_reg_i_8__0_n_3));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_9
       (.I0(s_axi_control_WDATA[31]),
        .I1(int_input_r_be1[3]),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'h30303030AAAA00FF)) 
    \rdata[0]_i_1 
       (.I0(int_input_r_q1[0]),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[1] ),
        .I3(\rdata_reg[0]_0 ),
        .I4(int_input_r_read),
        .I5(\rdata_reg[6] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hF4FFF44444444444)) 
    \rdata[10]_i_1 
       (.I0(\rdata[10]_i_2_n_3 ),
        .I1(\rdata_reg[10] ),
        .I2(\rdata_reg[15] [2]),
        .I3(\rdata_reg[8]_0 ),
        .I4(\rdata_reg[15]_0 [2]),
        .I5(\rdata_reg[8]_1 ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    \rdata[10]_i_2 
       (.I0(rstate[0]),
        .I1(rstate[1]),
        .I2(s_axi_control_ARVALID),
        .I3(int_input_r_q1[10]),
        .I4(int_input_r_read),
        .O(\rdata[10]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hF4FFF44444444444)) 
    \rdata[11]_i_1 
       (.I0(\rdata[11]_i_2_n_3 ),
        .I1(\rdata_reg[11] ),
        .I2(\rdata_reg[15] [3]),
        .I3(\rdata_reg[8]_0 ),
        .I4(\rdata_reg[15]_0 [3]),
        .I5(\rdata_reg[8]_1 ),
        .O(D[9]));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    \rdata[11]_i_2 
       (.I0(rstate[0]),
        .I1(rstate[1]),
        .I2(s_axi_control_ARVALID),
        .I3(int_input_r_q1[11]),
        .I4(int_input_r_read),
        .O(\rdata[11]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hF4FFF44444444444)) 
    \rdata[12]_i_1 
       (.I0(\rdata[12]_i_2_n_3 ),
        .I1(\rdata_reg[12] ),
        .I2(\rdata_reg[15] [4]),
        .I3(\rdata_reg[8]_0 ),
        .I4(\rdata_reg[15]_0 [4]),
        .I5(\rdata_reg[8]_1 ),
        .O(D[10]));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    \rdata[12]_i_2 
       (.I0(rstate[0]),
        .I1(rstate[1]),
        .I2(s_axi_control_ARVALID),
        .I3(int_input_r_q1[12]),
        .I4(int_input_r_read),
        .O(\rdata[12]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hF4FFF44444444444)) 
    \rdata[13]_i_1 
       (.I0(\rdata[13]_i_2_n_3 ),
        .I1(\rdata_reg[13] ),
        .I2(\rdata_reg[15] [5]),
        .I3(\rdata_reg[8]_0 ),
        .I4(\rdata_reg[15]_0 [5]),
        .I5(\rdata_reg[8]_1 ),
        .O(D[11]));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    \rdata[13]_i_2 
       (.I0(rstate[0]),
        .I1(rstate[1]),
        .I2(s_axi_control_ARVALID),
        .I3(int_input_r_q1[13]),
        .I4(int_input_r_read),
        .O(\rdata[13]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hF4FFF44444444444)) 
    \rdata[14]_i_1 
       (.I0(\rdata[14]_i_2_n_3 ),
        .I1(\rdata_reg[14] ),
        .I2(\rdata_reg[15] [6]),
        .I3(\rdata_reg[8]_0 ),
        .I4(\rdata_reg[15]_0 [6]),
        .I5(\rdata_reg[8]_1 ),
        .O(D[12]));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    \rdata[14]_i_2 
       (.I0(rstate[0]),
        .I1(rstate[1]),
        .I2(s_axi_control_ARVALID),
        .I3(int_input_r_q1[14]),
        .I4(int_input_r_read),
        .O(\rdata[14]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hF444F4F4F4444444)) 
    \rdata[15]_i_1 
       (.I0(\rdata[15]_i_2_n_3 ),
        .I1(\rdata_reg[15]_1 ),
        .I2(\rdata_reg[8]_1 ),
        .I3(\rdata_reg[15] [7]),
        .I4(\rdata_reg[8]_0 ),
        .I5(\rdata_reg[15]_0 [7]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    \rdata[15]_i_2 
       (.I0(rstate[0]),
        .I1(rstate[1]),
        .I2(s_axi_control_ARVALID),
        .I3(int_input_r_q1[15]),
        .I4(int_input_r_read),
        .O(\rdata[15]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'h30303030AAAA00FF)) 
    \rdata[1]_i_1 
       (.I0(int_input_r_q1[1]),
        .I1(\rdata_reg[1]_0 ),
        .I2(\rdata_reg[1] ),
        .I3(\rdata_reg[1]_1 ),
        .I4(int_input_r_read),
        .I5(\rdata_reg[6] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFCFCFCFCAAAA00FF)) 
    \rdata[2]_i_1 
       (.I0(int_input_r_q1[2]),
        .I1(\rdata_reg[2] ),
        .I2(\rdata_reg[2]_0 ),
        .I3(\rdata_reg[2]_1 ),
        .I4(int_input_r_read),
        .I5(\rdata_reg[6] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFCFCFCFCAAAA00FF)) 
    \rdata[3]_i_1 
       (.I0(int_input_r_q1[3]),
        .I1(\rdata_reg[3] ),
        .I2(\rdata_reg[3]_0 ),
        .I3(\rdata_reg[3]_1 ),
        .I4(int_input_r_read),
        .I5(\rdata_reg[6] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFF00B0B00000B0B0)) 
    \rdata[6]_i_1 
       (.I0(int_input_r_q1[6]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[6]_0 ),
        .I3(\rdata_reg[6]_1 ),
        .I4(\rdata_reg[6] ),
        .I5(\rdata_reg[6]_2 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hC444FFFFC4440000)) 
    \rdata[7]_i_3 
       (.I0(\rdata_reg[7]_1 ),
        .I1(\rdata_reg[1] ),
        .I2(\rdata_reg[7]_2 ),
        .I3(\rdata_reg[7]_3 ),
        .I4(\rdata_reg[6] ),
        .I5(int_input_r_q1[7]),
        .O(\rdata[7]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'hF4FFF44444444444)) 
    \rdata[8]_i_1 
       (.I0(\rdata[8]_i_2_n_3 ),
        .I1(\rdata_reg[8] ),
        .I2(\rdata_reg[15] [0]),
        .I3(\rdata_reg[8]_0 ),
        .I4(\rdata_reg[15]_0 [0]),
        .I5(\rdata_reg[8]_1 ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    \rdata[8]_i_2 
       (.I0(rstate[0]),
        .I1(rstate[1]),
        .I2(s_axi_control_ARVALID),
        .I3(int_input_r_q1[8]),
        .I4(int_input_r_read),
        .O(\rdata[8]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hF4FFF44444444444)) 
    \rdata[9]_i_1 
       (.I0(\rdata[9]_i_2_n_3 ),
        .I1(\rdata_reg[9] ),
        .I2(\rdata_reg[15] [1]),
        .I3(\rdata_reg[8]_0 ),
        .I4(\rdata_reg[15]_0 [1]),
        .I5(\rdata_reg[8]_1 ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    \rdata[9]_i_2 
       (.I0(rstate[0]),
        .I1(rstate[1]),
        .I2(s_axi_control_ARVALID),
        .I3(int_input_r_q1[9]),
        .I4(int_input_r_read),
        .O(\rdata[9]_i_2_n_3 ));
  MUXF7 \rdata_reg[7]_i_1 
       (.I0(\rdata[7]_i_3_n_3 ),
        .I1(\rdata_reg[7]_0 ),
        .O(D[5]),
        .S(\rdata_reg[7] ));
endmodule

(* ORIG_REF_NAME = "nnlayer_control_s_axi_ram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_control_s_axi_ram__parameterized0
   (DOADO,
    \icmp_ln46_reg_391_reg[0] ,
    D,
    \cmp980_reg_374_reg[0] ,
    CO,
    mem_reg_0,
    p_reg_reg,
    \inNeurons_reg_176_reg[15] ,
    ap_clk,
    output_r_ce0,
    ADDRBWRADDR,
    s_axi_control_WDATA,
    DIBDI,
    WEBWE,
    mem_reg_1,
    mem_reg_2,
    mem_reg_3,
    mem_reg_4,
    mem_reg_5,
    icmp_ln10_reg_109,
    p_reg_reg_0,
    \rdata_reg[5] ,
    int_input_r_read,
    \rdata_reg[5]_0 ,
    \rdata_reg[5]_1 ,
    \rdata_reg[5]_2 ,
    rstate,
    s_axi_control_ARVALID,
    mem_reg_6,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    wstate,
    q1,
    int_output_r_read,
    int_bias_read,
    \rdata_reg[5]_3 ,
    mem_reg_7,
    mem_reg_8,
    mem_reg_9,
    Q,
    \ap_CS_fsm_reg[5]_i_3_0 ,
    mem_reg_i_57_0,
    mem_reg_i_57_1,
    icmp_ln46_reg_391,
    P,
    s_axi_control_ARADDR,
    mem_reg_10);
  output [30:0]DOADO;
  output \icmp_ln46_reg_391_reg[0] ;
  output [0:0]D;
  output \cmp980_reg_374_reg[0] ;
  output [0:0]CO;
  output mem_reg_0;
  output [15:0]p_reg_reg;
  output [0:0]\inNeurons_reg_176_reg[15] ;
  input ap_clk;
  input output_r_ce0;
  input [6:0]ADDRBWRADDR;
  input [31:0]s_axi_control_WDATA;
  input [15:0]DIBDI;
  input [1:0]WEBWE;
  input [0:0]mem_reg_1;
  input mem_reg_2;
  input mem_reg_3;
  input mem_reg_4;
  input mem_reg_5;
  input icmp_ln10_reg_109;
  input p_reg_reg_0;
  input [0:0]\rdata_reg[5] ;
  input int_input_r_read;
  input \rdata_reg[5]_0 ;
  input \rdata_reg[5]_1 ;
  input \rdata_reg[5]_2 ;
  input [1:0]rstate;
  input s_axi_control_ARVALID;
  input mem_reg_6;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_WSTRB;
  input [1:0]wstate;
  input [0:0]q1;
  input int_output_r_read;
  input int_bias_read;
  input [0:0]\rdata_reg[5]_3 ;
  input mem_reg_7;
  input [2:0]mem_reg_8;
  input mem_reg_9;
  input [15:0]Q;
  input [15:0]\ap_CS_fsm_reg[5]_i_3_0 ;
  input [15:0]mem_reg_i_57_0;
  input [15:0]mem_reg_i_57_1;
  input icmp_ln46_reg_391;
  input [15:0]P;
  input [6:0]s_axi_control_ARADDR;
  input [6:0]mem_reg_10;

  wire [6:0]ADDRBWRADDR;
  wire [0:0]CO;
  wire [0:0]D;
  wire [15:0]DIBDI;
  wire [30:0]DOADO;
  wire [15:0]P;
  wire [15:0]Q;
  wire [1:0]WEBWE;
  wire \ap_CS_fsm[5]_i_10_n_3 ;
  wire \ap_CS_fsm[5]_i_11_n_3 ;
  wire \ap_CS_fsm[5]_i_12_n_3 ;
  wire \ap_CS_fsm[5]_i_13_n_3 ;
  wire \ap_CS_fsm[5]_i_14_n_3 ;
  wire \ap_CS_fsm[5]_i_15_n_3 ;
  wire \ap_CS_fsm[5]_i_16_n_3 ;
  wire \ap_CS_fsm[5]_i_17_n_3 ;
  wire \ap_CS_fsm[5]_i_18_n_3 ;
  wire \ap_CS_fsm[5]_i_19_n_3 ;
  wire \ap_CS_fsm[5]_i_20_n_3 ;
  wire \ap_CS_fsm[5]_i_21_n_3 ;
  wire \ap_CS_fsm[5]_i_4_n_3 ;
  wire \ap_CS_fsm[5]_i_6_n_3 ;
  wire \ap_CS_fsm[5]_i_7_n_3 ;
  wire \ap_CS_fsm[5]_i_8_n_3 ;
  wire \ap_CS_fsm[5]_i_9_n_3 ;
  wire [15:0]\ap_CS_fsm_reg[5]_i_3_0 ;
  wire \ap_CS_fsm_reg[5]_i_3_n_3 ;
  wire \ap_CS_fsm_reg[5]_i_3_n_4 ;
  wire \ap_CS_fsm_reg[5]_i_3_n_5 ;
  wire \ap_CS_fsm_reg[5]_i_3_n_6 ;
  wire \ap_CS_fsm_reg[5]_i_5_n_3 ;
  wire \ap_CS_fsm_reg[5]_i_5_n_4 ;
  wire \ap_CS_fsm_reg[5]_i_5_n_5 ;
  wire \ap_CS_fsm_reg[5]_i_5_n_6 ;
  wire ap_clk;
  wire \cmp980_reg_374_reg[0] ;
  wire icmp_ln10_reg_109;
  wire icmp_ln46_reg_391;
  wire \icmp_ln46_reg_391_reg[0] ;
  wire [0:0]\inNeurons_reg_176_reg[15] ;
  wire int_bias_read;
  wire int_input_r_read;
  wire [3:0]int_output_r_be1;
  wire int_output_r_ce1;
  wire [31:0]int_output_r_q0;
  wire [5:5]int_output_r_q1;
  wire int_output_r_read;
  wire mem_reg_0;
  wire [0:0]mem_reg_1;
  wire [6:0]mem_reg_10;
  wire mem_reg_2;
  wire mem_reg_3;
  wire mem_reg_4;
  wire mem_reg_5;
  wire mem_reg_6;
  wire mem_reg_7;
  wire [2:0]mem_reg_8;
  wire mem_reg_9;
  wire mem_reg_i_3__1_n_3;
  wire mem_reg_i_4__1_n_3;
  wire [15:0]mem_reg_i_57_0;
  wire [15:0]mem_reg_i_57_1;
  wire mem_reg_i_57_n_6;
  wire mem_reg_i_5__1_n_3;
  wire mem_reg_i_67_n_3;
  wire mem_reg_i_6__1_n_3;
  wire mem_reg_i_72_n_3;
  wire mem_reg_i_72_n_4;
  wire mem_reg_i_72_n_5;
  wire mem_reg_i_72_n_6;
  wire mem_reg_i_73_n_3;
  wire mem_reg_i_74_n_3;
  wire mem_reg_i_76_n_3;
  wire mem_reg_i_77_n_3;
  wire mem_reg_i_78_n_3;
  wire mem_reg_i_79_n_3;
  wire mem_reg_i_7__1_n_3;
  wire mem_reg_i_8__1_n_3;
  wire mem_reg_i_9__1_n_3;
  wire output_r_ce0;
  wire [31:24]p_1_in;
  wire [31:24]p_2_in;
  wire [15:0]p_reg_reg;
  wire p_reg_reg_0;
  wire [0:0]q1;
  wire \rdata[5]_i_2_n_3 ;
  wire [0:0]\rdata_reg[5] ;
  wire \rdata_reg[5]_0 ;
  wire \rdata_reg[5]_1 ;
  wire \rdata_reg[5]_2 ;
  wire [0:0]\rdata_reg[5]_3 ;
  wire [1:0]rstate;
  wire [6:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [1:0]wstate;
  wire [3:1]\NLW_ap_CS_fsm_reg[5]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_ap_CS_fsm_reg[5]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_CS_fsm_reg[5]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_CS_fsm_reg[5]_i_5_O_UNCONNECTED ;
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
  wire [3:2]NLW_mem_reg_i_57_CO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_i_57_O_UNCONNECTED;
  wire [3:0]NLW_mem_reg_i_72_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'h9009)) 
    \ap_CS_fsm[5]_i_10 
       (.I0(Q[15]),
        .I1(\ap_CS_fsm_reg[5]_i_3_0 [15]),
        .I2(Q[14]),
        .I3(\ap_CS_fsm_reg[5]_i_3_0 [14]),
        .O(\ap_CS_fsm[5]_i_10_n_3 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_CS_fsm[5]_i_11 
       (.I0(Q[13]),
        .I1(\ap_CS_fsm_reg[5]_i_3_0 [13]),
        .I2(Q[12]),
        .I3(\ap_CS_fsm_reg[5]_i_3_0 [12]),
        .O(\ap_CS_fsm[5]_i_11_n_3 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_CS_fsm[5]_i_12 
       (.I0(Q[11]),
        .I1(\ap_CS_fsm_reg[5]_i_3_0 [11]),
        .I2(Q[10]),
        .I3(\ap_CS_fsm_reg[5]_i_3_0 [10]),
        .O(\ap_CS_fsm[5]_i_12_n_3 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_CS_fsm[5]_i_13 
       (.I0(Q[9]),
        .I1(\ap_CS_fsm_reg[5]_i_3_0 [9]),
        .I2(Q[8]),
        .I3(\ap_CS_fsm_reg[5]_i_3_0 [8]),
        .O(\ap_CS_fsm[5]_i_13_n_3 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \ap_CS_fsm[5]_i_14 
       (.I0(\ap_CS_fsm_reg[5]_i_3_0 [7]),
        .I1(Q[7]),
        .I2(\ap_CS_fsm_reg[5]_i_3_0 [6]),
        .I3(Q[6]),
        .O(\ap_CS_fsm[5]_i_14_n_3 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \ap_CS_fsm[5]_i_15 
       (.I0(\ap_CS_fsm_reg[5]_i_3_0 [5]),
        .I1(Q[5]),
        .I2(\ap_CS_fsm_reg[5]_i_3_0 [4]),
        .I3(Q[4]),
        .O(\ap_CS_fsm[5]_i_15_n_3 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \ap_CS_fsm[5]_i_16 
       (.I0(\ap_CS_fsm_reg[5]_i_3_0 [3]),
        .I1(Q[3]),
        .I2(\ap_CS_fsm_reg[5]_i_3_0 [2]),
        .I3(Q[2]),
        .O(\ap_CS_fsm[5]_i_16_n_3 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \ap_CS_fsm[5]_i_17 
       (.I0(\ap_CS_fsm_reg[5]_i_3_0 [1]),
        .I1(Q[1]),
        .I2(\ap_CS_fsm_reg[5]_i_3_0 [0]),
        .I3(Q[0]),
        .O(\ap_CS_fsm[5]_i_17_n_3 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_CS_fsm[5]_i_18 
       (.I0(Q[7]),
        .I1(\ap_CS_fsm_reg[5]_i_3_0 [7]),
        .I2(Q[6]),
        .I3(\ap_CS_fsm_reg[5]_i_3_0 [6]),
        .O(\ap_CS_fsm[5]_i_18_n_3 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_CS_fsm[5]_i_19 
       (.I0(Q[5]),
        .I1(\ap_CS_fsm_reg[5]_i_3_0 [5]),
        .I2(Q[4]),
        .I3(\ap_CS_fsm_reg[5]_i_3_0 [4]),
        .O(\ap_CS_fsm[5]_i_19_n_3 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_CS_fsm[5]_i_20 
       (.I0(Q[3]),
        .I1(\ap_CS_fsm_reg[5]_i_3_0 [3]),
        .I2(Q[2]),
        .I3(\ap_CS_fsm_reg[5]_i_3_0 [2]),
        .O(\ap_CS_fsm[5]_i_20_n_3 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_CS_fsm[5]_i_21 
       (.I0(Q[1]),
        .I1(\ap_CS_fsm_reg[5]_i_3_0 [1]),
        .I2(Q[0]),
        .I3(\ap_CS_fsm_reg[5]_i_3_0 [0]),
        .O(\ap_CS_fsm[5]_i_21_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ap_CS_fsm[5]_i_4 
       (.I0(Q[15]),
        .O(\ap_CS_fsm[5]_i_4_n_3 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \ap_CS_fsm[5]_i_6 
       (.I0(\ap_CS_fsm_reg[5]_i_3_0 [15]),
        .I1(Q[15]),
        .I2(\ap_CS_fsm_reg[5]_i_3_0 [14]),
        .I3(Q[14]),
        .O(\ap_CS_fsm[5]_i_6_n_3 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \ap_CS_fsm[5]_i_7 
       (.I0(\ap_CS_fsm_reg[5]_i_3_0 [13]),
        .I1(Q[13]),
        .I2(\ap_CS_fsm_reg[5]_i_3_0 [12]),
        .I3(Q[12]),
        .O(\ap_CS_fsm[5]_i_7_n_3 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \ap_CS_fsm[5]_i_8 
       (.I0(\ap_CS_fsm_reg[5]_i_3_0 [11]),
        .I1(Q[11]),
        .I2(\ap_CS_fsm_reg[5]_i_3_0 [10]),
        .I3(Q[10]),
        .O(\ap_CS_fsm[5]_i_8_n_3 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \ap_CS_fsm[5]_i_9 
       (.I0(\ap_CS_fsm_reg[5]_i_3_0 [9]),
        .I1(Q[9]),
        .I2(\ap_CS_fsm_reg[5]_i_3_0 [8]),
        .I3(Q[8]),
        .O(\ap_CS_fsm[5]_i_9_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \ap_CS_fsm_reg[5]_i_2 
       (.CI(\ap_CS_fsm_reg[5]_i_3_n_3 ),
        .CO({\NLW_ap_CS_fsm_reg[5]_i_2_CO_UNCONNECTED [3:1],\inNeurons_reg_176_reg[15] }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[15]}),
        .O(\NLW_ap_CS_fsm_reg[5]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\ap_CS_fsm[5]_i_4_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \ap_CS_fsm_reg[5]_i_3 
       (.CI(\ap_CS_fsm_reg[5]_i_5_n_3 ),
        .CO({\ap_CS_fsm_reg[5]_i_3_n_3 ,\ap_CS_fsm_reg[5]_i_3_n_4 ,\ap_CS_fsm_reg[5]_i_3_n_5 ,\ap_CS_fsm_reg[5]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({\ap_CS_fsm[5]_i_6_n_3 ,\ap_CS_fsm[5]_i_7_n_3 ,\ap_CS_fsm[5]_i_8_n_3 ,\ap_CS_fsm[5]_i_9_n_3 }),
        .O(\NLW_ap_CS_fsm_reg[5]_i_3_O_UNCONNECTED [3:0]),
        .S({\ap_CS_fsm[5]_i_10_n_3 ,\ap_CS_fsm[5]_i_11_n_3 ,\ap_CS_fsm[5]_i_12_n_3 ,\ap_CS_fsm[5]_i_13_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \ap_CS_fsm_reg[5]_i_5 
       (.CI(1'b0),
        .CO({\ap_CS_fsm_reg[5]_i_5_n_3 ,\ap_CS_fsm_reg[5]_i_5_n_4 ,\ap_CS_fsm_reg[5]_i_5_n_5 ,\ap_CS_fsm_reg[5]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({\ap_CS_fsm[5]_i_14_n_3 ,\ap_CS_fsm[5]_i_15_n_3 ,\ap_CS_fsm[5]_i_16_n_3 ,\ap_CS_fsm[5]_i_17_n_3 }),
        .O(\NLW_ap_CS_fsm_reg[5]_i_5_O_UNCONNECTED [3:0]),
        .S({\ap_CS_fsm[5]_i_18_n_3 ,\ap_CS_fsm[5]_i_19_n_3 ,\ap_CS_fsm[5]_i_20_n_3 ,\ap_CS_fsm[5]_i_21_n_3 }));
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
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,mem_reg_i_3__1_n_3,mem_reg_i_4__1_n_3,mem_reg_i_5__1_n_3,mem_reg_i_6__1_n_3,mem_reg_i_7__1_n_3,mem_reg_i_8__1_n_3,mem_reg_i_9__1_n_3,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI({p_2_in,s_axi_control_WDATA[23:0]}),
        .DIBDI({p_1_in,DIBDI,DIBDI[15:8]}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({DOADO[30:5],int_output_r_q1,DOADO[4:0]}),
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
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_17__0
       (.I0(s_axi_control_WDATA[31]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[31]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_18__0
       (.I0(s_axi_control_WDATA[30]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[30]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_19__0
       (.I0(s_axi_control_WDATA[29]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[29]));
  LUT5 #(
    .INIT(32'hFF101010)) 
    mem_reg_i_1__0
       (.I0(rstate[0]),
        .I1(rstate[1]),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_6),
        .I4(s_axi_control_WVALID),
        .O(int_output_r_ce1));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_20__0
       (.I0(s_axi_control_WDATA[28]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[28]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_21__0
       (.I0(s_axi_control_WDATA[27]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[27]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_22__0
       (.I0(s_axi_control_WDATA[26]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[26]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_23__0
       (.I0(s_axi_control_WDATA[25]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[25]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_24__0
       (.I0(s_axi_control_WDATA[24]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[24]));
  LUT6 #(
    .INIT(64'hB8B8B80000000000)) 
    mem_reg_i_25
       (.I0(mem_reg_1),
        .I1(mem_reg_2),
        .I2(mem_reg_3),
        .I3(mem_reg_i_67_n_3),
        .I4(mem_reg_4),
        .I5(DIBDI[7]),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'hB8B8B80000000000)) 
    mem_reg_i_26
       (.I0(mem_reg_1),
        .I1(mem_reg_2),
        .I2(mem_reg_3),
        .I3(mem_reg_i_67_n_3),
        .I4(mem_reg_4),
        .I5(DIBDI[6]),
        .O(p_1_in[30]));
  LUT6 #(
    .INIT(64'hB8B8B80000000000)) 
    mem_reg_i_27
       (.I0(mem_reg_1),
        .I1(mem_reg_2),
        .I2(mem_reg_3),
        .I3(mem_reg_i_67_n_3),
        .I4(mem_reg_4),
        .I5(DIBDI[5]),
        .O(p_1_in[29]));
  LUT6 #(
    .INIT(64'hB8B8B80000000000)) 
    mem_reg_i_28
       (.I0(mem_reg_1),
        .I1(mem_reg_2),
        .I2(mem_reg_3),
        .I3(mem_reg_i_67_n_3),
        .I4(mem_reg_4),
        .I5(DIBDI[4]),
        .O(p_1_in[28]));
  LUT6 #(
    .INIT(64'hB8B8B80000000000)) 
    mem_reg_i_29
       (.I0(mem_reg_1),
        .I1(mem_reg_2),
        .I2(mem_reg_3),
        .I3(mem_reg_i_67_n_3),
        .I4(mem_reg_4),
        .I5(DIBDI[3]),
        .O(p_1_in[27]));
  LUT6 #(
    .INIT(64'hB8B8B80000000000)) 
    mem_reg_i_30
       (.I0(mem_reg_1),
        .I1(mem_reg_2),
        .I2(mem_reg_3),
        .I3(mem_reg_i_67_n_3),
        .I4(mem_reg_4),
        .I5(DIBDI[2]),
        .O(p_1_in[26]));
  LUT6 #(
    .INIT(64'hB8B8B80000000000)) 
    mem_reg_i_31
       (.I0(mem_reg_1),
        .I1(mem_reg_2),
        .I2(mem_reg_3),
        .I3(mem_reg_i_67_n_3),
        .I4(mem_reg_4),
        .I5(DIBDI[1]),
        .O(p_1_in[25]));
  LUT6 #(
    .INIT(64'hB8B8B80000000000)) 
    mem_reg_i_32
       (.I0(mem_reg_1),
        .I1(mem_reg_2),
        .I2(mem_reg_3),
        .I3(mem_reg_i_67_n_3),
        .I4(mem_reg_4),
        .I5(DIBDI[0]),
        .O(p_1_in[24]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_3__1
       (.I0(s_axi_control_ARADDR[6]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(mem_reg_10[6]),
        .O(mem_reg_i_3__1_n_3));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_49
       (.I0(s_axi_control_WSTRB[3]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_6),
        .I3(\rdata_reg[5]_0 ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_output_r_be1[3]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_4__1
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(mem_reg_10[5]),
        .O(mem_reg_i_4__1_n_3));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_50
       (.I0(s_axi_control_WSTRB[2]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_6),
        .I3(\rdata_reg[5]_0 ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_output_r_be1[2]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_51
       (.I0(s_axi_control_WSTRB[1]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_6),
        .I3(\rdata_reg[5]_0 ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_output_r_be1[1]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_52
       (.I0(s_axi_control_WSTRB[0]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_6),
        .I3(\rdata_reg[5]_0 ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_output_r_be1[0]));
  CARRY4 mem_reg_i_57
       (.CI(mem_reg_i_72_n_3),
        .CO({NLW_mem_reg_i_57_CO_UNCONNECTED[3:2],CO,mem_reg_i_57_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_mem_reg_i_57_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,mem_reg_i_73_n_3,mem_reg_i_74_n_3}));
  LUT4 #(
    .INIT(16'hFFFB)) 
    mem_reg_i_59
       (.I0(mem_reg_7),
        .I1(mem_reg_8[0]),
        .I2(mem_reg_9),
        .I3(CO),
        .O(\cmp980_reg_374_reg[0] ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_5__1
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(mem_reg_10[4]),
        .O(mem_reg_i_5__1_n_3));
  LUT6 #(
    .INIT(64'h0800080808000000)) 
    mem_reg_i_67
       (.I0(mem_reg_5),
        .I1(\icmp_ln46_reg_391_reg[0] ),
        .I2(icmp_ln10_reg_109),
        .I3(int_output_r_q0[31]),
        .I4(p_reg_reg_0),
        .I5(int_output_r_q0[15]),
        .O(mem_reg_i_67_n_3));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_69
       (.I0(icmp_ln46_reg_391),
        .I1(mem_reg_8[2]),
        .O(\icmp_ln46_reg_391_reg[0] ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_6__1
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(mem_reg_10[3]),
        .O(mem_reg_i_6__1_n_3));
  LUT6 #(
    .INIT(64'hFF1DFFFFFFFFFFFF)) 
    mem_reg_i_71
       (.I0(int_output_r_q0[15]),
        .I1(p_reg_reg_0),
        .I2(int_output_r_q0[31]),
        .I3(icmp_ln10_reg_109),
        .I4(icmp_ln46_reg_391),
        .I5(mem_reg_8[2]),
        .O(mem_reg_0));
  CARRY4 mem_reg_i_72
       (.CI(1'b0),
        .CO({mem_reg_i_72_n_3,mem_reg_i_72_n_4,mem_reg_i_72_n_5,mem_reg_i_72_n_6}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_mem_reg_i_72_O_UNCONNECTED[3:0]),
        .S({mem_reg_i_76_n_3,mem_reg_i_77_n_3,mem_reg_i_78_n_3,mem_reg_i_79_n_3}));
  LUT2 #(
    .INIT(4'h9)) 
    mem_reg_i_73
       (.I0(mem_reg_i_57_0[15]),
        .I1(mem_reg_i_57_1[15]),
        .O(mem_reg_i_73_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mem_reg_i_74
       (.I0(mem_reg_i_57_1[14]),
        .I1(mem_reg_i_57_0[14]),
        .I2(mem_reg_i_57_1[13]),
        .I3(mem_reg_i_57_0[13]),
        .I4(mem_reg_i_57_0[12]),
        .I5(mem_reg_i_57_1[12]),
        .O(mem_reg_i_74_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mem_reg_i_76
       (.I0(mem_reg_i_57_1[11]),
        .I1(mem_reg_i_57_0[11]),
        .I2(mem_reg_i_57_1[9]),
        .I3(mem_reg_i_57_0[9]),
        .I4(mem_reg_i_57_0[10]),
        .I5(mem_reg_i_57_1[10]),
        .O(mem_reg_i_76_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mem_reg_i_77
       (.I0(mem_reg_i_57_0[6]),
        .I1(mem_reg_i_57_1[6]),
        .I2(mem_reg_i_57_1[8]),
        .I3(mem_reg_i_57_0[8]),
        .I4(mem_reg_i_57_1[7]),
        .I5(mem_reg_i_57_0[7]),
        .O(mem_reg_i_77_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mem_reg_i_78
       (.I0(mem_reg_i_57_0[3]),
        .I1(mem_reg_i_57_1[3]),
        .I2(mem_reg_i_57_1[5]),
        .I3(mem_reg_i_57_0[5]),
        .I4(mem_reg_i_57_1[4]),
        .I5(mem_reg_i_57_0[4]),
        .O(mem_reg_i_78_n_3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mem_reg_i_79
       (.I0(mem_reg_i_57_0[0]),
        .I1(mem_reg_i_57_1[0]),
        .I2(mem_reg_i_57_1[2]),
        .I3(mem_reg_i_57_0[2]),
        .I4(mem_reg_i_57_1[1]),
        .I5(mem_reg_i_57_0[1]),
        .O(mem_reg_i_79_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_7__1
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(mem_reg_10[2]),
        .O(mem_reg_i_7__1_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_8__1
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(mem_reg_10[1]),
        .O(mem_reg_i_8__1_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_9__1
       (.I0(s_axi_control_ARADDR[0]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(mem_reg_10[0]),
        .O(mem_reg_i_9__1_n_3));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_34
       (.I0(P[15]),
        .I1(mem_reg_8[1]),
        .I2(int_output_r_q0[31]),
        .I3(p_reg_reg_0),
        .I4(int_output_r_q0[15]),
        .O(p_reg_reg[15]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_35
       (.I0(P[14]),
        .I1(mem_reg_8[1]),
        .I2(int_output_r_q0[30]),
        .I3(p_reg_reg_0),
        .I4(int_output_r_q0[14]),
        .O(p_reg_reg[14]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_36
       (.I0(P[13]),
        .I1(mem_reg_8[1]),
        .I2(int_output_r_q0[29]),
        .I3(p_reg_reg_0),
        .I4(int_output_r_q0[13]),
        .O(p_reg_reg[13]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_37
       (.I0(P[12]),
        .I1(mem_reg_8[1]),
        .I2(int_output_r_q0[28]),
        .I3(p_reg_reg_0),
        .I4(int_output_r_q0[12]),
        .O(p_reg_reg[12]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_38
       (.I0(P[11]),
        .I1(mem_reg_8[1]),
        .I2(int_output_r_q0[27]),
        .I3(p_reg_reg_0),
        .I4(int_output_r_q0[11]),
        .O(p_reg_reg[11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_39
       (.I0(P[10]),
        .I1(mem_reg_8[1]),
        .I2(int_output_r_q0[26]),
        .I3(p_reg_reg_0),
        .I4(int_output_r_q0[10]),
        .O(p_reg_reg[10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_40
       (.I0(P[9]),
        .I1(mem_reg_8[1]),
        .I2(int_output_r_q0[25]),
        .I3(p_reg_reg_0),
        .I4(int_output_r_q0[9]),
        .O(p_reg_reg[9]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_41
       (.I0(P[8]),
        .I1(mem_reg_8[1]),
        .I2(int_output_r_q0[24]),
        .I3(p_reg_reg_0),
        .I4(int_output_r_q0[8]),
        .O(p_reg_reg[8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_42
       (.I0(P[7]),
        .I1(mem_reg_8[1]),
        .I2(int_output_r_q0[23]),
        .I3(p_reg_reg_0),
        .I4(int_output_r_q0[7]),
        .O(p_reg_reg[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_43
       (.I0(P[6]),
        .I1(mem_reg_8[1]),
        .I2(int_output_r_q0[22]),
        .I3(p_reg_reg_0),
        .I4(int_output_r_q0[6]),
        .O(p_reg_reg[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_44
       (.I0(P[5]),
        .I1(mem_reg_8[1]),
        .I2(int_output_r_q0[21]),
        .I3(p_reg_reg_0),
        .I4(int_output_r_q0[5]),
        .O(p_reg_reg[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_45
       (.I0(P[4]),
        .I1(mem_reg_8[1]),
        .I2(int_output_r_q0[20]),
        .I3(p_reg_reg_0),
        .I4(int_output_r_q0[4]),
        .O(p_reg_reg[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_46
       (.I0(P[3]),
        .I1(mem_reg_8[1]),
        .I2(int_output_r_q0[19]),
        .I3(p_reg_reg_0),
        .I4(int_output_r_q0[3]),
        .O(p_reg_reg[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_47
       (.I0(P[2]),
        .I1(mem_reg_8[1]),
        .I2(int_output_r_q0[18]),
        .I3(p_reg_reg_0),
        .I4(int_output_r_q0[2]),
        .O(p_reg_reg[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_48
       (.I0(P[1]),
        .I1(mem_reg_8[1]),
        .I2(int_output_r_q0[17]),
        .I3(p_reg_reg_0),
        .I4(int_output_r_q0[1]),
        .O(p_reg_reg[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_49
       (.I0(P[0]),
        .I1(mem_reg_8[1]),
        .I2(int_output_r_q0[16]),
        .I3(p_reg_reg_0),
        .I4(int_output_r_q0[0]),
        .O(p_reg_reg[0]));
  LUT6 #(
    .INIT(64'h00C5FFC500C500C5)) 
    \rdata[5]_i_1 
       (.I0(\rdata[5]_i_2_n_3 ),
        .I1(\rdata_reg[5] ),
        .I2(int_input_r_read),
        .I3(\rdata_reg[5]_0 ),
        .I4(\rdata_reg[5]_1 ),
        .I5(\rdata_reg[5]_2 ),
        .O(D));
  LUT5 #(
    .INIT(32'h50535F53)) 
    \rdata[5]_i_2 
       (.I0(int_output_r_q1),
        .I1(q1),
        .I2(int_output_r_read),
        .I3(int_bias_read),
        .I4(\rdata_reg[5]_3 ),
        .O(\rdata[5]_i_2_n_3 ));
endmodule

(* ORIG_REF_NAME = "nnlayer_control_s_axi_ram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_control_s_axi_ram__parameterized1
   (D,
    s_axi_control_ARVALID_0,
    mem_reg_0_0_3_0,
    q1,
    mem_reg_0_0_6_0,
    mem_reg_1_0_4_0,
    mem_reg_1_0_6_0,
    mem_reg_0_0_7_0,
    O,
    q0,
    int_input_r_read,
    DOADO,
    s_axi_control_ARVALID,
    rstate,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_WVALID,
    mem_reg_3_0_2_0,
    wstate,
    \rdata_reg[30] ,
    int_bias_read,
    int_output_r_read,
    \rdata_reg[30]_0 ,
    s_axi_control_ARADDR,
    Q,
    mem_reg_0_0_0_0,
    weightIndexAdded_fu_104_reg,
    ap_clk,
    mem_reg_1_0_1_0,
    mem_reg_2_0_3_0,
    mem_reg_3_0_5_0,
    ce0);
  output [4:0]D;
  output s_axi_control_ARVALID_0;
  output mem_reg_0_0_3_0;
  output [21:0]q1;
  output mem_reg_0_0_6_0;
  output mem_reg_1_0_4_0;
  output mem_reg_1_0_6_0;
  output mem_reg_0_0_7_0;
  output [0:0]O;
  output [31:0]q0;
  input int_input_r_read;
  input [4:0]DOADO;
  input s_axi_control_ARVALID;
  input [1:0]rstate;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
  input mem_reg_3_0_2_0;
  input [1:0]wstate;
  input [9:0]\rdata_reg[30] ;
  input int_bias_read;
  input int_output_r_read;
  input [9:0]\rdata_reg[30]_0 ;
  input [14:0]s_axi_control_ARADDR;
  input [14:0]Q;
  input [15:0]mem_reg_0_0_0_0;
  input [15:0]weightIndexAdded_fu_104_reg;
  input ap_clk;
  input mem_reg_1_0_1_0;
  input mem_reg_2_0_3_0;
  input mem_reg_3_0_5_0;
  input ce0;

  wire [4:0]D;
  wire [4:0]DOADO;
  wire [0:0]O;
  wire [14:0]Q;
  wire ap_clk;
  wire ce0;
  wire int_bias_read;
  wire int_input_r_read;
  wire int_output_r_read;
  wire [3:3]int_weights_be1;
  wire [30:3]int_weights_q1;
  wire [15:0]mem_reg_0_0_0_0;
  wire mem_reg_0_0_0_i_10_n_3;
  wire mem_reg_0_0_0_i_11_n_3;
  wire mem_reg_0_0_0_i_12_n_3;
  wire mem_reg_0_0_0_i_13_n_3;
  wire mem_reg_0_0_0_i_14_n_3;
  wire mem_reg_0_0_0_i_15_n_3;
  wire mem_reg_0_0_0_i_16_n_3;
  wire mem_reg_0_0_0_i_17_n_4;
  wire mem_reg_0_0_0_i_17_n_5;
  wire mem_reg_0_0_0_i_17_n_6;
  wire mem_reg_0_0_0_i_18_n_3;
  wire mem_reg_0_0_0_i_18_n_4;
  wire mem_reg_0_0_0_i_18_n_5;
  wire mem_reg_0_0_0_i_18_n_6;
  wire mem_reg_0_0_0_i_19_n_3;
  wire mem_reg_0_0_0_i_19_n_4;
  wire mem_reg_0_0_0_i_19_n_5;
  wire mem_reg_0_0_0_i_19_n_6;
  wire mem_reg_0_0_0_i_1_n_3;
  wire mem_reg_0_0_0_i_20_n_3;
  wire mem_reg_0_0_0_i_20_n_4;
  wire mem_reg_0_0_0_i_20_n_5;
  wire mem_reg_0_0_0_i_20_n_6;
  wire mem_reg_0_0_0_i_21_n_3;
  wire mem_reg_0_0_0_i_22_n_3;
  wire mem_reg_0_0_0_i_23_n_3;
  wire mem_reg_0_0_0_i_24_n_3;
  wire mem_reg_0_0_0_i_25_n_3;
  wire mem_reg_0_0_0_i_26_n_3;
  wire mem_reg_0_0_0_i_27_n_3;
  wire mem_reg_0_0_0_i_28_n_3;
  wire mem_reg_0_0_0_i_29_n_3;
  wire mem_reg_0_0_0_i_2_n_3;
  wire mem_reg_0_0_0_i_30_n_3;
  wire mem_reg_0_0_0_i_31_n_3;
  wire mem_reg_0_0_0_i_32_n_3;
  wire mem_reg_0_0_0_i_33_n_3;
  wire mem_reg_0_0_0_i_34_n_3;
  wire mem_reg_0_0_0_i_35_n_3;
  wire mem_reg_0_0_0_i_36_n_3;
  wire mem_reg_0_0_0_i_37_n_3;
  wire mem_reg_0_0_0_i_3_n_3;
  wire mem_reg_0_0_0_i_4_n_3;
  wire mem_reg_0_0_0_i_5_n_3;
  wire mem_reg_0_0_0_i_6_n_3;
  wire mem_reg_0_0_0_i_7_n_3;
  wire mem_reg_0_0_0_i_8_n_3;
  wire mem_reg_0_0_0_i_9_n_3;
  wire mem_reg_0_0_2_i_1_n_3;
  wire mem_reg_0_0_3_0;
  wire mem_reg_0_0_5_i_1_n_3;
  wire mem_reg_0_0_6_0;
  wire mem_reg_0_0_7_0;
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
  wire mem_reg_1_0_2_i_1_n_3;
  wire mem_reg_1_0_2_i_2_n_3;
  wire mem_reg_1_0_2_i_3_n_3;
  wire mem_reg_1_0_2_i_4_n_3;
  wire mem_reg_1_0_2_i_5_n_3;
  wire mem_reg_1_0_2_i_6_n_3;
  wire mem_reg_1_0_2_i_7_n_3;
  wire mem_reg_1_0_2_i_8_n_3;
  wire mem_reg_1_0_2_i_9_n_3;
  wire mem_reg_1_0_4_0;
  wire mem_reg_1_0_5_i_1_n_3;
  wire mem_reg_1_0_6_0;
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
  wire mem_reg_2_0_4_i_1_n_3;
  wire mem_reg_2_0_4_i_2_n_3;
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
  wire mem_reg_3_0_6_i_1_n_3;
  wire mem_reg_3_0_6_i_2_n_3;
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
  wire [21:0]q1;
  wire \rdata[16]_i_2_n_3 ;
  wire \rdata[17]_i_2_n_3 ;
  wire \rdata[25]_i_2_n_3 ;
  wire \rdata[28]_i_2_n_3 ;
  wire \rdata[30]_i_2_n_3 ;
  wire [9:0]\rdata_reg[30] ;
  wire [9:0]\rdata_reg[30]_0 ;
  wire [1:0]rstate;
  wire [14:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire s_axi_control_ARVALID_0;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [15:0]weightIndexAdded_fu_104_reg;
  wire [15:1]weights_address0;
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
  wire [3:3]NLW_mem_reg_0_0_0_i_17_CO_UNCONNECTED;
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
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_2_n_3,mem_reg_0_0_0_i_3_n_3,mem_reg_0_0_0_i_4_n_3,mem_reg_0_0_0_i_5_n_3,mem_reg_0_0_0_i_6_n_3,mem_reg_0_0_0_i_7_n_3,mem_reg_0_0_0_i_8_n_3,mem_reg_0_0_0_i_9_n_3,mem_reg_0_0_0_i_10_n_3,mem_reg_0_0_0_i_11_n_3,mem_reg_0_0_0_i_12_n_3,mem_reg_0_0_0_i_13_n_3,mem_reg_0_0_0_i_14_n_3,mem_reg_0_0_0_i_15_n_3,mem_reg_0_0_0_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .WEA({mem_reg_0_0_0_i_21_n_3,mem_reg_0_0_0_i_21_n_3,mem_reg_0_0_0_i_21_n_3,mem_reg_0_0_0_i_21_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'hFF101010)) 
    mem_reg_0_0_0_i_1
       (.I0(rstate[0]),
        .I1(rstate[1]),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_0_2_0),
        .I4(s_axi_control_WVALID),
        .O(mem_reg_0_0_0_i_1_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_0_0_0_i_10
       (.I0(s_axi_control_ARADDR[6]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[6]),
        .O(mem_reg_0_0_0_i_10_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_0_0_0_i_11
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[5]),
        .O(mem_reg_0_0_0_i_11_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_0_0_0_i_12
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[4]),
        .O(mem_reg_0_0_0_i_12_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_0_0_0_i_13
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[3]),
        .O(mem_reg_0_0_0_i_13_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_0_0_0_i_14
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[2]),
        .O(mem_reg_0_0_0_i_14_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_0_0_0_i_15
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[1]),
        .O(mem_reg_0_0_0_i_15_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_0_0_0_i_16
       (.I0(s_axi_control_ARADDR[0]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[0]),
        .O(mem_reg_0_0_0_i_16_n_3));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_0_0_0_i_17
       (.CI(mem_reg_0_0_0_i_18_n_3),
        .CO({NLW_mem_reg_0_0_0_i_17_CO_UNCONNECTED[3],mem_reg_0_0_0_i_17_n_4,mem_reg_0_0_0_i_17_n_5,mem_reg_0_0_0_i_17_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,mem_reg_0_0_0_0[14:12]}),
        .O(weights_address0[15:12]),
        .S({mem_reg_0_0_0_i_22_n_3,mem_reg_0_0_0_i_23_n_3,mem_reg_0_0_0_i_24_n_3,mem_reg_0_0_0_i_25_n_3}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_0_0_0_i_18
       (.CI(mem_reg_0_0_0_i_19_n_3),
        .CO({mem_reg_0_0_0_i_18_n_3,mem_reg_0_0_0_i_18_n_4,mem_reg_0_0_0_i_18_n_5,mem_reg_0_0_0_i_18_n_6}),
        .CYINIT(1'b0),
        .DI(mem_reg_0_0_0_0[11:8]),
        .O(weights_address0[11:8]),
        .S({mem_reg_0_0_0_i_26_n_3,mem_reg_0_0_0_i_27_n_3,mem_reg_0_0_0_i_28_n_3,mem_reg_0_0_0_i_29_n_3}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_0_0_0_i_19
       (.CI(mem_reg_0_0_0_i_20_n_3),
        .CO({mem_reg_0_0_0_i_19_n_3,mem_reg_0_0_0_i_19_n_4,mem_reg_0_0_0_i_19_n_5,mem_reg_0_0_0_i_19_n_6}),
        .CYINIT(1'b0),
        .DI(mem_reg_0_0_0_0[7:4]),
        .O(weights_address0[7:4]),
        .S({mem_reg_0_0_0_i_30_n_3,mem_reg_0_0_0_i_31_n_3,mem_reg_0_0_0_i_32_n_3,mem_reg_0_0_0_i_33_n_3}));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_0_0_0_i_2
       (.I0(s_axi_control_ARADDR[14]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[14]),
        .O(mem_reg_0_0_0_i_2_n_3));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_0_0_0_i_20
       (.CI(1'b0),
        .CO({mem_reg_0_0_0_i_20_n_3,mem_reg_0_0_0_i_20_n_4,mem_reg_0_0_0_i_20_n_5,mem_reg_0_0_0_i_20_n_6}),
        .CYINIT(1'b0),
        .DI(mem_reg_0_0_0_0[3:0]),
        .O({weights_address0[3:1],O}),
        .S({mem_reg_0_0_0_i_34_n_3,mem_reg_0_0_0_i_35_n_3,mem_reg_0_0_0_i_36_n_3,mem_reg_0_0_0_i_37_n_3}));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_0_0_0_i_21
       (.I0(s_axi_control_WSTRB[0]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_3_0_2_0),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(mem_reg_0_0_0_i_21_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_0_i_22
       (.I0(mem_reg_0_0_0_0[15]),
        .I1(weightIndexAdded_fu_104_reg[15]),
        .O(mem_reg_0_0_0_i_22_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_0_i_23
       (.I0(mem_reg_0_0_0_0[14]),
        .I1(weightIndexAdded_fu_104_reg[14]),
        .O(mem_reg_0_0_0_i_23_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_0_i_24
       (.I0(mem_reg_0_0_0_0[13]),
        .I1(weightIndexAdded_fu_104_reg[13]),
        .O(mem_reg_0_0_0_i_24_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_0_i_25
       (.I0(mem_reg_0_0_0_0[12]),
        .I1(weightIndexAdded_fu_104_reg[12]),
        .O(mem_reg_0_0_0_i_25_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_0_i_26
       (.I0(mem_reg_0_0_0_0[11]),
        .I1(weightIndexAdded_fu_104_reg[11]),
        .O(mem_reg_0_0_0_i_26_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_0_i_27
       (.I0(mem_reg_0_0_0_0[10]),
        .I1(weightIndexAdded_fu_104_reg[10]),
        .O(mem_reg_0_0_0_i_27_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_0_i_28
       (.I0(mem_reg_0_0_0_0[9]),
        .I1(weightIndexAdded_fu_104_reg[9]),
        .O(mem_reg_0_0_0_i_28_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_0_i_29
       (.I0(mem_reg_0_0_0_0[8]),
        .I1(weightIndexAdded_fu_104_reg[8]),
        .O(mem_reg_0_0_0_i_29_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_0_0_0_i_3
       (.I0(s_axi_control_ARADDR[13]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[13]),
        .O(mem_reg_0_0_0_i_3_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_0_i_30
       (.I0(mem_reg_0_0_0_0[7]),
        .I1(weightIndexAdded_fu_104_reg[7]),
        .O(mem_reg_0_0_0_i_30_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_0_i_31
       (.I0(mem_reg_0_0_0_0[6]),
        .I1(weightIndexAdded_fu_104_reg[6]),
        .O(mem_reg_0_0_0_i_31_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_0_i_32
       (.I0(mem_reg_0_0_0_0[5]),
        .I1(weightIndexAdded_fu_104_reg[5]),
        .O(mem_reg_0_0_0_i_32_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_0_i_33
       (.I0(mem_reg_0_0_0_0[4]),
        .I1(weightIndexAdded_fu_104_reg[4]),
        .O(mem_reg_0_0_0_i_33_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_0_i_34
       (.I0(mem_reg_0_0_0_0[3]),
        .I1(weightIndexAdded_fu_104_reg[3]),
        .O(mem_reg_0_0_0_i_34_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_0_i_35
       (.I0(mem_reg_0_0_0_0[2]),
        .I1(weightIndexAdded_fu_104_reg[2]),
        .O(mem_reg_0_0_0_i_35_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_0_i_36
       (.I0(mem_reg_0_0_0_0[1]),
        .I1(weightIndexAdded_fu_104_reg[1]),
        .O(mem_reg_0_0_0_i_36_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_0_i_37
       (.I0(mem_reg_0_0_0_0[0]),
        .I1(weightIndexAdded_fu_104_reg[0]),
        .O(mem_reg_0_0_0_i_37_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_0_0_0_i_4
       (.I0(s_axi_control_ARADDR[12]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[12]),
        .O(mem_reg_0_0_0_i_4_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_0_0_0_i_5
       (.I0(s_axi_control_ARADDR[11]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[11]),
        .O(mem_reg_0_0_0_i_5_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_0_0_0_i_6
       (.I0(s_axi_control_ARADDR[10]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[10]),
        .O(mem_reg_0_0_0_i_6_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_0_0_0_i_7
       (.I0(s_axi_control_ARADDR[9]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[9]),
        .O(mem_reg_0_0_0_i_7_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_0_0_0_i_8
       (.I0(s_axi_control_ARADDR[8]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[8]),
        .O(mem_reg_0_0_0_i_8_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_0_0_0_i_9
       (.I0(s_axi_control_ARADDR[7]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[7]),
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
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_2_n_3,mem_reg_0_0_0_i_3_n_3,mem_reg_0_0_0_i_4_n_3,mem_reg_0_0_0_i_5_n_3,mem_reg_0_0_0_i_6_n_3,mem_reg_0_0_0_i_7_n_3,mem_reg_0_0_0_i_8_n_3,mem_reg_0_0_0_i_9_n_3,mem_reg_0_0_0_i_10_n_3,mem_reg_0_0_0_i_11_n_3,mem_reg_0_0_0_i_12_n_3,mem_reg_0_0_0_i_13_n_3,mem_reg_0_0_0_i_14_n_3,mem_reg_0_0_0_i_15_n_3,mem_reg_0_0_0_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .WEA({mem_reg_0_0_0_i_21_n_3,mem_reg_0_0_0_i_21_n_3,mem_reg_0_0_0_i_21_n_3,mem_reg_0_0_0_i_21_n_3}),
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
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_2_n_3,mem_reg_0_0_0_i_3_n_3,mem_reg_0_0_0_i_4_n_3,mem_reg_0_0_0_i_5_n_3,mem_reg_0_0_0_i_6_n_3,mem_reg_0_0_0_i_7_n_3,mem_reg_0_0_0_i_8_n_3,mem_reg_0_0_0_i_9_n_3,mem_reg_0_0_0_i_10_n_3,mem_reg_0_0_0_i_11_n_3,mem_reg_0_0_0_i_12_n_3,mem_reg_0_0_0_i_13_n_3,mem_reg_0_0_0_i_14_n_3,mem_reg_0_0_0_i_15_n_3,mem_reg_0_0_0_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .WEA({mem_reg_0_0_2_i_1_n_3,mem_reg_0_0_2_i_1_n_3,mem_reg_0_0_0_i_21_n_3,mem_reg_0_0_0_i_21_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_0_0_2_i_1
       (.I0(s_axi_control_WSTRB[0]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_3_0_2_0),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
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
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_2_n_3,mem_reg_0_0_0_i_3_n_3,mem_reg_0_0_0_i_4_n_3,mem_reg_0_0_0_i_5_n_3,mem_reg_0_0_0_i_6_n_3,mem_reg_0_0_0_i_7_n_3,mem_reg_0_0_0_i_8_n_3,mem_reg_0_0_0_i_9_n_3,mem_reg_0_0_0_i_10_n_3,mem_reg_0_0_0_i_11_n_3,mem_reg_0_0_0_i_12_n_3,mem_reg_0_0_0_i_13_n_3,mem_reg_0_0_0_i_14_n_3,mem_reg_0_0_0_i_15_n_3,mem_reg_0_0_0_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .DOADO({NLW_mem_reg_0_0_3_DOADO_UNCONNECTED[31:1],int_weights_q1[3]}),
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
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_2_n_3,mem_reg_0_0_0_i_3_n_3,mem_reg_0_0_0_i_4_n_3,mem_reg_0_0_0_i_5_n_3,mem_reg_0_0_0_i_6_n_3,mem_reg_0_0_0_i_7_n_3,mem_reg_0_0_0_i_8_n_3,mem_reg_0_0_0_i_9_n_3,mem_reg_0_0_0_i_10_n_3,mem_reg_0_0_0_i_11_n_3,mem_reg_0_0_0_i_12_n_3,mem_reg_0_0_0_i_13_n_3,mem_reg_0_0_0_i_14_n_3,mem_reg_0_0_0_i_15_n_3,mem_reg_0_0_0_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .DOADO({NLW_mem_reg_0_0_4_DOADO_UNCONNECTED[31:1],q1[3]}),
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
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_2_n_3,mem_reg_0_0_0_i_3_n_3,mem_reg_0_0_0_i_4_n_3,mem_reg_0_0_0_i_5_n_3,mem_reg_0_0_0_i_6_n_3,mem_reg_0_0_0_i_7_n_3,mem_reg_0_0_0_i_8_n_3,mem_reg_0_0_0_i_9_n_3,mem_reg_0_0_0_i_10_n_3,mem_reg_0_0_0_i_11_n_3,mem_reg_0_0_0_i_12_n_3,mem_reg_0_0_0_i_13_n_3,mem_reg_0_0_0_i_14_n_3,mem_reg_0_0_0_i_15_n_3,mem_reg_0_0_0_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .DOADO({NLW_mem_reg_0_0_5_DOADO_UNCONNECTED[31:1],q1[4]}),
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
    .INIT(64'h0000000000800000)) 
    mem_reg_0_0_5_i_1
       (.I0(s_axi_control_WSTRB[0]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_3_0_2_0),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
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
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_2_n_3,mem_reg_0_0_0_i_3_n_3,mem_reg_0_0_0_i_4_n_3,mem_reg_0_0_0_i_5_n_3,mem_reg_0_0_0_i_6_n_3,mem_reg_0_0_0_i_7_n_3,mem_reg_0_0_0_i_8_n_3,mem_reg_0_0_0_i_9_n_3,mem_reg_0_0_0_i_10_n_3,mem_reg_0_0_0_i_11_n_3,mem_reg_0_0_0_i_12_n_3,mem_reg_0_0_0_i_13_n_3,mem_reg_0_0_0_i_14_n_3,mem_reg_0_0_0_i_15_n_3,mem_reg_0_0_0_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .DOADO({NLW_mem_reg_0_0_6_DOADO_UNCONNECTED[31:1],int_weights_q1[6]}),
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
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_2_n_3,mem_reg_0_0_0_i_3_n_3,mem_reg_0_0_0_i_4_n_3,mem_reg_0_0_0_i_5_n_3,mem_reg_0_0_0_i_6_n_3,mem_reg_0_0_0_i_7_n_3,mem_reg_0_0_0_i_8_n_3,mem_reg_0_0_0_i_9_n_3,mem_reg_0_0_0_i_10_n_3,mem_reg_0_0_0_i_11_n_3,mem_reg_0_0_0_i_12_n_3,mem_reg_0_0_0_i_13_n_3,mem_reg_0_0_0_i_14_n_3,mem_reg_0_0_0_i_15_n_3,mem_reg_0_0_0_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .DOADO({NLW_mem_reg_0_0_7_DOADO_UNCONNECTED[31:1],int_weights_q1[7]}),
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
    .INIT(64'h0000000000800000)) 
    mem_reg_0_0_7_i_1
       (.I0(s_axi_control_WSTRB[0]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_3_0_2_0),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
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
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_2_n_3,mem_reg_0_0_0_i_3_n_3,mem_reg_0_0_0_i_4_n_3,mem_reg_0_0_0_i_5_n_3,mem_reg_0_0_0_i_6_n_3,mem_reg_0_0_0_i_7_n_3,mem_reg_0_0_0_i_8_n_3,mem_reg_0_0_0_i_9_n_3,mem_reg_0_0_0_i_10_n_3,mem_reg_0_0_0_i_11_n_3,mem_reg_0_0_0_i_12_n_3,mem_reg_0_0_0_i_13_n_3,mem_reg_0_0_0_i_14_n_3,mem_reg_0_0_0_i_15_n_3,mem_reg_0_0_0_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .DOADO({NLW_mem_reg_1_0_0_DOADO_UNCONNECTED[31:1],q1[5]}),
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
    .INIT(64'h0000000000800000)) 
    mem_reg_1_0_0_i_1
       (.I0(s_axi_control_WSTRB[1]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_3_0_2_0),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
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
       (.ADDRARDADDR({1'b1,mem_reg_0_0_0_i_2_n_3,mem_reg_0_0_0_i_3_n_3,mem_reg_0_0_0_i_4_n_3,mem_reg_0_0_0_i_5_n_3,mem_reg_0_0_0_i_6_n_3,mem_reg_0_0_0_i_7_n_3,mem_reg_0_0_0_i_8_n_3,mem_reg_0_0_0_i_9_n_3,mem_reg_0_0_0_i_10_n_3,mem_reg_0_0_0_i_11_n_3,mem_reg_0_0_0_i_12_n_3,mem_reg_0_0_0_i_13_n_3,mem_reg_0_0_0_i_14_n_3,mem_reg_0_0_0_i_15_n_3,mem_reg_0_0_0_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .DOADO({NLW_mem_reg_1_0_1_DOADO_UNCONNECTED[31:1],q1[6]}),
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
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_2_n_3,mem_reg_1_0_2_i_3_n_3,mem_reg_1_0_2_i_4_n_3,mem_reg_1_0_2_i_5_n_3,mem_reg_1_0_2_i_6_n_3,mem_reg_1_0_2_i_7_n_3,mem_reg_1_0_2_i_8_n_3,mem_reg_1_0_2_i_9_n_3,mem_reg_1_0_2_i_10_n_3,mem_reg_1_0_2_i_11_n_3,mem_reg_1_0_2_i_12_n_3,mem_reg_1_0_2_i_13_n_3,mem_reg_1_0_2_i_14_n_3,mem_reg_1_0_2_i_15_n_3,mem_reg_1_0_2_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .DOADO({NLW_mem_reg_1_0_2_DOADO_UNCONNECTED[31:1],q1[7]}),
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
        .WEA({mem_reg_1_0_2_i_17_n_3,mem_reg_1_0_2_i_17_n_3,mem_reg_1_0_0_i_1_n_3,mem_reg_1_0_0_i_1_n_3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'hFF101010)) 
    mem_reg_1_0_2_i_1
       (.I0(rstate[0]),
        .I1(rstate[1]),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_0_2_0),
        .I4(s_axi_control_WVALID),
        .O(mem_reg_1_0_2_i_1_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_1_0_2_i_10
       (.I0(s_axi_control_ARADDR[6]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[6]),
        .O(mem_reg_1_0_2_i_10_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_1_0_2_i_11
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[5]),
        .O(mem_reg_1_0_2_i_11_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_1_0_2_i_12
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[4]),
        .O(mem_reg_1_0_2_i_12_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_1_0_2_i_13
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[3]),
        .O(mem_reg_1_0_2_i_13_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_1_0_2_i_14
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[2]),
        .O(mem_reg_1_0_2_i_14_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_1_0_2_i_15
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[1]),
        .O(mem_reg_1_0_2_i_15_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_1_0_2_i_16
       (.I0(s_axi_control_ARADDR[0]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[0]),
        .O(mem_reg_1_0_2_i_16_n_3));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_1_0_2_i_17
       (.I0(s_axi_control_WSTRB[1]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_3_0_2_0),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(mem_reg_1_0_2_i_17_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_1_0_2_i_2
       (.I0(s_axi_control_ARADDR[14]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[14]),
        .O(mem_reg_1_0_2_i_2_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_1_0_2_i_3
       (.I0(s_axi_control_ARADDR[13]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[13]),
        .O(mem_reg_1_0_2_i_3_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_1_0_2_i_4
       (.I0(s_axi_control_ARADDR[12]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[12]),
        .O(mem_reg_1_0_2_i_4_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_1_0_2_i_5
       (.I0(s_axi_control_ARADDR[11]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[11]),
        .O(mem_reg_1_0_2_i_5_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_1_0_2_i_6
       (.I0(s_axi_control_ARADDR[10]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[10]),
        .O(mem_reg_1_0_2_i_6_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_1_0_2_i_7
       (.I0(s_axi_control_ARADDR[9]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[9]),
        .O(mem_reg_1_0_2_i_7_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_1_0_2_i_8
       (.I0(s_axi_control_ARADDR[8]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[8]),
        .O(mem_reg_1_0_2_i_8_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_1_0_2_i_9
       (.I0(s_axi_control_ARADDR[7]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[7]),
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
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_2_n_3,mem_reg_1_0_2_i_3_n_3,mem_reg_1_0_2_i_4_n_3,mem_reg_1_0_2_i_5_n_3,mem_reg_1_0_2_i_6_n_3,mem_reg_1_0_2_i_7_n_3,mem_reg_1_0_2_i_8_n_3,mem_reg_1_0_2_i_9_n_3,mem_reg_1_0_2_i_10_n_3,mem_reg_1_0_2_i_11_n_3,mem_reg_1_0_2_i_12_n_3,mem_reg_1_0_2_i_13_n_3,mem_reg_1_0_2_i_14_n_3,mem_reg_1_0_2_i_15_n_3,mem_reg_1_0_2_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .DOADO({NLW_mem_reg_1_0_3_DOADO_UNCONNECTED[31:1],q1[8]}),
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
        .WEA({mem_reg_1_0_2_i_17_n_3,mem_reg_1_0_2_i_17_n_3,mem_reg_1_0_2_i_17_n_3,mem_reg_1_0_2_i_17_n_3}),
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
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_2_n_3,mem_reg_1_0_2_i_3_n_3,mem_reg_1_0_2_i_4_n_3,mem_reg_1_0_2_i_5_n_3,mem_reg_1_0_2_i_6_n_3,mem_reg_1_0_2_i_7_n_3,mem_reg_1_0_2_i_8_n_3,mem_reg_1_0_2_i_9_n_3,mem_reg_1_0_2_i_10_n_3,mem_reg_1_0_2_i_11_n_3,mem_reg_1_0_2_i_12_n_3,mem_reg_1_0_2_i_13_n_3,mem_reg_1_0_2_i_14_n_3,mem_reg_1_0_2_i_15_n_3,mem_reg_1_0_2_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .DOADO({NLW_mem_reg_1_0_4_DOADO_UNCONNECTED[31:1],int_weights_q1[12]}),
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
        .WEA({mem_reg_1_0_2_i_17_n_3,mem_reg_1_0_2_i_17_n_3,mem_reg_1_0_2_i_17_n_3,mem_reg_1_0_2_i_17_n_3}),
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
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_2_n_3,mem_reg_1_0_2_i_3_n_3,mem_reg_1_0_2_i_4_n_3,mem_reg_1_0_2_i_5_n_3,mem_reg_1_0_2_i_6_n_3,mem_reg_1_0_2_i_7_n_3,mem_reg_1_0_2_i_8_n_3,mem_reg_1_0_2_i_9_n_3,mem_reg_1_0_2_i_10_n_3,mem_reg_1_0_2_i_11_n_3,mem_reg_1_0_2_i_12_n_3,mem_reg_1_0_2_i_13_n_3,mem_reg_1_0_2_i_14_n_3,mem_reg_1_0_2_i_15_n_3,mem_reg_1_0_2_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .DOADO({NLW_mem_reg_1_0_5_DOADO_UNCONNECTED[31:1],q1[9]}),
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
    .INIT(64'h0000000000800000)) 
    mem_reg_1_0_5_i_1
       (.I0(s_axi_control_WSTRB[1]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_3_0_2_0),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
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
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_2_n_3,mem_reg_1_0_2_i_3_n_3,mem_reg_1_0_2_i_4_n_3,mem_reg_1_0_2_i_5_n_3,mem_reg_1_0_2_i_6_n_3,mem_reg_1_0_2_i_7_n_3,mem_reg_1_0_2_i_8_n_3,mem_reg_1_0_2_i_9_n_3,mem_reg_1_0_2_i_10_n_3,mem_reg_1_0_2_i_11_n_3,mem_reg_1_0_2_i_12_n_3,mem_reg_1_0_2_i_13_n_3,mem_reg_1_0_2_i_14_n_3,mem_reg_1_0_2_i_15_n_3,mem_reg_1_0_2_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .DOADO({NLW_mem_reg_1_0_6_DOADO_UNCONNECTED[31:1],int_weights_q1[14]}),
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
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_2_n_3,mem_reg_1_0_2_i_3_n_3,mem_reg_1_0_2_i_4_n_3,mem_reg_1_0_2_i_5_n_3,mem_reg_1_0_2_i_6_n_3,mem_reg_1_0_2_i_7_n_3,mem_reg_1_0_2_i_8_n_3,mem_reg_1_0_2_i_9_n_3,mem_reg_1_0_2_i_10_n_3,mem_reg_1_0_2_i_11_n_3,mem_reg_1_0_2_i_12_n_3,mem_reg_1_0_2_i_13_n_3,mem_reg_1_0_2_i_14_n_3,mem_reg_1_0_2_i_15_n_3,mem_reg_1_0_2_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .DOADO({NLW_mem_reg_1_0_7_DOADO_UNCONNECTED[31:1],q1[10]}),
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
    .INIT(64'h0000000000800000)) 
    mem_reg_1_0_7_i_1
       (.I0(s_axi_control_WSTRB[1]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_3_0_2_0),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
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
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_2_n_3,mem_reg_1_0_2_i_3_n_3,mem_reg_1_0_2_i_4_n_3,mem_reg_1_0_2_i_5_n_3,mem_reg_1_0_2_i_6_n_3,mem_reg_1_0_2_i_7_n_3,mem_reg_1_0_2_i_8_n_3,mem_reg_1_0_2_i_9_n_3,mem_reg_1_0_2_i_10_n_3,mem_reg_1_0_2_i_11_n_3,mem_reg_1_0_2_i_12_n_3,mem_reg_1_0_2_i_13_n_3,mem_reg_1_0_2_i_14_n_3,mem_reg_1_0_2_i_15_n_3,mem_reg_1_0_2_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .DOADO({NLW_mem_reg_2_0_0_DOADO_UNCONNECTED[31:1],int_weights_q1[16]}),
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
    .INIT(64'h0000000000800000)) 
    mem_reg_2_0_0_i_1
       (.I0(s_axi_control_WSTRB[2]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_3_0_2_0),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
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
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_2_n_3,mem_reg_1_0_2_i_3_n_3,mem_reg_1_0_2_i_4_n_3,mem_reg_1_0_2_i_5_n_3,mem_reg_1_0_2_i_6_n_3,mem_reg_1_0_2_i_7_n_3,mem_reg_1_0_2_i_8_n_3,mem_reg_1_0_2_i_9_n_3,mem_reg_1_0_2_i_10_n_3,mem_reg_1_0_2_i_11_n_3,mem_reg_1_0_2_i_12_n_3,mem_reg_1_0_2_i_13_n_3,mem_reg_1_0_2_i_14_n_3,mem_reg_1_0_2_i_15_n_3,mem_reg_1_0_2_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .DOADO({NLW_mem_reg_2_0_1_DOADO_UNCONNECTED[31:1],int_weights_q1[17]}),
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
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_2_n_3,mem_reg_1_0_2_i_3_n_3,mem_reg_1_0_2_i_4_n_3,mem_reg_1_0_2_i_5_n_3,mem_reg_1_0_2_i_6_n_3,mem_reg_1_0_2_i_7_n_3,mem_reg_1_0_2_i_8_n_3,mem_reg_1_0_2_i_9_n_3,mem_reg_1_0_2_i_10_n_3,mem_reg_1_0_2_i_11_n_3,mem_reg_1_0_2_i_12_n_3,mem_reg_1_0_2_i_13_n_3,mem_reg_1_0_2_i_14_n_3,mem_reg_1_0_2_i_15_n_3,mem_reg_1_0_2_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .DOADO({NLW_mem_reg_2_0_2_DOADO_UNCONNECTED[31:1],q1[11]}),
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
    .INIT(64'h0000000000800000)) 
    mem_reg_2_0_2_i_1
       (.I0(s_axi_control_WSTRB[2]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_3_0_2_0),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
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
       (.ADDRARDADDR({1'b1,mem_reg_1_0_2_i_2_n_3,mem_reg_1_0_2_i_3_n_3,mem_reg_1_0_2_i_4_n_3,mem_reg_1_0_2_i_5_n_3,mem_reg_1_0_2_i_6_n_3,mem_reg_1_0_2_i_7_n_3,mem_reg_1_0_2_i_8_n_3,mem_reg_1_0_2_i_9_n_3,mem_reg_1_0_2_i_10_n_3,mem_reg_1_0_2_i_11_n_3,mem_reg_1_0_2_i_12_n_3,mem_reg_1_0_2_i_13_n_3,mem_reg_1_0_2_i_14_n_3,mem_reg_1_0_2_i_15_n_3,mem_reg_1_0_2_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .DOADO({NLW_mem_reg_2_0_3_DOADO_UNCONNECTED[31:1],q1[12]}),
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
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_2_n_3,mem_reg_2_0_4_i_3_n_3,mem_reg_2_0_4_i_4_n_3,mem_reg_2_0_4_i_5_n_3,mem_reg_2_0_4_i_6_n_3,mem_reg_2_0_4_i_7_n_3,mem_reg_2_0_4_i_8_n_3,mem_reg_2_0_4_i_9_n_3,mem_reg_2_0_4_i_10_n_3,mem_reg_2_0_4_i_11_n_3,mem_reg_2_0_4_i_12_n_3,mem_reg_2_0_4_i_13_n_3,mem_reg_2_0_4_i_14_n_3,mem_reg_2_0_4_i_15_n_3,mem_reg_2_0_4_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .DOADO({NLW_mem_reg_2_0_4_DOADO_UNCONNECTED[31:1],q1[13]}),
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
    .INIT(32'hFF101010)) 
    mem_reg_2_0_4_i_1
       (.I0(rstate[0]),
        .I1(rstate[1]),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_0_2_0),
        .I4(s_axi_control_WVALID),
        .O(mem_reg_2_0_4_i_1_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_2_0_4_i_10
       (.I0(s_axi_control_ARADDR[6]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[6]),
        .O(mem_reg_2_0_4_i_10_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_2_0_4_i_11
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[5]),
        .O(mem_reg_2_0_4_i_11_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_2_0_4_i_12
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[4]),
        .O(mem_reg_2_0_4_i_12_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_2_0_4_i_13
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[3]),
        .O(mem_reg_2_0_4_i_13_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_2_0_4_i_14
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[2]),
        .O(mem_reg_2_0_4_i_14_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_2_0_4_i_15
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[1]),
        .O(mem_reg_2_0_4_i_15_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_2_0_4_i_16
       (.I0(s_axi_control_ARADDR[0]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[0]),
        .O(mem_reg_2_0_4_i_16_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_2_0_4_i_2
       (.I0(s_axi_control_ARADDR[14]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[14]),
        .O(mem_reg_2_0_4_i_2_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_2_0_4_i_3
       (.I0(s_axi_control_ARADDR[13]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[13]),
        .O(mem_reg_2_0_4_i_3_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_2_0_4_i_4
       (.I0(s_axi_control_ARADDR[12]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[12]),
        .O(mem_reg_2_0_4_i_4_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_2_0_4_i_5
       (.I0(s_axi_control_ARADDR[11]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[11]),
        .O(mem_reg_2_0_4_i_5_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_2_0_4_i_6
       (.I0(s_axi_control_ARADDR[10]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[10]),
        .O(mem_reg_2_0_4_i_6_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_2_0_4_i_7
       (.I0(s_axi_control_ARADDR[9]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[9]),
        .O(mem_reg_2_0_4_i_7_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_2_0_4_i_8
       (.I0(s_axi_control_ARADDR[8]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[8]),
        .O(mem_reg_2_0_4_i_8_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_2_0_4_i_9
       (.I0(s_axi_control_ARADDR[7]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[7]),
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
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_2_n_3,mem_reg_2_0_4_i_3_n_3,mem_reg_2_0_4_i_4_n_3,mem_reg_2_0_4_i_5_n_3,mem_reg_2_0_4_i_6_n_3,mem_reg_2_0_4_i_7_n_3,mem_reg_2_0_4_i_8_n_3,mem_reg_2_0_4_i_9_n_3,mem_reg_2_0_4_i_10_n_3,mem_reg_2_0_4_i_11_n_3,mem_reg_2_0_4_i_12_n_3,mem_reg_2_0_4_i_13_n_3,mem_reg_2_0_4_i_14_n_3,mem_reg_2_0_4_i_15_n_3,mem_reg_2_0_4_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .DOADO({NLW_mem_reg_2_0_5_DOADO_UNCONNECTED[31:1],q1[14]}),
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
    .INIT(64'h0000000000800000)) 
    mem_reg_2_0_5_i_1
       (.I0(s_axi_control_WSTRB[2]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_3_0_2_0),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
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
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_2_n_3,mem_reg_2_0_4_i_3_n_3,mem_reg_2_0_4_i_4_n_3,mem_reg_2_0_4_i_5_n_3,mem_reg_2_0_4_i_6_n_3,mem_reg_2_0_4_i_7_n_3,mem_reg_2_0_4_i_8_n_3,mem_reg_2_0_4_i_9_n_3,mem_reg_2_0_4_i_10_n_3,mem_reg_2_0_4_i_11_n_3,mem_reg_2_0_4_i_12_n_3,mem_reg_2_0_4_i_13_n_3,mem_reg_2_0_4_i_14_n_3,mem_reg_2_0_4_i_15_n_3,mem_reg_2_0_4_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .DOADO({NLW_mem_reg_2_0_6_DOADO_UNCONNECTED[31:1],q1[15]}),
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
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_2_n_3,mem_reg_2_0_4_i_3_n_3,mem_reg_2_0_4_i_4_n_3,mem_reg_2_0_4_i_5_n_3,mem_reg_2_0_4_i_6_n_3,mem_reg_2_0_4_i_7_n_3,mem_reg_2_0_4_i_8_n_3,mem_reg_2_0_4_i_9_n_3,mem_reg_2_0_4_i_10_n_3,mem_reg_2_0_4_i_11_n_3,mem_reg_2_0_4_i_12_n_3,mem_reg_2_0_4_i_13_n_3,mem_reg_2_0_4_i_14_n_3,mem_reg_2_0_4_i_15_n_3,mem_reg_2_0_4_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .DOADO({NLW_mem_reg_2_0_7_DOADO_UNCONNECTED[31:1],q1[16]}),
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
    .INIT(64'h0000000000800000)) 
    mem_reg_2_0_7_i_1
       (.I0(s_axi_control_WSTRB[2]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_3_0_2_0),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
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
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_2_n_3,mem_reg_2_0_4_i_3_n_3,mem_reg_2_0_4_i_4_n_3,mem_reg_2_0_4_i_5_n_3,mem_reg_2_0_4_i_6_n_3,mem_reg_2_0_4_i_7_n_3,mem_reg_2_0_4_i_8_n_3,mem_reg_2_0_4_i_9_n_3,mem_reg_2_0_4_i_10_n_3,mem_reg_2_0_4_i_11_n_3,mem_reg_2_0_4_i_12_n_3,mem_reg_2_0_4_i_13_n_3,mem_reg_2_0_4_i_14_n_3,mem_reg_2_0_4_i_15_n_3,mem_reg_2_0_4_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .DOADO({NLW_mem_reg_3_0_0_DOADO_UNCONNECTED[31:1],q1[17]}),
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
       (.I0(s_axi_control_WDATA[24]),
        .I1(int_weights_be1),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_3_0_0_i_2
       (.I0(s_axi_control_WSTRB[3]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_3_0_2_0),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(mem_reg_3_0_0_i_2_n_3));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_3_0_0_i_3
       (.I0(s_axi_control_WSTRB[3]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_3_0_2_0),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
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
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_2_n_3,mem_reg_2_0_4_i_3_n_3,mem_reg_2_0_4_i_4_n_3,mem_reg_2_0_4_i_5_n_3,mem_reg_2_0_4_i_6_n_3,mem_reg_2_0_4_i_7_n_3,mem_reg_2_0_4_i_8_n_3,mem_reg_2_0_4_i_9_n_3,mem_reg_2_0_4_i_10_n_3,mem_reg_2_0_4_i_11_n_3,mem_reg_2_0_4_i_12_n_3,mem_reg_2_0_4_i_13_n_3,mem_reg_2_0_4_i_14_n_3,mem_reg_2_0_4_i_15_n_3,mem_reg_2_0_4_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .DOADO({NLW_mem_reg_3_0_1_DOADO_UNCONNECTED[31:1],int_weights_q1[25]}),
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
       (.I0(s_axi_control_WDATA[25]),
        .I1(int_weights_be1),
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
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_2_n_3,mem_reg_2_0_4_i_3_n_3,mem_reg_2_0_4_i_4_n_3,mem_reg_2_0_4_i_5_n_3,mem_reg_2_0_4_i_6_n_3,mem_reg_2_0_4_i_7_n_3,mem_reg_2_0_4_i_8_n_3,mem_reg_2_0_4_i_9_n_3,mem_reg_2_0_4_i_10_n_3,mem_reg_2_0_4_i_11_n_3,mem_reg_2_0_4_i_12_n_3,mem_reg_2_0_4_i_13_n_3,mem_reg_2_0_4_i_14_n_3,mem_reg_2_0_4_i_15_n_3,mem_reg_2_0_4_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .DOADO({NLW_mem_reg_3_0_2_DOADO_UNCONNECTED[31:1],q1[18]}),
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
       (.I0(s_axi_control_WDATA[26]),
        .I1(int_weights_be1),
        .O(p_1_in[26]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_3_0_2_i_2
       (.I0(s_axi_control_WSTRB[3]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_3_0_2_0),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
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
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_2_n_3,mem_reg_2_0_4_i_3_n_3,mem_reg_2_0_4_i_4_n_3,mem_reg_2_0_4_i_5_n_3,mem_reg_2_0_4_i_6_n_3,mem_reg_2_0_4_i_7_n_3,mem_reg_2_0_4_i_8_n_3,mem_reg_2_0_4_i_9_n_3,mem_reg_2_0_4_i_10_n_3,mem_reg_2_0_4_i_11_n_3,mem_reg_2_0_4_i_12_n_3,mem_reg_2_0_4_i_13_n_3,mem_reg_2_0_4_i_14_n_3,mem_reg_2_0_4_i_15_n_3,mem_reg_2_0_4_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .DOADO({NLW_mem_reg_3_0_3_DOADO_UNCONNECTED[31:1],q1[19]}),
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
       (.I0(s_axi_control_WDATA[27]),
        .I1(int_weights_be1),
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
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_2_n_3,mem_reg_2_0_4_i_3_n_3,mem_reg_2_0_4_i_4_n_3,mem_reg_2_0_4_i_5_n_3,mem_reg_2_0_4_i_6_n_3,mem_reg_2_0_4_i_7_n_3,mem_reg_2_0_4_i_8_n_3,mem_reg_2_0_4_i_9_n_3,mem_reg_2_0_4_i_10_n_3,mem_reg_2_0_4_i_11_n_3,mem_reg_2_0_4_i_12_n_3,mem_reg_2_0_4_i_13_n_3,mem_reg_2_0_4_i_14_n_3,mem_reg_2_0_4_i_15_n_3,mem_reg_2_0_4_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .DOADO({NLW_mem_reg_3_0_4_DOADO_UNCONNECTED[31:1],int_weights_q1[28]}),
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
       (.I0(s_axi_control_WDATA[28]),
        .I1(int_weights_be1),
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
       (.ADDRARDADDR({1'b1,mem_reg_2_0_4_i_2_n_3,mem_reg_2_0_4_i_3_n_3,mem_reg_2_0_4_i_4_n_3,mem_reg_2_0_4_i_5_n_3,mem_reg_2_0_4_i_6_n_3,mem_reg_2_0_4_i_7_n_3,mem_reg_2_0_4_i_8_n_3,mem_reg_2_0_4_i_9_n_3,mem_reg_2_0_4_i_10_n_3,mem_reg_2_0_4_i_11_n_3,mem_reg_2_0_4_i_12_n_3,mem_reg_2_0_4_i_13_n_3,mem_reg_2_0_4_i_14_n_3,mem_reg_2_0_4_i_15_n_3,mem_reg_2_0_4_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .DOADO({NLW_mem_reg_3_0_5_DOADO_UNCONNECTED[31:1],q1[20]}),
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
       (.I0(s_axi_control_WDATA[29]),
        .I1(int_weights_be1),
        .O(p_1_in[29]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_3_0_5_i_2
       (.I0(s_axi_control_WSTRB[3]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_3_0_2_0),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
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
       (.ADDRARDADDR({1'b1,mem_reg_3_0_6_i_2_n_3,mem_reg_3_0_6_i_3_n_3,mem_reg_3_0_6_i_4_n_3,mem_reg_3_0_6_i_5_n_3,mem_reg_3_0_6_i_6_n_3,mem_reg_3_0_6_i_7_n_3,mem_reg_3_0_6_i_8_n_3,mem_reg_3_0_6_i_9_n_3,mem_reg_3_0_6_i_10_n_3,mem_reg_3_0_6_i_11_n_3,mem_reg_3_0_6_i_12_n_3,mem_reg_3_0_6_i_13_n_3,mem_reg_3_0_6_i_14_n_3,mem_reg_3_0_6_i_15_n_3,mem_reg_3_0_6_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .DOADO({NLW_mem_reg_3_0_6_DOADO_UNCONNECTED[31:1],int_weights_q1[30]}),
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
    .INIT(32'hFF101010)) 
    mem_reg_3_0_6_i_1
       (.I0(rstate[0]),
        .I1(rstate[1]),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_0_2_0),
        .I4(s_axi_control_WVALID),
        .O(mem_reg_3_0_6_i_1_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_3_0_6_i_10
       (.I0(s_axi_control_ARADDR[6]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[6]),
        .O(mem_reg_3_0_6_i_10_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_3_0_6_i_11
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[5]),
        .O(mem_reg_3_0_6_i_11_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_3_0_6_i_12
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[4]),
        .O(mem_reg_3_0_6_i_12_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_3_0_6_i_13
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[3]),
        .O(mem_reg_3_0_6_i_13_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_3_0_6_i_14
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[2]),
        .O(mem_reg_3_0_6_i_14_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_3_0_6_i_15
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[1]),
        .O(mem_reg_3_0_6_i_15_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_3_0_6_i_16
       (.I0(s_axi_control_ARADDR[0]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[0]),
        .O(mem_reg_3_0_6_i_16_n_3));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_0_6_i_17
       (.I0(s_axi_control_WDATA[30]),
        .I1(int_weights_be1),
        .O(p_1_in[30]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_3_0_6_i_2
       (.I0(s_axi_control_ARADDR[14]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[14]),
        .O(mem_reg_3_0_6_i_2_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_3_0_6_i_3
       (.I0(s_axi_control_ARADDR[13]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[13]),
        .O(mem_reg_3_0_6_i_3_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_3_0_6_i_4
       (.I0(s_axi_control_ARADDR[12]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[12]),
        .O(mem_reg_3_0_6_i_4_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_3_0_6_i_5
       (.I0(s_axi_control_ARADDR[11]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[11]),
        .O(mem_reg_3_0_6_i_5_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_3_0_6_i_6
       (.I0(s_axi_control_ARADDR[10]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[10]),
        .O(mem_reg_3_0_6_i_6_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_3_0_6_i_7
       (.I0(s_axi_control_ARADDR[9]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[9]),
        .O(mem_reg_3_0_6_i_7_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_3_0_6_i_8
       (.I0(s_axi_control_ARADDR[8]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[8]),
        .O(mem_reg_3_0_6_i_8_n_3));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_3_0_6_i_9
       (.I0(s_axi_control_ARADDR[7]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(Q[7]),
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
       (.ADDRARDADDR({1'b1,mem_reg_3_0_6_i_2_n_3,mem_reg_3_0_6_i_3_n_3,mem_reg_3_0_6_i_4_n_3,mem_reg_3_0_6_i_5_n_3,mem_reg_3_0_6_i_6_n_3,mem_reg_3_0_6_i_7_n_3,mem_reg_3_0_6_i_8_n_3,mem_reg_3_0_6_i_9_n_3,mem_reg_3_0_6_i_10_n_3,mem_reg_3_0_6_i_11_n_3,mem_reg_3_0_6_i_12_n_3,mem_reg_3_0_6_i_13_n_3,mem_reg_3_0_6_i_14_n_3,mem_reg_3_0_6_i_15_n_3,mem_reg_3_0_6_i_16_n_3}),
        .ADDRBWRADDR({1'b1,weights_address0}),
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
        .DOADO({NLW_mem_reg_3_0_7_DOADO_UNCONNECTED[31:1],q1[21]}),
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
       (.I0(s_axi_control_WDATA[31]),
        .I1(int_weights_be1),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_3_0_7_i_2
       (.I0(s_axi_control_WSTRB[3]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_3_0_2_0),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(mem_reg_3_0_7_i_2_n_3));
  LUT6 #(
    .INIT(64'hFCFFFCCCFCEEFCEE)) 
    \rdata[12]_i_3 
       (.I0(int_weights_q1[12]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [3]),
        .I3(int_output_r_read),
        .I4(\rdata_reg[30] [3]),
        .I5(int_bias_read),
        .O(mem_reg_1_0_4_0));
  LUT6 #(
    .INIT(64'hFFFFFFCAFFFF00CA)) 
    \rdata[14]_i_3 
       (.I0(int_weights_q1[14]),
        .I1(\rdata_reg[30] [4]),
        .I2(int_bias_read),
        .I3(int_output_r_read),
        .I4(int_input_r_read),
        .I5(\rdata_reg[30]_0 [4]),
        .O(mem_reg_1_0_6_0));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[16]_i_1 
       (.I0(\rdata[16]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(DOADO[0]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFCFFFCCCFCEEFCEE)) 
    \rdata[16]_i_2 
       (.I0(int_weights_q1[16]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [5]),
        .I3(int_output_r_read),
        .I4(\rdata_reg[30] [5]),
        .I5(int_bias_read),
        .O(\rdata[16]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[17]_i_1 
       (.I0(\rdata[17]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(DOADO[1]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFCFFFCCCFCEEFCEE)) 
    \rdata[17]_i_2 
       (.I0(int_weights_q1[17]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [6]),
        .I3(int_output_r_read),
        .I4(\rdata_reg[30] [6]),
        .I5(int_bias_read),
        .O(\rdata[17]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[25]_i_1 
       (.I0(\rdata[25]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(DOADO[2]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFCFFFCCCFCEEFCEE)) 
    \rdata[25]_i_2 
       (.I0(int_weights_q1[25]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [7]),
        .I3(int_output_r_read),
        .I4(\rdata_reg[30] [7]),
        .I5(int_bias_read),
        .O(\rdata[25]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[28]_i_1 
       (.I0(\rdata[28]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(DOADO[3]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFCFFFCCCFCEEFCEE)) 
    \rdata[28]_i_2 
       (.I0(int_weights_q1[28]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [8]),
        .I3(int_output_r_read),
        .I4(\rdata_reg[30] [8]),
        .I5(int_bias_read),
        .O(\rdata[28]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A200A2)) 
    \rdata[30]_i_1 
       (.I0(\rdata[30]_i_2_n_3 ),
        .I1(int_input_r_read),
        .I2(DOADO[4]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFCFFFCCCFCEEFCEE)) 
    \rdata[30]_i_2 
       (.I0(int_weights_q1[30]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [9]),
        .I3(int_output_r_read),
        .I4(\rdata_reg[30] [9]),
        .I5(int_bias_read),
        .O(\rdata[30]_i_2_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \rdata[31]_i_3 
       (.I0(s_axi_control_ARVALID),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .O(s_axi_control_ARVALID_0));
  LUT5 #(
    .INIT(32'h0035FF35)) 
    \rdata[3]_i_4 
       (.I0(int_weights_q1[3]),
        .I1(\rdata_reg[30] [0]),
        .I2(int_bias_read),
        .I3(int_output_r_read),
        .I4(\rdata_reg[30]_0 [0]),
        .O(mem_reg_0_0_3_0));
  LUT6 #(
    .INIT(64'hFFFFFFCAFFFF00CA)) 
    \rdata[6]_i_2 
       (.I0(int_weights_q1[6]),
        .I1(\rdata_reg[30] [1]),
        .I2(int_bias_read),
        .I3(int_output_r_read),
        .I4(int_input_r_read),
        .I5(\rdata_reg[30]_0 [1]),
        .O(mem_reg_0_0_6_0));
  LUT5 #(
    .INIT(32'hCCF0CCAA)) 
    \rdata[7]_i_4 
       (.I0(int_weights_q1[7]),
        .I1(\rdata_reg[30]_0 [2]),
        .I2(\rdata_reg[30] [2]),
        .I3(int_output_r_read),
        .I4(int_bias_read),
        .O(mem_reg_0_0_7_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_flow_control_loop_pipe_sequential_init
   (grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg,
    SR,
    E,
    icmp_ln32_fu_87_p2_carry__0,
    grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg_0,
    S,
    D,
    ap_sig_allocacmp_outNeurons_1,
    \numOfOutNeurons_read_reg_338_reg[15] ,
    ap_loop_init_int_reg_0,
    \outNeurons_fu_42_reg[4] ,
    \outNeurons_fu_42_reg[7] ,
    grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg_1,
    \outNeurons_fu_42_reg[0] ,
    ap_rst_n_inv,
    ap_clk,
    CO,
    grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg,
    ap_rst_n,
    ap_NS_fsm18_out,
    Q,
    icmp_ln32_fu_87_p2_carry__0_0,
    \outNeurons_fu_42_reg[15] ,
    \int_bias_shift0_reg[0] );
  output grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg;
  output [0:0]SR;
  output [0:0]E;
  output [0:0]icmp_ln32_fu_87_p2_carry__0;
  output [0:0]grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg_0;
  output [3:0]S;
  output [7:0]D;
  output [7:0]ap_sig_allocacmp_outNeurons_1;
  output [1:0]\numOfOutNeurons_read_reg_338_reg[15] ;
  output [0:0]ap_loop_init_int_reg_0;
  output [3:0]\outNeurons_fu_42_reg[4] ;
  output [2:0]\outNeurons_fu_42_reg[7] ;
  output grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg_1;
  output \outNeurons_fu_42_reg[0] ;
  input ap_rst_n_inv;
  input ap_clk;
  input [0:0]CO;
  input grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg;
  input ap_rst_n;
  input ap_NS_fsm18_out;
  input [0:0]Q;
  input [15:0]icmp_ln32_fu_87_p2_carry__0_0;
  input [15:0]\outNeurons_fu_42_reg[15] ;
  input \int_bias_shift0_reg[0] ;

  wire [0:0]CO;
  wire [7:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire ap_NS_fsm18_out;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1_n_3;
  wire [0:0]ap_loop_init_int_reg_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [7:0]ap_sig_allocacmp_outNeurons_1;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg;
  wire [0:0]grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg_0;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg_1;
  wire [0:0]icmp_ln32_fu_87_p2_carry__0;
  wire [15:0]icmp_ln32_fu_87_p2_carry__0_0;
  wire icmp_ln32_fu_87_p2_carry__0_i_3_n_3;
  wire icmp_ln32_fu_87_p2_carry_i_5_n_3;
  wire icmp_ln32_fu_87_p2_carry_i_6_n_3;
  wire \int_bias_shift0_reg[0] ;
  wire [1:0]\numOfOutNeurons_read_reg_338_reg[15] ;
  wire \outNeurons_fu_42_reg[0] ;
  wire [15:0]\outNeurons_fu_42_reg[15] ;
  wire [3:0]\outNeurons_fu_42_reg[4] ;
  wire [2:0]\outNeurons_fu_42_reg[7] ;

  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hBABFAAAA)) 
    \ap_CS_fsm[1]_i_1__0 
       (.I0(ap_NS_fsm18_out),
        .I1(CO),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .I3(ap_done_cache),
        .I4(Q),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ap_done_cache_i_1__0
       (.I0(CO),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .I2(ap_done_cache),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hBBF3)) 
    ap_loop_init_int_i_1
       (.I0(CO),
        .I1(ap_rst_n),
        .I2(ap_loop_init_int),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .O(ap_loop_init_int_i_1_n_3));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1_n_3),
        .Q(ap_loop_init_int),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_i_1
       (.I0(CO),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .I2(ap_NS_fsm18_out),
        .O(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg_1));
  LUT4 #(
    .INIT(16'h6A55)) 
    icmp_ln32_fu_87_p2_carry__0_i_1
       (.I0(icmp_ln32_fu_87_p2_carry__0_0[15]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\outNeurons_fu_42_reg[15] [15]),
        .O(\numOfOutNeurons_read_reg_338_reg[15] [1]));
  LUT5 #(
    .INIT(32'h0888A222)) 
    icmp_ln32_fu_87_p2_carry__0_i_2
       (.I0(icmp_ln32_fu_87_p2_carry__0_i_3_n_3),
        .I1(\outNeurons_fu_42_reg[15] [12]),
        .I2(ap_loop_init_int),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .I4(icmp_ln32_fu_87_p2_carry__0_0[12]),
        .O(\numOfOutNeurons_read_reg_338_reg[15] [0]));
  LUT6 #(
    .INIT(64'h0090909033090909)) 
    icmp_ln32_fu_87_p2_carry__0_i_3
       (.I0(\outNeurons_fu_42_reg[15] [14]),
        .I1(icmp_ln32_fu_87_p2_carry__0_0[14]),
        .I2(\outNeurons_fu_42_reg[15] [13]),
        .I3(ap_loop_init_int),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .I5(icmp_ln32_fu_87_p2_carry__0_0[13]),
        .O(icmp_ln32_fu_87_p2_carry__0_i_3_n_3));
  LUT5 #(
    .INIT(32'h0888A222)) 
    icmp_ln32_fu_87_p2_carry_i_1
       (.I0(icmp_ln32_fu_87_p2_carry_i_5_n_3),
        .I1(\outNeurons_fu_42_reg[15] [9]),
        .I2(ap_loop_init_int),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .I4(icmp_ln32_fu_87_p2_carry__0_0[9]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h0888A222)) 
    icmp_ln32_fu_87_p2_carry_i_2
       (.I0(icmp_ln32_fu_87_p2_carry_i_6_n_3),
        .I1(\outNeurons_fu_42_reg[15] [6]),
        .I2(ap_loop_init_int),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .I4(icmp_ln32_fu_87_p2_carry__0_0[6]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln32_fu_87_p2_carry_i_3
       (.I0(icmp_ln32_fu_87_p2_carry__0_0[4]),
        .I1(D[4]),
        .I2(icmp_ln32_fu_87_p2_carry__0_0[5]),
        .I3(D[5]),
        .I4(D[3]),
        .I5(icmp_ln32_fu_87_p2_carry__0_0[3]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln32_fu_87_p2_carry_i_4
       (.I0(D[0]),
        .I1(icmp_ln32_fu_87_p2_carry__0_0[0]),
        .I2(icmp_ln32_fu_87_p2_carry__0_0[1]),
        .I3(D[1]),
        .I4(icmp_ln32_fu_87_p2_carry__0_0[2]),
        .I5(D[2]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h0090909033090909)) 
    icmp_ln32_fu_87_p2_carry_i_5
       (.I0(\outNeurons_fu_42_reg[15] [11]),
        .I1(icmp_ln32_fu_87_p2_carry__0_0[11]),
        .I2(\outNeurons_fu_42_reg[15] [10]),
        .I3(ap_loop_init_int),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .I5(icmp_ln32_fu_87_p2_carry__0_0[10]),
        .O(icmp_ln32_fu_87_p2_carry_i_5_n_3));
  LUT6 #(
    .INIT(64'h0090909033090909)) 
    icmp_ln32_fu_87_p2_carry_i_6
       (.I0(\outNeurons_fu_42_reg[15] [8]),
        .I1(icmp_ln32_fu_87_p2_carry__0_0[8]),
        .I2(\outNeurons_fu_42_reg[15] [7]),
        .I3(ap_loop_init_int),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .I5(icmp_ln32_fu_87_p2_carry__0_0[7]),
        .O(icmp_ln32_fu_87_p2_carry_i_6_n_3));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \int_bias_shift0[0]_i_1 
       (.I0(\outNeurons_fu_42_reg[15] [0]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .I3(\int_bias_shift0_reg[0] ),
        .O(\outNeurons_fu_42_reg[0] ));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_10__1
       (.I0(\outNeurons_fu_42_reg[15] [6]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .O(D[6]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_11__1
       (.I0(\outNeurons_fu_42_reg[15] [5]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .O(D[5]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_12__1
       (.I0(\outNeurons_fu_42_reg[15] [4]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .O(D[4]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_13__1
       (.I0(\outNeurons_fu_42_reg[15] [3]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .O(D[3]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_14__1
       (.I0(\outNeurons_fu_42_reg[15] [2]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .O(D[2]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_15__1
       (.I0(\outNeurons_fu_42_reg[15] [1]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .O(D[1]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_9__0
       (.I0(\outNeurons_fu_42_reg[15] [7]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .O(D[7]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry__0_i_1
       (.I0(\outNeurons_fu_42_reg[15] [8]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .O(ap_sig_allocacmp_outNeurons_1[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry__0_i_2
       (.I0(\outNeurons_fu_42_reg[15] [7]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .O(\outNeurons_fu_42_reg[7] [2]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry__0_i_3
       (.I0(\outNeurons_fu_42_reg[15] [6]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .O(\outNeurons_fu_42_reg[7] [1]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry__0_i_4
       (.I0(\outNeurons_fu_42_reg[15] [5]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .O(\outNeurons_fu_42_reg[7] [0]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry__1_i_1
       (.I0(\outNeurons_fu_42_reg[15] [12]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .O(ap_sig_allocacmp_outNeurons_1[4]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry__1_i_2
       (.I0(\outNeurons_fu_42_reg[15] [11]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .O(ap_sig_allocacmp_outNeurons_1[3]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry__1_i_3
       (.I0(\outNeurons_fu_42_reg[15] [10]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .O(ap_sig_allocacmp_outNeurons_1[2]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry__1_i_4
       (.I0(\outNeurons_fu_42_reg[15] [9]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .O(ap_sig_allocacmp_outNeurons_1[1]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry__2_i_1
       (.I0(\outNeurons_fu_42_reg[15] [15]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .O(ap_sig_allocacmp_outNeurons_1[7]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry__2_i_2
       (.I0(\outNeurons_fu_42_reg[15] [14]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .O(ap_sig_allocacmp_outNeurons_1[6]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry__2_i_3
       (.I0(\outNeurons_fu_42_reg[15] [13]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .O(ap_sig_allocacmp_outNeurons_1[5]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry_i_1
       (.I0(\outNeurons_fu_42_reg[15] [4]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .O(\outNeurons_fu_42_reg[4] [3]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry_i_2
       (.I0(\outNeurons_fu_42_reg[15] [3]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .O(\outNeurons_fu_42_reg[4] [2]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry_i_3
       (.I0(\outNeurons_fu_42_reg[15] [2]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .O(\outNeurons_fu_42_reg[4] [1]));
  LUT3 #(
    .INIT(8'h2A)) 
    outNeurons_2_fu_93_p2_carry_i_4
       (.I0(\outNeurons_fu_42_reg[15] [1]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .O(\outNeurons_fu_42_reg[4] [0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \outNeurons_fu_42[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\outNeurons_fu_42_reg[15] [0]),
        .O(ap_loop_init_int_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \outNeurons_fu_42[15]_i_1 
       (.I0(ap_loop_init_int),
        .I1(CO),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \outNeurons_fu_42[15]_i_2 
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .I1(CO),
        .O(E));
  LUT3 #(
    .INIT(8'h2A)) 
    \zext_ln33_reg_119[0]_i_1 
       (.I0(\outNeurons_fu_42_reg[15] [0]),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .O(D[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \zext_ln33_reg_119[7]_i_1 
       (.I0(CO),
        .O(icmp_ln32_fu_87_p2_carry__0));
endmodule

(* ORIG_REF_NAME = "nnlayer_flow_control_loop_pipe_sequential_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_flow_control_loop_pipe_sequential_init_0
   (D,
    \icmp_ln32_reg_351_reg[0] ,
    \icmp_ln46_reg_391_reg[0] ,
    ap_enable_reg_pp0_iter0_reg_reg,
    E,
    \i_fu_46_reg[7] ,
    ADDRBWRADDR,
    i_2_fu_78_p2,
    WEBWE,
    \cmp980_reg_374_reg[0] ,
    \output_r_addr_reg_386_reg[0] ,
    \ap_CS_fsm_reg[2] ,
    \ap_CS_fsm_reg[0] ,
    \ap_CS_fsm_reg[0]_0 ,
    \i_fu_46_reg[4] ,
    \i_fu_46_reg[2] ,
    ap_rst_n_inv,
    ap_clk,
    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg,
    Q,
    ap_enable_reg_pp0_iter1,
    \ap_CS_fsm_reg[9] ,
    CO,
    \ap_CS_fsm_reg[9]_0 ,
    icmp_ln46_reg_391,
    ap_enable_reg_pp0_iter0_reg,
    ap_rst_n,
    \i_fu_46_reg[8] ,
    \i_fu_46_reg[8]_0 ,
    \i_fu_46_reg[5] ,
    mem_reg,
    \int_output_r_shift0_reg[0] ,
    mem_reg_0,
    mem_reg_1,
    mem_reg_2,
    mem_reg_3,
    mem_reg_4,
    \i_fu_46_reg[8]_1 ,
    \i_fu_46_reg[4]_0 ,
    \i_fu_46_reg[3] ,
    \i_fu_46_reg[3]_0 ,
    \i_fu_46_reg[3]_1 ,
    \i_fu_46_reg[3]_2 ,
    mem_reg_5,
    mem_reg_6,
    mem_reg_7,
    mem_reg_8,
    output_r_ce0,
    \int_output_r_shift0_reg[0]_0 ,
    icmp_ln46_fu_249_p2,
    icmp_ln10_reg_109);
  output [1:0]D;
  output [0:0]\icmp_ln32_reg_351_reg[0] ;
  output \icmp_ln46_reg_391_reg[0] ;
  output ap_enable_reg_pp0_iter0_reg_reg;
  output [0:0]E;
  output [7:0]\i_fu_46_reg[7] ;
  output [6:0]ADDRBWRADDR;
  output [6:0]i_2_fu_78_p2;
  output [1:0]WEBWE;
  output \cmp980_reg_374_reg[0] ;
  output \output_r_addr_reg_386_reg[0] ;
  output \ap_CS_fsm_reg[2] ;
  output \ap_CS_fsm_reg[0] ;
  output \ap_CS_fsm_reg[0]_0 ;
  output \i_fu_46_reg[4] ;
  output \i_fu_46_reg[2] ;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg;
  input [1:0]Q;
  input ap_enable_reg_pp0_iter1;
  input \ap_CS_fsm_reg[9] ;
  input [0:0]CO;
  input [1:0]\ap_CS_fsm_reg[9]_0 ;
  input icmp_ln46_reg_391;
  input ap_enable_reg_pp0_iter0_reg;
  input ap_rst_n;
  input \i_fu_46_reg[8] ;
  input \i_fu_46_reg[8]_0 ;
  input \i_fu_46_reg[5] ;
  input [7:0]mem_reg;
  input \int_output_r_shift0_reg[0] ;
  input mem_reg_0;
  input [7:0]mem_reg_1;
  input [7:0]mem_reg_2;
  input mem_reg_3;
  input [7:0]mem_reg_4;
  input \i_fu_46_reg[8]_1 ;
  input \i_fu_46_reg[4]_0 ;
  input \i_fu_46_reg[3] ;
  input \i_fu_46_reg[3]_0 ;
  input \i_fu_46_reg[3]_1 ;
  input \i_fu_46_reg[3]_2 ;
  input mem_reg_5;
  input mem_reg_6;
  input mem_reg_7;
  input mem_reg_8;
  input output_r_ce0;
  input \int_output_r_shift0_reg[0]_0 ;
  input icmp_ln46_fu_249_p2;
  input icmp_ln10_reg_109;

  wire [6:0]ADDRBWRADDR;
  wire [0:0]CO;
  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [1:0]WEBWE;
  wire \ap_CS_fsm[1]_i_2_n_3 ;
  wire \ap_CS_fsm[1]_i_3_n_3 ;
  wire \ap_CS_fsm[1]_i_4_n_3 ;
  wire \ap_CS_fsm[1]_i_5_n_3 ;
  wire \ap_CS_fsm[1]_i_6_n_3 ;
  wire \ap_CS_fsm[9]_i_2_n_3 ;
  wire \ap_CS_fsm_reg[0] ;
  wire \ap_CS_fsm_reg[0]_0 ;
  wire \ap_CS_fsm_reg[2] ;
  wire \ap_CS_fsm_reg[9] ;
  wire [1:0]\ap_CS_fsm_reg[9]_0 ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1_n_3;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter0_reg_reg;
  wire ap_enable_reg_pp0_iter1;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__0_n_3;
  wire ap_loop_init_int_i_2_n_3;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire \cmp980_reg_374_reg[0] ;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg;
  wire [6:0]i_2_fu_78_p2;
  wire \i_fu_46[5]_i_2_n_3 ;
  wire \i_fu_46[8]_i_4_n_3 ;
  wire \i_fu_46[8]_i_5_n_3 ;
  wire \i_fu_46[8]_i_6_n_3 ;
  wire \i_fu_46_reg[2] ;
  wire \i_fu_46_reg[3] ;
  wire \i_fu_46_reg[3]_0 ;
  wire \i_fu_46_reg[3]_1 ;
  wire \i_fu_46_reg[3]_2 ;
  wire \i_fu_46_reg[4] ;
  wire \i_fu_46_reg[4]_0 ;
  wire \i_fu_46_reg[5] ;
  wire [7:0]\i_fu_46_reg[7] ;
  wire \i_fu_46_reg[8] ;
  wire \i_fu_46_reg[8]_0 ;
  wire \i_fu_46_reg[8]_1 ;
  wire icmp_ln10_fu_72_p2;
  wire icmp_ln10_reg_109;
  wire [0:0]\icmp_ln32_reg_351_reg[0] ;
  wire icmp_ln46_fu_249_p2;
  wire icmp_ln46_reg_391;
  wire \icmp_ln46_reg_391_reg[0] ;
  wire \int_output_r_shift0_reg[0] ;
  wire \int_output_r_shift0_reg[0]_0 ;
  wire [7:0]mem_reg;
  wire mem_reg_0;
  wire [7:0]mem_reg_1;
  wire [7:0]mem_reg_2;
  wire mem_reg_3;
  wire [7:0]mem_reg_4;
  wire mem_reg_5;
  wire mem_reg_6;
  wire mem_reg_7;
  wire mem_reg_8;
  wire mem_reg_i_58_n_3;
  wire mem_reg_i_60_n_3;
  wire mem_reg_i_61_n_3;
  wire mem_reg_i_62_n_3;
  wire mem_reg_i_63_n_3;
  wire mem_reg_i_64_n_3;
  wire mem_reg_i_65_n_3;
  wire mem_reg_i_75_n_3;
  wire \output_r_addr_reg_386_reg[0] ;
  wire output_r_ce0;

  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hAFBF)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(\ap_CS_fsm[1]_i_2_n_3 ),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
        .I2(Q[0]),
        .I3(ap_enable_reg_pp0_iter1),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h000E)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[1]),
        .I3(\ap_CS_fsm[1]_i_2_n_3 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(\ap_CS_fsm[1]_i_3_n_3 ),
        .I1(\i_fu_46_reg[7] [4]),
        .I2(\i_fu_46_reg[7] [0]),
        .I3(\ap_CS_fsm[1]_i_4_n_3 ),
        .I4(\ap_CS_fsm[1]_i_5_n_3 ),
        .I5(\ap_CS_fsm[1]_i_6_n_3 ),
        .O(\ap_CS_fsm[1]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'h0FFFFFFF0EEEEEEE)) 
    \ap_CS_fsm[1]_i_3 
       (.I0(\i_fu_46_reg[3] ),
        .I1(\i_fu_46_reg[3]_0 ),
        .I2(ap_loop_init_int),
        .I3(Q[0]),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
        .I5(\i_fu_46_reg[3]_1 ),
        .O(\ap_CS_fsm[1]_i_3_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hFBBBBBBB)) 
    \ap_CS_fsm[1]_i_4 
       (.I0(\i_fu_46_reg[8] ),
        .I1(\i_fu_46_reg[8]_1 ),
        .I2(ap_loop_init_int),
        .I3(Q[0]),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
        .O(\ap_CS_fsm[1]_i_4_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hC000D555)) 
    \ap_CS_fsm[1]_i_5 
       (.I0(\i_fu_46_reg[8]_0 ),
        .I1(ap_loop_init_int),
        .I2(Q[0]),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
        .I4(\i_fu_46_reg[5] ),
        .O(\ap_CS_fsm[1]_i_5_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ap_CS_fsm[1]_i_6 
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
        .I1(Q[0]),
        .O(\ap_CS_fsm[1]_i_6_n_3 ));
  LUT5 #(
    .INIT(32'hFFE0E0E0)) 
    \ap_CS_fsm[9]_i_1 
       (.I0(\ap_CS_fsm_reg[9] ),
        .I1(CO),
        .I2(\ap_CS_fsm_reg[9]_0 [0]),
        .I3(\ap_CS_fsm[9]_i_2_n_3 ),
        .I4(\ap_CS_fsm_reg[9]_0 [1]),
        .O(\icmp_ln32_reg_351_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h4500)) 
    \ap_CS_fsm[9]_i_2 
       (.I0(\ap_CS_fsm[1]_i_2_n_3 ),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
        .I2(ap_done_cache),
        .I3(icmp_ln46_reg_391),
        .O(\ap_CS_fsm[9]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ap_done_cache_i_1
       (.I0(\ap_CS_fsm[1]_i_2_n_3 ),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
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
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h0000E200)) 
    ap_enable_reg_pp0_iter0_reg_i_1
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(Q[0]),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
        .I3(ap_rst_n),
        .I4(\ap_CS_fsm[1]_i_2_n_3 ),
        .O(ap_enable_reg_pp0_iter0_reg_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFF1DFF0000)) 
    ap_loop_init_int_i_1__0
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(Q[0]),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
        .I3(Q[1]),
        .I4(ap_loop_init_int),
        .I5(ap_loop_init_int_i_2_n_3),
        .O(ap_loop_init_int_i_1__0_n_3));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hB)) 
    ap_loop_init_int_i_2
       (.I0(\ap_CS_fsm[1]_i_2_n_3 ),
        .I1(ap_rst_n),
        .O(ap_loop_init_int_i_2_n_3));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__0_n_3),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hD5D5D555C0C0C000)) 
    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg_i_1
       (.I0(\ap_CS_fsm[1]_i_2_n_3 ),
        .I1(icmp_ln46_fu_249_p2),
        .I2(\ap_CS_fsm_reg[9]_0 [0]),
        .I3(CO),
        .I4(\ap_CS_fsm_reg[9] ),
        .I5(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
        .O(\ap_CS_fsm_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \i_fu_46[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\i_fu_46_reg[3]_2 ),
        .O(i_2_fu_78_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \i_fu_46[1]_i_1 
       (.I0(\i_fu_46_reg[3]_0 ),
        .I1(ap_loop_init_int),
        .I2(\i_fu_46_reg[3]_2 ),
        .O(i_2_fu_78_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h060A)) 
    \i_fu_46[2]_i_1 
       (.I0(\i_fu_46_reg[3] ),
        .I1(\i_fu_46_reg[3]_0 ),
        .I2(ap_loop_init_int),
        .I3(\i_fu_46_reg[3]_2 ),
        .O(\i_fu_46_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h12222222)) 
    \i_fu_46[3]_i_1 
       (.I0(\i_fu_46_reg[3]_1 ),
        .I1(\i_fu_46[8]_i_5_n_3 ),
        .I2(\i_fu_46_reg[3]_0 ),
        .I3(\i_fu_46_reg[3]_2 ),
        .I4(\i_fu_46_reg[3] ),
        .O(i_2_fu_78_p2[2]));
  LUT6 #(
    .INIT(64'h060A0A0A0A0A0A0A)) 
    \i_fu_46[4]_i_1 
       (.I0(\i_fu_46_reg[4]_0 ),
        .I1(\i_fu_46_reg[3]_1 ),
        .I2(\i_fu_46[8]_i_5_n_3 ),
        .I3(\i_fu_46_reg[3]_0 ),
        .I4(\i_fu_46_reg[3]_2 ),
        .I5(\i_fu_46_reg[3] ),
        .O(\i_fu_46_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h2D22)) 
    \i_fu_46[5]_i_1 
       (.I0(\i_fu_46_reg[5] ),
        .I1(ap_loop_init_int),
        .I2(\i_fu_46[5]_i_2_n_3 ),
        .I3(\i_fu_46_reg[4]_0 ),
        .O(i_2_fu_78_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \i_fu_46[5]_i_2 
       (.I0(\i_fu_46_reg[3] ),
        .I1(\i_fu_46_reg[3]_2 ),
        .I2(\i_fu_46_reg[3]_0 ),
        .I3(\i_fu_46[8]_i_5_n_3 ),
        .I4(\i_fu_46_reg[3]_1 ),
        .O(\i_fu_46[5]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h2D)) 
    \i_fu_46[6]_i_1 
       (.I0(\i_fu_46_reg[8]_0 ),
        .I1(ap_loop_init_int),
        .I2(\i_fu_46[8]_i_4_n_3 ),
        .O(i_2_fu_78_p2[4]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h22D2)) 
    \i_fu_46[7]_i_1 
       (.I0(\i_fu_46_reg[8] ),
        .I1(ap_loop_init_int),
        .I2(\i_fu_46_reg[8]_0 ),
        .I3(\i_fu_46[8]_i_4_n_3 ),
        .O(i_2_fu_78_p2[5]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \i_fu_46[8]_i_1 
       (.I0(Q[0]),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
        .I2(icmp_ln10_fu_72_p2),
        .O(\ap_CS_fsm_reg[0] ));
  LUT5 #(
    .INIT(32'h009A00AA)) 
    \i_fu_46[8]_i_2 
       (.I0(\i_fu_46_reg[8]_1 ),
        .I1(\i_fu_46[8]_i_4_n_3 ),
        .I2(\i_fu_46_reg[8]_0 ),
        .I3(\i_fu_46[8]_i_5_n_3 ),
        .I4(\i_fu_46_reg[8] ),
        .O(i_2_fu_78_p2[6]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \i_fu_46[8]_i_3 
       (.I0(\ap_CS_fsm[1]_i_5_n_3 ),
        .I1(\i_fu_46[8]_i_6_n_3 ),
        .I2(\i_fu_46_reg[8] ),
        .I3(\i_fu_46_reg[7] [0]),
        .I4(\i_fu_46_reg[7] [4]),
        .I5(\ap_CS_fsm[1]_i_3_n_3 ),
        .O(icmp_ln10_fu_72_p2));
  LUT6 #(
    .INIT(64'hFDDDDDDDFFFFFFFF)) 
    \i_fu_46[8]_i_4 
       (.I0(\i_fu_46_reg[4]_0 ),
        .I1(\i_fu_46[5]_i_2_n_3 ),
        .I2(ap_loop_init_int),
        .I3(Q[0]),
        .I4(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
        .I5(\i_fu_46_reg[5] ),
        .O(\i_fu_46[8]_i_4_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \i_fu_46[8]_i_5 
       (.I0(ap_loop_init_int),
        .I1(Q[0]),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
        .O(\i_fu_46[8]_i_5_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h80FF)) 
    \i_fu_46[8]_i_6 
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
        .I1(Q[0]),
        .I2(ap_loop_init_int),
        .I3(\i_fu_46_reg[8]_1 ),
        .O(\i_fu_46[8]_i_6_n_3 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \icmp_ln10_reg_109[0]_i_1 
       (.I0(icmp_ln10_fu_72_p2),
        .I1(Q[0]),
        .I2(icmp_ln10_reg_109),
        .O(\ap_CS_fsm_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00A2FFFF)) 
    int_ap_start_i_3
       (.I0(icmp_ln46_reg_391),
        .I1(ap_done_cache),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
        .I3(\ap_CS_fsm[1]_i_2_n_3 ),
        .I4(\ap_CS_fsm_reg[9]_0 [1]),
        .O(\icmp_ln46_reg_391_reg[0] ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \int_output_r_shift0[0]_i_1 
       (.I0(mem_reg[0]),
        .I1(\int_output_r_shift0_reg[0] ),
        .I2(\cmp980_reg_374_reg[0] ),
        .I3(output_r_ce0),
        .I4(\int_output_r_shift0_reg[0]_0 ),
        .O(\output_r_addr_reg_386_reg[0] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    mem_reg_i_10
       (.I0(mem_reg[7]),
        .I1(\int_output_r_shift0_reg[0] ),
        .I2(mem_reg_i_58_n_3),
        .I3(mem_reg_0),
        .I4(mem_reg_1[7]),
        .O(ADDRBWRADDR[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    mem_reg_i_11
       (.I0(mem_reg[6]),
        .I1(\int_output_r_shift0_reg[0] ),
        .I2(mem_reg_i_60_n_3),
        .I3(mem_reg_0),
        .I4(mem_reg_1[6]),
        .O(ADDRBWRADDR[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    mem_reg_i_12
       (.I0(mem_reg[5]),
        .I1(\int_output_r_shift0_reg[0] ),
        .I2(mem_reg_i_61_n_3),
        .I3(mem_reg_0),
        .I4(mem_reg_1[5]),
        .O(ADDRBWRADDR[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    mem_reg_i_13
       (.I0(mem_reg[4]),
        .I1(\int_output_r_shift0_reg[0] ),
        .I2(mem_reg_i_62_n_3),
        .I3(mem_reg_0),
        .I4(mem_reg_1[4]),
        .O(ADDRBWRADDR[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    mem_reg_i_14
       (.I0(mem_reg[3]),
        .I1(\int_output_r_shift0_reg[0] ),
        .I2(mem_reg_i_63_n_3),
        .I3(mem_reg_0),
        .I4(mem_reg_1[3]),
        .O(ADDRBWRADDR[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    mem_reg_i_15
       (.I0(mem_reg[2]),
        .I1(\int_output_r_shift0_reg[0] ),
        .I2(mem_reg_i_64_n_3),
        .I3(mem_reg_0),
        .I4(mem_reg_1[2]),
        .O(ADDRBWRADDR[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    mem_reg_i_16
       (.I0(mem_reg[1]),
        .I1(\int_output_r_shift0_reg[0] ),
        .I2(mem_reg_i_65_n_3),
        .I3(mem_reg_0),
        .I4(mem_reg_1[1]),
        .O(ADDRBWRADDR[0]));
  LUT6 #(
    .INIT(64'hAEAEAE000000AE00)) 
    mem_reg_i_53
       (.I0(mem_reg_5),
        .I1(mem_reg_6),
        .I2(mem_reg_7),
        .I3(\cmp980_reg_374_reg[0] ),
        .I4(\int_output_r_shift0_reg[0] ),
        .I5(mem_reg[0]),
        .O(WEBWE[1]));
  LUT6 #(
    .INIT(64'h000000AEAEAE00AE)) 
    mem_reg_i_54
       (.I0(mem_reg_5),
        .I1(mem_reg_6),
        .I2(mem_reg_7),
        .I3(\cmp980_reg_374_reg[0] ),
        .I4(\int_output_r_shift0_reg[0] ),
        .I5(mem_reg[0]),
        .O(WEBWE[0]));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    mem_reg_i_58
       (.I0(mem_reg_2[7]),
        .I1(Q[1]),
        .I2(\i_fu_46_reg[8] ),
        .I3(\i_fu_46[8]_i_5_n_3 ),
        .I4(mem_reg_3),
        .I5(mem_reg_4[7]),
        .O(mem_reg_i_58_n_3));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    mem_reg_i_60
       (.I0(mem_reg_2[6]),
        .I1(Q[1]),
        .I2(\i_fu_46_reg[8]_0 ),
        .I3(\i_fu_46[8]_i_5_n_3 ),
        .I4(mem_reg_3),
        .I5(mem_reg_4[6]),
        .O(mem_reg_i_60_n_3));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    mem_reg_i_61
       (.I0(mem_reg_2[5]),
        .I1(Q[1]),
        .I2(\i_fu_46_reg[5] ),
        .I3(\i_fu_46[8]_i_5_n_3 ),
        .I4(mem_reg_3),
        .I5(mem_reg_4[5]),
        .O(mem_reg_i_61_n_3));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    mem_reg_i_62
       (.I0(mem_reg_2[4]),
        .I1(Q[1]),
        .I2(\i_fu_46_reg[4]_0 ),
        .I3(\i_fu_46[8]_i_5_n_3 ),
        .I4(mem_reg_3),
        .I5(mem_reg_4[4]),
        .O(mem_reg_i_62_n_3));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    mem_reg_i_63
       (.I0(mem_reg_2[3]),
        .I1(Q[1]),
        .I2(\i_fu_46_reg[3]_1 ),
        .I3(\i_fu_46[8]_i_5_n_3 ),
        .I4(mem_reg_3),
        .I5(mem_reg_4[3]),
        .O(mem_reg_i_63_n_3));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    mem_reg_i_64
       (.I0(mem_reg_2[2]),
        .I1(Q[1]),
        .I2(\i_fu_46_reg[3] ),
        .I3(\i_fu_46[8]_i_5_n_3 ),
        .I4(mem_reg_3),
        .I5(mem_reg_4[2]),
        .O(mem_reg_i_64_n_3));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    mem_reg_i_65
       (.I0(mem_reg_2[1]),
        .I1(Q[1]),
        .I2(\i_fu_46_reg[3]_0 ),
        .I3(\i_fu_46[8]_i_5_n_3 ),
        .I4(mem_reg_3),
        .I5(mem_reg_4[1]),
        .O(mem_reg_i_65_n_3));
  LUT6 #(
    .INIT(64'hAAAAAABAAAAAAA8A)) 
    mem_reg_i_66
       (.I0(mem_reg_i_75_n_3),
        .I1(mem_reg_8),
        .I2(\ap_CS_fsm_reg[9]_0 [0]),
        .I3(\ap_CS_fsm_reg[9] ),
        .I4(CO),
        .I5(mem_reg_1[0]),
        .O(\cmp980_reg_374_reg[0] ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    mem_reg_i_75
       (.I0(mem_reg_2[0]),
        .I1(Q[1]),
        .I2(\i_fu_46_reg[3]_2 ),
        .I3(\i_fu_46[8]_i_5_n_3 ),
        .I4(mem_reg_3),
        .I5(mem_reg_4[0]),
        .O(mem_reg_i_75_n_3));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \output_r_addr_reg_113[0]_i_1 
       (.I0(\i_fu_46_reg[3]_2 ),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
        .I2(Q[0]),
        .I3(ap_loop_init_int),
        .O(\i_fu_46_reg[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \output_r_addr_reg_113[1]_i_1 
       (.I0(\i_fu_46_reg[3]_0 ),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\i_fu_46_reg[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \output_r_addr_reg_113[2]_i_1 
       (.I0(\i_fu_46_reg[3] ),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\i_fu_46_reg[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \output_r_addr_reg_113[3]_i_1 
       (.I0(\i_fu_46_reg[3]_1 ),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\i_fu_46_reg[7] [3]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \output_r_addr_reg_113[4]_i_1 
       (.I0(\i_fu_46_reg[4]_0 ),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
        .I2(Q[0]),
        .I3(ap_loop_init_int),
        .O(\i_fu_46_reg[7] [4]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \output_r_addr_reg_113[5]_i_1 
       (.I0(\i_fu_46_reg[5] ),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\i_fu_46_reg[7] [5]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \output_r_addr_reg_113[6]_i_1 
       (.I0(\i_fu_46_reg[8]_0 ),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
        .O(\i_fu_46_reg[7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \output_r_addr_reg_113[7]_i_1 
       (.I0(Q[0]),
        .I1(icmp_ln10_fu_72_p2),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \output_r_addr_reg_113[7]_i_2 
       (.I0(\i_fu_46_reg[8] ),
        .I1(ap_loop_init_int),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
        .O(\i_fu_46_reg[7] [7]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_mac_muladd_16s_16s_24ns_24_4_1
   (P,
    E,
    ap_clk,
    B,
    A,
    D,
    Q);
  output [15:0]P;
  output [0:0]E;
  input ap_clk;
  input [15:0]B;
  input [15:0]A;
  input [15:0]D;
  input [1:0]Q;

  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]D;
  wire [0:0]E;
  wire [15:0]P;
  wire [1:0]Q;
  wire ap_clk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_mac_muladd_16s_16s_24ns_24_4_1_DSP48_0 nnlayer_mac_muladd_16s_16s_24ns_24_4_1_DSP48_0_U
       (.A(A),
        .B(B),
        .D(D),
        .E(E),
        .P(P),
        .Q(Q),
        .ap_clk(ap_clk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_mac_muladd_16s_16s_24ns_24_4_1_DSP48_0
   (P,
    E,
    ap_clk,
    B,
    A,
    D,
    Q);
  output [15:0]P;
  output [0:0]E;
  input ap_clk;
  input [15:0]B;
  input [15:0]A;
  input [15:0]D;
  input [1:0]Q;

  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]D;
  wire [0:0]E;
  wire [15:0]P;
  wire [1:0]Q;
  wire ap_clk;
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
       (.A({A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({B[15],B[15],B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,D,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .CEC(E),
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
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:24],P,p_reg_reg_n_101,p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105,p_reg_reg_n_106,p_reg_reg_n_107,p_reg_reg_n_108}),
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
  LUT2 #(
    .INIT(4'hE)) 
    p_reg_reg_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(E));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_nnlayer_Pipeline_VITIS_LOOP_10_1
   (icmp_ln10_reg_109,
    D,
    \icmp_ln46_reg_391_reg[0] ,
    output_r_ce0,
    ADDRBWRADDR,
    WEBWE,
    ap_enable_reg_pp0_iter0_reg_reg_0,
    \cmp980_reg_374_reg[0] ,
    \output_r_addr_reg_386_reg[0] ,
    \ap_CS_fsm_reg[2] ,
    ap_rst_n_inv,
    ap_clk,
    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg,
    ap_rst_n,
    \ap_CS_fsm_reg[9] ,
    CO,
    Q,
    icmp_ln46_reg_391,
    mem_reg,
    mem_reg_0,
    mem_reg_1,
    mem_reg_2,
    \int_output_r_shift0_reg[0] ,
    mem_reg_3,
    mem_reg_4,
    mem_reg_5,
    mem_reg_6,
    mem_reg_7,
    \int_output_r_shift0_reg[0]_0 ,
    icmp_ln46_fu_249_p2);
  output icmp_ln10_reg_109;
  output [0:0]D;
  output \icmp_ln46_reg_391_reg[0] ;
  output output_r_ce0;
  output [6:0]ADDRBWRADDR;
  output [1:0]WEBWE;
  output ap_enable_reg_pp0_iter0_reg_reg_0;
  output \cmp980_reg_374_reg[0] ;
  output \output_r_addr_reg_386_reg[0] ;
  output \ap_CS_fsm_reg[2] ;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg;
  input ap_rst_n;
  input \ap_CS_fsm_reg[9] ;
  input [0:0]CO;
  input [1:0]Q;
  input icmp_ln46_reg_391;
  input mem_reg;
  input mem_reg_0;
  input mem_reg_1;
  input [7:0]mem_reg_2;
  input \int_output_r_shift0_reg[0] ;
  input mem_reg_3;
  input [7:0]mem_reg_4;
  input [7:0]mem_reg_5;
  input mem_reg_6;
  input mem_reg_7;
  input \int_output_r_shift0_reg[0]_0 ;
  input icmp_ln46_fu_249_p2;

  wire [6:0]ADDRBWRADDR;
  wire [0:0]CO;
  wire [0:0]D;
  wire [1:0]Q;
  wire [1:0]WEBWE;
  wire ap_CS_fsm_pp0_stage1;
  wire \ap_CS_fsm_reg[2] ;
  wire \ap_CS_fsm_reg[9] ;
  wire \ap_CS_fsm_reg_n_3_[0] ;
  wire [1:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter0_reg_reg_0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1_n_3;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [7:0]ap_sig_allocacmp_i_1;
  wire \cmp980_reg_374_reg[0] ;
  wire flow_control_loop_pipe_sequential_init_U_n_36;
  wire flow_control_loop_pipe_sequential_init_U_n_37;
  wire flow_control_loop_pipe_sequential_init_U_n_38;
  wire flow_control_loop_pipe_sequential_init_U_n_39;
  wire flow_control_loop_pipe_sequential_init_U_n_7;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg;
  wire [8:0]i_2_fu_78_p2;
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
  wire icmp_ln46_fu_249_p2;
  wire icmp_ln46_reg_391;
  wire \icmp_ln46_reg_391_reg[0] ;
  wire \int_output_r_shift0_reg[0] ;
  wire \int_output_r_shift0_reg[0]_0 ;
  wire mem_reg;
  wire mem_reg_0;
  wire mem_reg_1;
  wire [7:0]mem_reg_2;
  wire mem_reg_3;
  wire [7:0]mem_reg_4;
  wire [7:0]mem_reg_5;
  wire mem_reg_6;
  wire mem_reg_7;
  wire mem_reg_i_55_n_3;
  wire [7:0]output_r_addr_reg_113;
  wire output_r_addr_reg_1130;
  wire \output_r_addr_reg_386_reg[0] ;
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
        .D(flow_control_loop_pipe_sequential_init_U_n_7),
        .Q(ap_enable_reg_pp0_iter0_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000CF00A000C000)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_flow_control_loop_pipe_sequential_init_0 flow_control_loop_pipe_sequential_init_U
       (.ADDRBWRADDR(ADDRBWRADDR),
        .CO(CO),
        .D(ap_NS_fsm),
        .E(output_r_addr_reg_1130),
        .Q({ap_CS_fsm_pp0_stage1,\ap_CS_fsm_reg_n_3_[0] }),
        .WEBWE(WEBWE),
        .\ap_CS_fsm_reg[0] (flow_control_loop_pipe_sequential_init_U_n_36),
        .\ap_CS_fsm_reg[0]_0 (flow_control_loop_pipe_sequential_init_U_n_37),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm_reg[2] ),
        .\ap_CS_fsm_reg[9] (\ap_CS_fsm_reg[9] ),
        .\ap_CS_fsm_reg[9]_0 (Q),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_enable_reg_pp0_iter0_reg_reg(flow_control_loop_pipe_sequential_init_U_n_7),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\cmp980_reg_374_reg[0] (\cmp980_reg_374_reg[0] ),
        .grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
        .i_2_fu_78_p2({i_2_fu_78_p2[8:5],i_2_fu_78_p2[3],i_2_fu_78_p2[1:0]}),
        .\i_fu_46_reg[2] (flow_control_loop_pipe_sequential_init_U_n_39),
        .\i_fu_46_reg[3] (\i_fu_46_reg_n_3_[2] ),
        .\i_fu_46_reg[3]_0 (\i_fu_46_reg_n_3_[1] ),
        .\i_fu_46_reg[3]_1 (\i_fu_46_reg_n_3_[3] ),
        .\i_fu_46_reg[3]_2 (\i_fu_46_reg_n_3_[0] ),
        .\i_fu_46_reg[4] (flow_control_loop_pipe_sequential_init_U_n_38),
        .\i_fu_46_reg[4]_0 (\i_fu_46_reg_n_3_[4] ),
        .\i_fu_46_reg[5] (\i_fu_46_reg_n_3_[5] ),
        .\i_fu_46_reg[7] (ap_sig_allocacmp_i_1),
        .\i_fu_46_reg[8] (\i_fu_46_reg_n_3_[7] ),
        .\i_fu_46_reg[8]_0 (\i_fu_46_reg_n_3_[6] ),
        .\i_fu_46_reg[8]_1 (\i_fu_46_reg_n_3_[8] ),
        .icmp_ln10_reg_109(icmp_ln10_reg_109),
        .\icmp_ln32_reg_351_reg[0] (D),
        .icmp_ln46_fu_249_p2(icmp_ln46_fu_249_p2),
        .icmp_ln46_reg_391(icmp_ln46_reg_391),
        .\icmp_ln46_reg_391_reg[0] (\icmp_ln46_reg_391_reg[0] ),
        .\int_output_r_shift0_reg[0] (\int_output_r_shift0_reg[0] ),
        .\int_output_r_shift0_reg[0]_0 (\int_output_r_shift0_reg[0]_0 ),
        .mem_reg(mem_reg_2),
        .mem_reg_0(mem_reg_3),
        .mem_reg_1(mem_reg_4),
        .mem_reg_2(output_r_addr_reg_113),
        .mem_reg_3(mem_reg_1),
        .mem_reg_4(mem_reg_5),
        .mem_reg_5(mem_reg_6),
        .mem_reg_6(ap_enable_reg_pp0_iter0_reg_reg_0),
        .mem_reg_7(mem_reg_7),
        .mem_reg_8(mem_reg_0),
        .\output_r_addr_reg_386_reg[0] (\output_r_addr_reg_386_reg[0] ),
        .output_r_ce0(output_r_ce0));
  FDRE \i_fu_46_reg[0] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_36),
        .D(i_2_fu_78_p2[0]),
        .Q(\i_fu_46_reg_n_3_[0] ),
        .R(1'b0));
  FDRE \i_fu_46_reg[1] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_36),
        .D(i_2_fu_78_p2[1]),
        .Q(\i_fu_46_reg_n_3_[1] ),
        .R(1'b0));
  FDRE \i_fu_46_reg[2] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_36),
        .D(flow_control_loop_pipe_sequential_init_U_n_39),
        .Q(\i_fu_46_reg_n_3_[2] ),
        .R(1'b0));
  FDRE \i_fu_46_reg[3] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_36),
        .D(i_2_fu_78_p2[3]),
        .Q(\i_fu_46_reg_n_3_[3] ),
        .R(1'b0));
  FDRE \i_fu_46_reg[4] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_36),
        .D(flow_control_loop_pipe_sequential_init_U_n_38),
        .Q(\i_fu_46_reg_n_3_[4] ),
        .R(1'b0));
  FDRE \i_fu_46_reg[5] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_36),
        .D(i_2_fu_78_p2[5]),
        .Q(\i_fu_46_reg_n_3_[5] ),
        .R(1'b0));
  FDRE \i_fu_46_reg[6] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_36),
        .D(i_2_fu_78_p2[6]),
        .Q(\i_fu_46_reg_n_3_[6] ),
        .R(1'b0));
  FDRE \i_fu_46_reg[7] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_36),
        .D(i_2_fu_78_p2[7]),
        .Q(\i_fu_46_reg_n_3_[7] ),
        .R(1'b0));
  FDRE \i_fu_46_reg[8] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_36),
        .D(i_2_fu_78_p2[8]),
        .Q(\i_fu_46_reg_n_3_[8] ),
        .R(1'b0));
  FDRE \icmp_ln10_reg_109_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_37),
        .Q(icmp_ln10_reg_109),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBFBB)) 
    mem_reg_i_2
       (.I0(mem_reg_i_55_n_3),
        .I1(mem_reg),
        .I2(mem_reg_0),
        .I3(Q[0]),
        .I4(\ap_CS_fsm_reg[9] ),
        .I5(CO),
        .O(output_r_ce0));
  LUT6 #(
    .INIT(64'hAA8AA080A080A080)) 
    mem_reg_i_55
       (.I0(mem_reg_1),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(\ap_CS_fsm_reg_n_3_[0] ),
        .I3(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
        .I4(ap_enable_reg_pp0_iter0_reg),
        .I5(ap_CS_fsm_pp0_stage1),
        .O(mem_reg_i_55_n_3));
  LUT4 #(
    .INIT(16'hE200)) 
    mem_reg_i_70
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(\ap_CS_fsm_reg_n_3_[0] ),
        .I2(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_197_ap_start_reg),
        .I3(ap_CS_fsm_pp0_stage1),
        .O(ap_enable_reg_pp0_iter0_reg_reg_0));
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_nnlayer_Pipeline_VITIS_LOOP_32_1
   (D,
    grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg,
    grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg_0,
    \ap_CS_fsm_reg[4]_rep ,
    \ap_CS_fsm_reg[4]_rep_0 ,
    grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg_1,
    \outNeurons_fu_42_reg[0]_0 ,
    \zext_ln33_reg_119_reg[7]_0 ,
    ap_rst_n_inv,
    ap_clk,
    grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg,
    ap_rst_n,
    ap_NS_fsm18_out,
    Q,
    mem_reg,
    mem_reg_0,
    mem_reg_1,
    mem_reg_2,
    icmp_ln32_fu_87_p2_carry__0_0,
    icmp_ln46_reg_391,
    \int_bias_shift0_reg[0] );
  output [6:0]D;
  output grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg;
  output [0:0]grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg_0;
  output \ap_CS_fsm_reg[4]_rep ;
  output \ap_CS_fsm_reg[4]_rep_0 ;
  output grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg_1;
  output \outNeurons_fu_42_reg[0]_0 ;
  output [7:0]\zext_ln33_reg_119_reg[7]_0 ;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg;
  input ap_rst_n;
  input ap_NS_fsm18_out;
  input [1:0]Q;
  input [0:0]mem_reg;
  input mem_reg_0;
  input mem_reg_1;
  input mem_reg_2;
  input [15:0]icmp_ln32_fu_87_p2_carry__0_0;
  input icmp_ln46_reg_391;
  input \int_bias_shift0_reg[0] ;

  wire [6:0]D;
  wire [1:0]Q;
  wire \ap_CS_fsm_reg[4]_rep ;
  wire \ap_CS_fsm_reg[4]_rep_0 ;
  wire ap_NS_fsm18_out;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1__0_n_3;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [15:8]ap_sig_allocacmp_outNeurons_1;
  wire flow_control_loop_pipe_sequential_init_U_n_10;
  wire flow_control_loop_pipe_sequential_init_U_n_11;
  wire flow_control_loop_pipe_sequential_init_U_n_28;
  wire flow_control_loop_pipe_sequential_init_U_n_29;
  wire flow_control_loop_pipe_sequential_init_U_n_31;
  wire flow_control_loop_pipe_sequential_init_U_n_32;
  wire flow_control_loop_pipe_sequential_init_U_n_33;
  wire flow_control_loop_pipe_sequential_init_U_n_34;
  wire flow_control_loop_pipe_sequential_init_U_n_35;
  wire flow_control_loop_pipe_sequential_init_U_n_36;
  wire flow_control_loop_pipe_sequential_init_U_n_37;
  wire flow_control_loop_pipe_sequential_init_U_n_4;
  wire flow_control_loop_pipe_sequential_init_U_n_8;
  wire flow_control_loop_pipe_sequential_init_U_n_9;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg;
  wire [0:0]grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg_0;
  wire grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg_1;
  wire [0:0]grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_bias_address0;
  wire icmp_ln32_fu_87_p2;
  wire [15:0]icmp_ln32_fu_87_p2_carry__0_0;
  wire icmp_ln32_fu_87_p2_carry__0_n_6;
  wire icmp_ln32_fu_87_p2_carry_n_3;
  wire icmp_ln32_fu_87_p2_carry_n_4;
  wire icmp_ln32_fu_87_p2_carry_n_5;
  wire icmp_ln32_fu_87_p2_carry_n_6;
  wire icmp_ln46_reg_391;
  wire \int_bias_shift0_reg[0] ;
  wire [0:0]mem_reg;
  wire mem_reg_0;
  wire mem_reg_1;
  wire mem_reg_2;
  wire [15:0]outNeurons_2_fu_93_p2;
  wire outNeurons_2_fu_93_p2_carry__0_n_3;
  wire outNeurons_2_fu_93_p2_carry__0_n_4;
  wire outNeurons_2_fu_93_p2_carry__0_n_5;
  wire outNeurons_2_fu_93_p2_carry__0_n_6;
  wire outNeurons_2_fu_93_p2_carry__1_n_3;
  wire outNeurons_2_fu_93_p2_carry__1_n_4;
  wire outNeurons_2_fu_93_p2_carry__1_n_5;
  wire outNeurons_2_fu_93_p2_carry__1_n_6;
  wire outNeurons_2_fu_93_p2_carry__2_n_5;
  wire outNeurons_2_fu_93_p2_carry__2_n_6;
  wire outNeurons_2_fu_93_p2_carry_n_3;
  wire outNeurons_2_fu_93_p2_carry_n_4;
  wire outNeurons_2_fu_93_p2_carry_n_5;
  wire outNeurons_2_fu_93_p2_carry_n_6;
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
  wire [7:0]\zext_ln33_reg_119_reg[7]_0 ;
  wire [3:0]NLW_icmp_ln32_fu_87_p2_carry_O_UNCONNECTED;
  wire [3:2]NLW_icmp_ln32_fu_87_p2_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_icmp_ln32_fu_87_p2_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_outNeurons_2_fu_93_p2_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_outNeurons_2_fu_93_p2_carry__2_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'h40)) 
    ap_enable_reg_pp0_iter1_i_1__0
       (.I0(icmp_ln32_fu_87_p2),
        .I1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nnlayer_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U
       (.CO(icmp_ln32_fu_87_p2),
        .D({D,grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_bias_address0}),
        .E(outNeurons_fu_420),
        .Q(Q[0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_8,flow_control_loop_pipe_sequential_init_U_n_9,flow_control_loop_pipe_sequential_init_U_n_10,flow_control_loop_pipe_sequential_init_U_n_11}),
        .SR(flow_control_loop_pipe_sequential_init_U_n_4),
        .ap_NS_fsm18_out(ap_NS_fsm18_out),
        .ap_clk(ap_clk),
        .ap_loop_init_int_reg_0(outNeurons_2_fu_93_p2[0]),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_sig_allocacmp_outNeurons_1(ap_sig_allocacmp_outNeurons_1),
        .grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg),
        .grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg),
        .grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg_0(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg_0),
        .grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg_1(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_ap_start_reg_reg_1),
        .icmp_ln32_fu_87_p2_carry__0(outNeurons_fu_421),
        .icmp_ln32_fu_87_p2_carry__0_0(icmp_ln32_fu_87_p2_carry__0_0),
        .\int_bias_shift0_reg[0] (\int_bias_shift0_reg[0] ),
        .\numOfOutNeurons_read_reg_338_reg[15] ({flow_control_loop_pipe_sequential_init_U_n_28,flow_control_loop_pipe_sequential_init_U_n_29}),
        .\outNeurons_fu_42_reg[0] (\outNeurons_fu_42_reg[0]_0 ),
        .\outNeurons_fu_42_reg[15] ({\outNeurons_fu_42_reg_n_3_[15] ,\outNeurons_fu_42_reg_n_3_[14] ,\outNeurons_fu_42_reg_n_3_[13] ,\outNeurons_fu_42_reg_n_3_[12] ,\outNeurons_fu_42_reg_n_3_[11] ,\outNeurons_fu_42_reg_n_3_[10] ,\outNeurons_fu_42_reg_n_3_[9] ,\outNeurons_fu_42_reg_n_3_[8] ,\outNeurons_fu_42_reg_n_3_[7] ,\outNeurons_fu_42_reg_n_3_[6] ,\outNeurons_fu_42_reg_n_3_[5] ,\outNeurons_fu_42_reg_n_3_[4] ,\outNeurons_fu_42_reg_n_3_[3] ,\outNeurons_fu_42_reg_n_3_[2] ,\outNeurons_fu_42_reg_n_3_[1] ,\outNeurons_fu_42_reg_n_3_[0] }),
        .\outNeurons_fu_42_reg[4] ({flow_control_loop_pipe_sequential_init_U_n_31,flow_control_loop_pipe_sequential_init_U_n_32,flow_control_loop_pipe_sequential_init_U_n_33,flow_control_loop_pipe_sequential_init_U_n_34}),
        .\outNeurons_fu_42_reg[7] ({flow_control_loop_pipe_sequential_init_U_n_35,flow_control_loop_pipe_sequential_init_U_n_36,flow_control_loop_pipe_sequential_init_U_n_37}));
  CARRY4 icmp_ln32_fu_87_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln32_fu_87_p2_carry_n_3,icmp_ln32_fu_87_p2_carry_n_4,icmp_ln32_fu_87_p2_carry_n_5,icmp_ln32_fu_87_p2_carry_n_6}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln32_fu_87_p2_carry_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_8,flow_control_loop_pipe_sequential_init_U_n_9,flow_control_loop_pipe_sequential_init_U_n_10,flow_control_loop_pipe_sequential_init_U_n_11}));
  CARRY4 icmp_ln32_fu_87_p2_carry__0
       (.CI(icmp_ln32_fu_87_p2_carry_n_3),
        .CO({NLW_icmp_ln32_fu_87_p2_carry__0_CO_UNCONNECTED[3:2],icmp_ln32_fu_87_p2,icmp_ln32_fu_87_p2_carry__0_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln32_fu_87_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,flow_control_loop_pipe_sequential_init_U_n_28,flow_control_loop_pipe_sequential_init_U_n_29}));
  LUT5 #(
    .INIT(32'h40555555)) 
    mem_reg_i_56
       (.I0(mem_reg_0),
        .I1(icmp_ln46_reg_391),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(ap_enable_reg_pp0_iter1),
        .O(\ap_CS_fsm_reg[4]_rep_0 ));
  LUT6 #(
    .INIT(64'h04FF040404040404)) 
    mem_reg_i_68
       (.I0(mem_reg),
        .I1(mem_reg_0),
        .I2(mem_reg_1),
        .I3(mem_reg_2),
        .I4(Q[0]),
        .I5(ap_enable_reg_pp0_iter1),
        .O(\ap_CS_fsm_reg[4]_rep ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 outNeurons_2_fu_93_p2_carry
       (.CI(1'b0),
        .CO({outNeurons_2_fu_93_p2_carry_n_3,outNeurons_2_fu_93_p2_carry_n_4,outNeurons_2_fu_93_p2_carry_n_5,outNeurons_2_fu_93_p2_carry_n_6}),
        .CYINIT(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_bias_address0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(outNeurons_2_fu_93_p2[4:1]),
        .S({flow_control_loop_pipe_sequential_init_U_n_31,flow_control_loop_pipe_sequential_init_U_n_32,flow_control_loop_pipe_sequential_init_U_n_33,flow_control_loop_pipe_sequential_init_U_n_34}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 outNeurons_2_fu_93_p2_carry__0
       (.CI(outNeurons_2_fu_93_p2_carry_n_3),
        .CO({outNeurons_2_fu_93_p2_carry__0_n_3,outNeurons_2_fu_93_p2_carry__0_n_4,outNeurons_2_fu_93_p2_carry__0_n_5,outNeurons_2_fu_93_p2_carry__0_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(outNeurons_2_fu_93_p2[8:5]),
        .S({ap_sig_allocacmp_outNeurons_1[8],flow_control_loop_pipe_sequential_init_U_n_35,flow_control_loop_pipe_sequential_init_U_n_36,flow_control_loop_pipe_sequential_init_U_n_37}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 outNeurons_2_fu_93_p2_carry__1
       (.CI(outNeurons_2_fu_93_p2_carry__0_n_3),
        .CO({outNeurons_2_fu_93_p2_carry__1_n_3,outNeurons_2_fu_93_p2_carry__1_n_4,outNeurons_2_fu_93_p2_carry__1_n_5,outNeurons_2_fu_93_p2_carry__1_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(outNeurons_2_fu_93_p2[12:9]),
        .S(ap_sig_allocacmp_outNeurons_1[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 outNeurons_2_fu_93_p2_carry__2
       (.CI(outNeurons_2_fu_93_p2_carry__1_n_3),
        .CO({NLW_outNeurons_2_fu_93_p2_carry__2_CO_UNCONNECTED[3:2],outNeurons_2_fu_93_p2_carry__2_n_5,outNeurons_2_fu_93_p2_carry__2_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_outNeurons_2_fu_93_p2_carry__2_O_UNCONNECTED[3],outNeurons_2_fu_93_p2[15:13]}),
        .S({1'b0,ap_sig_allocacmp_outNeurons_1[15:13]}));
  FDRE \outNeurons_fu_42_reg[0] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[0]),
        .Q(\outNeurons_fu_42_reg_n_3_[0] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[10] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[10]),
        .Q(\outNeurons_fu_42_reg_n_3_[10] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[11] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[11]),
        .Q(\outNeurons_fu_42_reg_n_3_[11] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[12] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[12]),
        .Q(\outNeurons_fu_42_reg_n_3_[12] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[13] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[13]),
        .Q(\outNeurons_fu_42_reg_n_3_[13] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[14] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[14]),
        .Q(\outNeurons_fu_42_reg_n_3_[14] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[15] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[15]),
        .Q(\outNeurons_fu_42_reg_n_3_[15] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[1] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[1]),
        .Q(\outNeurons_fu_42_reg_n_3_[1] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[2] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[2]),
        .Q(\outNeurons_fu_42_reg_n_3_[2] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[3] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[3]),
        .Q(\outNeurons_fu_42_reg_n_3_[3] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[4] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[4]),
        .Q(\outNeurons_fu_42_reg_n_3_[4] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[5] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[5]),
        .Q(\outNeurons_fu_42_reg_n_3_[5] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[6] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[6]),
        .Q(\outNeurons_fu_42_reg_n_3_[6] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[7] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[7]),
        .Q(\outNeurons_fu_42_reg_n_3_[7] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[8] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[8]),
        .Q(\outNeurons_fu_42_reg_n_3_[8] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \outNeurons_fu_42_reg[9] 
       (.C(ap_clk),
        .CE(outNeurons_fu_420),
        .D(outNeurons_2_fu_93_p2[9]),
        .Q(\outNeurons_fu_42_reg_n_3_[9] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \zext_ln33_reg_119_reg[0] 
       (.C(ap_clk),
        .CE(outNeurons_fu_421),
        .D(grp_nnlayer_Pipeline_VITIS_LOOP_32_1_fu_187_bias_address0),
        .Q(\zext_ln33_reg_119_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \zext_ln33_reg_119_reg[1] 
       (.C(ap_clk),
        .CE(outNeurons_fu_421),
        .D(D[0]),
        .Q(\zext_ln33_reg_119_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \zext_ln33_reg_119_reg[2] 
       (.C(ap_clk),
        .CE(outNeurons_fu_421),
        .D(D[1]),
        .Q(\zext_ln33_reg_119_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \zext_ln33_reg_119_reg[3] 
       (.C(ap_clk),
        .CE(outNeurons_fu_421),
        .D(D[2]),
        .Q(\zext_ln33_reg_119_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \zext_ln33_reg_119_reg[4] 
       (.C(ap_clk),
        .CE(outNeurons_fu_421),
        .D(D[3]),
        .Q(\zext_ln33_reg_119_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \zext_ln33_reg_119_reg[5] 
       (.C(ap_clk),
        .CE(outNeurons_fu_421),
        .D(D[4]),
        .Q(\zext_ln33_reg_119_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \zext_ln33_reg_119_reg[6] 
       (.C(ap_clk),
        .CE(outNeurons_fu_421),
        .D(D[5]),
        .Q(\zext_ln33_reg_119_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \zext_ln33_reg_119_reg[7] 
       (.C(ap_clk),
        .CE(outNeurons_fu_421),
        .D(D[6]),
        .Q(\zext_ln33_reg_119_reg[7]_0 [7]),
        .R(1'b0));
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
