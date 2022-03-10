// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Mar  3 12:53:01 2022
// Host        : DESKTOP-IFL7HB3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_runLayer_0_6_sim_netlist.v
// Design      : design_1_runLayer_0_6
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_runLayer_0_6,runLayer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "runLayer,Vivado 2021.2" *) (* hls_module = "yes" *) 
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [14:0]s_axi_control_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) output [1:0]s_axi_control_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) input [14:0]s_axi_control_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 15, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_control_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [14:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [14:0]s_axi_control_AWADDR;
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
  (* C_S_AXI_CONTROL_ADDR_WIDTH = "15" *) 
  (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_state1 = "7'b0000001" *) 
  (* ap_ST_fsm_state2 = "7'b0000010" *) 
  (* ap_ST_fsm_state3 = "7'b0000100" *) 
  (* ap_ST_fsm_state4 = "7'b0001000" *) 
  (* ap_ST_fsm_state5 = "7'b0010000" *) 
  (* ap_ST_fsm_state6 = "7'b0100000" *) 
  (* ap_ST_fsm_state7 = "7'b1000000" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer inst
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

(* C_S_AXI_CONTROL_ADDR_WIDTH = "15" *) (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ap_ST_fsm_state1 = "7'b0000001" *) 
(* ap_ST_fsm_state2 = "7'b0000010" *) (* ap_ST_fsm_state3 = "7'b0000100" *) (* ap_ST_fsm_state4 = "7'b0001000" *) 
(* ap_ST_fsm_state5 = "7'b0010000" *) (* ap_ST_fsm_state6 = "7'b0100000" *) (* ap_ST_fsm_state7 = "7'b1000000" *) 
(* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer
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
  input [14:0]s_axi_control_AWADDR;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  input [14:0]s_axi_control_ARADDR;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  output [1:0]s_axi_control_BRESP;
  output interrupt;

  wire \<const0> ;
  wire [6:0]add_ln18_fu_157_p2;
  wire [6:0]add_ln18_reg_229;
  wire \add_ln18_reg_229[6]_i_2_n_0 ;
  wire [15:8]add_ln24_fu_190_p2;
  wire \ap_CS_fsm[4]_i_2_n_0 ;
  wire ap_CS_fsm_state1;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire ap_CS_fsm_state6;
  wire ap_CS_fsm_state7;
  wire [4:0]ap_NS_fsm;
  wire ap_NS_fsm12_out;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [15:0]bias_load_reg_259;
  wire [15:0]bias_q0;
  wire control_s_axi_U_n_1;
  wire control_s_axi_U_n_24;
  wire control_s_axi_U_n_28;
  wire [15:0]conv147_fu_60;
  wire grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg;
  wire [6:1]grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_input_r_address0;
  wire grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_n_37;
  wire grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_n_38;
  wire [12:0]grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_weights_address0;
  wire \icmp_ln20_reg_222_reg_n_0_[0] ;
  wire [15:0]input_r_q0;
  wire [31:24]\int_output_r/p_1_in ;
  wire interrupt;
  wire [15:0]numOfInNeurons;
  wire [15:0]numOfInNeurons_read_reg_210;
  wire \outNeurons_fu_76_reg_n_0_[0] ;
  wire \outNeurons_fu_76_reg_n_0_[1] ;
  wire \outNeurons_fu_76_reg_n_0_[2] ;
  wire \outNeurons_fu_76_reg_n_0_[3] ;
  wire \outNeurons_fu_76_reg_n_0_[4] ;
  wire \outNeurons_fu_76_reg_n_0_[5] ;
  wire \outNeurons_fu_76_reg_n_0_[6] ;
  wire [5:0]output_r_addr_reg_244;
  wire [15:0]output_r_load_reg_249;
  wire [15:0]output_r_q0;
  wire [14:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [14:0]s_axi_control_AWADDR;
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
  wire [12:0]trunc_ln24_reg_239;
  wire \trunc_ln24_reg_239[12]_i_1_n_0 ;
  wire \weightIndexAdded_fu_72[0]_i_2_n_0 ;
  wire \weightIndexAdded_fu_72[0]_i_3_n_0 ;
  wire \weightIndexAdded_fu_72[0]_i_4_n_0 ;
  wire \weightIndexAdded_fu_72[0]_i_5_n_0 ;
  wire \weightIndexAdded_fu_72[12]_i_2_n_0 ;
  wire \weightIndexAdded_fu_72[4]_i_2_n_0 ;
  wire \weightIndexAdded_fu_72[4]_i_3_n_0 ;
  wire \weightIndexAdded_fu_72[4]_i_4_n_0 ;
  wire \weightIndexAdded_fu_72[4]_i_5_n_0 ;
  wire \weightIndexAdded_fu_72[8]_i_2_n_0 ;
  wire \weightIndexAdded_fu_72[8]_i_3_n_0 ;
  wire \weightIndexAdded_fu_72[8]_i_4_n_0 ;
  wire \weightIndexAdded_fu_72[8]_i_5_n_0 ;
  wire [12:0]weightIndexAdded_fu_72_reg;
  wire \weightIndexAdded_fu_72_reg[0]_i_1_n_0 ;
  wire \weightIndexAdded_fu_72_reg[0]_i_1_n_1 ;
  wire \weightIndexAdded_fu_72_reg[0]_i_1_n_2 ;
  wire \weightIndexAdded_fu_72_reg[0]_i_1_n_3 ;
  wire \weightIndexAdded_fu_72_reg[0]_i_1_n_4 ;
  wire \weightIndexAdded_fu_72_reg[0]_i_1_n_5 ;
  wire \weightIndexAdded_fu_72_reg[0]_i_1_n_6 ;
  wire \weightIndexAdded_fu_72_reg[0]_i_1_n_7 ;
  wire \weightIndexAdded_fu_72_reg[12]_i_1_n_7 ;
  wire \weightIndexAdded_fu_72_reg[4]_i_1_n_0 ;
  wire \weightIndexAdded_fu_72_reg[4]_i_1_n_1 ;
  wire \weightIndexAdded_fu_72_reg[4]_i_1_n_2 ;
  wire \weightIndexAdded_fu_72_reg[4]_i_1_n_3 ;
  wire \weightIndexAdded_fu_72_reg[4]_i_1_n_4 ;
  wire \weightIndexAdded_fu_72_reg[4]_i_1_n_5 ;
  wire \weightIndexAdded_fu_72_reg[4]_i_1_n_6 ;
  wire \weightIndexAdded_fu_72_reg[4]_i_1_n_7 ;
  wire \weightIndexAdded_fu_72_reg[8]_i_1_n_0 ;
  wire \weightIndexAdded_fu_72_reg[8]_i_1_n_1 ;
  wire \weightIndexAdded_fu_72_reg[8]_i_1_n_2 ;
  wire \weightIndexAdded_fu_72_reg[8]_i_1_n_3 ;
  wire \weightIndexAdded_fu_72_reg[8]_i_1_n_4 ;
  wire \weightIndexAdded_fu_72_reg[8]_i_1_n_5 ;
  wire \weightIndexAdded_fu_72_reg[8]_i_1_n_6 ;
  wire \weightIndexAdded_fu_72_reg[8]_i_1_n_7 ;
  wire [15:0]weights_q0;
  wire [3:0]\NLW_weightIndexAdded_fu_72_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_weightIndexAdded_fu_72_reg[12]_i_1_O_UNCONNECTED ;

  assign ap_local_block = \<const0> ;
  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \add_ln18_reg_229[0]_i_1 
       (.I0(\outNeurons_fu_76_reg_n_0_[0] ),
        .O(add_ln18_fu_157_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln18_reg_229[1]_i_1 
       (.I0(\outNeurons_fu_76_reg_n_0_[1] ),
        .I1(\outNeurons_fu_76_reg_n_0_[0] ),
        .O(add_ln18_fu_157_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \add_ln18_reg_229[2]_i_1 
       (.I0(\outNeurons_fu_76_reg_n_0_[2] ),
        .I1(\outNeurons_fu_76_reg_n_0_[1] ),
        .I2(\outNeurons_fu_76_reg_n_0_[0] ),
        .O(add_ln18_fu_157_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \add_ln18_reg_229[3]_i_1 
       (.I0(\outNeurons_fu_76_reg_n_0_[3] ),
        .I1(\outNeurons_fu_76_reg_n_0_[0] ),
        .I2(\outNeurons_fu_76_reg_n_0_[1] ),
        .I3(\outNeurons_fu_76_reg_n_0_[2] ),
        .O(add_ln18_fu_157_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \add_ln18_reg_229[4]_i_1 
       (.I0(\outNeurons_fu_76_reg_n_0_[2] ),
        .I1(\outNeurons_fu_76_reg_n_0_[1] ),
        .I2(\outNeurons_fu_76_reg_n_0_[0] ),
        .I3(\outNeurons_fu_76_reg_n_0_[3] ),
        .I4(\outNeurons_fu_76_reg_n_0_[4] ),
        .O(add_ln18_fu_157_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \add_ln18_reg_229[5]_i_1 
       (.I0(\outNeurons_fu_76_reg_n_0_[5] ),
        .I1(\outNeurons_fu_76_reg_n_0_[2] ),
        .I2(\outNeurons_fu_76_reg_n_0_[1] ),
        .I3(\outNeurons_fu_76_reg_n_0_[0] ),
        .I4(\outNeurons_fu_76_reg_n_0_[3] ),
        .I5(\outNeurons_fu_76_reg_n_0_[4] ),
        .O(add_ln18_fu_157_p2[5]));
  LUT3 #(
    .INIT(8'h6A)) 
    \add_ln18_reg_229[6]_i_1 
       (.I0(\outNeurons_fu_76_reg_n_0_[6] ),
        .I1(\add_ln18_reg_229[6]_i_2_n_0 ),
        .I2(\outNeurons_fu_76_reg_n_0_[5] ),
        .O(add_ln18_fu_157_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \add_ln18_reg_229[6]_i_2 
       (.I0(\outNeurons_fu_76_reg_n_0_[4] ),
        .I1(\outNeurons_fu_76_reg_n_0_[3] ),
        .I2(\outNeurons_fu_76_reg_n_0_[0] ),
        .I3(\outNeurons_fu_76_reg_n_0_[1] ),
        .I4(\outNeurons_fu_76_reg_n_0_[2] ),
        .O(\add_ln18_reg_229[6]_i_2_n_0 ));
  FDRE \add_ln18_reg_229_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(add_ln18_fu_157_p2[0]),
        .Q(add_ln18_reg_229[0]),
        .R(1'b0));
  FDRE \add_ln18_reg_229_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(add_ln18_fu_157_p2[1]),
        .Q(add_ln18_reg_229[1]),
        .R(1'b0));
  FDRE \add_ln18_reg_229_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(add_ln18_fu_157_p2[2]),
        .Q(add_ln18_reg_229[2]),
        .R(1'b0));
  FDRE \add_ln18_reg_229_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(add_ln18_fu_157_p2[3]),
        .Q(add_ln18_reg_229[3]),
        .R(1'b0));
  FDRE \add_ln18_reg_229_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(add_ln18_fu_157_p2[4]),
        .Q(add_ln18_reg_229[4]),
        .R(1'b0));
  FDRE \add_ln18_reg_229_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(add_ln18_fu_157_p2[5]),
        .Q(add_ln18_reg_229[5]),
        .R(1'b0));
  FDRE \add_ln18_reg_229_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(add_ln18_fu_157_p2[6]),
        .Q(add_ln18_reg_229[6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\icmp_ln20_reg_222_reg_n_0_[0] ),
        .I1(\ap_CS_fsm[4]_i_2_n_0 ),
        .O(ap_NS_fsm[2]));
  LUT5 #(
    .INIT(32'h55555575)) 
    \ap_CS_fsm[4]_i_2 
       (.I0(ap_CS_fsm_state2),
        .I1(control_s_axi_U_n_24),
        .I2(\outNeurons_fu_76_reg_n_0_[6] ),
        .I3(\outNeurons_fu_76_reg_n_0_[3] ),
        .I4(\outNeurons_fu_76_reg_n_0_[2] ),
        .O(\ap_CS_fsm[4]_i_2_n_0 ));
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
  FDRE \bias_load_reg_259_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[0]),
        .Q(bias_load_reg_259[0]),
        .R(1'b0));
  FDRE \bias_load_reg_259_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[10]),
        .Q(bias_load_reg_259[10]),
        .R(1'b0));
  FDRE \bias_load_reg_259_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[11]),
        .Q(bias_load_reg_259[11]),
        .R(1'b0));
  FDRE \bias_load_reg_259_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[12]),
        .Q(bias_load_reg_259[12]),
        .R(1'b0));
  FDRE \bias_load_reg_259_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[13]),
        .Q(bias_load_reg_259[13]),
        .R(1'b0));
  FDRE \bias_load_reg_259_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[14]),
        .Q(bias_load_reg_259[14]),
        .R(1'b0));
  FDRE \bias_load_reg_259_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[15]),
        .Q(bias_load_reg_259[15]),
        .R(1'b0));
  FDRE \bias_load_reg_259_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[1]),
        .Q(bias_load_reg_259[1]),
        .R(1'b0));
  FDRE \bias_load_reg_259_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[2]),
        .Q(bias_load_reg_259[2]),
        .R(1'b0));
  FDRE \bias_load_reg_259_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[3]),
        .Q(bias_load_reg_259[3]),
        .R(1'b0));
  FDRE \bias_load_reg_259_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[4]),
        .Q(bias_load_reg_259[4]),
        .R(1'b0));
  FDRE \bias_load_reg_259_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[5]),
        .Q(bias_load_reg_259[5]),
        .R(1'b0));
  FDRE \bias_load_reg_259_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[6]),
        .Q(bias_load_reg_259[6]),
        .R(1'b0));
  FDRE \bias_load_reg_259_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[7]),
        .Q(bias_load_reg_259[7]),
        .R(1'b0));
  FDRE \bias_load_reg_259_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[8]),
        .Q(bias_load_reg_259[8]),
        .R(1'b0));
  FDRE \bias_load_reg_259_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(bias_q0[9]),
        .Q(bias_load_reg_259[9]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_control_s_axi control_s_axi_U
       (.A(input_r_q0),
        .ADDRBWRADDR(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_input_r_address0),
        .B(weights_q0),
        .D(ap_NS_fsm[1:0]),
        .DIBDI(\int_output_r/p_1_in ),
        .Q({ap_CS_fsm_state7,ap_CS_fsm_state6,ap_CS_fsm_state5,ap_CS_fsm_state4,ap_CS_fsm_state3,ap_CS_fsm_state2,ap_CS_fsm_state1}),
        .\ap_CS_fsm_reg[0] ({\outNeurons_fu_76_reg_n_0_[6] ,\outNeurons_fu_76_reg_n_0_[5] ,\outNeurons_fu_76_reg_n_0_[4] ,\outNeurons_fu_76_reg_n_0_[3] ,\outNeurons_fu_76_reg_n_0_[2] ,\outNeurons_fu_76_reg_n_0_[1] ,\outNeurons_fu_76_reg_n_0_[0] }),
        .ap_NS_fsm12_out(ap_NS_fsm12_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\bias_load_reg_259_reg[14] (add_ln24_fu_190_p2),
        .grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_weights_address0(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_weights_address0),
        .\icmp_ln20_reg_222_reg[0] (control_s_axi_U_n_28),
        .\int_input_r_shift0_reg[0]_0 (control_s_axi_U_n_1),
        .\int_input_r_shift0_reg[0]_1 (grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_n_38),
        .\int_numOfInNeurons_reg[15]_0 (numOfInNeurons),
        .interrupt(interrupt),
        .mem_reg(output_r_q0),
        .mem_reg_0(bias_q0),
        .mem_reg_1(\icmp_ln20_reg_222_reg_n_0_[0] ),
        .mem_reg_2(conv147_fu_60),
        .mem_reg_i_51(bias_load_reg_259),
        .\outNeurons_fu_76_reg[0] (control_s_axi_U_n_24),
        .output_r_addr_reg_244(output_r_addr_reg_244),
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_runLayer_Pipeline_VITIS_LOOP_20_2 grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116
       (.A(input_r_q0),
        .ADDRBWRADDR(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_input_r_address0),
        .B(weights_q0),
        .D(ap_NS_fsm[4:3]),
        .DIBDI(\int_output_r/p_1_in ),
        .Q({ap_CS_fsm_state7,ap_CS_fsm_state5,ap_CS_fsm_state4,ap_CS_fsm_state3,ap_CS_fsm_state2}),
        .\ap_CS_fsm_reg[2] (grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_n_37),
        .\ap_CS_fsm_reg[4] (\ap_CS_fsm[4]_i_2_n_0 ),
        .\ap_CS_fsm_reg[4]_0 (\icmp_ln20_reg_222_reg_n_0_[0] ),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\conv147_fu_60_reg[15]_0 (conv147_fu_60),
        .\conv147_fu_60_reg[15]_1 (output_r_load_reg_249),
        .grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_weights_address0(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_weights_address0),
        .icmp_ln20_fu_136_p2_carry__0_0(numOfInNeurons_read_reg_210),
        .\inNeurons_fu_56_reg[0]_0 (grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_n_38),
        .\int_input_r_shift0_reg[0] (control_s_axi_U_n_1),
        .mem_reg(add_ln24_fu_190_p2),
        .mem_reg_0(trunc_ln24_reg_239),
        .output_r_addr_reg_244(output_r_addr_reg_244[0]));
  FDRE #(
    .INIT(1'b0)) 
    grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_n_37),
        .Q(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .R(ap_rst_n_inv));
  FDRE \icmp_ln20_reg_222_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(control_s_axi_U_n_28),
        .Q(\icmp_ln20_reg_222_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_210_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[0]),
        .Q(numOfInNeurons_read_reg_210[0]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_210_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[10]),
        .Q(numOfInNeurons_read_reg_210[10]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_210_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[11]),
        .Q(numOfInNeurons_read_reg_210[11]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_210_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[12]),
        .Q(numOfInNeurons_read_reg_210[12]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_210_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[13]),
        .Q(numOfInNeurons_read_reg_210[13]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_210_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[14]),
        .Q(numOfInNeurons_read_reg_210[14]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_210_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[15]),
        .Q(numOfInNeurons_read_reg_210[15]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_210_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[1]),
        .Q(numOfInNeurons_read_reg_210[1]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_210_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[2]),
        .Q(numOfInNeurons_read_reg_210[2]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_210_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[3]),
        .Q(numOfInNeurons_read_reg_210[3]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_210_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[4]),
        .Q(numOfInNeurons_read_reg_210[4]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_210_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[5]),
        .Q(numOfInNeurons_read_reg_210[5]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_210_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[6]),
        .Q(numOfInNeurons_read_reg_210[6]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_210_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[7]),
        .Q(numOfInNeurons_read_reg_210[7]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_210_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[8]),
        .Q(numOfInNeurons_read_reg_210[8]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_210_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[9]),
        .Q(numOfInNeurons_read_reg_210[9]),
        .R(1'b0));
  FDRE \outNeurons_fu_76_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(add_ln18_reg_229[0]),
        .Q(\outNeurons_fu_76_reg_n_0_[0] ),
        .R(ap_NS_fsm12_out));
  FDRE \outNeurons_fu_76_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(add_ln18_reg_229[1]),
        .Q(\outNeurons_fu_76_reg_n_0_[1] ),
        .R(ap_NS_fsm12_out));
  FDRE \outNeurons_fu_76_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(add_ln18_reg_229[2]),
        .Q(\outNeurons_fu_76_reg_n_0_[2] ),
        .R(ap_NS_fsm12_out));
  FDRE \outNeurons_fu_76_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(add_ln18_reg_229[3]),
        .Q(\outNeurons_fu_76_reg_n_0_[3] ),
        .R(ap_NS_fsm12_out));
  FDRE \outNeurons_fu_76_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(add_ln18_reg_229[4]),
        .Q(\outNeurons_fu_76_reg_n_0_[4] ),
        .R(ap_NS_fsm12_out));
  FDRE \outNeurons_fu_76_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(add_ln18_reg_229[5]),
        .Q(\outNeurons_fu_76_reg_n_0_[5] ),
        .R(ap_NS_fsm12_out));
  FDRE \outNeurons_fu_76_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(add_ln18_reg_229[6]),
        .Q(\outNeurons_fu_76_reg_n_0_[6] ),
        .R(ap_NS_fsm12_out));
  FDRE \output_r_addr_reg_244_reg[0] 
       (.C(ap_clk),
        .CE(\trunc_ln24_reg_239[12]_i_1_n_0 ),
        .D(\outNeurons_fu_76_reg_n_0_[0] ),
        .Q(output_r_addr_reg_244[0]),
        .R(1'b0));
  FDRE \output_r_addr_reg_244_reg[1] 
       (.C(ap_clk),
        .CE(\trunc_ln24_reg_239[12]_i_1_n_0 ),
        .D(\outNeurons_fu_76_reg_n_0_[1] ),
        .Q(output_r_addr_reg_244[1]),
        .R(1'b0));
  FDRE \output_r_addr_reg_244_reg[2] 
       (.C(ap_clk),
        .CE(\trunc_ln24_reg_239[12]_i_1_n_0 ),
        .D(\outNeurons_fu_76_reg_n_0_[2] ),
        .Q(output_r_addr_reg_244[2]),
        .R(1'b0));
  FDRE \output_r_addr_reg_244_reg[3] 
       (.C(ap_clk),
        .CE(\trunc_ln24_reg_239[12]_i_1_n_0 ),
        .D(\outNeurons_fu_76_reg_n_0_[3] ),
        .Q(output_r_addr_reg_244[3]),
        .R(1'b0));
  FDRE \output_r_addr_reg_244_reg[4] 
       (.C(ap_clk),
        .CE(\trunc_ln24_reg_239[12]_i_1_n_0 ),
        .D(\outNeurons_fu_76_reg_n_0_[4] ),
        .Q(output_r_addr_reg_244[4]),
        .R(1'b0));
  FDRE \output_r_addr_reg_244_reg[5] 
       (.C(ap_clk),
        .CE(\trunc_ln24_reg_239[12]_i_1_n_0 ),
        .D(\outNeurons_fu_76_reg_n_0_[5] ),
        .Q(output_r_addr_reg_244[5]),
        .R(1'b0));
  FDRE \output_r_load_reg_249_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[0]),
        .Q(output_r_load_reg_249[0]),
        .R(1'b0));
  FDRE \output_r_load_reg_249_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[10]),
        .Q(output_r_load_reg_249[10]),
        .R(1'b0));
  FDRE \output_r_load_reg_249_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[11]),
        .Q(output_r_load_reg_249[11]),
        .R(1'b0));
  FDRE \output_r_load_reg_249_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[12]),
        .Q(output_r_load_reg_249[12]),
        .R(1'b0));
  FDRE \output_r_load_reg_249_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[13]),
        .Q(output_r_load_reg_249[13]),
        .R(1'b0));
  FDRE \output_r_load_reg_249_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[14]),
        .Q(output_r_load_reg_249[14]),
        .R(1'b0));
  FDRE \output_r_load_reg_249_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[15]),
        .Q(output_r_load_reg_249[15]),
        .R(1'b0));
  FDRE \output_r_load_reg_249_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[1]),
        .Q(output_r_load_reg_249[1]),
        .R(1'b0));
  FDRE \output_r_load_reg_249_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[2]),
        .Q(output_r_load_reg_249[2]),
        .R(1'b0));
  FDRE \output_r_load_reg_249_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[3]),
        .Q(output_r_load_reg_249[3]),
        .R(1'b0));
  FDRE \output_r_load_reg_249_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[4]),
        .Q(output_r_load_reg_249[4]),
        .R(1'b0));
  FDRE \output_r_load_reg_249_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[5]),
        .Q(output_r_load_reg_249[5]),
        .R(1'b0));
  FDRE \output_r_load_reg_249_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[6]),
        .Q(output_r_load_reg_249[6]),
        .R(1'b0));
  FDRE \output_r_load_reg_249_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[7]),
        .Q(output_r_load_reg_249[7]),
        .R(1'b0));
  FDRE \output_r_load_reg_249_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[8]),
        .Q(output_r_load_reg_249[8]),
        .R(1'b0));
  FDRE \output_r_load_reg_249_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(output_r_q0[9]),
        .Q(output_r_load_reg_249[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \trunc_ln24_reg_239[12]_i_1 
       (.I0(\ap_CS_fsm[4]_i_2_n_0 ),
        .O(\trunc_ln24_reg_239[12]_i_1_n_0 ));
  FDRE \trunc_ln24_reg_239_reg[0] 
       (.C(ap_clk),
        .CE(\trunc_ln24_reg_239[12]_i_1_n_0 ),
        .D(weightIndexAdded_fu_72_reg[0]),
        .Q(trunc_ln24_reg_239[0]),
        .R(1'b0));
  FDRE \trunc_ln24_reg_239_reg[10] 
       (.C(ap_clk),
        .CE(\trunc_ln24_reg_239[12]_i_1_n_0 ),
        .D(weightIndexAdded_fu_72_reg[10]),
        .Q(trunc_ln24_reg_239[10]),
        .R(1'b0));
  FDRE \trunc_ln24_reg_239_reg[11] 
       (.C(ap_clk),
        .CE(\trunc_ln24_reg_239[12]_i_1_n_0 ),
        .D(weightIndexAdded_fu_72_reg[11]),
        .Q(trunc_ln24_reg_239[11]),
        .R(1'b0));
  FDRE \trunc_ln24_reg_239_reg[12] 
       (.C(ap_clk),
        .CE(\trunc_ln24_reg_239[12]_i_1_n_0 ),
        .D(weightIndexAdded_fu_72_reg[12]),
        .Q(trunc_ln24_reg_239[12]),
        .R(1'b0));
  FDRE \trunc_ln24_reg_239_reg[1] 
       (.C(ap_clk),
        .CE(\trunc_ln24_reg_239[12]_i_1_n_0 ),
        .D(weightIndexAdded_fu_72_reg[1]),
        .Q(trunc_ln24_reg_239[1]),
        .R(1'b0));
  FDRE \trunc_ln24_reg_239_reg[2] 
       (.C(ap_clk),
        .CE(\trunc_ln24_reg_239[12]_i_1_n_0 ),
        .D(weightIndexAdded_fu_72_reg[2]),
        .Q(trunc_ln24_reg_239[2]),
        .R(1'b0));
  FDRE \trunc_ln24_reg_239_reg[3] 
       (.C(ap_clk),
        .CE(\trunc_ln24_reg_239[12]_i_1_n_0 ),
        .D(weightIndexAdded_fu_72_reg[3]),
        .Q(trunc_ln24_reg_239[3]),
        .R(1'b0));
  FDRE \trunc_ln24_reg_239_reg[4] 
       (.C(ap_clk),
        .CE(\trunc_ln24_reg_239[12]_i_1_n_0 ),
        .D(weightIndexAdded_fu_72_reg[4]),
        .Q(trunc_ln24_reg_239[4]),
        .R(1'b0));
  FDRE \trunc_ln24_reg_239_reg[5] 
       (.C(ap_clk),
        .CE(\trunc_ln24_reg_239[12]_i_1_n_0 ),
        .D(weightIndexAdded_fu_72_reg[5]),
        .Q(trunc_ln24_reg_239[5]),
        .R(1'b0));
  FDRE \trunc_ln24_reg_239_reg[6] 
       (.C(ap_clk),
        .CE(\trunc_ln24_reg_239[12]_i_1_n_0 ),
        .D(weightIndexAdded_fu_72_reg[6]),
        .Q(trunc_ln24_reg_239[6]),
        .R(1'b0));
  FDRE \trunc_ln24_reg_239_reg[7] 
       (.C(ap_clk),
        .CE(\trunc_ln24_reg_239[12]_i_1_n_0 ),
        .D(weightIndexAdded_fu_72_reg[7]),
        .Q(trunc_ln24_reg_239[7]),
        .R(1'b0));
  FDRE \trunc_ln24_reg_239_reg[8] 
       (.C(ap_clk),
        .CE(\trunc_ln24_reg_239[12]_i_1_n_0 ),
        .D(weightIndexAdded_fu_72_reg[8]),
        .Q(trunc_ln24_reg_239[8]),
        .R(1'b0));
  FDRE \trunc_ln24_reg_239_reg[9] 
       (.C(ap_clk),
        .CE(\trunc_ln24_reg_239[12]_i_1_n_0 ),
        .D(weightIndexAdded_fu_72_reg[9]),
        .Q(trunc_ln24_reg_239[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_72[0]_i_2 
       (.I0(numOfInNeurons_read_reg_210[3]),
        .I1(weightIndexAdded_fu_72_reg[3]),
        .O(\weightIndexAdded_fu_72[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_72[0]_i_3 
       (.I0(numOfInNeurons_read_reg_210[2]),
        .I1(weightIndexAdded_fu_72_reg[2]),
        .O(\weightIndexAdded_fu_72[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_72[0]_i_4 
       (.I0(numOfInNeurons_read_reg_210[1]),
        .I1(weightIndexAdded_fu_72_reg[1]),
        .O(\weightIndexAdded_fu_72[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_72[0]_i_5 
       (.I0(numOfInNeurons_read_reg_210[0]),
        .I1(weightIndexAdded_fu_72_reg[0]),
        .O(\weightIndexAdded_fu_72[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_72[12]_i_2 
       (.I0(numOfInNeurons_read_reg_210[12]),
        .I1(weightIndexAdded_fu_72_reg[12]),
        .O(\weightIndexAdded_fu_72[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_72[4]_i_2 
       (.I0(numOfInNeurons_read_reg_210[7]),
        .I1(weightIndexAdded_fu_72_reg[7]),
        .O(\weightIndexAdded_fu_72[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_72[4]_i_3 
       (.I0(numOfInNeurons_read_reg_210[6]),
        .I1(weightIndexAdded_fu_72_reg[6]),
        .O(\weightIndexAdded_fu_72[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_72[4]_i_4 
       (.I0(numOfInNeurons_read_reg_210[5]),
        .I1(weightIndexAdded_fu_72_reg[5]),
        .O(\weightIndexAdded_fu_72[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_72[4]_i_5 
       (.I0(numOfInNeurons_read_reg_210[4]),
        .I1(weightIndexAdded_fu_72_reg[4]),
        .O(\weightIndexAdded_fu_72[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_72[8]_i_2 
       (.I0(numOfInNeurons_read_reg_210[11]),
        .I1(weightIndexAdded_fu_72_reg[11]),
        .O(\weightIndexAdded_fu_72[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_72[8]_i_3 
       (.I0(numOfInNeurons_read_reg_210[10]),
        .I1(weightIndexAdded_fu_72_reg[10]),
        .O(\weightIndexAdded_fu_72[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_72[8]_i_4 
       (.I0(numOfInNeurons_read_reg_210[9]),
        .I1(weightIndexAdded_fu_72_reg[9]),
        .O(\weightIndexAdded_fu_72[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weightIndexAdded_fu_72[8]_i_5 
       (.I0(numOfInNeurons_read_reg_210[8]),
        .I1(weightIndexAdded_fu_72_reg[8]),
        .O(\weightIndexAdded_fu_72[8]_i_5_n_0 ));
  FDRE \weightIndexAdded_fu_72_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(\weightIndexAdded_fu_72_reg[0]_i_1_n_7 ),
        .Q(weightIndexAdded_fu_72_reg[0]),
        .R(ap_NS_fsm12_out));
  CARRY4 \weightIndexAdded_fu_72_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\weightIndexAdded_fu_72_reg[0]_i_1_n_0 ,\weightIndexAdded_fu_72_reg[0]_i_1_n_1 ,\weightIndexAdded_fu_72_reg[0]_i_1_n_2 ,\weightIndexAdded_fu_72_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(numOfInNeurons_read_reg_210[3:0]),
        .O({\weightIndexAdded_fu_72_reg[0]_i_1_n_4 ,\weightIndexAdded_fu_72_reg[0]_i_1_n_5 ,\weightIndexAdded_fu_72_reg[0]_i_1_n_6 ,\weightIndexAdded_fu_72_reg[0]_i_1_n_7 }),
        .S({\weightIndexAdded_fu_72[0]_i_2_n_0 ,\weightIndexAdded_fu_72[0]_i_3_n_0 ,\weightIndexAdded_fu_72[0]_i_4_n_0 ,\weightIndexAdded_fu_72[0]_i_5_n_0 }));
  FDRE \weightIndexAdded_fu_72_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(\weightIndexAdded_fu_72_reg[8]_i_1_n_5 ),
        .Q(weightIndexAdded_fu_72_reg[10]),
        .R(ap_NS_fsm12_out));
  FDRE \weightIndexAdded_fu_72_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(\weightIndexAdded_fu_72_reg[8]_i_1_n_4 ),
        .Q(weightIndexAdded_fu_72_reg[11]),
        .R(ap_NS_fsm12_out));
  FDRE \weightIndexAdded_fu_72_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(\weightIndexAdded_fu_72_reg[12]_i_1_n_7 ),
        .Q(weightIndexAdded_fu_72_reg[12]),
        .R(ap_NS_fsm12_out));
  CARRY4 \weightIndexAdded_fu_72_reg[12]_i_1 
       (.CI(\weightIndexAdded_fu_72_reg[8]_i_1_n_0 ),
        .CO(\NLW_weightIndexAdded_fu_72_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_weightIndexAdded_fu_72_reg[12]_i_1_O_UNCONNECTED [3:1],\weightIndexAdded_fu_72_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\weightIndexAdded_fu_72[12]_i_2_n_0 }));
  FDRE \weightIndexAdded_fu_72_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(\weightIndexAdded_fu_72_reg[0]_i_1_n_6 ),
        .Q(weightIndexAdded_fu_72_reg[1]),
        .R(ap_NS_fsm12_out));
  FDRE \weightIndexAdded_fu_72_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(\weightIndexAdded_fu_72_reg[0]_i_1_n_5 ),
        .Q(weightIndexAdded_fu_72_reg[2]),
        .R(ap_NS_fsm12_out));
  FDRE \weightIndexAdded_fu_72_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(\weightIndexAdded_fu_72_reg[0]_i_1_n_4 ),
        .Q(weightIndexAdded_fu_72_reg[3]),
        .R(ap_NS_fsm12_out));
  FDRE \weightIndexAdded_fu_72_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(\weightIndexAdded_fu_72_reg[4]_i_1_n_7 ),
        .Q(weightIndexAdded_fu_72_reg[4]),
        .R(ap_NS_fsm12_out));
  CARRY4 \weightIndexAdded_fu_72_reg[4]_i_1 
       (.CI(\weightIndexAdded_fu_72_reg[0]_i_1_n_0 ),
        .CO({\weightIndexAdded_fu_72_reg[4]_i_1_n_0 ,\weightIndexAdded_fu_72_reg[4]_i_1_n_1 ,\weightIndexAdded_fu_72_reg[4]_i_1_n_2 ,\weightIndexAdded_fu_72_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(numOfInNeurons_read_reg_210[7:4]),
        .O({\weightIndexAdded_fu_72_reg[4]_i_1_n_4 ,\weightIndexAdded_fu_72_reg[4]_i_1_n_5 ,\weightIndexAdded_fu_72_reg[4]_i_1_n_6 ,\weightIndexAdded_fu_72_reg[4]_i_1_n_7 }),
        .S({\weightIndexAdded_fu_72[4]_i_2_n_0 ,\weightIndexAdded_fu_72[4]_i_3_n_0 ,\weightIndexAdded_fu_72[4]_i_4_n_0 ,\weightIndexAdded_fu_72[4]_i_5_n_0 }));
  FDRE \weightIndexAdded_fu_72_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(\weightIndexAdded_fu_72_reg[4]_i_1_n_6 ),
        .Q(weightIndexAdded_fu_72_reg[5]),
        .R(ap_NS_fsm12_out));
  FDRE \weightIndexAdded_fu_72_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(\weightIndexAdded_fu_72_reg[4]_i_1_n_5 ),
        .Q(weightIndexAdded_fu_72_reg[6]),
        .R(ap_NS_fsm12_out));
  FDRE \weightIndexAdded_fu_72_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(\weightIndexAdded_fu_72_reg[4]_i_1_n_4 ),
        .Q(weightIndexAdded_fu_72_reg[7]),
        .R(ap_NS_fsm12_out));
  FDRE \weightIndexAdded_fu_72_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(\weightIndexAdded_fu_72_reg[8]_i_1_n_7 ),
        .Q(weightIndexAdded_fu_72_reg[8]),
        .R(ap_NS_fsm12_out));
  CARRY4 \weightIndexAdded_fu_72_reg[8]_i_1 
       (.CI(\weightIndexAdded_fu_72_reg[4]_i_1_n_0 ),
        .CO({\weightIndexAdded_fu_72_reg[8]_i_1_n_0 ,\weightIndexAdded_fu_72_reg[8]_i_1_n_1 ,\weightIndexAdded_fu_72_reg[8]_i_1_n_2 ,\weightIndexAdded_fu_72_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(numOfInNeurons_read_reg_210[11:8]),
        .O({\weightIndexAdded_fu_72_reg[8]_i_1_n_4 ,\weightIndexAdded_fu_72_reg[8]_i_1_n_5 ,\weightIndexAdded_fu_72_reg[8]_i_1_n_6 ,\weightIndexAdded_fu_72_reg[8]_i_1_n_7 }),
        .S({\weightIndexAdded_fu_72[8]_i_2_n_0 ,\weightIndexAdded_fu_72[8]_i_3_n_0 ,\weightIndexAdded_fu_72[8]_i_4_n_0 ,\weightIndexAdded_fu_72[8]_i_5_n_0 }));
  FDRE \weightIndexAdded_fu_72_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(\weightIndexAdded_fu_72_reg[8]_i_1_n_6 ),
        .Q(weightIndexAdded_fu_72_reg[9]),
        .R(ap_NS_fsm12_out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_control_s_axi
   (ap_rst_n_inv,
    \int_input_r_shift0_reg[0]_0 ,
    \int_numOfInNeurons_reg[15]_0 ,
    s_axi_control_WREADY,
    s_axi_control_ARREADY,
    s_axi_control_RVALID,
    s_axi_control_AWREADY,
    D,
    \outNeurons_fu_76_reg[0] ,
    interrupt,
    s_axi_control_BVALID,
    ap_NS_fsm12_out,
    \icmp_ln20_reg_222_reg[0] ,
    mem_reg,
    \bias_load_reg_259_reg[14] ,
    s_axi_control_RDATA,
    A,
    mem_reg_0,
    B,
    ap_clk,
    s_axi_control_WDATA,
    DIBDI,
    grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg,
    ADDRBWRADDR,
    Q,
    output_r_addr_reg_244,
    grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_weights_address0,
    \int_input_r_shift0_reg[0]_1 ,
    ap_rst_n,
    s_axi_control_ARADDR,
    s_axi_control_ARVALID,
    s_axi_control_RREADY,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    s_axi_control_BREADY,
    s_axi_control_AWADDR,
    s_axi_control_AWVALID,
    \ap_CS_fsm_reg[0] ,
    mem_reg_1,
    mem_reg_2,
    mem_reg_i_51);
  output ap_rst_n_inv;
  output \int_input_r_shift0_reg[0]_0 ;
  output [15:0]\int_numOfInNeurons_reg[15]_0 ;
  output s_axi_control_WREADY;
  output s_axi_control_ARREADY;
  output s_axi_control_RVALID;
  output s_axi_control_AWREADY;
  output [1:0]D;
  output \outNeurons_fu_76_reg[0] ;
  output interrupt;
  output s_axi_control_BVALID;
  output ap_NS_fsm12_out;
  output \icmp_ln20_reg_222_reg[0] ;
  output [15:0]mem_reg;
  output [7:0]\bias_load_reg_259_reg[14] ;
  output [31:0]s_axi_control_RDATA;
  output [15:0]A;
  output [15:0]mem_reg_0;
  output [15:0]B;
  input ap_clk;
  input [31:0]s_axi_control_WDATA;
  input [7:0]DIBDI;
  input grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg;
  input [5:0]ADDRBWRADDR;
  input [6:0]Q;
  input [5:0]output_r_addr_reg_244;
  input [12:0]grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_weights_address0;
  input \int_input_r_shift0_reg[0]_1 ;
  input ap_rst_n;
  input [14:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  input s_axi_control_RREADY;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_BREADY;
  input [14:0]s_axi_control_AWADDR;
  input s_axi_control_AWVALID;
  input [6:0]\ap_CS_fsm_reg[0] ;
  input mem_reg_1;
  input [15:0]mem_reg_2;
  input [15:0]mem_reg_i_51;

  wire [15:0]A;
  wire [5:0]ADDRBWRADDR;
  wire [15:0]B;
  wire [1:0]D;
  wire [7:0]DIBDI;
  wire [6:0]Q;
  wire \ap_CS_fsm[0]_i_2_n_0 ;
  wire [6:0]\ap_CS_fsm_reg[0] ;
  wire ap_NS_fsm12_out;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire auto_restart_status_i_1_n_0;
  wire auto_restart_status_reg_n_0;
  wire aw_hs;
  wire [7:0]\bias_load_reg_259_reg[14] ;
  wire grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg;
  wire [12:0]grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_weights_address0;
  wire \icmp_ln20_reg_222[0]_i_2_n_0 ;
  wire \icmp_ln20_reg_222[0]_i_3_n_0 ;
  wire \icmp_ln20_reg_222[0]_i_4_n_0 ;
  wire \icmp_ln20_reg_222_reg[0] ;
  wire int_ap_ready__0;
  wire int_ap_ready_i_1_n_0;
  wire int_ap_ready_i_2_n_0;
  wire int_ap_start_i_1_n_0;
  wire int_ap_start_i_3_n_0;
  wire int_ap_start_i_4_n_0;
  wire int_ap_start_i_6_n_0;
  wire int_ap_start_i_7_n_0;
  wire int_ap_start_i_8_n_0;
  wire int_auto_restart_i_1_n_0;
  wire int_bias_n_60;
  wire int_bias_n_61;
  wire int_bias_n_62;
  wire int_bias_n_63;
  wire [31:0]int_bias_q0;
  wire [30:1]int_bias_q1;
  wire int_bias_read;
  wire int_bias_read0;
  wire int_bias_read_i_2_n_0;
  wire int_bias_read_i_3_n_0;
  wire \int_bias_shift0[0]_i_1_n_0 ;
  wire \int_bias_shift0_reg_n_0_[0] ;
  wire int_bias_write0;
  wire int_bias_write_i_1_n_0;
  wire int_bias_write_i_3_n_0;
  wire int_bias_write_reg_n_0;
  wire int_gie_i_1_n_0;
  wire int_gie_reg_n_0;
  wire int_ier12_out;
  wire \int_ier[5]_i_2_n_0 ;
  wire \int_ier[5]_i_3_n_0 ;
  wire \int_ier_reg_n_0_[0] ;
  wire \int_ier_reg_n_0_[1] ;
  wire \int_ier_reg_n_0_[2] ;
  wire \int_ier_reg_n_0_[3] ;
  wire \int_ier_reg_n_0_[4] ;
  wire \int_ier_reg_n_0_[5] ;
  wire [5:5]int_input_r_address1;
  wire [31:0]int_input_r_q0;
  wire [31:0]int_input_r_q1;
  wire int_input_r_read;
  wire int_input_r_read0;
  wire \int_input_r_shift0_reg[0]_0 ;
  wire \int_input_r_shift0_reg[0]_1 ;
  wire int_input_r_write0;
  wire int_input_r_write_i_1_n_0;
  wire int_input_r_write_reg_n_0;
  wire int_isr10_out;
  wire int_isr7_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[0]_i_2_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr[5]_i_1_n_0 ;
  wire \int_isr[5]_i_2_n_0 ;
  wire \int_isr[5]_i_3_n_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire \int_isr_reg_n_0_[1] ;
  wire \int_isr_reg_n_0_[5] ;
  wire \int_numOfInNeurons[0]_i_1_n_0 ;
  wire \int_numOfInNeurons[10]_i_1_n_0 ;
  wire \int_numOfInNeurons[11]_i_1_n_0 ;
  wire \int_numOfInNeurons[12]_i_1_n_0 ;
  wire \int_numOfInNeurons[13]_i_1_n_0 ;
  wire \int_numOfInNeurons[14]_i_1_n_0 ;
  wire \int_numOfInNeurons[15]_i_1_n_0 ;
  wire \int_numOfInNeurons[15]_i_2_n_0 ;
  wire \int_numOfInNeurons[1]_i_1_n_0 ;
  wire \int_numOfInNeurons[2]_i_1_n_0 ;
  wire \int_numOfInNeurons[3]_i_1_n_0 ;
  wire \int_numOfInNeurons[4]_i_1_n_0 ;
  wire \int_numOfInNeurons[5]_i_1_n_0 ;
  wire \int_numOfInNeurons[6]_i_1_n_0 ;
  wire \int_numOfInNeurons[7]_i_1_n_0 ;
  wire \int_numOfInNeurons[8]_i_1_n_0 ;
  wire \int_numOfInNeurons[9]_i_1_n_0 ;
  wire [15:0]\int_numOfInNeurons_reg[15]_0 ;
  wire [4:0]int_output_r_address1;
  wire int_output_r_n_15;
  wire int_output_r_n_16;
  wire int_output_r_n_17;
  wire int_output_r_n_18;
  wire int_output_r_n_19;
  wire int_output_r_n_20;
  wire int_output_r_n_21;
  wire int_output_r_n_22;
  wire int_output_r_n_23;
  wire int_output_r_n_24;
  wire int_output_r_n_25;
  wire int_output_r_n_26;
  wire int_output_r_n_27;
  wire int_output_r_n_28;
  wire int_output_r_n_29;
  wire int_output_r_n_30;
  wire int_output_r_n_31;
  wire int_output_r_n_32;
  wire [15:0]int_output_r_q1;
  wire int_output_r_read;
  wire int_output_r_read0;
  wire int_output_r_read_i_2_n_0;
  wire int_output_r_read_i_3_n_0;
  wire \int_output_r_shift0[0]_i_1_n_0 ;
  wire \int_output_r_shift0_reg_n_0_[0] ;
  wire int_output_r_write0;
  wire int_output_r_write_i_1_n_0;
  wire int_output_r_write_i_3_n_0;
  wire int_output_r_write_i_4_n_0;
  wire int_output_r_write_reg_n_0;
  wire int_task_ap_done__0;
  wire int_task_ap_done_i_1_n_0;
  wire int_weights_n_10;
  wire int_weights_n_11;
  wire int_weights_n_12;
  wire int_weights_n_13;
  wire int_weights_n_14;
  wire int_weights_n_15;
  wire int_weights_n_16;
  wire int_weights_n_17;
  wire int_weights_n_18;
  wire int_weights_n_23;
  wire int_weights_n_24;
  wire int_weights_n_25;
  wire int_weights_n_26;
  wire int_weights_n_27;
  wire int_weights_n_28;
  wire int_weights_n_29;
  wire int_weights_n_30;
  wire int_weights_n_31;
  wire int_weights_n_32;
  wire int_weights_n_33;
  wire int_weights_n_34;
  wire int_weights_n_35;
  wire int_weights_n_36;
  wire int_weights_n_37;
  wire int_weights_n_6;
  wire int_weights_n_7;
  wire int_weights_n_8;
  wire int_weights_n_9;
  wire [31:0]int_weights_q0;
  wire [31:0]int_weights_q1;
  wire int_weights_read;
  wire int_weights_read_i_1_n_0;
  wire \int_weights_shift0_reg_n_0_[0] ;
  wire int_weights_write_i_1_n_0;
  wire int_weights_write_i_2_n_0;
  wire int_weights_write_reg_n_0;
  wire interrupt;
  wire [15:0]mem_reg;
  wire [15:0]mem_reg_0;
  wire mem_reg_1;
  wire [15:0]mem_reg_2;
  wire [15:0]mem_reg_i_51;
  wire \outNeurons_fu_76_reg[0] ;
  wire [5:0]output_r_addr_reg_244;
  wire [7:2]p_1_in;
  wire \rdata[0]_i_3_n_0 ;
  wire \rdata[0]_i_4_n_0 ;
  wire \rdata[15]_i_4_n_0 ;
  wire \rdata[15]_i_5_n_0 ;
  wire \rdata[1]_i_3_n_0 ;
  wire \rdata[1]_i_4_n_0 ;
  wire \rdata[2]_i_3_n_0 ;
  wire \rdata[31]_i_1_n_0 ;
  wire \rdata[31]_i_3_n_0 ;
  wire \rdata[3]_i_3_n_0 ;
  wire \rdata[4]_i_3_n_0 ;
  wire \rdata[5]_i_3_n_0 ;
  wire \rdata[5]_i_4_n_0 ;
  wire \rdata[7]_i_2_n_0 ;
  wire \rdata[7]_i_3_n_0 ;
  wire \rdata[7]_i_5_n_0 ;
  wire \rdata[7]_i_6_n_0 ;
  wire [1:0]rstate;
  wire \rstate[0]_i_1_n_0 ;
  wire [14:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [14:0]s_axi_control_AWADDR;
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
  wire task_ap_done;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[10] ;
  wire \waddr_reg_n_0_[11] ;
  wire \waddr_reg_n_0_[12] ;
  wire \waddr_reg_n_0_[13] ;
  wire \waddr_reg_n_0_[14] ;
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

  LUT6 #(
    .INIT(64'h5555000C55550000)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm[0]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(ap_done),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \ap_CS_fsm[0]_i_2 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[4]),
        .O(\ap_CS_fsm[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(Q[6]),
        .I1(Q[0]),
        .I2(ap_start),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hEFAA)) 
    auto_restart_status_i_1
       (.I0(p_1_in[7]),
        .I1(ap_start),
        .I2(Q[0]),
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
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_259[0]_i_1 
       (.I0(int_bias_q0[16]),
        .I1(\int_bias_shift0_reg_n_0_[0] ),
        .I2(int_bias_q0[0]),
        .O(mem_reg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_259[10]_i_1 
       (.I0(int_bias_q0[26]),
        .I1(\int_bias_shift0_reg_n_0_[0] ),
        .I2(int_bias_q0[10]),
        .O(mem_reg_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_259[11]_i_1 
       (.I0(int_bias_q0[27]),
        .I1(\int_bias_shift0_reg_n_0_[0] ),
        .I2(int_bias_q0[11]),
        .O(mem_reg_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_259[12]_i_1 
       (.I0(int_bias_q0[28]),
        .I1(\int_bias_shift0_reg_n_0_[0] ),
        .I2(int_bias_q0[12]),
        .O(mem_reg_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_259[13]_i_1 
       (.I0(int_bias_q0[29]),
        .I1(\int_bias_shift0_reg_n_0_[0] ),
        .I2(int_bias_q0[13]),
        .O(mem_reg_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_259[14]_i_1 
       (.I0(int_bias_q0[30]),
        .I1(\int_bias_shift0_reg_n_0_[0] ),
        .I2(int_bias_q0[14]),
        .O(mem_reg_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_259[15]_i_1 
       (.I0(int_bias_q0[31]),
        .I1(\int_bias_shift0_reg_n_0_[0] ),
        .I2(int_bias_q0[15]),
        .O(mem_reg_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_259[1]_i_1 
       (.I0(int_bias_q0[17]),
        .I1(\int_bias_shift0_reg_n_0_[0] ),
        .I2(int_bias_q0[1]),
        .O(mem_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_259[2]_i_1 
       (.I0(int_bias_q0[18]),
        .I1(\int_bias_shift0_reg_n_0_[0] ),
        .I2(int_bias_q0[2]),
        .O(mem_reg_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_259[3]_i_1 
       (.I0(int_bias_q0[19]),
        .I1(\int_bias_shift0_reg_n_0_[0] ),
        .I2(int_bias_q0[3]),
        .O(mem_reg_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_259[4]_i_1 
       (.I0(int_bias_q0[20]),
        .I1(\int_bias_shift0_reg_n_0_[0] ),
        .I2(int_bias_q0[4]),
        .O(mem_reg_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_259[5]_i_1 
       (.I0(int_bias_q0[21]),
        .I1(\int_bias_shift0_reg_n_0_[0] ),
        .I2(int_bias_q0[5]),
        .O(mem_reg_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_259[6]_i_1 
       (.I0(int_bias_q0[22]),
        .I1(\int_bias_shift0_reg_n_0_[0] ),
        .I2(int_bias_q0[6]),
        .O(mem_reg_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_259[7]_i_1 
       (.I0(int_bias_q0[23]),
        .I1(\int_bias_shift0_reg_n_0_[0] ),
        .I2(int_bias_q0[7]),
        .O(mem_reg_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_259[8]_i_1 
       (.I0(int_bias_q0[24]),
        .I1(\int_bias_shift0_reg_n_0_[0] ),
        .I2(int_bias_q0[8]),
        .O(mem_reg_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bias_load_reg_259[9]_i_1 
       (.I0(int_bias_q0[25]),
        .I1(\int_bias_shift0_reg_n_0_[0] ),
        .I2(int_bias_q0[9]),
        .O(mem_reg_0[9]));
  LUT6 #(
    .INIT(64'h00AA03AA00AA00AA)) 
    \icmp_ln20_reg_222[0]_i_1 
       (.I0(mem_reg_1),
        .I1(\int_numOfInNeurons_reg[15]_0 [8]),
        .I2(\int_numOfInNeurons_reg[15]_0 [11]),
        .I3(Q[0]),
        .I4(\icmp_ln20_reg_222[0]_i_2_n_0 ),
        .I5(\icmp_ln20_reg_222[0]_i_3_n_0 ),
        .O(\icmp_ln20_reg_222_reg[0] ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \icmp_ln20_reg_222[0]_i_2 
       (.I0(\int_numOfInNeurons_reg[15]_0 [9]),
        .I1(\int_numOfInNeurons_reg[15]_0 [1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [5]),
        .I3(\int_numOfInNeurons_reg[15]_0 [15]),
        .I4(\icmp_ln20_reg_222[0]_i_4_n_0 ),
        .O(\icmp_ln20_reg_222[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \icmp_ln20_reg_222[0]_i_3 
       (.I0(\int_numOfInNeurons_reg[15]_0 [2]),
        .I1(\int_numOfInNeurons_reg[15]_0 [4]),
        .I2(\int_numOfInNeurons_reg[15]_0 [7]),
        .I3(\int_numOfInNeurons_reg[15]_0 [6]),
        .I4(\int_numOfInNeurons_reg[15]_0 [14]),
        .I5(\int_numOfInNeurons_reg[15]_0 [12]),
        .O(\icmp_ln20_reg_222[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \icmp_ln20_reg_222[0]_i_4 
       (.I0(\int_numOfInNeurons_reg[15]_0 [13]),
        .I1(\int_numOfInNeurons_reg[15]_0 [10]),
        .I2(\int_numOfInNeurons_reg[15]_0 [0]),
        .I3(\int_numOfInNeurons_reg[15]_0 [3]),
        .O(\icmp_ln20_reg_222[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
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
        .Q(p_1_in[2]),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hEFEE0F00)) 
    int_ap_ready_i_1
       (.I0(\rdata[5]_i_3_n_0 ),
        .I1(int_ap_ready_i_2_n_0),
        .I2(p_1_in[7]),
        .I3(ap_done),
        .I4(int_ap_ready__0),
        .O(int_ap_ready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    int_ap_ready_i_2
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[4]),
        .O(int_ap_ready_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_ready_i_1_n_0),
        .Q(int_ap_ready__0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hBBFBBBBB88F88888)) 
    int_ap_start_i_1
       (.I0(p_1_in[7]),
        .I1(ap_done),
        .I2(int_ap_start_i_3_n_0),
        .I3(int_ap_start_i_4_n_0),
        .I4(s_axi_control_WDATA[0]),
        .I5(ap_start),
        .O(int_ap_start_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000020)) 
    int_ap_start_i_2
       (.I0(Q[1]),
        .I1(\outNeurons_fu_76_reg[0] ),
        .I2(\ap_CS_fsm_reg[0] [6]),
        .I3(\ap_CS_fsm_reg[0] [3]),
        .I4(\ap_CS_fsm_reg[0] [2]),
        .O(ap_done));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    int_ap_start_i_3
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(int_weights_write_i_2_n_0),
        .I2(int_ap_start_i_6_n_0),
        .I3(int_ap_start_i_7_n_0),
        .I4(int_ap_start_i_8_n_0),
        .I5(\waddr_reg_n_0_[4] ),
        .O(int_ap_start_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hB)) 
    int_ap_start_i_4
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(s_axi_control_WSTRB[0]),
        .O(int_ap_start_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    int_ap_start_i_5
       (.I0(\ap_CS_fsm_reg[0] [0]),
        .I1(\ap_CS_fsm_reg[0] [1]),
        .I2(\ap_CS_fsm_reg[0] [5]),
        .I3(\ap_CS_fsm_reg[0] [4]),
        .O(\outNeurons_fu_76_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    int_ap_start_i_6
       (.I0(\waddr_reg_n_0_[11] ),
        .I1(\waddr_reg_n_0_[6] ),
        .I2(\waddr_reg_n_0_[9] ),
        .I3(\waddr_reg_n_0_[7] ),
        .O(int_ap_start_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    int_ap_start_i_7
       (.I0(\waddr_reg_n_0_[13] ),
        .I1(\waddr_reg_n_0_[14] ),
        .I2(\waddr_reg_n_0_[0] ),
        .I3(\waddr_reg_n_0_[5] ),
        .O(int_ap_start_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    int_ap_start_i_8
       (.I0(\waddr_reg_n_0_[12] ),
        .I1(\waddr_reg_n_0_[1] ),
        .I2(\waddr_reg_n_0_[10] ),
        .I3(\waddr_reg_n_0_[8] ),
        .O(int_ap_start_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    int_auto_restart_i_1
       (.I0(s_axi_control_WDATA[7]),
        .I1(\int_isr[5]_i_2_n_0 ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(s_axi_control_WSTRB[0]),
        .I4(\waddr_reg_n_0_[2] ),
        .I5(p_1_in[7]),
        .O(int_auto_restart_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(p_1_in[7]),
        .R(ap_rst_n_inv));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_control_s_axi_ram__parameterized1 int_bias
       (.ADDRARDADDR(int_output_r_address1),
        .D({int_bias_n_60,int_bias_n_61}),
        .DOADO({int_bias_q1[30:8],int_bias_q1[6:5],int_bias_q1[3:1]}),
        .DOBDO(int_bias_q0),
        .Q(Q[4]),
        .ap_clk(ap_clk),
        .int_bias_read(int_bias_read),
        .int_input_r_read(int_input_r_read),
        .int_output_r_read(int_output_r_read),
        .mem_reg_0(int_bias_n_62),
        .mem_reg_1(int_bias_n_63),
        .mem_reg_2(int_bias_write_reg_n_0),
        .output_r_addr_reg_244(output_r_addr_reg_244[5:1]),
        .q1({int_weights_q1[31],int_weights_q1[7],int_weights_q1[4],int_weights_q1[0]}),
        .\rdata_reg[0] (int_output_r_n_32),
        .\rdata_reg[0]_0 (\rdata[5]_i_3_n_0 ),
        .\rdata_reg[0]_1 (\rdata[0]_i_3_n_0 ),
        .\rdata_reg[31] ({int_input_r_q1[31],int_input_r_q1[7],int_input_r_q1[4],int_input_r_q1[0]}),
        .\rdata_reg[4] ({int_output_r_q1[4],int_output_r_q1[0]}),
        .\rdata_reg[4]_0 (\rdata[4]_i_3_n_0 ),
        .\rdata_reg[7] (\rdata[31]_i_3_n_0 ),
        .rstate(rstate),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .wstate(wstate));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    int_bias_read_i_1
       (.I0(s_axi_control_ARADDR[8]),
        .I1(s_axi_control_ARADDR[14]),
        .I2(s_axi_control_ARADDR[9]),
        .I3(s_axi_control_ARADDR[7]),
        .I4(int_bias_read_i_2_n_0),
        .I5(int_bias_read_i_3_n_0),
        .O(int_bias_read0));
  LUT3 #(
    .INIT(8'hFE)) 
    int_bias_read_i_2
       (.I0(s_axi_control_ARADDR[11]),
        .I1(s_axi_control_ARADDR[13]),
        .I2(s_axi_control_ARADDR[12]),
        .O(int_bias_read_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    int_bias_read_i_3
       (.I0(s_axi_control_ARADDR[10]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .O(int_bias_read_i_3_n_0));
  FDRE int_bias_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_bias_read0),
        .Q(int_bias_read),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_shift0[0]_i_1 
       (.I0(output_r_addr_reg_244[0]),
        .I1(Q[4]),
        .I2(\int_bias_shift0_reg_n_0_[0] ),
        .O(\int_bias_shift0[0]_i_1_n_0 ));
  FDRE \int_bias_shift0_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_bias_shift0[0]_i_1_n_0 ),
        .Q(\int_bias_shift0_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFBFFFFFF0000)) 
    int_bias_write_i_1
       (.I0(int_output_r_n_32),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(s_axi_control_WVALID),
        .I4(int_bias_write0),
        .I5(int_bias_write_reg_n_0),
        .O(int_bias_write_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    int_bias_write_i_2
       (.I0(s_axi_control_AWADDR[7]),
        .I1(s_axi_control_AWADDR[8]),
        .I2(int_bias_write_i_3_n_0),
        .I3(s_axi_control_AWADDR[14]),
        .I4(s_axi_control_AWADDR[9]),
        .I5(int_output_r_write_i_4_n_0),
        .O(int_bias_write0));
  LUT4 #(
    .INIT(16'h0001)) 
    int_bias_write_i_3
       (.I0(s_axi_control_AWADDR[10]),
        .I1(s_axi_control_AWADDR[11]),
        .I2(s_axi_control_AWADDR[12]),
        .I3(s_axi_control_AWADDR[13]),
        .O(int_bias_write_i_3_n_0));
  FDRE int_bias_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_bias_write_i_1_n_0),
        .Q(int_bias_write_reg_n_0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    int_gie_i_1
       (.I0(s_axi_control_WDATA[0]),
        .I1(\int_isr[5]_i_2_n_0 ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(s_axi_control_WSTRB[0]),
        .I4(\waddr_reg_n_0_[2] ),
        .I5(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h00200000)) 
    \int_ier[5]_i_1 
       (.I0(s_axi_control_WSTRB[0]),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\waddr_reg_n_0_[4] ),
        .I4(\int_ier[5]_i_2_n_0 ),
        .O(int_ier12_out));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \int_ier[5]_i_2 
       (.I0(int_weights_write_i_2_n_0),
        .I1(\int_ier[5]_i_3_n_0 ),
        .I2(\waddr_reg_n_0_[12] ),
        .I3(\waddr_reg_n_0_[1] ),
        .I4(\waddr_reg_n_0_[10] ),
        .I5(\waddr_reg_n_0_[8] ),
        .O(\int_ier[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \int_ier[5]_i_3 
       (.I0(\waddr_reg_n_0_[7] ),
        .I1(\waddr_reg_n_0_[9] ),
        .I2(\waddr_reg_n_0_[6] ),
        .I3(\waddr_reg_n_0_[11] ),
        .I4(int_ap_start_i_7_n_0),
        .O(\int_ier[5]_i_3_n_0 ));
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_control_s_axi_ram__parameterized0 int_input_r
       (.ADDRARDADDR({int_input_r_address1,int_output_r_address1}),
        .ADDRBWRADDR(ADDRBWRADDR),
        .DOADO(int_input_r_q1),
        .DOBDO(int_input_r_q0),
        .ap_clk(ap_clk),
        .grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .mem_reg_0(int_input_r_write_reg_n_0),
        .mem_reg_1(int_output_r_n_32),
        .rstate(rstate),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .wstate(wstate));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    int_input_r_read_i_1
       (.I0(s_axi_control_ARADDR[8]),
        .I1(s_axi_control_ARADDR[9]),
        .I2(s_axi_control_ARADDR[14]),
        .I3(int_bias_read_i_2_n_0),
        .I4(s_axi_control_ARADDR[10]),
        .I5(int_output_r_n_32),
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
    .INIT(64'hFFFFFBFFFFFF0000)) 
    int_input_r_write_i_1
       (.I0(int_output_r_n_32),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(s_axi_control_WVALID),
        .I4(int_input_r_write0),
        .I5(int_input_r_write_reg_n_0),
        .O(int_input_r_write_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    int_input_r_write_i_2
       (.I0(int_output_r_write_i_3_n_0),
        .I1(s_axi_control_AWADDR[8]),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .I4(s_axi_control_AWVALID),
        .O(int_input_r_write0));
  FDRE int_input_r_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_input_r_write_i_1_n_0),
        .Q(int_input_r_write_reg_n_0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFF2000)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(\int_isr[0]_i_2_n_0 ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(s_axi_control_WSTRB[0]),
        .I4(int_isr10_out),
        .I5(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \int_isr[0]_i_2 
       (.I0(int_weights_write_i_2_n_0),
        .I1(int_ap_start_i_6_n_0),
        .I2(int_ap_start_i_7_n_0),
        .I3(int_ap_start_i_8_n_0),
        .I4(\waddr_reg_n_0_[4] ),
        .I5(\waddr_reg_n_0_[3] ),
        .O(\int_isr[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_isr[0]_i_3 
       (.I0(\int_ier_reg_n_0_[0] ),
        .I1(ap_done),
        .O(int_isr10_out));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFF2000)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(\int_isr[0]_i_2_n_0 ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(s_axi_control_WSTRB[0]),
        .I4(int_isr7_out),
        .I5(\int_isr_reg_n_0_[1] ),
        .O(\int_isr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_isr[1]_i_2 
       (.I0(\int_ier_reg_n_0_[1] ),
        .I1(ap_done),
        .O(int_isr7_out));
  LUT6 #(
    .INIT(64'hFFFF7FFF00008000)) 
    \int_isr[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(\int_isr[5]_i_2_n_0 ),
        .I5(\int_isr_reg_n_0_[5] ),
        .O(\int_isr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFFFFF)) 
    \int_isr[5]_i_2 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\int_isr[5]_i_3_n_0 ),
        .I2(s_axi_control_WVALID),
        .I3(wstate[1]),
        .I4(wstate[0]),
        .I5(int_output_r_n_32),
        .O(\int_isr[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \int_isr[5]_i_3 
       (.I0(\waddr_reg_n_0_[8] ),
        .I1(\waddr_reg_n_0_[10] ),
        .I2(\waddr_reg_n_0_[1] ),
        .I3(\waddr_reg_n_0_[12] ),
        .I4(int_ap_start_i_7_n_0),
        .I5(int_ap_start_i_6_n_0),
        .O(\int_isr[5]_i_3_n_0 ));
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
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [0]),
        .O(\int_numOfInNeurons[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [10]),
        .O(\int_numOfInNeurons[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [11]),
        .O(\int_numOfInNeurons[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [12]),
        .O(\int_numOfInNeurons[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [13]),
        .O(\int_numOfInNeurons[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [14]),
        .O(\int_numOfInNeurons[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \int_numOfInNeurons[15]_i_1 
       (.I0(\int_ier[5]_i_2_n_0 ),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\waddr_reg_n_0_[2] ),
        .O(\int_numOfInNeurons[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[15]_i_2 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [15]),
        .O(\int_numOfInNeurons[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [1]),
        .O(\int_numOfInNeurons[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [2]),
        .O(\int_numOfInNeurons[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [3]),
        .O(\int_numOfInNeurons[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [4]),
        .O(\int_numOfInNeurons[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [5]),
        .O(\int_numOfInNeurons[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [6]),
        .O(\int_numOfInNeurons[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [7]),
        .O(\int_numOfInNeurons[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [8]),
        .O(\int_numOfInNeurons[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [9]),
        .O(\int_numOfInNeurons[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[0] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(\int_numOfInNeurons[0]_i_1_n_0 ),
        .Q(\int_numOfInNeurons_reg[15]_0 [0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[10] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(\int_numOfInNeurons[10]_i_1_n_0 ),
        .Q(\int_numOfInNeurons_reg[15]_0 [10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[11] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(\int_numOfInNeurons[11]_i_1_n_0 ),
        .Q(\int_numOfInNeurons_reg[15]_0 [11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[12] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(\int_numOfInNeurons[12]_i_1_n_0 ),
        .Q(\int_numOfInNeurons_reg[15]_0 [12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[13] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(\int_numOfInNeurons[13]_i_1_n_0 ),
        .Q(\int_numOfInNeurons_reg[15]_0 [13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[14] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(\int_numOfInNeurons[14]_i_1_n_0 ),
        .Q(\int_numOfInNeurons_reg[15]_0 [14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[15] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(\int_numOfInNeurons[15]_i_2_n_0 ),
        .Q(\int_numOfInNeurons_reg[15]_0 [15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[1] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(\int_numOfInNeurons[1]_i_1_n_0 ),
        .Q(\int_numOfInNeurons_reg[15]_0 [1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[2] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(\int_numOfInNeurons[2]_i_1_n_0 ),
        .Q(\int_numOfInNeurons_reg[15]_0 [2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[3] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(\int_numOfInNeurons[3]_i_1_n_0 ),
        .Q(\int_numOfInNeurons_reg[15]_0 [3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[4] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(\int_numOfInNeurons[4]_i_1_n_0 ),
        .Q(\int_numOfInNeurons_reg[15]_0 [4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[5] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(\int_numOfInNeurons[5]_i_1_n_0 ),
        .Q(\int_numOfInNeurons_reg[15]_0 [5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[6] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(\int_numOfInNeurons[6]_i_1_n_0 ),
        .Q(\int_numOfInNeurons_reg[15]_0 [6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[7] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(\int_numOfInNeurons[7]_i_1_n_0 ),
        .Q(\int_numOfInNeurons_reg[15]_0 [7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[8] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(\int_numOfInNeurons[8]_i_1_n_0 ),
        .Q(\int_numOfInNeurons_reg[15]_0 [8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_numOfInNeurons_reg[9] 
       (.C(ap_clk),
        .CE(\int_numOfInNeurons[15]_i_1_n_0 ),
        .D(\int_numOfInNeurons[9]_i_1_n_0 ),
        .Q(\int_numOfInNeurons_reg[15]_0 [9]),
        .R(ap_rst_n_inv));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_control_s_axi_ram int_output_r
       (.ADDRARDADDR(int_output_r_address1),
        .D({int_output_r_n_15,int_output_r_n_16,int_output_r_n_17,int_output_r_n_18,int_output_r_n_19,int_output_r_n_20,int_output_r_n_21,int_output_r_n_22,int_output_r_n_23,int_output_r_n_24,int_output_r_n_25,int_output_r_n_26,int_output_r_n_27,int_output_r_n_28,int_output_r_n_29,int_output_r_n_30,int_output_r_n_31}),
        .DIBDI(DIBDI),
        .DOADO({int_output_r_q1[15:8],int_output_r_q1[6:0]}),
        .Q(\int_numOfInNeurons_reg[15]_0 [7]),
        .ap_clk(ap_clk),
        .\bias_load_reg_259_reg[14] (\bias_load_reg_259_reg[14] ),
        .int_output_r_read(int_output_r_read),
        .mem_reg_0(mem_reg),
        .mem_reg_1(int_output_r_write_reg_n_0),
        .mem_reg_2({Q[6:4],Q[1]}),
        .mem_reg_3(\ap_CS_fsm_reg[0] [5:1]),
        .mem_reg_4(mem_reg_2),
        .mem_reg_5(mem_reg_1),
        .mem_reg_i_51_0(mem_reg_i_51),
        .output_r_addr_reg_244(output_r_addr_reg_244),
        .\output_r_load_reg_249_reg[15] (\int_output_r_shift0_reg_n_0_[0] ),
        .\rdata_reg[16] (int_weights_n_23),
        .\rdata_reg[17] (int_weights_n_24),
        .\rdata_reg[18] (int_weights_n_25),
        .\rdata_reg[19] (int_weights_n_26),
        .\rdata_reg[20] (int_weights_n_27),
        .\rdata_reg[21] (int_weights_n_28),
        .\rdata_reg[22] (int_weights_n_29),
        .\rdata_reg[23] (int_weights_n_30),
        .\rdata_reg[24] (int_weights_n_31),
        .\rdata_reg[25] (int_weights_n_32),
        .\rdata_reg[26] (int_weights_n_33),
        .\rdata_reg[27] (int_weights_n_34),
        .\rdata_reg[28] (int_weights_n_35),
        .\rdata_reg[29] (int_weights_n_36),
        .\rdata_reg[30] (int_weights_n_37),
        .\rdata_reg[31] (int_bias_n_63),
        .\rdata_reg[7] (\rdata[7]_i_2_n_0 ),
        .\rdata_reg[7]_0 (\rdata[7]_i_3_n_0 ),
        .\rdata_reg[7]_1 (\rdata[15]_i_4_n_0 ),
        .\rdata_reg[7]_2 (int_bias_n_62),
        .rstate(rstate),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_ARVALID_0(int_output_r_n_32),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .wstate(wstate));
  LUT3 #(
    .INIT(8'h02)) 
    int_output_r_read_i_1
       (.I0(int_output_r_read_i_2_n_0),
        .I1(int_output_r_read_i_3_n_0),
        .I2(s_axi_control_ARADDR[8]),
        .O(int_output_r_read0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    int_output_r_read_i_2
       (.I0(s_axi_control_ARADDR[9]),
        .I1(s_axi_control_ARADDR[8]),
        .I2(s_axi_control_ARADDR[14]),
        .I3(s_axi_control_ARADDR[7]),
        .I4(int_bias_read_i_2_n_0),
        .I5(s_axi_control_ARADDR[10]),
        .O(int_output_r_read_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    int_output_r_read_i_3
       (.I0(int_output_r_n_32),
        .I1(s_axi_control_ARADDR[10]),
        .I2(int_bias_read_i_2_n_0),
        .I3(s_axi_control_ARADDR[14]),
        .I4(s_axi_control_ARADDR[9]),
        .O(int_output_r_read_i_3_n_0));
  FDRE int_output_r_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_output_r_read0),
        .Q(int_output_r_read),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hAFCCA0CC)) 
    \int_output_r_shift0[0]_i_1 
       (.I0(\ap_CS_fsm_reg[0] [0]),
        .I1(output_r_addr_reg_244[0]),
        .I2(Q[1]),
        .I3(\ap_CS_fsm[0]_i_2_n_0 ),
        .I4(\int_output_r_shift0_reg_n_0_[0] ),
        .O(\int_output_r_shift0[0]_i_1_n_0 ));
  FDRE \int_output_r_shift0_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_output_r_shift0[0]_i_1_n_0 ),
        .Q(\int_output_r_shift0_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFBFFFFFF0000)) 
    int_output_r_write_i_1
       (.I0(int_output_r_n_32),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(s_axi_control_WVALID),
        .I4(int_output_r_write0),
        .I5(int_output_r_write_reg_n_0),
        .O(int_output_r_write_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000A08)) 
    int_output_r_write_i_2
       (.I0(int_output_r_write_i_3_n_0),
        .I1(s_axi_control_AWADDR[14]),
        .I2(s_axi_control_AWADDR[8]),
        .I3(s_axi_control_AWADDR[7]),
        .I4(int_output_r_write_i_4_n_0),
        .O(int_output_r_write0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    int_output_r_write_i_3
       (.I0(s_axi_control_AWADDR[13]),
        .I1(s_axi_control_AWADDR[12]),
        .I2(s_axi_control_AWADDR[11]),
        .I3(s_axi_control_AWADDR[10]),
        .I4(s_axi_control_AWADDR[9]),
        .I5(s_axi_control_AWADDR[14]),
        .O(int_output_r_write_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    int_output_r_write_i_4
       (.I0(wstate[0]),
        .I1(wstate[1]),
        .I2(s_axi_control_AWVALID),
        .O(int_output_r_write_i_4_n_0));
  FDRE int_output_r_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_output_r_write_i_1_n_0),
        .Q(int_output_r_write_reg_n_0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAA)) 
    int_task_ap_done_i_1
       (.I0(task_ap_done),
        .I1(\rdata[5]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(int_task_ap_done__0),
        .O(int_task_ap_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    int_task_ap_done_i_2
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(p_1_in[2]),
        .I3(auto_restart_status_reg_n_0),
        .I4(ap_done),
        .O(task_ap_done));
  FDRE #(
    .INIT(1'b0)) 
    int_task_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_task_ap_done_i_1_n_0),
        .Q(int_task_ap_done__0),
        .R(ap_rst_n_inv));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_control_s_axi_ram__parameterized2 int_weights
       (.ADDRARDADDR({int_input_r_address1,int_output_r_address1}),
        .D({int_weights_n_6,int_weights_n_7,int_weights_n_8,int_weights_n_9,int_weights_n_10,int_weights_n_11,int_weights_n_12,int_weights_n_13,int_weights_n_14,int_weights_n_15,int_weights_n_16,int_weights_n_17,int_weights_n_18}),
        .DOADO({int_output_r_q1[15:8],int_output_r_q1[6:5],int_output_r_q1[3:1]}),
        .Q({\waddr_reg_n_0_[13] ,\waddr_reg_n_0_[12] ,\waddr_reg_n_0_[11] ,\waddr_reg_n_0_[10] ,\waddr_reg_n_0_[9] ,\waddr_reg_n_0_[8] ,\waddr_reg_n_0_[7] ,\waddr_reg_n_0_[6] ,\waddr_reg_n_0_[5] ,\waddr_reg_n_0_[4] ,\waddr_reg_n_0_[3] ,\waddr_reg_n_0_[2] }),
        .ap_clk(ap_clk),
        .grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_weights_address0(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_weights_address0[12:1]),
        .int_bias_read(int_bias_read),
        .int_input_r_read(int_input_r_read),
        .int_output_r_read(int_output_r_read),
        .mem_reg_0_0(int_weights_write_reg_n_0),
        .mem_reg_2_0(int_weights_n_23),
        .mem_reg_2_1(int_weights_n_24),
        .mem_reg_2_2(int_weights_n_25),
        .mem_reg_2_3(int_weights_n_26),
        .mem_reg_2_4(int_weights_n_27),
        .mem_reg_2_5(int_weights_n_28),
        .mem_reg_2_6(int_weights_n_29),
        .mem_reg_2_7(int_weights_n_30),
        .mem_reg_3_0(int_weights_n_31),
        .mem_reg_3_1(int_weights_n_32),
        .mem_reg_3_2(int_weights_n_33),
        .mem_reg_3_3(int_weights_n_34),
        .mem_reg_3_4(int_weights_n_35),
        .mem_reg_3_5(int_weights_n_36),
        .mem_reg_3_6(int_weights_n_37),
        .q0(int_weights_q0),
        .q1({int_weights_q1[31],int_weights_q1[7],int_weights_q1[4],int_weights_q1[0]}),
        .\rdata_reg[15] ({\int_numOfInNeurons_reg[15]_0 [15:8],\int_numOfInNeurons_reg[15]_0 [6]}),
        .\rdata_reg[1] (int_output_r_n_32),
        .\rdata_reg[1]_0 (\rdata[5]_i_3_n_0 ),
        .\rdata_reg[1]_1 (\rdata[1]_i_3_n_0 ),
        .\rdata_reg[2] (\rdata[2]_i_3_n_0 ),
        .\rdata_reg[30] ({int_bias_q1[30:8],int_bias_q1[6:5],int_bias_q1[3:1]}),
        .\rdata_reg[30]_0 ({int_input_r_q1[30:8],int_input_r_q1[6:5],int_input_r_q1[3:1]}),
        .\rdata_reg[3] (\rdata[3]_i_3_n_0 ),
        .\rdata_reg[5] (\rdata[5]_i_4_n_0 ),
        .\rdata_reg[6] (\rdata[15]_i_4_n_0 ),
        .rstate(rstate),
        .s_axi_control_ARADDR(s_axi_control_ARADDR[13:2]),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .wstate(wstate));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    int_weights_read_i_1
       (.I0(s_axi_control_ARADDR[14]),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .O(int_weights_read_i_1_n_0));
  FDRE int_weights_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_weights_read_i_1_n_0),
        .Q(int_weights_read),
        .R(ap_rst_n_inv));
  FDRE \int_weights_shift0_reg[0] 
       (.C(ap_clk),
        .CE(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .D(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_weights_address0[0]),
        .Q(\int_weights_shift0_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h5755555503000000)) 
    int_weights_write_i_1
       (.I0(int_weights_write_i_2_n_0),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(s_axi_control_AWVALID),
        .I4(s_axi_control_AWADDR[14]),
        .I5(int_weights_write_reg_n_0),
        .O(int_weights_write_i_1_n_0));
  LUT6 #(
    .INIT(64'h2020202020200020)) 
    int_weights_write_i_2
       (.I0(s_axi_control_WVALID),
        .I1(wstate[1]),
        .I2(wstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[0]),
        .I5(rstate[1]),
        .O(int_weights_write_i_2_n_0));
  FDRE int_weights_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_weights_write_i_1_n_0),
        .Q(int_weights_write_reg_n_0),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hAAA8)) 
    interrupt_INST_0
       (.I0(int_gie_reg_n_0),
        .I1(\int_isr_reg_n_0_[0] ),
        .I2(\int_isr_reg_n_0_[1] ),
        .I3(\int_isr_reg_n_0_[5] ),
        .O(interrupt));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \outNeurons_fu_76[6]_i_1 
       (.I0(ap_start),
        .I1(Q[0]),
        .O(ap_NS_fsm12_out));
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
    .INIT(64'h00000000FFDCFFDF)) 
    \rdata[0]_i_3 
       (.I0(\int_numOfInNeurons_reg[15]_0 [0]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(ap_start),
        .I5(\rdata[0]_i_4_n_0 ),
        .O(\rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00AF00C000A000C0)) 
    \rdata[0]_i_4 
       (.I0(\int_isr_reg_n_0_[0] ),
        .I1(int_gie_reg_n_0),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[3]),
        .I5(\int_ier_reg_n_0_[0] ),
        .O(\rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \rdata[15]_i_4 
       (.I0(\rdata[15]_i_5_n_0 ),
        .I1(int_output_r_read_i_2_n_0),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[3]),
        .I5(\rdata[31]_i_3_n_0 ),
        .O(\rdata[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \rdata[15]_i_5 
       (.I0(int_output_r_n_32),
        .I1(s_axi_control_ARADDR[5]),
        .I2(s_axi_control_ARADDR[0]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[6]),
        .O(\rdata[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFF47)) 
    \rdata[1]_i_3 
       (.I0(\int_ier_reg_n_0_[1] ),
        .I1(s_axi_control_ARADDR[3]),
        .I2(int_task_ap_done__0),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[1]_i_4_n_0 ),
        .O(\rdata[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h08300800)) 
    \rdata[1]_i_4 
       (.I0(\int_isr_reg_n_0_[1] ),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_numOfInNeurons_reg[15]_0 [1]),
        .O(\rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF5FF03FFF5FFF3)) 
    \rdata[2]_i_3 
       (.I0(\int_ier_reg_n_0_[2] ),
        .I1(p_1_in[2]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[3]),
        .I5(\int_numOfInNeurons_reg[15]_0 [2]),
        .O(\rdata[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \rdata[31]_i_1 
       (.I0(int_input_r_read),
        .I1(int_bias_read),
        .I2(int_weights_read),
        .I3(\rdata[31]_i_3_n_0 ),
        .O(\rdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h5455)) 
    \rdata[31]_i_3 
       (.I0(int_output_r_read),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .O(\rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000F000AA00CC)) 
    \rdata[3]_i_3 
       (.I0(\int_numOfInNeurons_reg[15]_0 [3]),
        .I1(int_ap_ready__0),
        .I2(\int_ier_reg_n_0_[3] ),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[3]),
        .O(\rdata[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFDCFFDFF)) 
    \rdata[4]_i_3 
       (.I0(\int_ier_reg_n_0_[4] ),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_numOfInNeurons_reg[15]_0 [4]),
        .O(\rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \rdata[5]_i_3 
       (.I0(int_output_r_read_i_2_n_0),
        .I1(s_axi_control_ARADDR[6]),
        .I2(s_axi_control_ARADDR[1]),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(int_output_r_n_32),
        .O(\rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AACC00F00000)) 
    \rdata[5]_i_4 
       (.I0(\int_isr_reg_n_0_[5] ),
        .I1(\int_ier_reg_n_0_[5] ),
        .I2(\int_numOfInNeurons_reg[15]_0 [5]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[3]),
        .O(\rdata[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \rdata[7]_i_2 
       (.I0(int_output_r_read_i_2_n_0),
        .I1(s_axi_control_ARADDR[5]),
        .I2(s_axi_control_ARADDR[6]),
        .I3(int_output_r_n_32),
        .I4(\rdata[7]_i_5_n_0 ),
        .I5(\rdata[7]_i_6_n_0 ),
        .O(\rdata[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h10FF)) 
    \rdata[7]_i_3 
       (.I0(rstate[1]),
        .I1(rstate[0]),
        .I2(s_axi_control_ARVALID),
        .I3(int_output_r_read),
        .O(\rdata[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rdata[7]_i_5 
       (.I0(s_axi_control_ARADDR[0]),
        .I1(s_axi_control_ARADDR[1]),
        .O(\rdata[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \rdata[7]_i_6 
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(p_1_in[7]),
        .I3(s_axi_control_ARADDR[3]),
        .O(\rdata[7]_i_6_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_61),
        .Q(s_axi_control_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_weights_n_11),
        .Q(s_axi_control_RDATA[10]),
        .R(1'b0));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_weights_n_10),
        .Q(s_axi_control_RDATA[11]),
        .R(1'b0));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_weights_n_9),
        .Q(s_axi_control_RDATA[12]),
        .R(1'b0));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_weights_n_8),
        .Q(s_axi_control_RDATA[13]),
        .R(1'b0));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_weights_n_7),
        .Q(s_axi_control_RDATA[14]),
        .R(1'b0));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_weights_n_6),
        .Q(s_axi_control_RDATA[15]),
        .R(1'b0));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_output_r_n_30),
        .Q(s_axi_control_RDATA[16]),
        .R(1'b0));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_output_r_n_29),
        .Q(s_axi_control_RDATA[17]),
        .R(1'b0));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_output_r_n_28),
        .Q(s_axi_control_RDATA[18]),
        .R(1'b0));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_output_r_n_27),
        .Q(s_axi_control_RDATA[19]),
        .R(1'b0));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_weights_n_18),
        .Q(s_axi_control_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_output_r_n_26),
        .Q(s_axi_control_RDATA[20]),
        .R(1'b0));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_output_r_n_25),
        .Q(s_axi_control_RDATA[21]),
        .R(1'b0));
  FDRE \rdata_reg[22] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_output_r_n_24),
        .Q(s_axi_control_RDATA[22]),
        .R(1'b0));
  FDRE \rdata_reg[23] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_output_r_n_23),
        .Q(s_axi_control_RDATA[23]),
        .R(1'b0));
  FDRE \rdata_reg[24] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_output_r_n_22),
        .Q(s_axi_control_RDATA[24]),
        .R(1'b0));
  FDRE \rdata_reg[25] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_output_r_n_21),
        .Q(s_axi_control_RDATA[25]),
        .R(1'b0));
  FDRE \rdata_reg[26] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_output_r_n_20),
        .Q(s_axi_control_RDATA[26]),
        .R(1'b0));
  FDRE \rdata_reg[27] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_output_r_n_19),
        .Q(s_axi_control_RDATA[27]),
        .R(1'b0));
  FDRE \rdata_reg[28] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_output_r_n_18),
        .Q(s_axi_control_RDATA[28]),
        .R(1'b0));
  FDRE \rdata_reg[29] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_output_r_n_17),
        .Q(s_axi_control_RDATA[29]),
        .R(1'b0));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_weights_n_17),
        .Q(s_axi_control_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[30] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_output_r_n_16),
        .Q(s_axi_control_RDATA[30]),
        .R(1'b0));
  FDRE \rdata_reg[31] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_output_r_n_15),
        .Q(s_axi_control_RDATA[31]),
        .R(1'b0));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_weights_n_16),
        .Q(s_axi_control_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_bias_n_60),
        .Q(s_axi_control_RDATA[4]),
        .R(1'b0));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_weights_n_15),
        .Q(s_axi_control_RDATA[5]),
        .R(1'b0));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_weights_n_14),
        .Q(s_axi_control_RDATA[6]),
        .R(1'b0));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_output_r_n_31),
        .Q(s_axi_control_RDATA[7]),
        .R(1'b0));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_weights_n_13),
        .Q(s_axi_control_RDATA[8]),
        .R(1'b0));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_weights_n_12),
        .Q(s_axi_control_RDATA[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h32003232)) 
    \rstate[0]_i_1 
       (.I0(rstate[0]),
        .I1(rstate[1]),
        .I2(s_axi_control_ARVALID),
        .I3(\rdata[31]_i_1_n_0 ),
        .I4(s_axi_control_RREADY),
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
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_control_ARREADY_INST_0
       (.I0(rstate[0]),
        .I1(rstate[1]),
        .O(s_axi_control_ARREADY));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_control_AWREADY_INST_0
       (.I0(wstate[0]),
        .I1(wstate[1]),
        .O(s_axi_control_AWREADY));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
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
        .I3(int_bias_read),
        .I4(int_input_r_read),
        .I5(int_output_r_read),
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
    .INIT(8'h02)) 
    \waddr[14]_i_1 
       (.I0(s_axi_control_AWVALID),
        .I1(wstate[1]),
        .I2(wstate[0]),
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
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00DD00F0)) 
    \wstate[0]_i_1 
       (.I0(s_axi_control_WVALID),
        .I1(int_output_r_n_32),
        .I2(s_axi_control_AWVALID),
        .I3(wstate[1]),
        .I4(wstate[0]),
        .O(\wstate[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00440F00)) 
    \wstate[1]_i_1 
       (.I0(int_output_r_n_32),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_BREADY),
        .I3(wstate[1]),
        .I4(wstate[0]),
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_control_s_axi_ram
   (DOADO,
    D,
    s_axi_control_ARVALID_0,
    mem_reg_0,
    \bias_load_reg_259_reg[14] ,
    ap_clk,
    ADDRARDADDR,
    s_axi_control_WDATA,
    DIBDI,
    \rdata_reg[7] ,
    \rdata_reg[7]_0 ,
    Q,
    \rdata_reg[7]_1 ,
    \rdata_reg[7]_2 ,
    \rdata_reg[31] ,
    int_output_r_read,
    rstate,
    s_axi_control_ARVALID,
    \rdata_reg[30] ,
    \rdata_reg[29] ,
    \rdata_reg[28] ,
    \rdata_reg[27] ,
    \rdata_reg[26] ,
    \rdata_reg[25] ,
    \rdata_reg[24] ,
    \rdata_reg[23] ,
    \rdata_reg[22] ,
    \rdata_reg[21] ,
    \rdata_reg[20] ,
    \rdata_reg[19] ,
    \rdata_reg[18] ,
    \rdata_reg[17] ,
    \rdata_reg[16] ,
    mem_reg_1,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    wstate,
    \output_r_load_reg_249_reg[15] ,
    mem_reg_2,
    mem_reg_3,
    output_r_addr_reg_244,
    mem_reg_4,
    mem_reg_5,
    mem_reg_i_51_0);
  output [14:0]DOADO;
  output [16:0]D;
  output s_axi_control_ARVALID_0;
  output [15:0]mem_reg_0;
  output [7:0]\bias_load_reg_259_reg[14] ;
  input ap_clk;
  input [4:0]ADDRARDADDR;
  input [31:0]s_axi_control_WDATA;
  input [7:0]DIBDI;
  input \rdata_reg[7] ;
  input \rdata_reg[7]_0 ;
  input [0:0]Q;
  input \rdata_reg[7]_1 ;
  input \rdata_reg[7]_2 ;
  input \rdata_reg[31] ;
  input int_output_r_read;
  input [1:0]rstate;
  input s_axi_control_ARVALID;
  input \rdata_reg[30] ;
  input \rdata_reg[29] ;
  input \rdata_reg[28] ;
  input \rdata_reg[27] ;
  input \rdata_reg[26] ;
  input \rdata_reg[25] ;
  input \rdata_reg[24] ;
  input \rdata_reg[23] ;
  input \rdata_reg[22] ;
  input \rdata_reg[21] ;
  input \rdata_reg[20] ;
  input \rdata_reg[19] ;
  input \rdata_reg[18] ;
  input \rdata_reg[17] ;
  input \rdata_reg[16] ;
  input mem_reg_1;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_WSTRB;
  input [1:0]wstate;
  input \output_r_load_reg_249_reg[15] ;
  input [3:0]mem_reg_2;
  input [4:0]mem_reg_3;
  input [5:0]output_r_addr_reg_244;
  input [15:0]mem_reg_4;
  input mem_reg_5;
  input [15:0]mem_reg_i_51_0;

  wire [4:0]ADDRARDADDR;
  wire [16:0]D;
  wire [7:0]DIBDI;
  wire [14:0]DOADO;
  wire [0:0]Q;
  wire [7:0]add_ln24_fu_190_p2;
  wire ap_clk;
  wire [7:0]\bias_load_reg_259_reg[14] ;
  wire [3:1]int_output_r_be0;
  wire [3:0]int_output_r_be1;
  wire int_output_r_ce1;
  wire [31:0]int_output_r_q0;
  wire [31:7]int_output_r_q1;
  wire int_output_r_read;
  wire [15:0]mem_reg_0;
  wire mem_reg_1;
  wire [3:0]mem_reg_2;
  wire [4:0]mem_reg_3;
  wire [15:0]mem_reg_4;
  wire mem_reg_5;
  wire [15:0]mem_reg_i_51_0;
  wire mem_reg_i_51_n_1;
  wire mem_reg_i_51_n_2;
  wire mem_reg_i_51_n_3;
  wire mem_reg_i_52_n_0;
  wire mem_reg_i_52_n_1;
  wire mem_reg_i_52_n_2;
  wire mem_reg_i_52_n_3;
  wire mem_reg_i_53_n_0;
  wire mem_reg_i_53_n_1;
  wire mem_reg_i_53_n_2;
  wire mem_reg_i_53_n_3;
  wire mem_reg_i_54_n_0;
  wire mem_reg_i_54_n_1;
  wire mem_reg_i_54_n_2;
  wire mem_reg_i_54_n_3;
  wire mem_reg_i_55_n_0;
  wire mem_reg_i_56_n_0;
  wire mem_reg_i_57_n_0;
  wire mem_reg_i_58_n_0;
  wire mem_reg_i_59_n_0;
  wire mem_reg_i_60_n_0;
  wire mem_reg_i_61_n_0;
  wire mem_reg_i_62_n_0;
  wire mem_reg_i_63_n_0;
  wire mem_reg_i_64_n_0;
  wire mem_reg_i_65_n_0;
  wire mem_reg_i_66_n_0;
  wire mem_reg_i_67_n_0;
  wire mem_reg_i_68_n_0;
  wire mem_reg_i_69_n_0;
  wire mem_reg_i_70_n_0;
  wire [5:0]output_r_addr_reg_244;
  wire [5:1]output_r_address0;
  wire output_r_ce0;
  wire [15:0]output_r_d0;
  wire \output_r_load_reg_249_reg[15] ;
  wire [31:24]p_2_in;
  wire \rdata_reg[16] ;
  wire \rdata_reg[17] ;
  wire \rdata_reg[18] ;
  wire \rdata_reg[19] ;
  wire \rdata_reg[20] ;
  wire \rdata_reg[21] ;
  wire \rdata_reg[22] ;
  wire \rdata_reg[23] ;
  wire \rdata_reg[24] ;
  wire \rdata_reg[25] ;
  wire \rdata_reg[26] ;
  wire \rdata_reg[27] ;
  wire \rdata_reg[28] ;
  wire \rdata_reg[29] ;
  wire \rdata_reg[30] ;
  wire \rdata_reg[31] ;
  wire \rdata_reg[7] ;
  wire \rdata_reg[7]_0 ;
  wire \rdata_reg[7]_1 ;
  wire \rdata_reg[7]_2 ;
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
  wire [3:3]NLW_mem_reg_i_51_CO_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_output_r/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "992" *) 
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
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,output_r_address0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI({p_2_in,s_axi_control_WDATA[23:0]}),
        .DIBDI({DIBDI,output_r_d0[7:0],output_r_d0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({int_output_r_q1[31:16],DOADO[14:7],int_output_r_q1[7],DOADO[6:0]}),
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
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    mem_reg_i_10__1
       (.I0(mem_reg_3[2]),
        .I1(mem_reg_2[3]),
        .I2(mem_reg_2[2]),
        .I3(mem_reg_2[1]),
        .I4(output_r_addr_reg_244[3]),
        .O(output_r_address0[3]));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    mem_reg_i_11__1
       (.I0(mem_reg_3[1]),
        .I1(mem_reg_2[3]),
        .I2(mem_reg_2[2]),
        .I3(mem_reg_2[1]),
        .I4(output_r_addr_reg_244[2]),
        .O(output_r_address0[2]));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    mem_reg_i_12__1
       (.I0(mem_reg_3[0]),
        .I1(mem_reg_2[3]),
        .I2(mem_reg_2[2]),
        .I3(mem_reg_2[1]),
        .I4(output_r_addr_reg_244[1]),
        .O(output_r_address0[1]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_13__1
       (.I0(s_axi_control_WDATA[31]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[31]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_14__0
       (.I0(s_axi_control_WDATA[30]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[30]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_15__0
       (.I0(s_axi_control_WDATA[29]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[29]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_16__0
       (.I0(s_axi_control_WDATA[28]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[28]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_17__0
       (.I0(s_axi_control_WDATA[27]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[27]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_18__0
       (.I0(s_axi_control_WDATA[26]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[26]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_19__0
       (.I0(s_axi_control_WDATA[25]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[25]));
  LUT5 #(
    .INIT(32'hFF101010)) 
    mem_reg_i_1__1
       (.I0(rstate[1]),
        .I1(rstate[0]),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_1),
        .I4(s_axi_control_WVALID),
        .O(int_output_r_ce1));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_20__0
       (.I0(s_axi_control_WDATA[24]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_29
       (.I0(add_ln24_fu_190_p2[7]),
        .I1(mem_reg_2[3]),
        .I2(mem_reg_4[7]),
        .O(output_r_d0[7]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    mem_reg_i_2__1
       (.I0(mem_reg_2[0]),
        .I1(mem_reg_2[1]),
        .I2(mem_reg_2[2]),
        .I3(mem_reg_2[3]),
        .O(output_r_ce0));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_30
       (.I0(add_ln24_fu_190_p2[6]),
        .I1(mem_reg_2[3]),
        .I2(mem_reg_4[6]),
        .O(output_r_d0[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_31
       (.I0(add_ln24_fu_190_p2[5]),
        .I1(mem_reg_2[3]),
        .I2(mem_reg_4[5]),
        .O(output_r_d0[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_32
       (.I0(add_ln24_fu_190_p2[4]),
        .I1(mem_reg_2[3]),
        .I2(mem_reg_4[4]),
        .O(output_r_d0[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_33
       (.I0(add_ln24_fu_190_p2[3]),
        .I1(mem_reg_2[3]),
        .I2(mem_reg_4[3]),
        .O(output_r_d0[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_34
       (.I0(add_ln24_fu_190_p2[2]),
        .I1(mem_reg_2[3]),
        .I2(mem_reg_4[2]),
        .O(output_r_d0[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_35
       (.I0(add_ln24_fu_190_p2[1]),
        .I1(mem_reg_2[3]),
        .I2(mem_reg_4[1]),
        .O(output_r_d0[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_36
       (.I0(add_ln24_fu_190_p2[0]),
        .I1(mem_reg_2[3]),
        .I2(mem_reg_4[0]),
        .O(output_r_d0[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_37
       (.I0(\bias_load_reg_259_reg[14] [7]),
        .I1(mem_reg_2[3]),
        .I2(mem_reg_4[15]),
        .O(output_r_d0[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_38
       (.I0(\bias_load_reg_259_reg[14] [6]),
        .I1(mem_reg_2[3]),
        .I2(mem_reg_4[14]),
        .O(output_r_d0[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_39
       (.I0(\bias_load_reg_259_reg[14] [5]),
        .I1(mem_reg_2[3]),
        .I2(mem_reg_4[13]),
        .O(output_r_d0[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_40
       (.I0(\bias_load_reg_259_reg[14] [4]),
        .I1(mem_reg_2[3]),
        .I2(mem_reg_4[12]),
        .O(output_r_d0[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_41
       (.I0(\bias_load_reg_259_reg[14] [3]),
        .I1(mem_reg_2[3]),
        .I2(mem_reg_4[11]),
        .O(output_r_d0[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_42
       (.I0(\bias_load_reg_259_reg[14] [2]),
        .I1(mem_reg_2[3]),
        .I2(mem_reg_4[10]),
        .O(output_r_d0[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_43
       (.I0(\bias_load_reg_259_reg[14] [1]),
        .I1(mem_reg_2[3]),
        .I2(mem_reg_4[9]),
        .O(output_r_d0[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_44
       (.I0(\bias_load_reg_259_reg[14] [0]),
        .I1(mem_reg_2[3]),
        .I2(mem_reg_4[8]),
        .O(output_r_d0[8]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_45
       (.I0(s_axi_control_WSTRB[3]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_1),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_output_r_be1[3]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_46
       (.I0(s_axi_control_WSTRB[2]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_1),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_output_r_be1[2]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_47
       (.I0(s_axi_control_WSTRB[1]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_1),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_output_r_be1[1]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_48
       (.I0(s_axi_control_WSTRB[0]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_1),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_output_r_be1[0]));
  LUT4 #(
    .INIT(16'hA0E0)) 
    mem_reg_i_49
       (.I0(mem_reg_2[3]),
        .I1(mem_reg_2[1]),
        .I2(output_r_addr_reg_244[0]),
        .I3(mem_reg_5),
        .O(int_output_r_be0[3]));
  LUT4 #(
    .INIT(16'h3310)) 
    mem_reg_i_50
       (.I0(mem_reg_5),
        .I1(output_r_addr_reg_244[0]),
        .I2(mem_reg_2[1]),
        .I3(mem_reg_2[3]),
        .O(int_output_r_be0[1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_i_51
       (.CI(mem_reg_i_52_n_0),
        .CO({NLW_mem_reg_i_51_CO_UNCONNECTED[3],mem_reg_i_51_n_1,mem_reg_i_51_n_2,mem_reg_i_51_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,mem_reg_i_51_0[14:12]}),
        .O(\bias_load_reg_259_reg[14] [7:4]),
        .S({mem_reg_i_55_n_0,mem_reg_i_56_n_0,mem_reg_i_57_n_0,mem_reg_i_58_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_i_52
       (.CI(mem_reg_i_53_n_0),
        .CO({mem_reg_i_52_n_0,mem_reg_i_52_n_1,mem_reg_i_52_n_2,mem_reg_i_52_n_3}),
        .CYINIT(1'b0),
        .DI(mem_reg_i_51_0[11:8]),
        .O(\bias_load_reg_259_reg[14] [3:0]),
        .S({mem_reg_i_59_n_0,mem_reg_i_60_n_0,mem_reg_i_61_n_0,mem_reg_i_62_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_i_53
       (.CI(mem_reg_i_54_n_0),
        .CO({mem_reg_i_53_n_0,mem_reg_i_53_n_1,mem_reg_i_53_n_2,mem_reg_i_53_n_3}),
        .CYINIT(1'b0),
        .DI(mem_reg_i_51_0[7:4]),
        .O(add_ln24_fu_190_p2[7:4]),
        .S({mem_reg_i_63_n_0,mem_reg_i_64_n_0,mem_reg_i_65_n_0,mem_reg_i_66_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_i_54
       (.CI(1'b0),
        .CO({mem_reg_i_54_n_0,mem_reg_i_54_n_1,mem_reg_i_54_n_2,mem_reg_i_54_n_3}),
        .CYINIT(1'b0),
        .DI(mem_reg_i_51_0[3:0]),
        .O(add_ln24_fu_190_p2[3:0]),
        .S({mem_reg_i_67_n_0,mem_reg_i_68_n_0,mem_reg_i_69_n_0,mem_reg_i_70_n_0}));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_55
       (.I0(int_output_r_q0[15]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[31]),
        .I3(mem_reg_i_51_0[15]),
        .O(mem_reg_i_55_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_56
       (.I0(int_output_r_q0[14]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[30]),
        .I3(mem_reg_i_51_0[14]),
        .O(mem_reg_i_56_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_57
       (.I0(int_output_r_q0[13]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[29]),
        .I3(mem_reg_i_51_0[13]),
        .O(mem_reg_i_57_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_58
       (.I0(int_output_r_q0[12]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[28]),
        .I3(mem_reg_i_51_0[12]),
        .O(mem_reg_i_58_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_59
       (.I0(int_output_r_q0[11]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[27]),
        .I3(mem_reg_i_51_0[11]),
        .O(mem_reg_i_59_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_60
       (.I0(int_output_r_q0[10]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[26]),
        .I3(mem_reg_i_51_0[10]),
        .O(mem_reg_i_60_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_61
       (.I0(int_output_r_q0[9]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[25]),
        .I3(mem_reg_i_51_0[9]),
        .O(mem_reg_i_61_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_62
       (.I0(int_output_r_q0[8]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[24]),
        .I3(mem_reg_i_51_0[8]),
        .O(mem_reg_i_62_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_63
       (.I0(int_output_r_q0[7]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[23]),
        .I3(mem_reg_i_51_0[7]),
        .O(mem_reg_i_63_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_64
       (.I0(int_output_r_q0[6]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[22]),
        .I3(mem_reg_i_51_0[6]),
        .O(mem_reg_i_64_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_65
       (.I0(int_output_r_q0[5]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[21]),
        .I3(mem_reg_i_51_0[5]),
        .O(mem_reg_i_65_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_66
       (.I0(int_output_r_q0[4]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[20]),
        .I3(mem_reg_i_51_0[4]),
        .O(mem_reg_i_66_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_67
       (.I0(int_output_r_q0[3]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[19]),
        .I3(mem_reg_i_51_0[3]),
        .O(mem_reg_i_67_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_68
       (.I0(int_output_r_q0[2]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[18]),
        .I3(mem_reg_i_51_0[2]),
        .O(mem_reg_i_68_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_69
       (.I0(int_output_r_q0[1]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[17]),
        .I3(mem_reg_i_51_0[1]),
        .O(mem_reg_i_69_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_70
       (.I0(int_output_r_q0[0]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[16]),
        .I3(mem_reg_i_51_0[0]),
        .O(mem_reg_i_70_n_0));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    mem_reg_i_8__1
       (.I0(mem_reg_3[4]),
        .I1(mem_reg_2[3]),
        .I2(mem_reg_2[2]),
        .I3(mem_reg_2[1]),
        .I4(output_r_addr_reg_244[5]),
        .O(output_r_address0[5]));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    mem_reg_i_9__1
       (.I0(mem_reg_3[3]),
        .I1(mem_reg_2[3]),
        .I2(mem_reg_2[2]),
        .I3(mem_reg_2[1]),
        .I4(output_r_addr_reg_244[4]),
        .O(output_r_address0[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_249[0]_i_1 
       (.I0(int_output_r_q0[16]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[0]),
        .O(mem_reg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_249[10]_i_1 
       (.I0(int_output_r_q0[26]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[10]),
        .O(mem_reg_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_249[11]_i_1 
       (.I0(int_output_r_q0[27]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[11]),
        .O(mem_reg_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_249[12]_i_1 
       (.I0(int_output_r_q0[28]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[12]),
        .O(mem_reg_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_249[13]_i_1 
       (.I0(int_output_r_q0[29]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[13]),
        .O(mem_reg_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_249[14]_i_1 
       (.I0(int_output_r_q0[30]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[14]),
        .O(mem_reg_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_249[15]_i_1 
       (.I0(int_output_r_q0[31]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[15]),
        .O(mem_reg_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_249[1]_i_1 
       (.I0(int_output_r_q0[17]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[1]),
        .O(mem_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_249[2]_i_1 
       (.I0(int_output_r_q0[18]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[2]),
        .O(mem_reg_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_249[3]_i_1 
       (.I0(int_output_r_q0[19]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[3]),
        .O(mem_reg_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_249[4]_i_1 
       (.I0(int_output_r_q0[20]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[4]),
        .O(mem_reg_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_249[5]_i_1 
       (.I0(int_output_r_q0[21]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[5]),
        .O(mem_reg_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_249[6]_i_1 
       (.I0(int_output_r_q0[22]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[6]),
        .O(mem_reg_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_249[7]_i_1 
       (.I0(int_output_r_q0[23]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[7]),
        .O(mem_reg_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_249[8]_i_1 
       (.I0(int_output_r_q0[24]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[8]),
        .O(mem_reg_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_249[9]_i_1 
       (.I0(int_output_r_q0[25]),
        .I1(\output_r_load_reg_249_reg[15] ),
        .I2(int_output_r_q0[9]),
        .O(mem_reg_0[9]));
  LUT3 #(
    .INIT(8'h02)) 
    \rdata[15]_i_2 
       (.I0(s_axi_control_ARVALID),
        .I1(rstate[0]),
        .I2(rstate[1]),
        .O(s_axi_control_ARVALID_0));
  LUT6 #(
    .INIT(64'hA3A3A300A3A3A3A3)) 
    \rdata[16]_i_1 
       (.I0(int_output_r_q1[16]),
        .I1(\rdata_reg[16] ),
        .I2(int_output_r_read),
        .I3(rstate[1]),
        .I4(rstate[0]),
        .I5(s_axi_control_ARVALID),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hA3A3A300A3A3A3A3)) 
    \rdata[17]_i_1 
       (.I0(int_output_r_q1[17]),
        .I1(\rdata_reg[17] ),
        .I2(int_output_r_read),
        .I3(rstate[1]),
        .I4(rstate[0]),
        .I5(s_axi_control_ARVALID),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hA3A3A300A3A3A3A3)) 
    \rdata[18]_i_1 
       (.I0(int_output_r_q1[18]),
        .I1(\rdata_reg[18] ),
        .I2(int_output_r_read),
        .I3(rstate[1]),
        .I4(rstate[0]),
        .I5(s_axi_control_ARVALID),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hA3A3A300A3A3A3A3)) 
    \rdata[19]_i_1 
       (.I0(int_output_r_q1[19]),
        .I1(\rdata_reg[19] ),
        .I2(int_output_r_read),
        .I3(rstate[1]),
        .I4(rstate[0]),
        .I5(s_axi_control_ARVALID),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hA3A3A300A3A3A3A3)) 
    \rdata[20]_i_1 
       (.I0(int_output_r_q1[20]),
        .I1(\rdata_reg[20] ),
        .I2(int_output_r_read),
        .I3(rstate[1]),
        .I4(rstate[0]),
        .I5(s_axi_control_ARVALID),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hA3A3A300A3A3A3A3)) 
    \rdata[21]_i_1 
       (.I0(int_output_r_q1[21]),
        .I1(\rdata_reg[21] ),
        .I2(int_output_r_read),
        .I3(rstate[1]),
        .I4(rstate[0]),
        .I5(s_axi_control_ARVALID),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hA3A3A300A3A3A3A3)) 
    \rdata[22]_i_1 
       (.I0(int_output_r_q1[22]),
        .I1(\rdata_reg[22] ),
        .I2(int_output_r_read),
        .I3(rstate[1]),
        .I4(rstate[0]),
        .I5(s_axi_control_ARVALID),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hA3A3A300A3A3A3A3)) 
    \rdata[23]_i_1 
       (.I0(int_output_r_q1[23]),
        .I1(\rdata_reg[23] ),
        .I2(int_output_r_read),
        .I3(rstate[1]),
        .I4(rstate[0]),
        .I5(s_axi_control_ARVALID),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hA3A3A300A3A3A3A3)) 
    \rdata[24]_i_1 
       (.I0(int_output_r_q1[24]),
        .I1(\rdata_reg[24] ),
        .I2(int_output_r_read),
        .I3(rstate[1]),
        .I4(rstate[0]),
        .I5(s_axi_control_ARVALID),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hA3A3A300A3A3A3A3)) 
    \rdata[25]_i_1 
       (.I0(int_output_r_q1[25]),
        .I1(\rdata_reg[25] ),
        .I2(int_output_r_read),
        .I3(rstate[1]),
        .I4(rstate[0]),
        .I5(s_axi_control_ARVALID),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hA3A3A300A3A3A3A3)) 
    \rdata[26]_i_1 
       (.I0(int_output_r_q1[26]),
        .I1(\rdata_reg[26] ),
        .I2(int_output_r_read),
        .I3(rstate[1]),
        .I4(rstate[0]),
        .I5(s_axi_control_ARVALID),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hA3A3A300A3A3A3A3)) 
    \rdata[27]_i_1 
       (.I0(int_output_r_q1[27]),
        .I1(\rdata_reg[27] ),
        .I2(int_output_r_read),
        .I3(rstate[1]),
        .I4(rstate[0]),
        .I5(s_axi_control_ARVALID),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hA3A3A300A3A3A3A3)) 
    \rdata[28]_i_1 
       (.I0(int_output_r_q1[28]),
        .I1(\rdata_reg[28] ),
        .I2(int_output_r_read),
        .I3(rstate[1]),
        .I4(rstate[0]),
        .I5(s_axi_control_ARVALID),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hA3A3A300A3A3A3A3)) 
    \rdata[29]_i_1 
       (.I0(int_output_r_q1[29]),
        .I1(\rdata_reg[29] ),
        .I2(int_output_r_read),
        .I3(rstate[1]),
        .I4(rstate[0]),
        .I5(s_axi_control_ARVALID),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hA3A3A300A3A3A3A3)) 
    \rdata[30]_i_1 
       (.I0(int_output_r_q1[30]),
        .I1(\rdata_reg[30] ),
        .I2(int_output_r_read),
        .I3(rstate[1]),
        .I4(rstate[0]),
        .I5(s_axi_control_ARVALID),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hA3A3A300A3A3A3A3)) 
    \rdata[31]_i_2 
       (.I0(int_output_r_q1[31]),
        .I1(\rdata_reg[31] ),
        .I2(int_output_r_read),
        .I3(rstate[1]),
        .I4(rstate[0]),
        .I5(s_axi_control_ARVALID),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEAEFFAE)) 
    \rdata[7]_i_1 
       (.I0(\rdata_reg[7] ),
        .I1(int_output_r_q1[7]),
        .I2(\rdata_reg[7]_0 ),
        .I3(Q),
        .I4(\rdata_reg[7]_1 ),
        .I5(\rdata_reg[7]_2 ),
        .O(D[0]));
endmodule

(* ORIG_REF_NAME = "runLayer_control_s_axi_ram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_control_s_axi_ram__parameterized0
   (DOADO,
    DOBDO,
    ap_clk,
    grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_control_WDATA,
    rstate,
    s_axi_control_ARVALID,
    mem_reg_0,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    mem_reg_1,
    wstate);
  output [31:0]DOADO;
  output [31:0]DOBDO;
  input ap_clk;
  input grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg;
  input [5:0]ADDRARDADDR;
  input [5:0]ADDRBWRADDR;
  input [31:0]s_axi_control_WDATA;
  input [1:0]rstate;
  input s_axi_control_ARVALID;
  input mem_reg_0;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_WSTRB;
  input mem_reg_1;
  input [1:0]wstate;

  wire [5:0]ADDRARDADDR;
  wire [5:0]ADDRBWRADDR;
  wire [31:0]DOADO;
  wire [31:0]DOBDO;
  wire ap_clk;
  wire grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg;
  wire [3:0]int_input_r_be1;
  wire int_input_r_ce1;
  wire mem_reg_0;
  wire mem_reg_1;
  wire [31:24]p_1_in;
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
        .DOADO(DOADO),
        .DOBDO(DOBDO),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_input_r_ce1),
        .ENBWREN(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
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
    mem_reg_i_14
       (.I0(s_axi_control_WDATA[26]),
        .I1(int_input_r_be1[3]),
        .O(p_1_in[26]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_15
       (.I0(s_axi_control_WDATA[25]),
        .I1(int_input_r_be1[3]),
        .O(p_1_in[25]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_16
       (.I0(s_axi_control_WDATA[24]),
        .I1(int_input_r_be1[3]),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_17
       (.I0(s_axi_control_WSTRB[3]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_0),
        .I3(mem_reg_1),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_input_r_be1[3]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_18
       (.I0(s_axi_control_WSTRB[2]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_0),
        .I3(mem_reg_1),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_input_r_be1[2]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_19
       (.I0(s_axi_control_WSTRB[1]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_0),
        .I3(mem_reg_1),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_input_r_be1[1]));
  LUT5 #(
    .INIT(32'hFF101010)) 
    mem_reg_i_1__0
       (.I0(rstate[1]),
        .I1(rstate[0]),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0),
        .I4(s_axi_control_WVALID),
        .O(int_input_r_ce1));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_20
       (.I0(s_axi_control_WSTRB[0]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_0),
        .I3(mem_reg_1),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_input_r_be1[0]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_9__0
       (.I0(s_axi_control_WDATA[31]),
        .I1(int_input_r_be1[3]),
        .O(p_1_in[31]));
endmodule

(* ORIG_REF_NAME = "runLayer_control_s_axi_ram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_control_s_axi_ram__parameterized1
   (DOADO,
    DOBDO,
    D,
    mem_reg_0,
    mem_reg_1,
    ap_clk,
    Q,
    ADDRARDADDR,
    output_r_addr_reg_244,
    s_axi_control_WDATA,
    \rdata_reg[0] ,
    int_output_r_read,
    \rdata_reg[4] ,
    \rdata_reg[0]_0 ,
    \rdata_reg[0]_1 ,
    \rdata_reg[4]_0 ,
    \rdata_reg[7] ,
    int_bias_read,
    int_input_r_read,
    \rdata_reg[31] ,
    q1,
    rstate,
    s_axi_control_ARVALID,
    mem_reg_2,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    wstate);
  output [27:0]DOADO;
  output [31:0]DOBDO;
  output [1:0]D;
  output mem_reg_0;
  output mem_reg_1;
  input ap_clk;
  input [0:0]Q;
  input [4:0]ADDRARDADDR;
  input [4:0]output_r_addr_reg_244;
  input [31:0]s_axi_control_WDATA;
  input \rdata_reg[0] ;
  input int_output_r_read;
  input [1:0]\rdata_reg[4] ;
  input \rdata_reg[0]_0 ;
  input \rdata_reg[0]_1 ;
  input \rdata_reg[4]_0 ;
  input \rdata_reg[7] ;
  input int_bias_read;
  input int_input_r_read;
  input [3:0]\rdata_reg[31] ;
  input [3:0]q1;
  input [1:0]rstate;
  input s_axi_control_ARVALID;
  input mem_reg_2;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_WSTRB;
  input [1:0]wstate;

  wire [4:0]ADDRARDADDR;
  wire [1:0]D;
  wire [27:0]DOADO;
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
  wire [4:0]output_r_addr_reg_244;
  wire [31:24]p_1_in;
  wire [3:0]q1;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[4]_i_2_n_0 ;
  wire \rdata_reg[0] ;
  wire \rdata_reg[0]_0 ;
  wire \rdata_reg[0]_1 ;
  wire [3:0]\rdata_reg[31] ;
  wire [1:0]\rdata_reg[4] ;
  wire \rdata_reg[4]_0 ;
  wire \rdata_reg[7] ;
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
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_bias/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "992" *) 
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
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,output_r_addr_reg_244,1'b1,1'b1,1'b1,1'b1,1'b1}),
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
        .DOADO({int_bias_q1[31],DOADO[27:5],int_bias_q1[7],DOADO[4:3],int_bias_q1[4],DOADO[2:0],int_bias_q1[0]}),
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
       (.I0(rstate[1]),
        .I1(rstate[0]),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_2),
        .I4(s_axi_control_WVALID),
        .O(int_bias_ce1));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_10
       (.I0(s_axi_control_WSTRB[3]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_2),
        .I3(\rdata_reg[0] ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_bias_be1[3]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_11
       (.I0(s_axi_control_WSTRB[2]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_2),
        .I3(\rdata_reg[0] ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_bias_be1[2]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_12
       (.I0(s_axi_control_WSTRB[1]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_2),
        .I3(\rdata_reg[0] ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_bias_be1[1]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_13
       (.I0(s_axi_control_WSTRB[0]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_2),
        .I3(\rdata_reg[0] ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_bias_be1[0]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_2__0
       (.I0(s_axi_control_WDATA[31]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[31]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_3__0
       (.I0(s_axi_control_WDATA[30]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[30]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_4__0
       (.I0(s_axi_control_WDATA[29]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[29]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_5__0
       (.I0(s_axi_control_WDATA[28]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[28]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_6__0
       (.I0(s_axi_control_WDATA[27]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[27]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_7__0
       (.I0(s_axi_control_WDATA[26]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[26]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_8
       (.I0(s_axi_control_WDATA[25]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[25]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_9
       (.I0(s_axi_control_WDATA[24]),
        .I1(int_bias_be1[3]),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h320232023202FEFE)) 
    \rdata[0]_i_1 
       (.I0(\rdata[0]_i_2_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(int_output_r_read),
        .I3(\rdata_reg[4] [0]),
        .I4(\rdata_reg[0]_0 ),
        .I5(\rdata_reg[0]_1 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFFAC00AC)) 
    \rdata[0]_i_2 
       (.I0(int_bias_q1[0]),
        .I1(q1[0]),
        .I2(int_bias_read),
        .I3(int_input_r_read),
        .I4(\rdata_reg[31] [0]),
        .O(\rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0053FF53)) 
    \rdata[31]_i_4 
       (.I0(int_bias_q1[31]),
        .I1(q1[3]),
        .I2(int_bias_read),
        .I3(int_input_r_read),
        .I4(\rdata_reg[31] [3]),
        .O(mem_reg_1));
  LUT6 #(
    .INIT(64'h320232023202FEFE)) 
    \rdata[4]_i_1 
       (.I0(\rdata[4]_i_2_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(int_output_r_read),
        .I3(\rdata_reg[4] [1]),
        .I4(\rdata_reg[0]_0 ),
        .I5(\rdata_reg[4]_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFFAC00AC)) 
    \rdata[4]_i_2 
       (.I0(int_bias_q1[4]),
        .I1(q1[1]),
        .I2(int_bias_read),
        .I3(int_input_r_read),
        .I4(\rdata_reg[31] [1]),
        .O(\rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA8A008AAA800080)) 
    \rdata[7]_i_4 
       (.I0(\rdata_reg[7] ),
        .I1(int_bias_q1[7]),
        .I2(int_bias_read),
        .I3(int_input_r_read),
        .I4(\rdata_reg[31] [2]),
        .I5(q1[2]),
        .O(mem_reg_0));
endmodule

(* ORIG_REF_NAME = "runLayer_control_s_axi_ram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_control_s_axi_ram__parameterized2
   (ADDRARDADDR,
    D,
    q1,
    mem_reg_2_0,
    mem_reg_2_1,
    mem_reg_2_2,
    mem_reg_2_3,
    mem_reg_2_4,
    mem_reg_2_5,
    mem_reg_2_6,
    mem_reg_2_7,
    mem_reg_3_0,
    mem_reg_3_1,
    mem_reg_3_2,
    mem_reg_3_3,
    mem_reg_3_4,
    mem_reg_3_5,
    mem_reg_3_6,
    q0,
    s_axi_control_ARADDR,
    s_axi_control_ARVALID,
    rstate,
    Q,
    \rdata_reg[1] ,
    int_output_r_read,
    DOADO,
    \rdata_reg[1]_0 ,
    \rdata_reg[1]_1 ,
    \rdata_reg[2] ,
    \rdata_reg[3] ,
    \rdata_reg[5] ,
    \rdata_reg[6] ,
    \rdata_reg[15] ,
    mem_reg_0_0,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    wstate,
    s_axi_control_WDATA,
    \rdata_reg[30] ,
    int_bias_read,
    int_input_r_read,
    \rdata_reg[30]_0 ,
    ap_clk,
    grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg,
    grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_weights_address0);
  output [5:0]ADDRARDADDR;
  output [12:0]D;
  output [3:0]q1;
  output mem_reg_2_0;
  output mem_reg_2_1;
  output mem_reg_2_2;
  output mem_reg_2_3;
  output mem_reg_2_4;
  output mem_reg_2_5;
  output mem_reg_2_6;
  output mem_reg_2_7;
  output mem_reg_3_0;
  output mem_reg_3_1;
  output mem_reg_3_2;
  output mem_reg_3_3;
  output mem_reg_3_4;
  output mem_reg_3_5;
  output mem_reg_3_6;
  output [31:0]q0;
  input [11:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  input [1:0]rstate;
  input [11:0]Q;
  input \rdata_reg[1] ;
  input int_output_r_read;
  input [12:0]DOADO;
  input \rdata_reg[1]_0 ;
  input \rdata_reg[1]_1 ;
  input \rdata_reg[2] ;
  input \rdata_reg[3] ;
  input \rdata_reg[5] ;
  input \rdata_reg[6] ;
  input [8:0]\rdata_reg[15] ;
  input mem_reg_0_0;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_WSTRB;
  input [1:0]wstate;
  input [31:0]s_axi_control_WDATA;
  input [27:0]\rdata_reg[30] ;
  input int_bias_read;
  input int_input_r_read;
  input [27:0]\rdata_reg[30]_0 ;
  input ap_clk;
  input grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg;
  input [11:0]grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_weights_address0;

  wire [5:0]ADDRARDADDR;
  wire [12:0]D;
  wire [12:0]DOADO;
  wire [11:0]Q;
  wire ap_clk;
  wire grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg;
  wire [11:0]grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_weights_address0;
  wire int_bias_read;
  wire int_input_r_read;
  wire int_output_r_read;
  wire [11:6]int_weights_address1;
  wire [3:0]int_weights_be1;
  wire int_weights_ce1;
  wire [30:1]int_weights_q1;
  wire mem_reg_0_0;
  wire mem_reg_2_0;
  wire mem_reg_2_1;
  wire mem_reg_2_2;
  wire mem_reg_2_3;
  wire mem_reg_2_4;
  wire mem_reg_2_5;
  wire mem_reg_2_6;
  wire mem_reg_2_7;
  wire mem_reg_3_0;
  wire mem_reg_3_1;
  wire mem_reg_3_2;
  wire mem_reg_3_3;
  wire mem_reg_3_4;
  wire mem_reg_3_5;
  wire mem_reg_3_6;
  wire [31:24]p_1_in;
  wire [31:0]q0;
  wire [3:0]q1;
  wire \rdata[10]_i_2_n_0 ;
  wire \rdata[11]_i_2_n_0 ;
  wire \rdata[12]_i_2_n_0 ;
  wire \rdata[13]_i_2_n_0 ;
  wire \rdata[14]_i_2_n_0 ;
  wire \rdata[15]_i_3_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[2]_i_2_n_0 ;
  wire \rdata[3]_i_2_n_0 ;
  wire \rdata[5]_i_2_n_0 ;
  wire \rdata[6]_i_2_n_0 ;
  wire \rdata[8]_i_2_n_0 ;
  wire \rdata[9]_i_2_n_0 ;
  wire [8:0]\rdata_reg[15] ;
  wire \rdata_reg[1] ;
  wire \rdata_reg[1]_0 ;
  wire \rdata_reg[1]_1 ;
  wire \rdata_reg[2] ;
  wire [27:0]\rdata_reg[30] ;
  wire [27:0]\rdata_reg[30]_0 ;
  wire \rdata_reg[3] ;
  wire \rdata_reg[5] ;
  wire \rdata_reg[6] ;
  wire [1:0]rstate;
  wire [11:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [1:0]wstate;
  wire NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_SBITERR_UNCONNECTED;
  wire [31:8]NLW_mem_reg_0_DIADI_UNCONNECTED;
  wire [31:8]NLW_mem_reg_0_DIBDI_UNCONNECTED;
  wire [3:1]NLW_mem_reg_0_DIPADIP_UNCONNECTED;
  wire [3:1]NLW_mem_reg_0_DIPBDIP_UNCONNECTED;
  wire [31:8]NLW_mem_reg_0_DOADO_UNCONNECTED;
  wire [31:8]NLW_mem_reg_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_SBITERR_UNCONNECTED;
  wire [31:8]NLW_mem_reg_1_DIADI_UNCONNECTED;
  wire [31:8]NLW_mem_reg_1_DIBDI_UNCONNECTED;
  wire [3:1]NLW_mem_reg_1_DIPADIP_UNCONNECTED;
  wire [3:1]NLW_mem_reg_1_DIPBDIP_UNCONNECTED;
  wire [31:8]NLW_mem_reg_1_DOADO_UNCONNECTED;
  wire [31:8]NLW_mem_reg_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_2_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_SBITERR_UNCONNECTED;
  wire [31:8]NLW_mem_reg_2_DIADI_UNCONNECTED;
  wire [31:8]NLW_mem_reg_2_DIBDI_UNCONNECTED;
  wire [3:1]NLW_mem_reg_2_DIPADIP_UNCONNECTED;
  wire [3:1]NLW_mem_reg_2_DIPBDIP_UNCONNECTED;
  wire [31:8]NLW_mem_reg_2_DOADO_UNCONNECTED;
  wire [31:8]NLW_mem_reg_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_3_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_SBITERR_UNCONNECTED;
  wire [31:8]NLW_mem_reg_3_DIADI_UNCONNECTED;
  wire [31:8]NLW_mem_reg_3_DIBDI_UNCONNECTED;
  wire [3:1]NLW_mem_reg_3_DIPADIP_UNCONNECTED;
  wire [3:1]NLW_mem_reg_3_DIPBDIP_UNCONNECTED;
  wire [31:8]NLW_mem_reg_3_DOADO_UNCONNECTED;
  wire [31:8]NLW_mem_reg_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
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
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg_0
       (.ADDRARDADDR({1'b1,int_weights_address1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_weights_address0,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_0_DBITERR_UNCONNECTED),
        .DIADI({NLW_mem_reg_0_DIADI_UNCONNECTED[31:8],s_axi_control_WDATA[7:0]}),
        .DIBDI({NLW_mem_reg_0_DIBDI_UNCONNECTED[31:8],1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({NLW_mem_reg_0_DIPADIP_UNCONNECTED[3:1],1'b0}),
        .DIPBDIP({NLW_mem_reg_0_DIPBDIP_UNCONNECTED[3:1],1'b0}),
        .DOADO({NLW_mem_reg_0_DOADO_UNCONNECTED[31:8],q1[2],int_weights_q1[6:5],q1[1],int_weights_q1[3:1],q1[0]}),
        .DOBDO({NLW_mem_reg_0_DOBDO_UNCONNECTED[31:8],q0[7:0]}),
        .DOPADOP(NLW_mem_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .INJECTDBITERR(NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,int_weights_be1[0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'hFF101010)) 
    mem_reg_0_i_1
       (.I0(rstate[1]),
        .I1(rstate[0]),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0),
        .I4(s_axi_control_WVALID),
        .O(int_weights_ce1));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_0_i_2
       (.I0(s_axi_control_ARADDR[11]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[0]),
        .I3(rstate[1]),
        .I4(Q[11]),
        .O(int_weights_address1[11]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_0_i_3
       (.I0(s_axi_control_ARADDR[10]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[0]),
        .I3(rstate[1]),
        .I4(Q[10]),
        .O(int_weights_address1[10]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_0_i_4
       (.I0(s_axi_control_ARADDR[9]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[0]),
        .I3(rstate[1]),
        .I4(Q[9]),
        .O(int_weights_address1[9]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_0_i_5
       (.I0(s_axi_control_ARADDR[8]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[0]),
        .I3(rstate[1]),
        .I4(Q[8]),
        .O(int_weights_address1[8]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_0_i_6
       (.I0(s_axi_control_ARADDR[7]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[0]),
        .I3(rstate[1]),
        .I4(Q[7]),
        .O(int_weights_address1[7]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_0_i_7
       (.I0(s_axi_control_ARADDR[6]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[0]),
        .I3(rstate[1]),
        .I4(Q[6]),
        .O(int_weights_address1[6]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_0_i_8
       (.I0(s_axi_control_WSTRB[0]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_0_0),
        .I3(\rdata_reg[1] ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_weights_be1[0]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
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
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg_1
       (.ADDRARDADDR({1'b1,int_weights_address1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_weights_address0,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_1_DBITERR_UNCONNECTED),
        .DIADI({NLW_mem_reg_1_DIADI_UNCONNECTED[31:8],s_axi_control_WDATA[15:8]}),
        .DIBDI({NLW_mem_reg_1_DIBDI_UNCONNECTED[31:8],1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({NLW_mem_reg_1_DIPADIP_UNCONNECTED[3:1],1'b0}),
        .DIPBDIP({NLW_mem_reg_1_DIPBDIP_UNCONNECTED[3:1],1'b0}),
        .DOADO({NLW_mem_reg_1_DOADO_UNCONNECTED[31:8],int_weights_q1[15:8]}),
        .DOBDO({NLW_mem_reg_1_DOBDO_UNCONNECTED[31:8],q0[15:8]}),
        .DOPADOP(NLW_mem_reg_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .INJECTDBITERR(NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,int_weights_be1[1]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_1_i_1
       (.I0(s_axi_control_WSTRB[1]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_0_0),
        .I3(\rdata_reg[1] ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_weights_be1[1]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
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
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg_2
       (.ADDRARDADDR({1'b1,int_weights_address1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_weights_address0,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_2_DBITERR_UNCONNECTED),
        .DIADI({NLW_mem_reg_2_DIADI_UNCONNECTED[31:8],s_axi_control_WDATA[23:16]}),
        .DIBDI({NLW_mem_reg_2_DIBDI_UNCONNECTED[31:8],1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({NLW_mem_reg_2_DIPADIP_UNCONNECTED[3:1],1'b0}),
        .DIPBDIP({NLW_mem_reg_2_DIPBDIP_UNCONNECTED[3:1],1'b0}),
        .DOADO({NLW_mem_reg_2_DOADO_UNCONNECTED[31:8],int_weights_q1[23:16]}),
        .DOBDO({NLW_mem_reg_2_DOBDO_UNCONNECTED[31:8],q0[23:16]}),
        .DOPADOP(NLW_mem_reg_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .INJECTDBITERR(NLW_mem_reg_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,int_weights_be1[2]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_2_i_1
       (.I0(s_axi_control_WSTRB[2]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_0_0),
        .I3(\rdata_reg[1] ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_weights_be1[2]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_weights/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
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
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg_3
       (.ADDRARDADDR({1'b1,int_weights_address1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_weights_address0,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_DBITERR_UNCONNECTED),
        .DIADI({NLW_mem_reg_3_DIADI_UNCONNECTED[31:8],p_1_in}),
        .DIBDI({NLW_mem_reg_3_DIBDI_UNCONNECTED[31:8],1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({NLW_mem_reg_3_DIPADIP_UNCONNECTED[3:1],1'b0}),
        .DIPBDIP({NLW_mem_reg_3_DIPBDIP_UNCONNECTED[3:1],1'b0}),
        .DOADO({NLW_mem_reg_3_DOADO_UNCONNECTED[31:8],q1[3],int_weights_q1[30:24]}),
        .DOBDO({NLW_mem_reg_3_DOBDO_UNCONNECTED[31:8],q0[31:24]}),
        .DOPADOP(NLW_mem_reg_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_weights_ce1),
        .ENBWREN(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .INJECTDBITERR(NLW_mem_reg_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,int_weights_be1[3]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_i_1
       (.I0(s_axi_control_WDATA[31]),
        .I1(int_weights_be1[3]),
        .O(p_1_in[31]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_i_2
       (.I0(s_axi_control_WDATA[30]),
        .I1(int_weights_be1[3]),
        .O(p_1_in[30]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_i_3
       (.I0(s_axi_control_WDATA[29]),
        .I1(int_weights_be1[3]),
        .O(p_1_in[29]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_i_4
       (.I0(s_axi_control_WDATA[28]),
        .I1(int_weights_be1[3]),
        .O(p_1_in[28]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_i_5
       (.I0(s_axi_control_WDATA[27]),
        .I1(int_weights_be1[3]),
        .O(p_1_in[27]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_i_6
       (.I0(s_axi_control_WDATA[26]),
        .I1(int_weights_be1[3]),
        .O(p_1_in[26]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_i_7
       (.I0(s_axi_control_WDATA[25]),
        .I1(int_weights_be1[3]),
        .O(p_1_in[25]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_i_8
       (.I0(s_axi_control_WDATA[24]),
        .I1(int_weights_be1[3]),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_3_i_9
       (.I0(s_axi_control_WSTRB[3]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_0_0),
        .I3(\rdata_reg[1] ),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_weights_be1[3]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_2
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[0]),
        .I3(rstate[1]),
        .I4(Q[5]),
        .O(ADDRARDADDR[5]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_3
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[0]),
        .I3(rstate[1]),
        .I4(Q[4]),
        .O(ADDRARDADDR[4]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_4
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[0]),
        .I3(rstate[1]),
        .I4(Q[3]),
        .O(ADDRARDADDR[3]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_5
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[0]),
        .I3(rstate[1]),
        .I4(Q[2]),
        .O(ADDRARDADDR[2]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_6
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[0]),
        .I3(rstate[1]),
        .I4(Q[1]),
        .O(ADDRARDADDR[1]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_7
       (.I0(s_axi_control_ARADDR[0]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[0]),
        .I3(rstate[1]),
        .I4(Q[0]),
        .O(ADDRARDADDR[0]));
  LUT6 #(
    .INIT(64'h4501FFFF45014501)) 
    \rdata[10]_i_1 
       (.I0(\rdata_reg[1] ),
        .I1(int_output_r_read),
        .I2(\rdata[10]_i_2_n_0 ),
        .I3(DOADO[7]),
        .I4(\rdata_reg[6] ),
        .I5(\rdata_reg[15] [3]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h0C3F1D1D)) 
    \rdata[10]_i_2 
       (.I0(int_weights_q1[10]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [7]),
        .I3(\rdata_reg[30] [7]),
        .I4(int_bias_read),
        .O(\rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4501FFFF45014501)) 
    \rdata[11]_i_1 
       (.I0(\rdata_reg[1] ),
        .I1(int_output_r_read),
        .I2(\rdata[11]_i_2_n_0 ),
        .I3(DOADO[8]),
        .I4(\rdata_reg[6] ),
        .I5(\rdata_reg[15] [4]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h0C3F1D1D)) 
    \rdata[11]_i_2 
       (.I0(int_weights_q1[11]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [8]),
        .I3(\rdata_reg[30] [8]),
        .I4(int_bias_read),
        .O(\rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4501FFFF45014501)) 
    \rdata[12]_i_1 
       (.I0(\rdata_reg[1] ),
        .I1(int_output_r_read),
        .I2(\rdata[12]_i_2_n_0 ),
        .I3(DOADO[9]),
        .I4(\rdata_reg[6] ),
        .I5(\rdata_reg[15] [5]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'h0C3F1D1D)) 
    \rdata[12]_i_2 
       (.I0(int_weights_q1[12]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [9]),
        .I3(\rdata_reg[30] [9]),
        .I4(int_bias_read),
        .O(\rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4501FFFF45014501)) 
    \rdata[13]_i_1 
       (.I0(\rdata_reg[1] ),
        .I1(int_output_r_read),
        .I2(\rdata[13]_i_2_n_0 ),
        .I3(DOADO[10]),
        .I4(\rdata_reg[6] ),
        .I5(\rdata_reg[15] [6]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'h0C3F1D1D)) 
    \rdata[13]_i_2 
       (.I0(int_weights_q1[13]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [10]),
        .I3(\rdata_reg[30] [10]),
        .I4(int_bias_read),
        .O(\rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4501FFFF45014501)) 
    \rdata[14]_i_1 
       (.I0(\rdata_reg[1] ),
        .I1(int_output_r_read),
        .I2(\rdata[14]_i_2_n_0 ),
        .I3(DOADO[11]),
        .I4(\rdata_reg[6] ),
        .I5(\rdata_reg[15] [7]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'h0C3F1D1D)) 
    \rdata[14]_i_2 
       (.I0(int_weights_q1[14]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [11]),
        .I3(\rdata_reg[30] [11]),
        .I4(int_bias_read),
        .O(\rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4501FFFF45014501)) 
    \rdata[15]_i_1 
       (.I0(\rdata_reg[1] ),
        .I1(int_output_r_read),
        .I2(\rdata[15]_i_3_n_0 ),
        .I3(DOADO[12]),
        .I4(\rdata_reg[6] ),
        .I5(\rdata_reg[15] [8]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'h0C3F1D1D)) 
    \rdata[15]_i_3 
       (.I0(int_weights_q1[15]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [12]),
        .I3(\rdata_reg[30] [12]),
        .I4(int_bias_read),
        .O(\rdata[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0C3F1D1D)) 
    \rdata[16]_i_2 
       (.I0(int_weights_q1[16]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [13]),
        .I3(\rdata_reg[30] [13]),
        .I4(int_bias_read),
        .O(mem_reg_2_0));
  LUT5 #(
    .INIT(32'h0C3F1D1D)) 
    \rdata[17]_i_2 
       (.I0(int_weights_q1[17]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [14]),
        .I3(\rdata_reg[30] [14]),
        .I4(int_bias_read),
        .O(mem_reg_2_1));
  LUT5 #(
    .INIT(32'h0C3F1D1D)) 
    \rdata[18]_i_2 
       (.I0(int_weights_q1[18]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [15]),
        .I3(\rdata_reg[30] [15]),
        .I4(int_bias_read),
        .O(mem_reg_2_2));
  LUT5 #(
    .INIT(32'h0C3F1D1D)) 
    \rdata[19]_i_2 
       (.I0(int_weights_q1[19]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [16]),
        .I3(\rdata_reg[30] [16]),
        .I4(int_bias_read),
        .O(mem_reg_2_3));
  LUT6 #(
    .INIT(64'h320232023202FEFE)) 
    \rdata[1]_i_1 
       (.I0(\rdata[1]_i_2_n_0 ),
        .I1(\rdata_reg[1] ),
        .I2(int_output_r_read),
        .I3(DOADO[0]),
        .I4(\rdata_reg[1]_0 ),
        .I5(\rdata_reg[1]_1 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFFCA00CA)) 
    \rdata[1]_i_2 
       (.I0(int_weights_q1[1]),
        .I1(\rdata_reg[30] [0]),
        .I2(int_bias_read),
        .I3(int_input_r_read),
        .I4(\rdata_reg[30]_0 [0]),
        .O(\rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0C3F1D1D)) 
    \rdata[20]_i_2 
       (.I0(int_weights_q1[20]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [17]),
        .I3(\rdata_reg[30] [17]),
        .I4(int_bias_read),
        .O(mem_reg_2_4));
  LUT5 #(
    .INIT(32'h0C3F1D1D)) 
    \rdata[21]_i_2 
       (.I0(int_weights_q1[21]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [18]),
        .I3(\rdata_reg[30] [18]),
        .I4(int_bias_read),
        .O(mem_reg_2_5));
  LUT5 #(
    .INIT(32'h0C3F1D1D)) 
    \rdata[22]_i_2 
       (.I0(int_weights_q1[22]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [19]),
        .I3(\rdata_reg[30] [19]),
        .I4(int_bias_read),
        .O(mem_reg_2_6));
  LUT5 #(
    .INIT(32'h0C3F1D1D)) 
    \rdata[23]_i_2 
       (.I0(int_weights_q1[23]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [20]),
        .I3(\rdata_reg[30] [20]),
        .I4(int_bias_read),
        .O(mem_reg_2_7));
  LUT5 #(
    .INIT(32'h0C3F1D1D)) 
    \rdata[24]_i_2 
       (.I0(int_weights_q1[24]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [21]),
        .I3(\rdata_reg[30] [21]),
        .I4(int_bias_read),
        .O(mem_reg_3_0));
  LUT5 #(
    .INIT(32'h0C3F1D1D)) 
    \rdata[25]_i_2 
       (.I0(int_weights_q1[25]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [22]),
        .I3(\rdata_reg[30] [22]),
        .I4(int_bias_read),
        .O(mem_reg_3_1));
  LUT5 #(
    .INIT(32'h0C3F1D1D)) 
    \rdata[26]_i_2 
       (.I0(int_weights_q1[26]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [23]),
        .I3(\rdata_reg[30] [23]),
        .I4(int_bias_read),
        .O(mem_reg_3_2));
  LUT5 #(
    .INIT(32'h0C3F1D1D)) 
    \rdata[27]_i_2 
       (.I0(int_weights_q1[27]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [24]),
        .I3(\rdata_reg[30] [24]),
        .I4(int_bias_read),
        .O(mem_reg_3_3));
  LUT5 #(
    .INIT(32'h0C3F1D1D)) 
    \rdata[28]_i_2 
       (.I0(int_weights_q1[28]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [25]),
        .I3(\rdata_reg[30] [25]),
        .I4(int_bias_read),
        .O(mem_reg_3_4));
  LUT5 #(
    .INIT(32'h0C3F1D1D)) 
    \rdata[29]_i_2 
       (.I0(int_weights_q1[29]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [26]),
        .I3(\rdata_reg[30] [26]),
        .I4(int_bias_read),
        .O(mem_reg_3_5));
  LUT6 #(
    .INIT(64'h450145014501FFFF)) 
    \rdata[2]_i_1 
       (.I0(\rdata_reg[1] ),
        .I1(int_output_r_read),
        .I2(\rdata[2]_i_2_n_0 ),
        .I3(DOADO[1]),
        .I4(\rdata_reg[2] ),
        .I5(\rdata_reg[1]_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h0C3F1D1D)) 
    \rdata[2]_i_2 
       (.I0(int_weights_q1[2]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [1]),
        .I3(\rdata_reg[30] [1]),
        .I4(int_bias_read),
        .O(\rdata[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0C3F1D1D)) 
    \rdata[30]_i_2 
       (.I0(int_weights_q1[30]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [27]),
        .I3(\rdata_reg[30] [27]),
        .I4(int_bias_read),
        .O(mem_reg_3_6));
  LUT6 #(
    .INIT(64'h4501FFFF45014501)) 
    \rdata[3]_i_1 
       (.I0(\rdata_reg[1] ),
        .I1(int_output_r_read),
        .I2(\rdata[3]_i_2_n_0 ),
        .I3(DOADO[2]),
        .I4(\rdata_reg[1]_0 ),
        .I5(\rdata_reg[3] ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h0C3F1D1D)) 
    \rdata[3]_i_2 
       (.I0(int_weights_q1[3]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [2]),
        .I3(\rdata_reg[30] [2]),
        .I4(int_bias_read),
        .O(\rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4501FFFF45014501)) 
    \rdata[5]_i_1 
       (.I0(\rdata_reg[1] ),
        .I1(int_output_r_read),
        .I2(\rdata[5]_i_2_n_0 ),
        .I3(DOADO[3]),
        .I4(\rdata_reg[1]_0 ),
        .I5(\rdata_reg[5] ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h0C3F1D1D)) 
    \rdata[5]_i_2 
       (.I0(int_weights_q1[5]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [3]),
        .I3(\rdata_reg[30] [3]),
        .I4(int_bias_read),
        .O(\rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4501FFFF45014501)) 
    \rdata[6]_i_1 
       (.I0(\rdata_reg[1] ),
        .I1(int_output_r_read),
        .I2(\rdata[6]_i_2_n_0 ),
        .I3(DOADO[4]),
        .I4(\rdata_reg[6] ),
        .I5(\rdata_reg[15] [0]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h0C3F1D1D)) 
    \rdata[6]_i_2 
       (.I0(int_weights_q1[6]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [4]),
        .I3(\rdata_reg[30] [4]),
        .I4(int_bias_read),
        .O(\rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4501FFFF45014501)) 
    \rdata[8]_i_1 
       (.I0(\rdata_reg[1] ),
        .I1(int_output_r_read),
        .I2(\rdata[8]_i_2_n_0 ),
        .I3(DOADO[5]),
        .I4(\rdata_reg[6] ),
        .I5(\rdata_reg[15] [1]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h0C3F1D1D)) 
    \rdata[8]_i_2 
       (.I0(int_weights_q1[8]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [5]),
        .I3(\rdata_reg[30] [5]),
        .I4(int_bias_read),
        .O(\rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4501FFFF45014501)) 
    \rdata[9]_i_1 
       (.I0(\rdata_reg[1] ),
        .I1(int_output_r_read),
        .I2(\rdata[9]_i_2_n_0 ),
        .I3(DOADO[6]),
        .I4(\rdata_reg[6] ),
        .I5(\rdata_reg[15] [2]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h0C3F1D1D)) 
    \rdata[9]_i_2 
       (.I0(int_weights_q1[9]),
        .I1(int_input_r_read),
        .I2(\rdata_reg[30]_0 [6]),
        .I3(\rdata_reg[30] [6]),
        .I4(int_bias_read),
        .O(\rdata[9]_i_2_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_flow_control_loop_pipe_sequential_init
   (E,
    SR,
    grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_ready,
    D,
    \output_r_load_reg_249_reg[15] ,
    S,
    DI,
    \inNeurons_fu_56_reg[15] ,
    grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg,
    \numOfInNeurons_read_reg_210_reg[6] ,
    ADDRBWRADDR,
    grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_0,
    \inNeurons_fu_56_reg[15]_0 ,
    \inNeurons_fu_56_reg[3] ,
    \inNeurons_fu_56_reg[6] ,
    grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_1,
    grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_2,
    grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_3,
    grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_4,
    \inNeurons_fu_56_reg[0] ,
    ap_rst_n_inv,
    ap_clk,
    grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg,
    CO,
    \ap_CS_fsm_reg[4] ,
    \ap_CS_fsm_reg[4]_0 ,
    Q,
    ap_loop_exit_ready_pp0_iter3_reg,
    ap_rst_n,
    \conv147_fu_60_reg[15] ,
    P,
    ap_enable_reg_pp0_iter4,
    \conv147_fu_60_reg[15]_0 ,
    \inNeurons_fu_56_reg[15]_1 ,
    icmp_ln20_fu_136_p2_carry__0,
    mem_reg_0,
    \int_input_r_shift0_reg[0] );
  output [0:0]E;
  output [0:0]SR;
  output grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_ready;
  output [1:0]D;
  output [15:0]\output_r_load_reg_249_reg[15] ;
  output [3:0]S;
  output [3:0]DI;
  output [5:0]\inNeurons_fu_56_reg[15] ;
  output [3:0]grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg;
  output [3:0]\numOfInNeurons_read_reg_210_reg[6] ;
  output [5:0]ADDRBWRADDR;
  output [0:0]grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_0;
  output [15:0]\inNeurons_fu_56_reg[15]_0 ;
  output [3:0]\inNeurons_fu_56_reg[3] ;
  output [2:0]\inNeurons_fu_56_reg[6] ;
  output [0:0]grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_1;
  output [3:0]grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_2;
  output [3:0]grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_3;
  output [3:0]grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_4;
  output \inNeurons_fu_56_reg[0] ;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg;
  input [0:0]CO;
  input \ap_CS_fsm_reg[4] ;
  input \ap_CS_fsm_reg[4]_0 ;
  input [2:0]Q;
  input ap_loop_exit_ready_pp0_iter3_reg;
  input ap_rst_n;
  input [15:0]\conv147_fu_60_reg[15] ;
  input [15:0]P;
  input ap_enable_reg_pp0_iter4;
  input [15:0]\conv147_fu_60_reg[15]_0 ;
  input [15:0]\inNeurons_fu_56_reg[15]_1 ;
  input [15:0]icmp_ln20_fu_136_p2_carry__0;
  input [12:0]mem_reg_0;
  input \int_input_r_shift0_reg[0] ;

  wire [5:0]ADDRBWRADDR;
  wire [0:0]CO;
  wire [1:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [15:0]P;
  wire [2:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire \ap_CS_fsm[4]_i_3_n_0 ;
  wire \ap_CS_fsm_reg[4] ;
  wire \ap_CS_fsm_reg[4]_0 ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1_n_0;
  wire ap_enable_reg_pp0_iter4;
  wire ap_loop_exit_ready_pp0_iter3_reg;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [14:12]ap_sig_allocacmp_inNeurons_1;
  wire [15:0]\conv147_fu_60_reg[15] ;
  wire [15:0]\conv147_fu_60_reg[15]_0 ;
  wire grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_ready;
  wire grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg;
  wire [3:0]grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg;
  wire [0:0]grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_0;
  wire [0:0]grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_1;
  wire [3:0]grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_2;
  wire [3:0]grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_3;
  wire [3:0]grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_4;
  wire [0:0]grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_input_r_address0;
  wire [15:0]icmp_ln20_fu_136_p2_carry__0;
  wire \inNeurons_fu_56[12]_i_3_n_0 ;
  wire \inNeurons_fu_56[12]_i_4_n_0 ;
  wire \inNeurons_fu_56[12]_i_5_n_0 ;
  wire \inNeurons_fu_56[15]_i_4_n_0 ;
  wire \inNeurons_fu_56[4]_i_3_n_0 ;
  wire \inNeurons_fu_56[4]_i_4_n_0 ;
  wire \inNeurons_fu_56[4]_i_5_n_0 ;
  wire \inNeurons_fu_56[4]_i_6_n_0 ;
  wire \inNeurons_fu_56[8]_i_2_n_0 ;
  wire \inNeurons_fu_56[8]_i_3_n_0 ;
  wire \inNeurons_fu_56[8]_i_4_n_0 ;
  wire \inNeurons_fu_56[8]_i_5_n_0 ;
  wire \inNeurons_fu_56_reg[0] ;
  wire \inNeurons_fu_56_reg[12]_i_1_n_0 ;
  wire \inNeurons_fu_56_reg[12]_i_1_n_1 ;
  wire \inNeurons_fu_56_reg[12]_i_1_n_2 ;
  wire \inNeurons_fu_56_reg[12]_i_1_n_3 ;
  wire [5:0]\inNeurons_fu_56_reg[15] ;
  wire [15:0]\inNeurons_fu_56_reg[15]_0 ;
  wire [15:0]\inNeurons_fu_56_reg[15]_1 ;
  wire \inNeurons_fu_56_reg[15]_i_3_n_2 ;
  wire \inNeurons_fu_56_reg[15]_i_3_n_3 ;
  wire [3:0]\inNeurons_fu_56_reg[3] ;
  wire \inNeurons_fu_56_reg[4]_i_1_n_0 ;
  wire \inNeurons_fu_56_reg[4]_i_1_n_1 ;
  wire \inNeurons_fu_56_reg[4]_i_1_n_2 ;
  wire \inNeurons_fu_56_reg[4]_i_1_n_3 ;
  wire [2:0]\inNeurons_fu_56_reg[6] ;
  wire \inNeurons_fu_56_reg[8]_i_1_n_0 ;
  wire \inNeurons_fu_56_reg[8]_i_1_n_1 ;
  wire \inNeurons_fu_56_reg[8]_i_1_n_2 ;
  wire \inNeurons_fu_56_reg[8]_i_1_n_3 ;
  wire \int_input_r_shift0_reg[0] ;
  wire [12:0]mem_reg_0;
  wire [3:0]\numOfInNeurons_read_reg_210_reg[6] ;
  wire [15:0]\output_r_load_reg_249_reg[15] ;
  wire [3:2]\NLW_inNeurons_fu_56_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_inNeurons_fu_56_reg[15]_i_3_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h2A)) 
    add_ln22_fu_152_p2_carry__0_i_1
       (.I0(\inNeurons_fu_56_reg[15]_1 [7]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(\inNeurons_fu_56_reg[15] [0]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln22_fu_152_p2_carry__0_i_2
       (.I0(\inNeurons_fu_56_reg[15]_1 [6]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(\inNeurons_fu_56_reg[6] [2]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln22_fu_152_p2_carry__0_i_3
       (.I0(\inNeurons_fu_56_reg[15]_1 [5]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(\inNeurons_fu_56_reg[6] [1]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln22_fu_152_p2_carry__0_i_4
       (.I0(\inNeurons_fu_56_reg[15]_1 [4]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(\inNeurons_fu_56_reg[6] [0]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln22_fu_152_p2_carry__0_i_5
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_1 [7]),
        .I3(mem_reg_0[7]),
        .O(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_3[3]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln22_fu_152_p2_carry__0_i_6
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_1 [6]),
        .I3(mem_reg_0[6]),
        .O(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_3[2]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln22_fu_152_p2_carry__0_i_7
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_1 [5]),
        .I3(mem_reg_0[5]),
        .O(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_3[1]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln22_fu_152_p2_carry__0_i_8
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_1 [4]),
        .I3(mem_reg_0[4]),
        .O(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_3[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln22_fu_152_p2_carry__1_i_1
       (.I0(\inNeurons_fu_56_reg[15]_1 [11]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(\inNeurons_fu_56_reg[15] [4]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln22_fu_152_p2_carry__1_i_2
       (.I0(\inNeurons_fu_56_reg[15]_1 [10]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(\inNeurons_fu_56_reg[15] [3]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln22_fu_152_p2_carry__1_i_3
       (.I0(\inNeurons_fu_56_reg[15]_1 [9]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(\inNeurons_fu_56_reg[15] [2]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln22_fu_152_p2_carry__1_i_4
       (.I0(\inNeurons_fu_56_reg[15]_1 [8]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(\inNeurons_fu_56_reg[15] [1]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln22_fu_152_p2_carry__1_i_5
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_1 [11]),
        .I3(mem_reg_0[11]),
        .O(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_4[3]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln22_fu_152_p2_carry__1_i_6
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_1 [10]),
        .I3(mem_reg_0[10]),
        .O(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_4[2]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln22_fu_152_p2_carry__1_i_7
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_1 [9]),
        .I3(mem_reg_0[9]),
        .O(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_4[1]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln22_fu_152_p2_carry__1_i_8
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_1 [8]),
        .I3(mem_reg_0[8]),
        .O(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_4[0]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln22_fu_152_p2_carry__2_i_1
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_1 [12]),
        .I3(mem_reg_0[12]),
        .O(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_1));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln22_fu_152_p2_carry_i_1
       (.I0(\inNeurons_fu_56_reg[15]_1 [3]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(\inNeurons_fu_56_reg[3] [3]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln22_fu_152_p2_carry_i_2
       (.I0(\inNeurons_fu_56_reg[15]_1 [2]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(\inNeurons_fu_56_reg[3] [2]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln22_fu_152_p2_carry_i_3
       (.I0(\inNeurons_fu_56_reg[15]_1 [1]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(\inNeurons_fu_56_reg[3] [1]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln22_fu_152_p2_carry_i_4
       (.I0(\inNeurons_fu_56_reg[15]_1 [0]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(\inNeurons_fu_56_reg[3] [0]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln22_fu_152_p2_carry_i_5
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_1 [3]),
        .I3(mem_reg_0[3]),
        .O(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_2[3]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln22_fu_152_p2_carry_i_6
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_1 [2]),
        .I3(mem_reg_0[2]),
        .O(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_2[2]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln22_fu_152_p2_carry_i_7
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_1 [1]),
        .I3(mem_reg_0[1]),
        .O(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_2[1]));
  LUT4 #(
    .INIT(16'h8F70)) 
    add_ln22_fu_152_p2_carry_i_8
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_1 [0]),
        .I3(mem_reg_0[0]),
        .O(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_2[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hBABBAAAA)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(Q[1]),
        .I1(ap_loop_exit_ready_pp0_iter3_reg),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I3(ap_done_cache),
        .I4(Q[2]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(\ap_CS_fsm_reg[4] ),
        .I1(\ap_CS_fsm_reg[4]_0 ),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\ap_CS_fsm[4]_i_3_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \ap_CS_fsm[4]_i_3 
       (.I0(ap_loop_exit_ready_pp0_iter3_reg),
        .I1(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I2(ap_done_cache),
        .O(\ap_CS_fsm[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    ap_done_cache_i_1
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I1(ap_loop_exit_ready_pp0_iter3_reg),
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
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_i_1
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I1(CO),
        .O(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_ready));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hBBFB)) 
    ap_loop_init_int_i_1
       (.I0(ap_loop_exit_ready_pp0_iter3_reg),
        .I1(ap_rst_n),
        .I2(ap_loop_init_int),
        .I3(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(ap_loop_init_int_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv147_fu_60[0]_i_1 
       (.I0(\conv147_fu_60_reg[15] [0]),
        .I1(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[0]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv147_fu_60_reg[15]_0 [0]),
        .O(\output_r_load_reg_249_reg[15] [0]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv147_fu_60[10]_i_1 
       (.I0(\conv147_fu_60_reg[15] [10]),
        .I1(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[10]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv147_fu_60_reg[15]_0 [10]),
        .O(\output_r_load_reg_249_reg[15] [10]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv147_fu_60[11]_i_1 
       (.I0(\conv147_fu_60_reg[15] [11]),
        .I1(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[11]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv147_fu_60_reg[15]_0 [11]),
        .O(\output_r_load_reg_249_reg[15] [11]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv147_fu_60[12]_i_1 
       (.I0(\conv147_fu_60_reg[15] [12]),
        .I1(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[12]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv147_fu_60_reg[15]_0 [12]),
        .O(\output_r_load_reg_249_reg[15] [12]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv147_fu_60[13]_i_1 
       (.I0(\conv147_fu_60_reg[15] [13]),
        .I1(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[13]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv147_fu_60_reg[15]_0 [13]),
        .O(\output_r_load_reg_249_reg[15] [13]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv147_fu_60[14]_i_1 
       (.I0(\conv147_fu_60_reg[15] [14]),
        .I1(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[14]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv147_fu_60_reg[15]_0 [14]),
        .O(\output_r_load_reg_249_reg[15] [14]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv147_fu_60[15]_i_1 
       (.I0(\conv147_fu_60_reg[15] [15]),
        .I1(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[15]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv147_fu_60_reg[15]_0 [15]),
        .O(\output_r_load_reg_249_reg[15] [15]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv147_fu_60[1]_i_1 
       (.I0(\conv147_fu_60_reg[15] [1]),
        .I1(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[1]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv147_fu_60_reg[15]_0 [1]),
        .O(\output_r_load_reg_249_reg[15] [1]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv147_fu_60[2]_i_1 
       (.I0(\conv147_fu_60_reg[15] [2]),
        .I1(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[2]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv147_fu_60_reg[15]_0 [2]),
        .O(\output_r_load_reg_249_reg[15] [2]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv147_fu_60[3]_i_1 
       (.I0(\conv147_fu_60_reg[15] [3]),
        .I1(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[3]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv147_fu_60_reg[15]_0 [3]),
        .O(\output_r_load_reg_249_reg[15] [3]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv147_fu_60[4]_i_1 
       (.I0(\conv147_fu_60_reg[15] [4]),
        .I1(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[4]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv147_fu_60_reg[15]_0 [4]),
        .O(\output_r_load_reg_249_reg[15] [4]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv147_fu_60[5]_i_1 
       (.I0(\conv147_fu_60_reg[15] [5]),
        .I1(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[5]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv147_fu_60_reg[15]_0 [5]),
        .O(\output_r_load_reg_249_reg[15] [5]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv147_fu_60[6]_i_1 
       (.I0(\conv147_fu_60_reg[15] [6]),
        .I1(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[6]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv147_fu_60_reg[15]_0 [6]),
        .O(\output_r_load_reg_249_reg[15] [6]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv147_fu_60[7]_i_1 
       (.I0(\conv147_fu_60_reg[15] [7]),
        .I1(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[7]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv147_fu_60_reg[15]_0 [7]),
        .O(\output_r_load_reg_249_reg[15] [7]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv147_fu_60[8]_i_1 
       (.I0(\conv147_fu_60_reg[15] [8]),
        .I1(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[8]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv147_fu_60_reg[15]_0 [8]),
        .O(\output_r_load_reg_249_reg[15] [8]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \conv147_fu_60[9]_i_1 
       (.I0(\conv147_fu_60_reg[15] [9]),
        .I1(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(P[9]),
        .I4(ap_enable_reg_pp0_iter4),
        .I5(\conv147_fu_60_reg[15]_0 [9]),
        .O(\output_r_load_reg_249_reg[15] [9]));
  LUT6 #(
    .INIT(64'hC0EAFFFF808080AA)) 
    icmp_ln20_fu_136_p2_carry__0_i_1
       (.I0(icmp_ln20_fu_136_p2_carry__0[14]),
        .I1(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\inNeurons_fu_56_reg[15]_1 [14]),
        .I4(\inNeurons_fu_56_reg[15]_1 [15]),
        .I5(icmp_ln20_fu_136_p2_carry__0[15]),
        .O(DI[3]));
  LUT6 #(
    .INIT(64'hC0EAFFFF808080AA)) 
    icmp_ln20_fu_136_p2_carry__0_i_2
       (.I0(icmp_ln20_fu_136_p2_carry__0[12]),
        .I1(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\inNeurons_fu_56_reg[15]_1 [12]),
        .I4(\inNeurons_fu_56_reg[15]_1 [13]),
        .I5(icmp_ln20_fu_136_p2_carry__0[13]),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'hC0EAFFFF808080AA)) 
    icmp_ln20_fu_136_p2_carry__0_i_3
       (.I0(icmp_ln20_fu_136_p2_carry__0[10]),
        .I1(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\inNeurons_fu_56_reg[15]_1 [10]),
        .I4(\inNeurons_fu_56_reg[15]_1 [11]),
        .I5(icmp_ln20_fu_136_p2_carry__0[11]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'hC0EAFFFF808080AA)) 
    icmp_ln20_fu_136_p2_carry__0_i_4
       (.I0(icmp_ln20_fu_136_p2_carry__0[8]),
        .I1(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\inNeurons_fu_56_reg[15]_1 [8]),
        .I4(\inNeurons_fu_56_reg[15]_1 [9]),
        .I5(icmp_ln20_fu_136_p2_carry__0[9]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln20_fu_136_p2_carry__0_i_5
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_1 [14]),
        .I3(icmp_ln20_fu_136_p2_carry__0[14]),
        .I4(\inNeurons_fu_56_reg[15]_1 [15]),
        .I5(icmp_ln20_fu_136_p2_carry__0[15]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln20_fu_136_p2_carry__0_i_6
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_1 [12]),
        .I3(icmp_ln20_fu_136_p2_carry__0[12]),
        .I4(\inNeurons_fu_56_reg[15]_1 [13]),
        .I5(icmp_ln20_fu_136_p2_carry__0[13]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln20_fu_136_p2_carry__0_i_7
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_1 [10]),
        .I3(icmp_ln20_fu_136_p2_carry__0[10]),
        .I4(\inNeurons_fu_56_reg[15]_1 [11]),
        .I5(icmp_ln20_fu_136_p2_carry__0[11]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln20_fu_136_p2_carry__0_i_8
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_1 [8]),
        .I3(icmp_ln20_fu_136_p2_carry__0[8]),
        .I4(\inNeurons_fu_56_reg[15]_1 [9]),
        .I5(icmp_ln20_fu_136_p2_carry__0[9]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    icmp_ln20_fu_136_p2_carry__1_i_1
       (.I0(\inNeurons_fu_56_reg[15]_1 [15]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(\inNeurons_fu_56_reg[15] [5]));
  LUT3 #(
    .INIT(8'h8F)) 
    icmp_ln20_fu_136_p2_carry__1_i_2
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_1 [15]),
        .O(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_0));
  LUT6 #(
    .INIT(64'hC0EAFFFF808080AA)) 
    icmp_ln20_fu_136_p2_carry_i_1
       (.I0(icmp_ln20_fu_136_p2_carry__0[6]),
        .I1(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\inNeurons_fu_56_reg[15]_1 [6]),
        .I4(\inNeurons_fu_56_reg[15]_1 [7]),
        .I5(icmp_ln20_fu_136_p2_carry__0[7]),
        .O(\numOfInNeurons_read_reg_210_reg[6] [3]));
  LUT6 #(
    .INIT(64'hC0EAFFFF808080AA)) 
    icmp_ln20_fu_136_p2_carry_i_2
       (.I0(icmp_ln20_fu_136_p2_carry__0[4]),
        .I1(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\inNeurons_fu_56_reg[15]_1 [4]),
        .I4(\inNeurons_fu_56_reg[15]_1 [5]),
        .I5(icmp_ln20_fu_136_p2_carry__0[5]),
        .O(\numOfInNeurons_read_reg_210_reg[6] [2]));
  LUT6 #(
    .INIT(64'hC0EAFFFF808080AA)) 
    icmp_ln20_fu_136_p2_carry_i_3
       (.I0(icmp_ln20_fu_136_p2_carry__0[2]),
        .I1(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\inNeurons_fu_56_reg[15]_1 [2]),
        .I4(\inNeurons_fu_56_reg[15]_1 [3]),
        .I5(icmp_ln20_fu_136_p2_carry__0[3]),
        .O(\numOfInNeurons_read_reg_210_reg[6] [1]));
  LUT6 #(
    .INIT(64'hC0EAFFFF808080AA)) 
    icmp_ln20_fu_136_p2_carry_i_4
       (.I0(icmp_ln20_fu_136_p2_carry__0[0]),
        .I1(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\inNeurons_fu_56_reg[15]_1 [0]),
        .I4(\inNeurons_fu_56_reg[15]_1 [1]),
        .I5(icmp_ln20_fu_136_p2_carry__0[1]),
        .O(\numOfInNeurons_read_reg_210_reg[6] [0]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln20_fu_136_p2_carry_i_5
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_1 [6]),
        .I3(icmp_ln20_fu_136_p2_carry__0[6]),
        .I4(\inNeurons_fu_56_reg[15]_1 [7]),
        .I5(icmp_ln20_fu_136_p2_carry__0[7]),
        .O(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg[3]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln20_fu_136_p2_carry_i_6
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_1 [4]),
        .I3(icmp_ln20_fu_136_p2_carry__0[4]),
        .I4(\inNeurons_fu_56_reg[15]_1 [5]),
        .I5(icmp_ln20_fu_136_p2_carry__0[5]),
        .O(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg[2]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln20_fu_136_p2_carry_i_7
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_1 [2]),
        .I3(icmp_ln20_fu_136_p2_carry__0[2]),
        .I4(\inNeurons_fu_56_reg[15]_1 [3]),
        .I5(icmp_ln20_fu_136_p2_carry__0[3]),
        .O(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg[1]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln20_fu_136_p2_carry_i_8
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\inNeurons_fu_56_reg[15]_1 [0]),
        .I3(icmp_ln20_fu_136_p2_carry__0[0]),
        .I4(\inNeurons_fu_56_reg[15]_1 [1]),
        .I5(icmp_ln20_fu_136_p2_carry__0[1]),
        .O(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \inNeurons_fu_56[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\inNeurons_fu_56_reg[15]_1 [0]),
        .O(\inNeurons_fu_56_reg[15]_0 [0]));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[12]_i_2 
       (.I0(\inNeurons_fu_56_reg[15]_1 [12]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(ap_sig_allocacmp_inNeurons_1[12]));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[12]_i_3 
       (.I0(\inNeurons_fu_56_reg[15]_1 [11]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(\inNeurons_fu_56[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[12]_i_4 
       (.I0(\inNeurons_fu_56_reg[15]_1 [10]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(\inNeurons_fu_56[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[12]_i_5 
       (.I0(\inNeurons_fu_56_reg[15]_1 [9]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(\inNeurons_fu_56[12]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \inNeurons_fu_56[15]_i_1 
       (.I0(ap_loop_init_int),
        .I1(CO),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(SR));
  LUT2 #(
    .INIT(4'h8)) 
    \inNeurons_fu_56[15]_i_2 
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I1(CO),
        .O(E));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[15]_i_4 
       (.I0(\inNeurons_fu_56_reg[15]_1 [15]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(\inNeurons_fu_56[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[15]_i_5 
       (.I0(\inNeurons_fu_56_reg[15]_1 [14]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(ap_sig_allocacmp_inNeurons_1[14]));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[15]_i_6 
       (.I0(\inNeurons_fu_56_reg[15]_1 [13]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(ap_sig_allocacmp_inNeurons_1[13]));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[4]_i_2 
       (.I0(\inNeurons_fu_56_reg[15]_1 [0]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_input_r_address0));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[4]_i_3 
       (.I0(\inNeurons_fu_56_reg[15]_1 [4]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(\inNeurons_fu_56[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[4]_i_4 
       (.I0(\inNeurons_fu_56_reg[15]_1 [3]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(\inNeurons_fu_56[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[4]_i_5 
       (.I0(\inNeurons_fu_56_reg[15]_1 [2]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(\inNeurons_fu_56[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[4]_i_6 
       (.I0(\inNeurons_fu_56_reg[15]_1 [1]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(\inNeurons_fu_56[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[8]_i_2 
       (.I0(\inNeurons_fu_56_reg[15]_1 [8]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(\inNeurons_fu_56[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[8]_i_3 
       (.I0(\inNeurons_fu_56_reg[15]_1 [7]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(\inNeurons_fu_56[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[8]_i_4 
       (.I0(\inNeurons_fu_56_reg[15]_1 [6]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(\inNeurons_fu_56[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_56[8]_i_5 
       (.I0(\inNeurons_fu_56_reg[15]_1 [5]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(\inNeurons_fu_56[8]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \inNeurons_fu_56_reg[12]_i_1 
       (.CI(\inNeurons_fu_56_reg[8]_i_1_n_0 ),
        .CO({\inNeurons_fu_56_reg[12]_i_1_n_0 ,\inNeurons_fu_56_reg[12]_i_1_n_1 ,\inNeurons_fu_56_reg[12]_i_1_n_2 ,\inNeurons_fu_56_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\inNeurons_fu_56_reg[15]_0 [12:9]),
        .S({ap_sig_allocacmp_inNeurons_1[12],\inNeurons_fu_56[12]_i_3_n_0 ,\inNeurons_fu_56[12]_i_4_n_0 ,\inNeurons_fu_56[12]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \inNeurons_fu_56_reg[15]_i_3 
       (.CI(\inNeurons_fu_56_reg[12]_i_1_n_0 ),
        .CO({\NLW_inNeurons_fu_56_reg[15]_i_3_CO_UNCONNECTED [3:2],\inNeurons_fu_56_reg[15]_i_3_n_2 ,\inNeurons_fu_56_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_inNeurons_fu_56_reg[15]_i_3_O_UNCONNECTED [3],\inNeurons_fu_56_reg[15]_0 [15:13]}),
        .S({1'b0,\inNeurons_fu_56[15]_i_4_n_0 ,ap_sig_allocacmp_inNeurons_1[14:13]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \inNeurons_fu_56_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\inNeurons_fu_56_reg[4]_i_1_n_0 ,\inNeurons_fu_56_reg[4]_i_1_n_1 ,\inNeurons_fu_56_reg[4]_i_1_n_2 ,\inNeurons_fu_56_reg[4]_i_1_n_3 }),
        .CYINIT(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_input_r_address0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\inNeurons_fu_56_reg[15]_0 [4:1]),
        .S({\inNeurons_fu_56[4]_i_3_n_0 ,\inNeurons_fu_56[4]_i_4_n_0 ,\inNeurons_fu_56[4]_i_5_n_0 ,\inNeurons_fu_56[4]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \inNeurons_fu_56_reg[8]_i_1 
       (.CI(\inNeurons_fu_56_reg[4]_i_1_n_0 ),
        .CO({\inNeurons_fu_56_reg[8]_i_1_n_0 ,\inNeurons_fu_56_reg[8]_i_1_n_1 ,\inNeurons_fu_56_reg[8]_i_1_n_2 ,\inNeurons_fu_56_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\inNeurons_fu_56_reg[15]_0 [8:5]),
        .S({\inNeurons_fu_56[8]_i_2_n_0 ,\inNeurons_fu_56[8]_i_3_n_0 ,\inNeurons_fu_56[8]_i_4_n_0 ,\inNeurons_fu_56[8]_i_5_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \int_input_r_shift0[0]_i_1 
       (.I0(\inNeurons_fu_56_reg[15]_1 [0]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I3(\int_input_r_shift0_reg[0] ),
        .O(\inNeurons_fu_56_reg[0] ));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_3__1
       (.I0(\inNeurons_fu_56_reg[15]_1 [6]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(ADDRBWRADDR[5]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_4__1
       (.I0(\inNeurons_fu_56_reg[15]_1 [5]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(ADDRBWRADDR[4]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_5__1
       (.I0(\inNeurons_fu_56_reg[15]_1 [4]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(ADDRBWRADDR[3]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_6__1
       (.I0(\inNeurons_fu_56_reg[15]_1 [3]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(ADDRBWRADDR[2]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_7__1
       (.I0(\inNeurons_fu_56_reg[15]_1 [2]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(ADDRBWRADDR[1]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_i_8__0
       (.I0(\inNeurons_fu_56_reg[15]_1 [1]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(ADDRBWRADDR[0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_mac_muladd_16s_16s_16ns_16_4_1
   (P,
    ap_clk,
    B,
    A,
    ap_enable_reg_pp0_iter4,
    Q);
  output [15:0]P;
  input ap_clk;
  input [15:0]B;
  input [15:0]A;
  input ap_enable_reg_pp0_iter4;
  input [15:0]Q;

  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]P;
  wire [15:0]Q;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter4;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0 runLayer_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U
       (.A(A),
        .B(B),
        .P(P),
        .Q(Q),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter4(ap_enable_reg_pp0_iter4));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0
   (P,
    ap_clk,
    B,
    A,
    ap_enable_reg_pp0_iter4,
    Q);
  output [15:0]P;
  input ap_clk;
  input [15:0]B;
  input [15:0]A;
  input ap_enable_reg_pp0_iter4;
  input [15:0]Q;

  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]P;
  wire [15:0]Q;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter4;
  wire [15:0]ap_sig_allocacmp_conv147_load;
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
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ap_sig_allocacmp_conv147_load}),
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
        .I2(Q[15]),
        .O(ap_sig_allocacmp_conv147_load[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_34
       (.I0(P[14]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(Q[14]),
        .O(ap_sig_allocacmp_conv147_load[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_35
       (.I0(P[13]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(Q[13]),
        .O(ap_sig_allocacmp_conv147_load[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_36
       (.I0(P[12]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(Q[12]),
        .O(ap_sig_allocacmp_conv147_load[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_37
       (.I0(P[11]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(Q[11]),
        .O(ap_sig_allocacmp_conv147_load[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_38
       (.I0(P[10]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(Q[10]),
        .O(ap_sig_allocacmp_conv147_load[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_39
       (.I0(P[9]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(Q[9]),
        .O(ap_sig_allocacmp_conv147_load[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_40
       (.I0(P[8]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(Q[8]),
        .O(ap_sig_allocacmp_conv147_load[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_41
       (.I0(P[7]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(Q[7]),
        .O(ap_sig_allocacmp_conv147_load[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_42
       (.I0(P[6]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(Q[6]),
        .O(ap_sig_allocacmp_conv147_load[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_43
       (.I0(P[5]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(Q[5]),
        .O(ap_sig_allocacmp_conv147_load[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_44
       (.I0(P[4]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(Q[4]),
        .O(ap_sig_allocacmp_conv147_load[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_45
       (.I0(P[3]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(Q[3]),
        .O(ap_sig_allocacmp_conv147_load[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_46
       (.I0(P[2]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(Q[2]),
        .O(ap_sig_allocacmp_conv147_load[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_47
       (.I0(P[1]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(Q[1]),
        .O(ap_sig_allocacmp_conv147_load[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_48
       (.I0(P[0]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(Q[0]),
        .O(ap_sig_allocacmp_conv147_load[0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_runLayer_Pipeline_VITIS_LOOP_20_2
   (grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_weights_address0,
    D,
    \conv147_fu_60_reg[15]_0 ,
    ADDRBWRADDR,
    \ap_CS_fsm_reg[2] ,
    \inNeurons_fu_56_reg[0]_0 ,
    DIBDI,
    ap_rst_n_inv,
    ap_clk,
    B,
    A,
    grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg,
    \ap_CS_fsm_reg[4] ,
    \ap_CS_fsm_reg[4]_0 ,
    Q,
    ap_rst_n,
    \conv147_fu_60_reg[15]_1 ,
    icmp_ln20_fu_136_p2_carry__0_0,
    mem_reg_0,
    \int_input_r_shift0_reg[0] ,
    output_r_addr_reg_244,
    mem_reg);
  output [12:0]grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_weights_address0;
  output [1:0]D;
  output [15:0]\conv147_fu_60_reg[15]_0 ;
  output [5:0]ADDRBWRADDR;
  output \ap_CS_fsm_reg[2] ;
  output \inNeurons_fu_56_reg[0]_0 ;
  output [7:0]DIBDI;
  input ap_rst_n_inv;
  input ap_clk;
  input [15:0]B;
  input [15:0]A;
  input grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg;
  input \ap_CS_fsm_reg[4] ;
  input \ap_CS_fsm_reg[4]_0 ;
  input [4:0]Q;
  input ap_rst_n;
  input [15:0]\conv147_fu_60_reg[15]_1 ;
  input [15:0]icmp_ln20_fu_136_p2_carry__0_0;
  input [12:0]mem_reg_0;
  input \int_input_r_shift0_reg[0] ;
  input [0:0]output_r_addr_reg_244;
  input [7:0]mem_reg;

  wire [15:0]A;
  wire [5:0]ADDRBWRADDR;
  wire [15:0]B;
  wire [1:0]D;
  wire [7:0]DIBDI;
  wire [4:0]Q;
  wire add_ln22_fu_152_p2_carry__0_n_0;
  wire add_ln22_fu_152_p2_carry__0_n_1;
  wire add_ln22_fu_152_p2_carry__0_n_2;
  wire add_ln22_fu_152_p2_carry__0_n_3;
  wire add_ln22_fu_152_p2_carry__1_n_0;
  wire add_ln22_fu_152_p2_carry__1_n_1;
  wire add_ln22_fu_152_p2_carry__1_n_2;
  wire add_ln22_fu_152_p2_carry__1_n_3;
  wire add_ln22_fu_152_p2_carry_n_0;
  wire add_ln22_fu_152_p2_carry_n_1;
  wire add_ln22_fu_152_p2_carry_n_2;
  wire add_ln22_fu_152_p2_carry_n_3;
  wire \ap_CS_fsm_reg[2] ;
  wire \ap_CS_fsm_reg[4] ;
  wire \ap_CS_fsm_reg[4]_0 ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1_n_0;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter4;
  wire ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0;
  wire ap_loop_exit_ready_pp0_iter3_reg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [15:7]ap_sig_allocacmp_inNeurons_1;
  wire [15:0]\conv147_fu_60_reg[15]_0 ;
  wire [15:0]\conv147_fu_60_reg[15]_1 ;
  wire flow_control_loop_pipe_sequential_init_U_n_1;
  wire flow_control_loop_pipe_sequential_init_U_n_21;
  wire flow_control_loop_pipe_sequential_init_U_n_22;
  wire flow_control_loop_pipe_sequential_init_U_n_23;
  wire flow_control_loop_pipe_sequential_init_U_n_24;
  wire flow_control_loop_pipe_sequential_init_U_n_25;
  wire flow_control_loop_pipe_sequential_init_U_n_26;
  wire flow_control_loop_pipe_sequential_init_U_n_27;
  wire flow_control_loop_pipe_sequential_init_U_n_28;
  wire flow_control_loop_pipe_sequential_init_U_n_35;
  wire flow_control_loop_pipe_sequential_init_U_n_36;
  wire flow_control_loop_pipe_sequential_init_U_n_37;
  wire flow_control_loop_pipe_sequential_init_U_n_38;
  wire flow_control_loop_pipe_sequential_init_U_n_39;
  wire flow_control_loop_pipe_sequential_init_U_n_40;
  wire flow_control_loop_pipe_sequential_init_U_n_41;
  wire flow_control_loop_pipe_sequential_init_U_n_42;
  wire flow_control_loop_pipe_sequential_init_U_n_49;
  wire flow_control_loop_pipe_sequential_init_U_n_66;
  wire flow_control_loop_pipe_sequential_init_U_n_67;
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
  wire grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_ready;
  wire grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg;
  wire [12:0]grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_weights_address0;
  wire icmp_ln20_fu_136_p2;
  wire [15:0]icmp_ln20_fu_136_p2_carry__0_0;
  wire icmp_ln20_fu_136_p2_carry__0_n_0;
  wire icmp_ln20_fu_136_p2_carry__0_n_1;
  wire icmp_ln20_fu_136_p2_carry__0_n_2;
  wire icmp_ln20_fu_136_p2_carry__0_n_3;
  wire icmp_ln20_fu_136_p2_carry_n_0;
  wire icmp_ln20_fu_136_p2_carry_n_1;
  wire icmp_ln20_fu_136_p2_carry_n_2;
  wire icmp_ln20_fu_136_p2_carry_n_3;
  wire [15:0]inNeurons_2_fu_142_p2;
  wire inNeurons_fu_560;
  wire \inNeurons_fu_56_reg[0]_0 ;
  wire \inNeurons_fu_56_reg_n_0_[0] ;
  wire \inNeurons_fu_56_reg_n_0_[10] ;
  wire \inNeurons_fu_56_reg_n_0_[11] ;
  wire \inNeurons_fu_56_reg_n_0_[12] ;
  wire \inNeurons_fu_56_reg_n_0_[13] ;
  wire \inNeurons_fu_56_reg_n_0_[14] ;
  wire \inNeurons_fu_56_reg_n_0_[15] ;
  wire \inNeurons_fu_56_reg_n_0_[1] ;
  wire \inNeurons_fu_56_reg_n_0_[2] ;
  wire \inNeurons_fu_56_reg_n_0_[3] ;
  wire \inNeurons_fu_56_reg_n_0_[4] ;
  wire \inNeurons_fu_56_reg_n_0_[5] ;
  wire \inNeurons_fu_56_reg_n_0_[6] ;
  wire \inNeurons_fu_56_reg_n_0_[7] ;
  wire \inNeurons_fu_56_reg_n_0_[8] ;
  wire \inNeurons_fu_56_reg_n_0_[9] ;
  wire \int_input_r_shift0_reg[0] ;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_0;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_1;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_10;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_11;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_12;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_13;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_14;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_15;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_2;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_3;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_4;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_5;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_6;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_7;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_8;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_9;
  wire [7:0]mem_reg;
  wire [12:0]mem_reg_0;
  wire [0:0]output_r_addr_reg_244;
  wire [15:0]p_0_in;
  wire [3:0]NLW_add_ln22_fu_152_p2_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_add_ln22_fu_152_p2_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln20_fu_136_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln20_fu_136_p2_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_icmp_ln20_fu_136_p2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_icmp_ln20_fu_136_p2_carry__1_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln22_fu_152_p2_carry
       (.CI(1'b0),
        .CO({add_ln22_fu_152_p2_carry_n_0,add_ln22_fu_152_p2_carry_n_1,add_ln22_fu_152_p2_carry_n_2,add_ln22_fu_152_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({flow_control_loop_pipe_sequential_init_U_n_66,flow_control_loop_pipe_sequential_init_U_n_67,flow_control_loop_pipe_sequential_init_U_n_68,flow_control_loop_pipe_sequential_init_U_n_69}),
        .O(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_weights_address0[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_74,flow_control_loop_pipe_sequential_init_U_n_75,flow_control_loop_pipe_sequential_init_U_n_76,flow_control_loop_pipe_sequential_init_U_n_77}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln22_fu_152_p2_carry__0
       (.CI(add_ln22_fu_152_p2_carry_n_0),
        .CO({add_ln22_fu_152_p2_carry__0_n_0,add_ln22_fu_152_p2_carry__0_n_1,add_ln22_fu_152_p2_carry__0_n_2,add_ln22_fu_152_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({ap_sig_allocacmp_inNeurons_1[7],flow_control_loop_pipe_sequential_init_U_n_70,flow_control_loop_pipe_sequential_init_U_n_71,flow_control_loop_pipe_sequential_init_U_n_72}),
        .O(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_weights_address0[7:4]),
        .S({flow_control_loop_pipe_sequential_init_U_n_78,flow_control_loop_pipe_sequential_init_U_n_79,flow_control_loop_pipe_sequential_init_U_n_80,flow_control_loop_pipe_sequential_init_U_n_81}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln22_fu_152_p2_carry__1
       (.CI(add_ln22_fu_152_p2_carry__0_n_0),
        .CO({add_ln22_fu_152_p2_carry__1_n_0,add_ln22_fu_152_p2_carry__1_n_1,add_ln22_fu_152_p2_carry__1_n_2,add_ln22_fu_152_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(ap_sig_allocacmp_inNeurons_1[11:8]),
        .O(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_weights_address0[11:8]),
        .S({flow_control_loop_pipe_sequential_init_U_n_82,flow_control_loop_pipe_sequential_init_U_n_83,flow_control_loop_pipe_sequential_init_U_n_84,flow_control_loop_pipe_sequential_init_U_n_85}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln22_fu_152_p2_carry__2
       (.CI(add_ln22_fu_152_p2_carry__1_n_0),
        .CO(NLW_add_ln22_fu_152_p2_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_add_ln22_fu_152_p2_carry__2_O_UNCONNECTED[3:1],grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_weights_address0[12]}),
        .S({1'b0,1'b0,1'b0,flow_control_loop_pipe_sequential_init_U_n_73}));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h80)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(icmp_ln20_fu_136_p2),
        .I1(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .I2(ap_rst_n),
        .O(ap_enable_reg_pp0_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_0),
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
  (* srl_name = "inst/\grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116/ap_loop_exit_ready_pp0_iter2_reg_reg_srl2 " *) 
  SRL16E ap_loop_exit_ready_pp0_iter2_reg_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_ready),
        .Q(ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0));
  FDRE ap_loop_exit_ready_pp0_iter3_reg_reg__0
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0),
        .Q(ap_loop_exit_ready_pp0_iter3_reg),
        .R(1'b0));
  FDRE \conv147_fu_60_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\conv147_fu_60_reg[15]_0 [0]),
        .R(1'b0));
  FDRE \conv147_fu_60_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(\conv147_fu_60_reg[15]_0 [10]),
        .R(1'b0));
  FDRE \conv147_fu_60_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[11]),
        .Q(\conv147_fu_60_reg[15]_0 [11]),
        .R(1'b0));
  FDRE \conv147_fu_60_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[12]),
        .Q(\conv147_fu_60_reg[15]_0 [12]),
        .R(1'b0));
  FDRE \conv147_fu_60_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[13]),
        .Q(\conv147_fu_60_reg[15]_0 [13]),
        .R(1'b0));
  FDRE \conv147_fu_60_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[14]),
        .Q(\conv147_fu_60_reg[15]_0 [14]),
        .R(1'b0));
  FDRE \conv147_fu_60_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[15]),
        .Q(\conv147_fu_60_reg[15]_0 [15]),
        .R(1'b0));
  FDRE \conv147_fu_60_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(\conv147_fu_60_reg[15]_0 [1]),
        .R(1'b0));
  FDRE \conv147_fu_60_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(\conv147_fu_60_reg[15]_0 [2]),
        .R(1'b0));
  FDRE \conv147_fu_60_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(\conv147_fu_60_reg[15]_0 [3]),
        .R(1'b0));
  FDRE \conv147_fu_60_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(\conv147_fu_60_reg[15]_0 [4]),
        .R(1'b0));
  FDRE \conv147_fu_60_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(\conv147_fu_60_reg[15]_0 [5]),
        .R(1'b0));
  FDRE \conv147_fu_60_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(\conv147_fu_60_reg[15]_0 [6]),
        .R(1'b0));
  FDRE \conv147_fu_60_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(\conv147_fu_60_reg[15]_0 [7]),
        .R(1'b0));
  FDRE \conv147_fu_60_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(\conv147_fu_60_reg[15]_0 [8]),
        .R(1'b0));
  FDRE \conv147_fu_60_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(\conv147_fu_60_reg[15]_0 [9]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U
       (.ADDRBWRADDR(ADDRBWRADDR),
        .CO(icmp_ln20_fu_136_p2),
        .D(D),
        .DI({flow_control_loop_pipe_sequential_init_U_n_25,flow_control_loop_pipe_sequential_init_U_n_26,flow_control_loop_pipe_sequential_init_U_n_27,flow_control_loop_pipe_sequential_init_U_n_28}),
        .E(inNeurons_fu_560),
        .P({mac_muladd_16s_16s_16ns_16_4_1_U1_n_0,mac_muladd_16s_16s_16ns_16_4_1_U1_n_1,mac_muladd_16s_16s_16ns_16_4_1_U1_n_2,mac_muladd_16s_16s_16ns_16_4_1_U1_n_3,mac_muladd_16s_16s_16ns_16_4_1_U1_n_4,mac_muladd_16s_16s_16ns_16_4_1_U1_n_5,mac_muladd_16s_16s_16ns_16_4_1_U1_n_6,mac_muladd_16s_16s_16ns_16_4_1_U1_n_7,mac_muladd_16s_16s_16ns_16_4_1_U1_n_8,mac_muladd_16s_16s_16ns_16_4_1_U1_n_9,mac_muladd_16s_16s_16ns_16_4_1_U1_n_10,mac_muladd_16s_16s_16ns_16_4_1_U1_n_11,mac_muladd_16s_16s_16ns_16_4_1_U1_n_12,mac_muladd_16s_16s_16ns_16_4_1_U1_n_13,mac_muladd_16s_16s_16ns_16_4_1_U1_n_14,mac_muladd_16s_16s_16ns_16_4_1_U1_n_15}),
        .Q(Q[2:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_21,flow_control_loop_pipe_sequential_init_U_n_22,flow_control_loop_pipe_sequential_init_U_n_23,flow_control_loop_pipe_sequential_init_U_n_24}),
        .SR(flow_control_loop_pipe_sequential_init_U_n_1),
        .\ap_CS_fsm_reg[4] (\ap_CS_fsm_reg[4] ),
        .\ap_CS_fsm_reg[4]_0 (\ap_CS_fsm_reg[4]_0 ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter4(ap_enable_reg_pp0_iter4),
        .ap_loop_exit_ready_pp0_iter3_reg(ap_loop_exit_ready_pp0_iter3_reg),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\conv147_fu_60_reg[15] (\conv147_fu_60_reg[15]_1 ),
        .\conv147_fu_60_reg[15]_0 (\conv147_fu_60_reg[15]_0 ),
        .grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_ready(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_ready),
        .grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg({flow_control_loop_pipe_sequential_init_U_n_35,flow_control_loop_pipe_sequential_init_U_n_36,flow_control_loop_pipe_sequential_init_U_n_37,flow_control_loop_pipe_sequential_init_U_n_38}),
        .grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_0(flow_control_loop_pipe_sequential_init_U_n_49),
        .grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_1(flow_control_loop_pipe_sequential_init_U_n_73),
        .grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_2({flow_control_loop_pipe_sequential_init_U_n_74,flow_control_loop_pipe_sequential_init_U_n_75,flow_control_loop_pipe_sequential_init_U_n_76,flow_control_loop_pipe_sequential_init_U_n_77}),
        .grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_3({flow_control_loop_pipe_sequential_init_U_n_78,flow_control_loop_pipe_sequential_init_U_n_79,flow_control_loop_pipe_sequential_init_U_n_80,flow_control_loop_pipe_sequential_init_U_n_81}),
        .grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_reg_4({flow_control_loop_pipe_sequential_init_U_n_82,flow_control_loop_pipe_sequential_init_U_n_83,flow_control_loop_pipe_sequential_init_U_n_84,flow_control_loop_pipe_sequential_init_U_n_85}),
        .icmp_ln20_fu_136_p2_carry__0(icmp_ln20_fu_136_p2_carry__0_0),
        .\inNeurons_fu_56_reg[0] (\inNeurons_fu_56_reg[0]_0 ),
        .\inNeurons_fu_56_reg[15] ({ap_sig_allocacmp_inNeurons_1[15],ap_sig_allocacmp_inNeurons_1[11:7]}),
        .\inNeurons_fu_56_reg[15]_0 (inNeurons_2_fu_142_p2),
        .\inNeurons_fu_56_reg[15]_1 ({\inNeurons_fu_56_reg_n_0_[15] ,\inNeurons_fu_56_reg_n_0_[14] ,\inNeurons_fu_56_reg_n_0_[13] ,\inNeurons_fu_56_reg_n_0_[12] ,\inNeurons_fu_56_reg_n_0_[11] ,\inNeurons_fu_56_reg_n_0_[10] ,\inNeurons_fu_56_reg_n_0_[9] ,\inNeurons_fu_56_reg_n_0_[8] ,\inNeurons_fu_56_reg_n_0_[7] ,\inNeurons_fu_56_reg_n_0_[6] ,\inNeurons_fu_56_reg_n_0_[5] ,\inNeurons_fu_56_reg_n_0_[4] ,\inNeurons_fu_56_reg_n_0_[3] ,\inNeurons_fu_56_reg_n_0_[2] ,\inNeurons_fu_56_reg_n_0_[1] ,\inNeurons_fu_56_reg_n_0_[0] }),
        .\inNeurons_fu_56_reg[3] ({flow_control_loop_pipe_sequential_init_U_n_66,flow_control_loop_pipe_sequential_init_U_n_67,flow_control_loop_pipe_sequential_init_U_n_68,flow_control_loop_pipe_sequential_init_U_n_69}),
        .\inNeurons_fu_56_reg[6] ({flow_control_loop_pipe_sequential_init_U_n_70,flow_control_loop_pipe_sequential_init_U_n_71,flow_control_loop_pipe_sequential_init_U_n_72}),
        .\int_input_r_shift0_reg[0] (\int_input_r_shift0_reg[0] ),
        .mem_reg_0(mem_reg_0),
        .\numOfInNeurons_read_reg_210_reg[6] ({flow_control_loop_pipe_sequential_init_U_n_39,flow_control_loop_pipe_sequential_init_U_n_40,flow_control_loop_pipe_sequential_init_U_n_41,flow_control_loop_pipe_sequential_init_U_n_42}),
        .\output_r_load_reg_249_reg[15] (p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg_i_1
       (.I0(Q[1]),
        .I1(icmp_ln20_fu_136_p2),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_20_2_fu_116_ap_start_reg),
        .O(\ap_CS_fsm_reg[2] ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln20_fu_136_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln20_fu_136_p2_carry_n_0,icmp_ln20_fu_136_p2_carry_n_1,icmp_ln20_fu_136_p2_carry_n_2,icmp_ln20_fu_136_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({flow_control_loop_pipe_sequential_init_U_n_39,flow_control_loop_pipe_sequential_init_U_n_40,flow_control_loop_pipe_sequential_init_U_n_41,flow_control_loop_pipe_sequential_init_U_n_42}),
        .O(NLW_icmp_ln20_fu_136_p2_carry_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_35,flow_control_loop_pipe_sequential_init_U_n_36,flow_control_loop_pipe_sequential_init_U_n_37,flow_control_loop_pipe_sequential_init_U_n_38}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln20_fu_136_p2_carry__0
       (.CI(icmp_ln20_fu_136_p2_carry_n_0),
        .CO({icmp_ln20_fu_136_p2_carry__0_n_0,icmp_ln20_fu_136_p2_carry__0_n_1,icmp_ln20_fu_136_p2_carry__0_n_2,icmp_ln20_fu_136_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({flow_control_loop_pipe_sequential_init_U_n_25,flow_control_loop_pipe_sequential_init_U_n_26,flow_control_loop_pipe_sequential_init_U_n_27,flow_control_loop_pipe_sequential_init_U_n_28}),
        .O(NLW_icmp_ln20_fu_136_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_21,flow_control_loop_pipe_sequential_init_U_n_22,flow_control_loop_pipe_sequential_init_U_n_23,flow_control_loop_pipe_sequential_init_U_n_24}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln20_fu_136_p2_carry__1
       (.CI(icmp_ln20_fu_136_p2_carry__0_n_0),
        .CO({NLW_icmp_ln20_fu_136_p2_carry__1_CO_UNCONNECTED[3:1],icmp_ln20_fu_136_p2}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,ap_sig_allocacmp_inNeurons_1[15]}),
        .O(NLW_icmp_ln20_fu_136_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,flow_control_loop_pipe_sequential_init_U_n_49}));
  FDRE \inNeurons_fu_56_reg[0] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[0]),
        .Q(\inNeurons_fu_56_reg_n_0_[0] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_1));
  FDRE \inNeurons_fu_56_reg[10] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[10]),
        .Q(\inNeurons_fu_56_reg_n_0_[10] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_1));
  FDRE \inNeurons_fu_56_reg[11] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[11]),
        .Q(\inNeurons_fu_56_reg_n_0_[11] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_1));
  FDRE \inNeurons_fu_56_reg[12] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[12]),
        .Q(\inNeurons_fu_56_reg_n_0_[12] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_1));
  FDRE \inNeurons_fu_56_reg[13] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[13]),
        .Q(\inNeurons_fu_56_reg_n_0_[13] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_1));
  FDRE \inNeurons_fu_56_reg[14] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[14]),
        .Q(\inNeurons_fu_56_reg_n_0_[14] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_1));
  FDRE \inNeurons_fu_56_reg[15] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[15]),
        .Q(\inNeurons_fu_56_reg_n_0_[15] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_1));
  FDRE \inNeurons_fu_56_reg[1] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[1]),
        .Q(\inNeurons_fu_56_reg_n_0_[1] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_1));
  FDRE \inNeurons_fu_56_reg[2] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[2]),
        .Q(\inNeurons_fu_56_reg_n_0_[2] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_1));
  FDRE \inNeurons_fu_56_reg[3] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[3]),
        .Q(\inNeurons_fu_56_reg_n_0_[3] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_1));
  FDRE \inNeurons_fu_56_reg[4] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[4]),
        .Q(\inNeurons_fu_56_reg_n_0_[4] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_1));
  FDRE \inNeurons_fu_56_reg[5] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[5]),
        .Q(\inNeurons_fu_56_reg_n_0_[5] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_1));
  FDRE \inNeurons_fu_56_reg[6] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[6]),
        .Q(\inNeurons_fu_56_reg_n_0_[6] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_1));
  FDRE \inNeurons_fu_56_reg[7] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[7]),
        .Q(\inNeurons_fu_56_reg_n_0_[7] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_1));
  FDRE \inNeurons_fu_56_reg[8] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[8]),
        .Q(\inNeurons_fu_56_reg_n_0_[8] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_1));
  FDRE \inNeurons_fu_56_reg[9] 
       (.C(ap_clk),
        .CE(inNeurons_fu_560),
        .D(inNeurons_2_fu_142_p2[9]),
        .Q(\inNeurons_fu_56_reg_n_0_[9] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_mac_muladd_16s_16s_16ns_16_4_1 mac_muladd_16s_16s_16ns_16_4_1_U1
       (.A(A),
        .B(B),
        .P({mac_muladd_16s_16s_16ns_16_4_1_U1_n_0,mac_muladd_16s_16s_16ns_16_4_1_U1_n_1,mac_muladd_16s_16s_16ns_16_4_1_U1_n_2,mac_muladd_16s_16s_16ns_16_4_1_U1_n_3,mac_muladd_16s_16s_16ns_16_4_1_U1_n_4,mac_muladd_16s_16s_16ns_16_4_1_U1_n_5,mac_muladd_16s_16s_16ns_16_4_1_U1_n_6,mac_muladd_16s_16s_16ns_16_4_1_U1_n_7,mac_muladd_16s_16s_16ns_16_4_1_U1_n_8,mac_muladd_16s_16s_16ns_16_4_1_U1_n_9,mac_muladd_16s_16s_16ns_16_4_1_U1_n_10,mac_muladd_16s_16s_16ns_16_4_1_U1_n_11,mac_muladd_16s_16s_16ns_16_4_1_U1_n_12,mac_muladd_16s_16s_16ns_16_4_1_U1_n_13,mac_muladd_16s_16s_16ns_16_4_1_U1_n_14,mac_muladd_16s_16s_16ns_16_4_1_U1_n_15}),
        .Q(\conv147_fu_60_reg[15]_0 ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter4(ap_enable_reg_pp0_iter4));
  LUT6 #(
    .INIT(64'hCC40CC0000400000)) 
    mem_reg_i_21
       (.I0(\ap_CS_fsm_reg[4]_0 ),
        .I1(output_r_addr_reg_244),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(\conv147_fu_60_reg[15]_0 [15]),
        .I5(mem_reg[7]),
        .O(DIBDI[7]));
  LUT6 #(
    .INIT(64'hCC40CC0000400000)) 
    mem_reg_i_22
       (.I0(\ap_CS_fsm_reg[4]_0 ),
        .I1(output_r_addr_reg_244),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(\conv147_fu_60_reg[15]_0 [14]),
        .I5(mem_reg[6]),
        .O(DIBDI[6]));
  LUT6 #(
    .INIT(64'hCC40CC0000400000)) 
    mem_reg_i_23
       (.I0(\ap_CS_fsm_reg[4]_0 ),
        .I1(output_r_addr_reg_244),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(\conv147_fu_60_reg[15]_0 [13]),
        .I5(mem_reg[5]),
        .O(DIBDI[5]));
  LUT6 #(
    .INIT(64'hCC40CC0000400000)) 
    mem_reg_i_24
       (.I0(\ap_CS_fsm_reg[4]_0 ),
        .I1(output_r_addr_reg_244),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(\conv147_fu_60_reg[15]_0 [12]),
        .I5(mem_reg[4]),
        .O(DIBDI[4]));
  LUT6 #(
    .INIT(64'hCC40CC0000400000)) 
    mem_reg_i_25
       (.I0(\ap_CS_fsm_reg[4]_0 ),
        .I1(output_r_addr_reg_244),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(\conv147_fu_60_reg[15]_0 [11]),
        .I5(mem_reg[3]),
        .O(DIBDI[3]));
  LUT6 #(
    .INIT(64'hCC40CC0000400000)) 
    mem_reg_i_26
       (.I0(\ap_CS_fsm_reg[4]_0 ),
        .I1(output_r_addr_reg_244),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(\conv147_fu_60_reg[15]_0 [10]),
        .I5(mem_reg[2]),
        .O(DIBDI[2]));
  LUT6 #(
    .INIT(64'hCC40CC0000400000)) 
    mem_reg_i_27
       (.I0(\ap_CS_fsm_reg[4]_0 ),
        .I1(output_r_addr_reg_244),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(\conv147_fu_60_reg[15]_0 [9]),
        .I5(mem_reg[1]),
        .O(DIBDI[1]));
  LUT6 #(
    .INIT(64'hCC40CC0000400000)) 
    mem_reg_i_28
       (.I0(\ap_CS_fsm_reg[4]_0 ),
        .I1(output_r_addr_reg_244),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(\conv147_fu_60_reg[15]_0 [8]),
        .I5(mem_reg[0]),
        .O(DIBDI[0]));
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
