// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Mar  3 11:06:28 2022
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
    interrupt,
    m_axi_gmem_AWADDR,
    m_axi_gmem_AWLEN,
    m_axi_gmem_AWSIZE,
    m_axi_gmem_AWBURST,
    m_axi_gmem_AWLOCK,
    m_axi_gmem_AWREGION,
    m_axi_gmem_AWCACHE,
    m_axi_gmem_AWPROT,
    m_axi_gmem_AWQOS,
    m_axi_gmem_AWVALID,
    m_axi_gmem_AWREADY,
    m_axi_gmem_WDATA,
    m_axi_gmem_WSTRB,
    m_axi_gmem_WLAST,
    m_axi_gmem_WVALID,
    m_axi_gmem_WREADY,
    m_axi_gmem_BRESP,
    m_axi_gmem_BVALID,
    m_axi_gmem_BREADY,
    m_axi_gmem_ARADDR,
    m_axi_gmem_ARLEN,
    m_axi_gmem_ARSIZE,
    m_axi_gmem_ARBURST,
    m_axi_gmem_ARLOCK,
    m_axi_gmem_ARREGION,
    m_axi_gmem_ARCACHE,
    m_axi_gmem_ARPROT,
    m_axi_gmem_ARQOS,
    m_axi_gmem_ARVALID,
    m_axi_gmem_ARREADY,
    m_axi_gmem_RDATA,
    m_axi_gmem_RRESP,
    m_axi_gmem_RLAST,
    m_axi_gmem_RVALID,
    m_axi_gmem_RREADY);
  output ap_local_block;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [6:0]s_axi_control_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) output [1:0]s_axi_control_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) input [6:0]s_axi_control_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 7, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_control_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control:m_axi_gmem, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWADDR" *) output [63:0]m_axi_gmem_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWLEN" *) output [7:0]m_axi_gmem_AWLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWSIZE" *) output [2:0]m_axi_gmem_AWSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWBURST" *) output [1:0]m_axi_gmem_AWBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWLOCK" *) output [1:0]m_axi_gmem_AWLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWREGION" *) output [3:0]m_axi_gmem_AWREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWCACHE" *) output [3:0]m_axi_gmem_AWCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWPROT" *) output [2:0]m_axi_gmem_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWQOS" *) output [3:0]m_axi_gmem_AWQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWVALID" *) output m_axi_gmem_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWREADY" *) input m_axi_gmem_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem WDATA" *) output [31:0]m_axi_gmem_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem WSTRB" *) output [3:0]m_axi_gmem_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem WLAST" *) output m_axi_gmem_WLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem WVALID" *) output m_axi_gmem_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem WREADY" *) input m_axi_gmem_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem BRESP" *) input [1:0]m_axi_gmem_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem BVALID" *) input m_axi_gmem_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem BREADY" *) output m_axi_gmem_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARADDR" *) output [63:0]m_axi_gmem_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARLEN" *) output [7:0]m_axi_gmem_ARLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARSIZE" *) output [2:0]m_axi_gmem_ARSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARBURST" *) output [1:0]m_axi_gmem_ARBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARLOCK" *) output [1:0]m_axi_gmem_ARLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARREGION" *) output [3:0]m_axi_gmem_ARREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARCACHE" *) output [3:0]m_axi_gmem_ARCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARPROT" *) output [2:0]m_axi_gmem_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARQOS" *) output [3:0]m_axi_gmem_ARQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARVALID" *) output m_axi_gmem_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARREADY" *) input m_axi_gmem_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem RDATA" *) input [31:0]m_axi_gmem_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem RRESP" *) input [1:0]m_axi_gmem_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem RLAST" *) input m_axi_gmem_RLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem RVALID" *) input m_axi_gmem_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem, ADDR_WIDTH 64, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_gmem_RREADY;

  wire \<const0> ;
  wire \<const1> ;
  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [63:2]\^m_axi_gmem_ARADDR ;
  wire [3:0]\^m_axi_gmem_ARLEN ;
  wire m_axi_gmem_ARREADY;
  wire m_axi_gmem_ARVALID;
  wire [31:0]m_axi_gmem_RDATA;
  wire m_axi_gmem_RLAST;
  wire m_axi_gmem_RREADY;
  wire [1:0]m_axi_gmem_RRESP;
  wire m_axi_gmem_RVALID;
  wire [6:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [6:0]s_axi_control_AWADDR;
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
  wire NLW_inst_m_axi_gmem_AWVALID_UNCONNECTED;
  wire NLW_inst_m_axi_gmem_BREADY_UNCONNECTED;
  wire NLW_inst_m_axi_gmem_WLAST_UNCONNECTED;
  wire NLW_inst_m_axi_gmem_WVALID_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_gmem_ARADDR_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_gmem_ARBURST_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_gmem_ARCACHE_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_gmem_ARID_UNCONNECTED;
  wire [7:4]NLW_inst_m_axi_gmem_ARLEN_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_gmem_ARLOCK_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_gmem_ARPROT_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_gmem_ARQOS_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_gmem_ARREGION_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_gmem_ARSIZE_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_gmem_ARUSER_UNCONNECTED;
  wire [63:0]NLW_inst_m_axi_gmem_AWADDR_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_gmem_AWBURST_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_gmem_AWCACHE_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_gmem_AWID_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_gmem_AWLEN_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_gmem_AWLOCK_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_gmem_AWPROT_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_gmem_AWQOS_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_gmem_AWREGION_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_gmem_AWSIZE_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_gmem_AWUSER_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_gmem_WDATA_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_gmem_WID_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_gmem_WSTRB_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_gmem_WUSER_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_control_BRESP_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_control_RRESP_UNCONNECTED;

  assign ap_local_block = \<const0> ;
  assign m_axi_gmem_ARADDR[63:2] = \^m_axi_gmem_ARADDR [63:2];
  assign m_axi_gmem_ARADDR[1] = \<const0> ;
  assign m_axi_gmem_ARADDR[0] = \<const0> ;
  assign m_axi_gmem_ARBURST[1] = \<const0> ;
  assign m_axi_gmem_ARBURST[0] = \<const1> ;
  assign m_axi_gmem_ARCACHE[3] = \<const0> ;
  assign m_axi_gmem_ARCACHE[2] = \<const0> ;
  assign m_axi_gmem_ARCACHE[1] = \<const1> ;
  assign m_axi_gmem_ARCACHE[0] = \<const1> ;
  assign m_axi_gmem_ARLEN[7] = \<const0> ;
  assign m_axi_gmem_ARLEN[6] = \<const0> ;
  assign m_axi_gmem_ARLEN[5] = \<const0> ;
  assign m_axi_gmem_ARLEN[4] = \<const0> ;
  assign m_axi_gmem_ARLEN[3:0] = \^m_axi_gmem_ARLEN [3:0];
  assign m_axi_gmem_ARLOCK[1] = \<const0> ;
  assign m_axi_gmem_ARLOCK[0] = \<const0> ;
  assign m_axi_gmem_ARPROT[2] = \<const0> ;
  assign m_axi_gmem_ARPROT[1] = \<const0> ;
  assign m_axi_gmem_ARPROT[0] = \<const0> ;
  assign m_axi_gmem_ARQOS[3] = \<const0> ;
  assign m_axi_gmem_ARQOS[2] = \<const0> ;
  assign m_axi_gmem_ARQOS[1] = \<const0> ;
  assign m_axi_gmem_ARQOS[0] = \<const0> ;
  assign m_axi_gmem_ARREGION[3] = \<const0> ;
  assign m_axi_gmem_ARREGION[2] = \<const0> ;
  assign m_axi_gmem_ARREGION[1] = \<const0> ;
  assign m_axi_gmem_ARREGION[0] = \<const0> ;
  assign m_axi_gmem_ARSIZE[2] = \<const0> ;
  assign m_axi_gmem_ARSIZE[1] = \<const1> ;
  assign m_axi_gmem_ARSIZE[0] = \<const0> ;
  assign m_axi_gmem_AWADDR[63] = \<const0> ;
  assign m_axi_gmem_AWADDR[62] = \<const0> ;
  assign m_axi_gmem_AWADDR[61] = \<const0> ;
  assign m_axi_gmem_AWADDR[60] = \<const0> ;
  assign m_axi_gmem_AWADDR[59] = \<const0> ;
  assign m_axi_gmem_AWADDR[58] = \<const0> ;
  assign m_axi_gmem_AWADDR[57] = \<const0> ;
  assign m_axi_gmem_AWADDR[56] = \<const0> ;
  assign m_axi_gmem_AWADDR[55] = \<const0> ;
  assign m_axi_gmem_AWADDR[54] = \<const0> ;
  assign m_axi_gmem_AWADDR[53] = \<const0> ;
  assign m_axi_gmem_AWADDR[52] = \<const0> ;
  assign m_axi_gmem_AWADDR[51] = \<const0> ;
  assign m_axi_gmem_AWADDR[50] = \<const0> ;
  assign m_axi_gmem_AWADDR[49] = \<const0> ;
  assign m_axi_gmem_AWADDR[48] = \<const0> ;
  assign m_axi_gmem_AWADDR[47] = \<const0> ;
  assign m_axi_gmem_AWADDR[46] = \<const0> ;
  assign m_axi_gmem_AWADDR[45] = \<const0> ;
  assign m_axi_gmem_AWADDR[44] = \<const0> ;
  assign m_axi_gmem_AWADDR[43] = \<const0> ;
  assign m_axi_gmem_AWADDR[42] = \<const0> ;
  assign m_axi_gmem_AWADDR[41] = \<const0> ;
  assign m_axi_gmem_AWADDR[40] = \<const0> ;
  assign m_axi_gmem_AWADDR[39] = \<const0> ;
  assign m_axi_gmem_AWADDR[38] = \<const0> ;
  assign m_axi_gmem_AWADDR[37] = \<const0> ;
  assign m_axi_gmem_AWADDR[36] = \<const0> ;
  assign m_axi_gmem_AWADDR[35] = \<const0> ;
  assign m_axi_gmem_AWADDR[34] = \<const0> ;
  assign m_axi_gmem_AWADDR[33] = \<const0> ;
  assign m_axi_gmem_AWADDR[32] = \<const0> ;
  assign m_axi_gmem_AWADDR[31] = \<const0> ;
  assign m_axi_gmem_AWADDR[30] = \<const0> ;
  assign m_axi_gmem_AWADDR[29] = \<const0> ;
  assign m_axi_gmem_AWADDR[28] = \<const0> ;
  assign m_axi_gmem_AWADDR[27] = \<const0> ;
  assign m_axi_gmem_AWADDR[26] = \<const0> ;
  assign m_axi_gmem_AWADDR[25] = \<const0> ;
  assign m_axi_gmem_AWADDR[24] = \<const0> ;
  assign m_axi_gmem_AWADDR[23] = \<const0> ;
  assign m_axi_gmem_AWADDR[22] = \<const0> ;
  assign m_axi_gmem_AWADDR[21] = \<const0> ;
  assign m_axi_gmem_AWADDR[20] = \<const0> ;
  assign m_axi_gmem_AWADDR[19] = \<const0> ;
  assign m_axi_gmem_AWADDR[18] = \<const0> ;
  assign m_axi_gmem_AWADDR[17] = \<const0> ;
  assign m_axi_gmem_AWADDR[16] = \<const0> ;
  assign m_axi_gmem_AWADDR[15] = \<const0> ;
  assign m_axi_gmem_AWADDR[14] = \<const0> ;
  assign m_axi_gmem_AWADDR[13] = \<const0> ;
  assign m_axi_gmem_AWADDR[12] = \<const0> ;
  assign m_axi_gmem_AWADDR[11] = \<const0> ;
  assign m_axi_gmem_AWADDR[10] = \<const0> ;
  assign m_axi_gmem_AWADDR[9] = \<const0> ;
  assign m_axi_gmem_AWADDR[8] = \<const0> ;
  assign m_axi_gmem_AWADDR[7] = \<const0> ;
  assign m_axi_gmem_AWADDR[6] = \<const0> ;
  assign m_axi_gmem_AWADDR[5] = \<const0> ;
  assign m_axi_gmem_AWADDR[4] = \<const0> ;
  assign m_axi_gmem_AWADDR[3] = \<const0> ;
  assign m_axi_gmem_AWADDR[2] = \<const0> ;
  assign m_axi_gmem_AWADDR[1] = \<const0> ;
  assign m_axi_gmem_AWADDR[0] = \<const0> ;
  assign m_axi_gmem_AWBURST[1] = \<const0> ;
  assign m_axi_gmem_AWBURST[0] = \<const1> ;
  assign m_axi_gmem_AWCACHE[3] = \<const0> ;
  assign m_axi_gmem_AWCACHE[2] = \<const0> ;
  assign m_axi_gmem_AWCACHE[1] = \<const1> ;
  assign m_axi_gmem_AWCACHE[0] = \<const1> ;
  assign m_axi_gmem_AWLEN[7] = \<const0> ;
  assign m_axi_gmem_AWLEN[6] = \<const0> ;
  assign m_axi_gmem_AWLEN[5] = \<const0> ;
  assign m_axi_gmem_AWLEN[4] = \<const0> ;
  assign m_axi_gmem_AWLEN[3] = \<const0> ;
  assign m_axi_gmem_AWLEN[2] = \<const0> ;
  assign m_axi_gmem_AWLEN[1] = \<const0> ;
  assign m_axi_gmem_AWLEN[0] = \<const0> ;
  assign m_axi_gmem_AWLOCK[1] = \<const0> ;
  assign m_axi_gmem_AWLOCK[0] = \<const0> ;
  assign m_axi_gmem_AWPROT[2] = \<const0> ;
  assign m_axi_gmem_AWPROT[1] = \<const0> ;
  assign m_axi_gmem_AWPROT[0] = \<const0> ;
  assign m_axi_gmem_AWQOS[3] = \<const0> ;
  assign m_axi_gmem_AWQOS[2] = \<const0> ;
  assign m_axi_gmem_AWQOS[1] = \<const0> ;
  assign m_axi_gmem_AWQOS[0] = \<const0> ;
  assign m_axi_gmem_AWREGION[3] = \<const0> ;
  assign m_axi_gmem_AWREGION[2] = \<const0> ;
  assign m_axi_gmem_AWREGION[1] = \<const0> ;
  assign m_axi_gmem_AWREGION[0] = \<const0> ;
  assign m_axi_gmem_AWSIZE[2] = \<const0> ;
  assign m_axi_gmem_AWSIZE[1] = \<const1> ;
  assign m_axi_gmem_AWSIZE[0] = \<const0> ;
  assign m_axi_gmem_AWVALID = \<const0> ;
  assign m_axi_gmem_BREADY = \<const1> ;
  assign m_axi_gmem_WDATA[31] = \<const0> ;
  assign m_axi_gmem_WDATA[30] = \<const0> ;
  assign m_axi_gmem_WDATA[29] = \<const0> ;
  assign m_axi_gmem_WDATA[28] = \<const0> ;
  assign m_axi_gmem_WDATA[27] = \<const0> ;
  assign m_axi_gmem_WDATA[26] = \<const0> ;
  assign m_axi_gmem_WDATA[25] = \<const0> ;
  assign m_axi_gmem_WDATA[24] = \<const0> ;
  assign m_axi_gmem_WDATA[23] = \<const0> ;
  assign m_axi_gmem_WDATA[22] = \<const0> ;
  assign m_axi_gmem_WDATA[21] = \<const0> ;
  assign m_axi_gmem_WDATA[20] = \<const0> ;
  assign m_axi_gmem_WDATA[19] = \<const0> ;
  assign m_axi_gmem_WDATA[18] = \<const0> ;
  assign m_axi_gmem_WDATA[17] = \<const0> ;
  assign m_axi_gmem_WDATA[16] = \<const0> ;
  assign m_axi_gmem_WDATA[15] = \<const0> ;
  assign m_axi_gmem_WDATA[14] = \<const0> ;
  assign m_axi_gmem_WDATA[13] = \<const0> ;
  assign m_axi_gmem_WDATA[12] = \<const0> ;
  assign m_axi_gmem_WDATA[11] = \<const0> ;
  assign m_axi_gmem_WDATA[10] = \<const0> ;
  assign m_axi_gmem_WDATA[9] = \<const0> ;
  assign m_axi_gmem_WDATA[8] = \<const0> ;
  assign m_axi_gmem_WDATA[7] = \<const0> ;
  assign m_axi_gmem_WDATA[6] = \<const0> ;
  assign m_axi_gmem_WDATA[5] = \<const0> ;
  assign m_axi_gmem_WDATA[4] = \<const0> ;
  assign m_axi_gmem_WDATA[3] = \<const0> ;
  assign m_axi_gmem_WDATA[2] = \<const0> ;
  assign m_axi_gmem_WDATA[1] = \<const0> ;
  assign m_axi_gmem_WDATA[0] = \<const0> ;
  assign m_axi_gmem_WLAST = \<const0> ;
  assign m_axi_gmem_WSTRB[3] = \<const0> ;
  assign m_axi_gmem_WSTRB[2] = \<const0> ;
  assign m_axi_gmem_WSTRB[1] = \<const0> ;
  assign m_axi_gmem_WSTRB[0] = \<const0> ;
  assign m_axi_gmem_WVALID = \<const0> ;
  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* C_M_AXI_DATA_WIDTH = "32" *) 
  (* C_M_AXI_GMEM_ADDR_WIDTH = "64" *) 
  (* C_M_AXI_GMEM_ARUSER_WIDTH = "1" *) 
  (* C_M_AXI_GMEM_AWUSER_WIDTH = "1" *) 
  (* C_M_AXI_GMEM_BUSER_WIDTH = "1" *) 
  (* C_M_AXI_GMEM_CACHE_VALUE = "4'b0011" *) 
  (* C_M_AXI_GMEM_DATA_WIDTH = "32" *) 
  (* C_M_AXI_GMEM_ID_WIDTH = "1" *) 
  (* C_M_AXI_GMEM_PROT_VALUE = "3'b000" *) 
  (* C_M_AXI_GMEM_RUSER_WIDTH = "1" *) 
  (* C_M_AXI_GMEM_USER_VALUE = "0" *) 
  (* C_M_AXI_GMEM_WSTRB_WIDTH = "4" *) 
  (* C_M_AXI_GMEM_WUSER_WIDTH = "1" *) 
  (* C_M_AXI_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_CONTROL_ADDR_WIDTH = "7" *) 
  (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_state1 = "25'b0000000000000000000000001" *) 
  (* ap_ST_fsm_state10 = "25'b0000000000000001000000000" *) 
  (* ap_ST_fsm_state11 = "25'b0000000000000010000000000" *) 
  (* ap_ST_fsm_state12 = "25'b0000000000000100000000000" *) 
  (* ap_ST_fsm_state13 = "25'b0000000000001000000000000" *) 
  (* ap_ST_fsm_state14 = "25'b0000000000010000000000000" *) 
  (* ap_ST_fsm_state15 = "25'b0000000000100000000000000" *) 
  (* ap_ST_fsm_state16 = "25'b0000000001000000000000000" *) 
  (* ap_ST_fsm_state17 = "25'b0000000010000000000000000" *) 
  (* ap_ST_fsm_state18 = "25'b0000000100000000000000000" *) 
  (* ap_ST_fsm_state19 = "25'b0000001000000000000000000" *) 
  (* ap_ST_fsm_state2 = "25'b0000000000000000000000010" *) 
  (* ap_ST_fsm_state20 = "25'b0000010000000000000000000" *) 
  (* ap_ST_fsm_state21 = "25'b0000100000000000000000000" *) 
  (* ap_ST_fsm_state22 = "25'b0001000000000000000000000" *) 
  (* ap_ST_fsm_state23 = "25'b0010000000000000000000000" *) 
  (* ap_ST_fsm_state24 = "25'b0100000000000000000000000" *) 
  (* ap_ST_fsm_state25 = "25'b1000000000000000000000000" *) 
  (* ap_ST_fsm_state3 = "25'b0000000000000000000000100" *) 
  (* ap_ST_fsm_state4 = "25'b0000000000000000000001000" *) 
  (* ap_ST_fsm_state5 = "25'b0000000000000000000010000" *) 
  (* ap_ST_fsm_state6 = "25'b0000000000000000000100000" *) 
  (* ap_ST_fsm_state7 = "25'b0000000000000000001000000" *) 
  (* ap_ST_fsm_state8 = "25'b0000000000000000010000000" *) 
  (* ap_ST_fsm_state9 = "25'b0000000000000000100000000" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer inst
       (.ap_clk(ap_clk),
        .ap_local_block(NLW_inst_ap_local_block_UNCONNECTED),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .m_axi_gmem_ARADDR({\^m_axi_gmem_ARADDR ,NLW_inst_m_axi_gmem_ARADDR_UNCONNECTED[1:0]}),
        .m_axi_gmem_ARBURST(NLW_inst_m_axi_gmem_ARBURST_UNCONNECTED[1:0]),
        .m_axi_gmem_ARCACHE(NLW_inst_m_axi_gmem_ARCACHE_UNCONNECTED[3:0]),
        .m_axi_gmem_ARID(NLW_inst_m_axi_gmem_ARID_UNCONNECTED[0]),
        .m_axi_gmem_ARLEN({NLW_inst_m_axi_gmem_ARLEN_UNCONNECTED[7:4],\^m_axi_gmem_ARLEN }),
        .m_axi_gmem_ARLOCK(NLW_inst_m_axi_gmem_ARLOCK_UNCONNECTED[1:0]),
        .m_axi_gmem_ARPROT(NLW_inst_m_axi_gmem_ARPROT_UNCONNECTED[2:0]),
        .m_axi_gmem_ARQOS(NLW_inst_m_axi_gmem_ARQOS_UNCONNECTED[3:0]),
        .m_axi_gmem_ARREADY(m_axi_gmem_ARREADY),
        .m_axi_gmem_ARREGION(NLW_inst_m_axi_gmem_ARREGION_UNCONNECTED[3:0]),
        .m_axi_gmem_ARSIZE(NLW_inst_m_axi_gmem_ARSIZE_UNCONNECTED[2:0]),
        .m_axi_gmem_ARUSER(NLW_inst_m_axi_gmem_ARUSER_UNCONNECTED[0]),
        .m_axi_gmem_ARVALID(m_axi_gmem_ARVALID),
        .m_axi_gmem_AWADDR(NLW_inst_m_axi_gmem_AWADDR_UNCONNECTED[63:0]),
        .m_axi_gmem_AWBURST(NLW_inst_m_axi_gmem_AWBURST_UNCONNECTED[1:0]),
        .m_axi_gmem_AWCACHE(NLW_inst_m_axi_gmem_AWCACHE_UNCONNECTED[3:0]),
        .m_axi_gmem_AWID(NLW_inst_m_axi_gmem_AWID_UNCONNECTED[0]),
        .m_axi_gmem_AWLEN(NLW_inst_m_axi_gmem_AWLEN_UNCONNECTED[7:0]),
        .m_axi_gmem_AWLOCK(NLW_inst_m_axi_gmem_AWLOCK_UNCONNECTED[1:0]),
        .m_axi_gmem_AWPROT(NLW_inst_m_axi_gmem_AWPROT_UNCONNECTED[2:0]),
        .m_axi_gmem_AWQOS(NLW_inst_m_axi_gmem_AWQOS_UNCONNECTED[3:0]),
        .m_axi_gmem_AWREADY(1'b0),
        .m_axi_gmem_AWREGION(NLW_inst_m_axi_gmem_AWREGION_UNCONNECTED[3:0]),
        .m_axi_gmem_AWSIZE(NLW_inst_m_axi_gmem_AWSIZE_UNCONNECTED[2:0]),
        .m_axi_gmem_AWUSER(NLW_inst_m_axi_gmem_AWUSER_UNCONNECTED[0]),
        .m_axi_gmem_AWVALID(NLW_inst_m_axi_gmem_AWVALID_UNCONNECTED),
        .m_axi_gmem_BID(1'b0),
        .m_axi_gmem_BREADY(NLW_inst_m_axi_gmem_BREADY_UNCONNECTED),
        .m_axi_gmem_BRESP({1'b0,1'b0}),
        .m_axi_gmem_BUSER(1'b0),
        .m_axi_gmem_BVALID(1'b0),
        .m_axi_gmem_RDATA(m_axi_gmem_RDATA),
        .m_axi_gmem_RID(1'b0),
        .m_axi_gmem_RLAST(m_axi_gmem_RLAST),
        .m_axi_gmem_RREADY(m_axi_gmem_RREADY),
        .m_axi_gmem_RRESP(m_axi_gmem_RRESP),
        .m_axi_gmem_RUSER(1'b0),
        .m_axi_gmem_RVALID(m_axi_gmem_RVALID),
        .m_axi_gmem_WDATA(NLW_inst_m_axi_gmem_WDATA_UNCONNECTED[31:0]),
        .m_axi_gmem_WID(NLW_inst_m_axi_gmem_WID_UNCONNECTED[0]),
        .m_axi_gmem_WLAST(NLW_inst_m_axi_gmem_WLAST_UNCONNECTED),
        .m_axi_gmem_WREADY(1'b0),
        .m_axi_gmem_WSTRB(NLW_inst_m_axi_gmem_WSTRB_UNCONNECTED[3:0]),
        .m_axi_gmem_WUSER(NLW_inst_m_axi_gmem_WUSER_UNCONNECTED[0]),
        .m_axi_gmem_WVALID(NLW_inst_m_axi_gmem_WVALID_UNCONNECTED),
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

(* C_M_AXI_DATA_WIDTH = "32" *) (* C_M_AXI_GMEM_ADDR_WIDTH = "64" *) (* C_M_AXI_GMEM_ARUSER_WIDTH = "1" *) 
(* C_M_AXI_GMEM_AWUSER_WIDTH = "1" *) (* C_M_AXI_GMEM_BUSER_WIDTH = "1" *) (* C_M_AXI_GMEM_CACHE_VALUE = "4'b0011" *) 
(* C_M_AXI_GMEM_DATA_WIDTH = "32" *) (* C_M_AXI_GMEM_ID_WIDTH = "1" *) (* C_M_AXI_GMEM_PROT_VALUE = "3'b000" *) 
(* C_M_AXI_GMEM_RUSER_WIDTH = "1" *) (* C_M_AXI_GMEM_USER_VALUE = "0" *) (* C_M_AXI_GMEM_WSTRB_WIDTH = "4" *) 
(* C_M_AXI_GMEM_WUSER_WIDTH = "1" *) (* C_M_AXI_WSTRB_WIDTH = "4" *) (* C_S_AXI_CONTROL_ADDR_WIDTH = "7" *) 
(* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* C_S_AXI_WSTRB_WIDTH = "4" *) (* ap_ST_fsm_state1 = "25'b0000000000000000000000001" *) (* ap_ST_fsm_state10 = "25'b0000000000000001000000000" *) 
(* ap_ST_fsm_state11 = "25'b0000000000000010000000000" *) (* ap_ST_fsm_state12 = "25'b0000000000000100000000000" *) (* ap_ST_fsm_state13 = "25'b0000000000001000000000000" *) 
(* ap_ST_fsm_state14 = "25'b0000000000010000000000000" *) (* ap_ST_fsm_state15 = "25'b0000000000100000000000000" *) (* ap_ST_fsm_state16 = "25'b0000000001000000000000000" *) 
(* ap_ST_fsm_state17 = "25'b0000000010000000000000000" *) (* ap_ST_fsm_state18 = "25'b0000000100000000000000000" *) (* ap_ST_fsm_state19 = "25'b0000001000000000000000000" *) 
(* ap_ST_fsm_state2 = "25'b0000000000000000000000010" *) (* ap_ST_fsm_state20 = "25'b0000010000000000000000000" *) (* ap_ST_fsm_state21 = "25'b0000100000000000000000000" *) 
(* ap_ST_fsm_state22 = "25'b0001000000000000000000000" *) (* ap_ST_fsm_state23 = "25'b0010000000000000000000000" *) (* ap_ST_fsm_state24 = "25'b0100000000000000000000000" *) 
(* ap_ST_fsm_state25 = "25'b1000000000000000000000000" *) (* ap_ST_fsm_state3 = "25'b0000000000000000000000100" *) (* ap_ST_fsm_state4 = "25'b0000000000000000000001000" *) 
(* ap_ST_fsm_state5 = "25'b0000000000000000000010000" *) (* ap_ST_fsm_state6 = "25'b0000000000000000000100000" *) (* ap_ST_fsm_state7 = "25'b0000000000000000001000000" *) 
(* ap_ST_fsm_state8 = "25'b0000000000000000010000000" *) (* ap_ST_fsm_state9 = "25'b0000000000000000100000000" *) (* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer
   (ap_local_block,
    ap_clk,
    ap_rst_n,
    m_axi_gmem_AWVALID,
    m_axi_gmem_AWREADY,
    m_axi_gmem_AWADDR,
    m_axi_gmem_AWID,
    m_axi_gmem_AWLEN,
    m_axi_gmem_AWSIZE,
    m_axi_gmem_AWBURST,
    m_axi_gmem_AWLOCK,
    m_axi_gmem_AWCACHE,
    m_axi_gmem_AWPROT,
    m_axi_gmem_AWQOS,
    m_axi_gmem_AWREGION,
    m_axi_gmem_AWUSER,
    m_axi_gmem_WVALID,
    m_axi_gmem_WREADY,
    m_axi_gmem_WDATA,
    m_axi_gmem_WSTRB,
    m_axi_gmem_WLAST,
    m_axi_gmem_WID,
    m_axi_gmem_WUSER,
    m_axi_gmem_ARVALID,
    m_axi_gmem_ARREADY,
    m_axi_gmem_ARADDR,
    m_axi_gmem_ARID,
    m_axi_gmem_ARLEN,
    m_axi_gmem_ARSIZE,
    m_axi_gmem_ARBURST,
    m_axi_gmem_ARLOCK,
    m_axi_gmem_ARCACHE,
    m_axi_gmem_ARPROT,
    m_axi_gmem_ARQOS,
    m_axi_gmem_ARREGION,
    m_axi_gmem_ARUSER,
    m_axi_gmem_RVALID,
    m_axi_gmem_RREADY,
    m_axi_gmem_RDATA,
    m_axi_gmem_RLAST,
    m_axi_gmem_RID,
    m_axi_gmem_RUSER,
    m_axi_gmem_RRESP,
    m_axi_gmem_BVALID,
    m_axi_gmem_BREADY,
    m_axi_gmem_BRESP,
    m_axi_gmem_BID,
    m_axi_gmem_BUSER,
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
  output m_axi_gmem_AWVALID;
  input m_axi_gmem_AWREADY;
  output [63:0]m_axi_gmem_AWADDR;
  output [0:0]m_axi_gmem_AWID;
  output [7:0]m_axi_gmem_AWLEN;
  output [2:0]m_axi_gmem_AWSIZE;
  output [1:0]m_axi_gmem_AWBURST;
  output [1:0]m_axi_gmem_AWLOCK;
  output [3:0]m_axi_gmem_AWCACHE;
  output [2:0]m_axi_gmem_AWPROT;
  output [3:0]m_axi_gmem_AWQOS;
  output [3:0]m_axi_gmem_AWREGION;
  output [0:0]m_axi_gmem_AWUSER;
  output m_axi_gmem_WVALID;
  input m_axi_gmem_WREADY;
  output [31:0]m_axi_gmem_WDATA;
  output [3:0]m_axi_gmem_WSTRB;
  output m_axi_gmem_WLAST;
  output [0:0]m_axi_gmem_WID;
  output [0:0]m_axi_gmem_WUSER;
  output m_axi_gmem_ARVALID;
  input m_axi_gmem_ARREADY;
  output [63:0]m_axi_gmem_ARADDR;
  output [0:0]m_axi_gmem_ARID;
  output [7:0]m_axi_gmem_ARLEN;
  output [2:0]m_axi_gmem_ARSIZE;
  output [1:0]m_axi_gmem_ARBURST;
  output [1:0]m_axi_gmem_ARLOCK;
  output [3:0]m_axi_gmem_ARCACHE;
  output [2:0]m_axi_gmem_ARPROT;
  output [3:0]m_axi_gmem_ARQOS;
  output [3:0]m_axi_gmem_ARREGION;
  output [0:0]m_axi_gmem_ARUSER;
  input m_axi_gmem_RVALID;
  output m_axi_gmem_RREADY;
  input [31:0]m_axi_gmem_RDATA;
  input m_axi_gmem_RLAST;
  input [0:0]m_axi_gmem_RID;
  input [0:0]m_axi_gmem_RUSER;
  input [1:0]m_axi_gmem_RRESP;
  input m_axi_gmem_BVALID;
  output m_axi_gmem_BREADY;
  input [1:0]m_axi_gmem_BRESP;
  input [0:0]m_axi_gmem_BID;
  input [0:0]m_axi_gmem_BUSER;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [6:0]s_axi_control_AWADDR;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  input [6:0]s_axi_control_ARADDR;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  output [1:0]s_axi_control_BRESP;
  output interrupt;

  wire \<const0> ;
  wire [16:0]add_ln25_1_fu_280_p2;
  wire [16:0]add_ln25_1_reg_423;
  wire \add_ln25_1_reg_423[11]_i_2_n_0 ;
  wire \add_ln25_1_reg_423[11]_i_3_n_0 ;
  wire \add_ln25_1_reg_423[11]_i_4_n_0 ;
  wire \add_ln25_1_reg_423[11]_i_5_n_0 ;
  wire \add_ln25_1_reg_423[15]_i_2_n_0 ;
  wire \add_ln25_1_reg_423[15]_i_3_n_0 ;
  wire \add_ln25_1_reg_423[15]_i_4_n_0 ;
  wire \add_ln25_1_reg_423[15]_i_5_n_0 ;
  wire \add_ln25_1_reg_423[3]_i_2_n_0 ;
  wire \add_ln25_1_reg_423[3]_i_3_n_0 ;
  wire \add_ln25_1_reg_423[3]_i_4_n_0 ;
  wire \add_ln25_1_reg_423[3]_i_5_n_0 ;
  wire \add_ln25_1_reg_423[7]_i_2_n_0 ;
  wire \add_ln25_1_reg_423[7]_i_3_n_0 ;
  wire \add_ln25_1_reg_423[7]_i_4_n_0 ;
  wire \add_ln25_1_reg_423[7]_i_5_n_0 ;
  wire \add_ln25_1_reg_423_reg[11]_i_1_n_0 ;
  wire \add_ln25_1_reg_423_reg[11]_i_1_n_1 ;
  wire \add_ln25_1_reg_423_reg[11]_i_1_n_2 ;
  wire \add_ln25_1_reg_423_reg[11]_i_1_n_3 ;
  wire \add_ln25_1_reg_423_reg[15]_i_1_n_0 ;
  wire \add_ln25_1_reg_423_reg[15]_i_1_n_1 ;
  wire \add_ln25_1_reg_423_reg[15]_i_1_n_2 ;
  wire \add_ln25_1_reg_423_reg[15]_i_1_n_3 ;
  wire \add_ln25_1_reg_423_reg[3]_i_1_n_0 ;
  wire \add_ln25_1_reg_423_reg[3]_i_1_n_1 ;
  wire \add_ln25_1_reg_423_reg[3]_i_1_n_2 ;
  wire \add_ln25_1_reg_423_reg[3]_i_1_n_3 ;
  wire \add_ln25_1_reg_423_reg[7]_i_1_n_0 ;
  wire \add_ln25_1_reg_423_reg[7]_i_1_n_1 ;
  wire \add_ln25_1_reg_423_reg[7]_i_1_n_2 ;
  wire \add_ln25_1_reg_423_reg[7]_i_1_n_3 ;
  wire [1:0]add_ln25_fu_291_p2;
  wire [1:0]add_ln25_reg_431;
  wire [63:1]add_ln27_fu_309_p2;
  wire add_ln27_reg_4360;
  wire \add_ln27_reg_436[11]_i_2_n_0 ;
  wire \add_ln27_reg_436[11]_i_3_n_0 ;
  wire \add_ln27_reg_436[11]_i_4_n_0 ;
  wire \add_ln27_reg_436[11]_i_5_n_0 ;
  wire \add_ln27_reg_436[15]_i_2_n_0 ;
  wire \add_ln27_reg_436[15]_i_3_n_0 ;
  wire \add_ln27_reg_436[15]_i_4_n_0 ;
  wire \add_ln27_reg_436[15]_i_5_n_0 ;
  wire \add_ln27_reg_436[19]_i_2_n_0 ;
  wire \add_ln27_reg_436[19]_i_3_n_0 ;
  wire \add_ln27_reg_436[3]_i_2_n_0 ;
  wire \add_ln27_reg_436[3]_i_3_n_0 ;
  wire \add_ln27_reg_436[3]_i_4_n_0 ;
  wire \add_ln27_reg_436[7]_i_2_n_0 ;
  wire \add_ln27_reg_436[7]_i_3_n_0 ;
  wire \add_ln27_reg_436[7]_i_4_n_0 ;
  wire \add_ln27_reg_436[7]_i_5_n_0 ;
  wire \add_ln27_reg_436_reg[11]_i_1_n_0 ;
  wire \add_ln27_reg_436_reg[11]_i_1_n_1 ;
  wire \add_ln27_reg_436_reg[11]_i_1_n_2 ;
  wire \add_ln27_reg_436_reg[11]_i_1_n_3 ;
  wire \add_ln27_reg_436_reg[15]_i_1_n_0 ;
  wire \add_ln27_reg_436_reg[15]_i_1_n_1 ;
  wire \add_ln27_reg_436_reg[15]_i_1_n_2 ;
  wire \add_ln27_reg_436_reg[15]_i_1_n_3 ;
  wire \add_ln27_reg_436_reg[19]_i_1_n_0 ;
  wire \add_ln27_reg_436_reg[19]_i_1_n_1 ;
  wire \add_ln27_reg_436_reg[19]_i_1_n_2 ;
  wire \add_ln27_reg_436_reg[19]_i_1_n_3 ;
  wire \add_ln27_reg_436_reg[23]_i_1_n_0 ;
  wire \add_ln27_reg_436_reg[23]_i_1_n_1 ;
  wire \add_ln27_reg_436_reg[23]_i_1_n_2 ;
  wire \add_ln27_reg_436_reg[23]_i_1_n_3 ;
  wire \add_ln27_reg_436_reg[27]_i_1_n_0 ;
  wire \add_ln27_reg_436_reg[27]_i_1_n_1 ;
  wire \add_ln27_reg_436_reg[27]_i_1_n_2 ;
  wire \add_ln27_reg_436_reg[27]_i_1_n_3 ;
  wire \add_ln27_reg_436_reg[31]_i_1_n_0 ;
  wire \add_ln27_reg_436_reg[31]_i_1_n_1 ;
  wire \add_ln27_reg_436_reg[31]_i_1_n_2 ;
  wire \add_ln27_reg_436_reg[31]_i_1_n_3 ;
  wire \add_ln27_reg_436_reg[35]_i_1_n_0 ;
  wire \add_ln27_reg_436_reg[35]_i_1_n_1 ;
  wire \add_ln27_reg_436_reg[35]_i_1_n_2 ;
  wire \add_ln27_reg_436_reg[35]_i_1_n_3 ;
  wire \add_ln27_reg_436_reg[39]_i_1_n_0 ;
  wire \add_ln27_reg_436_reg[39]_i_1_n_1 ;
  wire \add_ln27_reg_436_reg[39]_i_1_n_2 ;
  wire \add_ln27_reg_436_reg[39]_i_1_n_3 ;
  wire \add_ln27_reg_436_reg[3]_i_1_n_0 ;
  wire \add_ln27_reg_436_reg[3]_i_1_n_1 ;
  wire \add_ln27_reg_436_reg[3]_i_1_n_2 ;
  wire \add_ln27_reg_436_reg[3]_i_1_n_3 ;
  wire \add_ln27_reg_436_reg[43]_i_1_n_0 ;
  wire \add_ln27_reg_436_reg[43]_i_1_n_1 ;
  wire \add_ln27_reg_436_reg[43]_i_1_n_2 ;
  wire \add_ln27_reg_436_reg[43]_i_1_n_3 ;
  wire \add_ln27_reg_436_reg[47]_i_1_n_0 ;
  wire \add_ln27_reg_436_reg[47]_i_1_n_1 ;
  wire \add_ln27_reg_436_reg[47]_i_1_n_2 ;
  wire \add_ln27_reg_436_reg[47]_i_1_n_3 ;
  wire \add_ln27_reg_436_reg[51]_i_1_n_0 ;
  wire \add_ln27_reg_436_reg[51]_i_1_n_1 ;
  wire \add_ln27_reg_436_reg[51]_i_1_n_2 ;
  wire \add_ln27_reg_436_reg[51]_i_1_n_3 ;
  wire \add_ln27_reg_436_reg[55]_i_1_n_0 ;
  wire \add_ln27_reg_436_reg[55]_i_1_n_1 ;
  wire \add_ln27_reg_436_reg[55]_i_1_n_2 ;
  wire \add_ln27_reg_436_reg[55]_i_1_n_3 ;
  wire \add_ln27_reg_436_reg[59]_i_1_n_0 ;
  wire \add_ln27_reg_436_reg[59]_i_1_n_1 ;
  wire \add_ln27_reg_436_reg[59]_i_1_n_2 ;
  wire \add_ln27_reg_436_reg[59]_i_1_n_3 ;
  wire \add_ln27_reg_436_reg[63]_i_2_n_1 ;
  wire \add_ln27_reg_436_reg[63]_i_2_n_2 ;
  wire \add_ln27_reg_436_reg[63]_i_2_n_3 ;
  wire \add_ln27_reg_436_reg[7]_i_1_n_0 ;
  wire \add_ln27_reg_436_reg[7]_i_1_n_1 ;
  wire \add_ln27_reg_436_reg[7]_i_1_n_2 ;
  wire \add_ln27_reg_436_reg[7]_i_1_n_3 ;
  wire [15:0]add_ln33_fu_349_p2;
  wire \ap_CS_fsm[1]_i_2_n_0 ;
  wire \ap_CS_fsm[1]_i_4_n_0 ;
  wire \ap_CS_fsm[1]_i_5_n_0 ;
  wire \ap_CS_fsm[1]_i_6_n_0 ;
  wire \ap_CS_fsm[1]_i_7_n_0 ;
  wire \ap_CS_fsm_reg_n_0_[12] ;
  wire \ap_CS_fsm_reg_n_0_[13] ;
  wire \ap_CS_fsm_reg_n_0_[14] ;
  wire \ap_CS_fsm_reg_n_0_[15] ;
  wire \ap_CS_fsm_reg_n_0_[16] ;
  wire \ap_CS_fsm_reg_n_0_[2] ;
  wire \ap_CS_fsm_reg_n_0_[3] ;
  wire \ap_CS_fsm_reg_n_0_[4] ;
  wire \ap_CS_fsm_reg_n_0_[5] ;
  wire \ap_CS_fsm_reg_n_0_[6] ;
  wire \ap_CS_fsm_reg_n_0_[7] ;
  wire ap_CS_fsm_state1;
  wire ap_CS_fsm_state10;
  wire ap_CS_fsm_state11;
  wire ap_CS_fsm_state12;
  wire ap_CS_fsm_state18;
  wire ap_CS_fsm_state19;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state20;
  wire ap_CS_fsm_state21;
  wire ap_CS_fsm_state22;
  wire ap_CS_fsm_state23;
  wire ap_CS_fsm_state24;
  wire ap_CS_fsm_state25;
  wire ap_CS_fsm_state9;
  wire ap_NS_fsm14_out;
  wire [22:0]ap_NS_fsm__0;
  wire ap_block_pp0_stage0_subdone;
  wire ap_block_pp0_stage0_subdone_0;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [63:1]bias;
  wire \bus_read/rs_rreq/load_p2 ;
  wire control_s_axi_U_n_1;
  wire \empty_24_reg_416[0]_i_1_n_0 ;
  wire \empty_24_reg_416[0]_i_2_n_0 ;
  wire \empty_24_reg_416[0]_i_3_n_0 ;
  wire \empty_24_reg_416[0]_i_4_n_0 ;
  wire \empty_24_reg_416[0]_i_5_n_0 ;
  wire \empty_24_reg_416_reg_n_0_[0] ;
  wire [63:18]empty_fu_104_p2;
  wire exitcond_fu_110_p2;
  wire gmem_ARREADY;
  wire gmem_ARVALID;
  wire [15:0]gmem_RDATA;
  wire gmem_RREADY;
  wire gmem_RVALID;
  wire gmem_m_axi_U_n_72;
  wire gmem_m_axi_U_n_73;
  wire gmem_m_axi_U_n_74;
  wire gmem_m_axi_U_n_75;
  wire grp_runLayer_Pipeline_1_fu_193_ap_start_reg;
  wire grp_runLayer_Pipeline_1_fu_193_n_12;
  wire [15:0]grp_runLayer_Pipeline_1_fu_193_tmp_bias_d0;
  wire grp_runLayer_Pipeline_2_fu_201_ap_start_reg;
  wire grp_runLayer_Pipeline_2_fu_201_n_48;
  wire grp_runLayer_Pipeline_2_fu_201_n_51;
  wire [6:0]grp_runLayer_Pipeline_2_fu_201_tmp_weights_address0;
  wire [15:0]grp_runLayer_Pipeline_2_fu_201_tmp_weights_d0;
  wire grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg;
  wire [62:0]grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_m_axi_gmem_ARADDR;
  wire [15:0]grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_m_axi_gmem_ARLEN;
  wire grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_n_29;
  wire [63:1]input_r;
  wire interrupt;
  wire \loop_index_fu_48[0]_i_10_n_0 ;
  wire \loop_index_fu_48[0]_i_11_n_0 ;
  wire \loop_index_fu_48[0]_i_12_n_0 ;
  wire \loop_index_fu_48[0]_i_13_n_0 ;
  wire \loop_index_fu_48[0]_i_17_n_0 ;
  wire \loop_index_fu_48[0]_i_18_n_0 ;
  wire \loop_index_fu_48[0]_i_19_n_0 ;
  wire \loop_index_fu_48[0]_i_20_n_0 ;
  wire \loop_index_fu_48[0]_i_25_n_0 ;
  wire \loop_index_fu_48[0]_i_26_n_0 ;
  wire \loop_index_fu_48[0]_i_27_n_0 ;
  wire \loop_index_fu_48[0]_i_28_n_0 ;
  wire \loop_index_fu_48[0]_i_33_n_0 ;
  wire \loop_index_fu_48[0]_i_34_n_0 ;
  wire \loop_index_fu_48[0]_i_7_n_0 ;
  wire \loop_index_fu_48[0]_i_8_n_0 ;
  wire [63:2]\^m_axi_gmem_ARADDR ;
  wire [3:0]\^m_axi_gmem_ARLEN ;
  wire m_axi_gmem_ARREADY;
  wire m_axi_gmem_ARVALID;
  wire [31:0]m_axi_gmem_RDATA;
  wire m_axi_gmem_RLAST;
  wire m_axi_gmem_RREADY;
  wire [1:0]m_axi_gmem_RRESP;
  wire m_axi_gmem_RVALID;
  wire [15:0]numOfInNeurons;
  wire [15:0]numOfInNeurons_cast1_reg_411;
  wire [15:0]numOfInNeurons_read_reg_369;
  wire [1:0]outNeurons_fu_108;
  wire [1:0]output_r_addr_1_reg_473;
  wire \output_r_addr_1_reg_473[0]_i_1_n_0 ;
  wire \output_r_addr_1_reg_473[1]_i_1_n_0 ;
  wire [1:0]output_r_addr_reg_458;
  wire \output_r_addr_reg_458[0]_i_1_n_0 ;
  wire \output_r_addr_reg_458[1]_i_1_n_0 ;
  wire [0:0]output_r_address0;
  wire output_r_ce0;
  wire [15:0]output_r_d0;
  wire [15:0]output_r_load_reg_463;
  wire [15:0]output_r_q0;
  wire [62:0]p_cast_fu_317_p4;
  wire [6:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [6:0]s_axi_control_AWADDR;
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
  wire [6:0]tmp_bias_address0;
  wire tmp_bias_ce0;
  wire [15:0]tmp_bias_load_reg_478;
  wire tmp_bias_we0;
  wire [6:0]tmp_weights_address0;
  wire tmp_weights_ce0;
  wire [15:0]tmp_weights_q0;
  wire tmp_weights_we0;
  wire [62:0]trunc_ln1_reg_396;
  wire [62:0]trunc_ln_reg_390;
  wire [63:0]weights;
  wire [63:0]weights_read_reg_379;
  wire [1:0]zext_ln25_reg_441;
  wire \zext_ln25_reg_441[0]_i_1_n_0 ;
  wire \zext_ln25_reg_441[1]_i_1_n_0 ;
  wire [17:1]zext_ln27_fu_305_p1;
  wire [3:0]\NLW_add_ln25_1_reg_423_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_add_ln25_1_reg_423_reg[16]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_add_ln27_reg_436_reg[3]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_add_ln27_reg_436_reg[63]_i_2_CO_UNCONNECTED ;

  assign ap_local_block = \<const0> ;
  assign m_axi_gmem_ARADDR[63:2] = \^m_axi_gmem_ARADDR [63:2];
  assign m_axi_gmem_ARADDR[1] = \<const0> ;
  assign m_axi_gmem_ARADDR[0] = \<const0> ;
  assign m_axi_gmem_ARBURST[1] = \<const0> ;
  assign m_axi_gmem_ARBURST[0] = \<const0> ;
  assign m_axi_gmem_ARCACHE[3] = \<const0> ;
  assign m_axi_gmem_ARCACHE[2] = \<const0> ;
  assign m_axi_gmem_ARCACHE[1] = \<const0> ;
  assign m_axi_gmem_ARCACHE[0] = \<const0> ;
  assign m_axi_gmem_ARID[0] = \<const0> ;
  assign m_axi_gmem_ARLEN[7] = \<const0> ;
  assign m_axi_gmem_ARLEN[6] = \<const0> ;
  assign m_axi_gmem_ARLEN[5] = \<const0> ;
  assign m_axi_gmem_ARLEN[4] = \<const0> ;
  assign m_axi_gmem_ARLEN[3:0] = \^m_axi_gmem_ARLEN [3:0];
  assign m_axi_gmem_ARLOCK[1] = \<const0> ;
  assign m_axi_gmem_ARLOCK[0] = \<const0> ;
  assign m_axi_gmem_ARPROT[2] = \<const0> ;
  assign m_axi_gmem_ARPROT[1] = \<const0> ;
  assign m_axi_gmem_ARPROT[0] = \<const0> ;
  assign m_axi_gmem_ARQOS[3] = \<const0> ;
  assign m_axi_gmem_ARQOS[2] = \<const0> ;
  assign m_axi_gmem_ARQOS[1] = \<const0> ;
  assign m_axi_gmem_ARQOS[0] = \<const0> ;
  assign m_axi_gmem_ARREGION[3] = \<const0> ;
  assign m_axi_gmem_ARREGION[2] = \<const0> ;
  assign m_axi_gmem_ARREGION[1] = \<const0> ;
  assign m_axi_gmem_ARREGION[0] = \<const0> ;
  assign m_axi_gmem_ARSIZE[2] = \<const0> ;
  assign m_axi_gmem_ARSIZE[1] = \<const0> ;
  assign m_axi_gmem_ARSIZE[0] = \<const0> ;
  assign m_axi_gmem_ARUSER[0] = \<const0> ;
  assign m_axi_gmem_AWADDR[63] = \<const0> ;
  assign m_axi_gmem_AWADDR[62] = \<const0> ;
  assign m_axi_gmem_AWADDR[61] = \<const0> ;
  assign m_axi_gmem_AWADDR[60] = \<const0> ;
  assign m_axi_gmem_AWADDR[59] = \<const0> ;
  assign m_axi_gmem_AWADDR[58] = \<const0> ;
  assign m_axi_gmem_AWADDR[57] = \<const0> ;
  assign m_axi_gmem_AWADDR[56] = \<const0> ;
  assign m_axi_gmem_AWADDR[55] = \<const0> ;
  assign m_axi_gmem_AWADDR[54] = \<const0> ;
  assign m_axi_gmem_AWADDR[53] = \<const0> ;
  assign m_axi_gmem_AWADDR[52] = \<const0> ;
  assign m_axi_gmem_AWADDR[51] = \<const0> ;
  assign m_axi_gmem_AWADDR[50] = \<const0> ;
  assign m_axi_gmem_AWADDR[49] = \<const0> ;
  assign m_axi_gmem_AWADDR[48] = \<const0> ;
  assign m_axi_gmem_AWADDR[47] = \<const0> ;
  assign m_axi_gmem_AWADDR[46] = \<const0> ;
  assign m_axi_gmem_AWADDR[45] = \<const0> ;
  assign m_axi_gmem_AWADDR[44] = \<const0> ;
  assign m_axi_gmem_AWADDR[43] = \<const0> ;
  assign m_axi_gmem_AWADDR[42] = \<const0> ;
  assign m_axi_gmem_AWADDR[41] = \<const0> ;
  assign m_axi_gmem_AWADDR[40] = \<const0> ;
  assign m_axi_gmem_AWADDR[39] = \<const0> ;
  assign m_axi_gmem_AWADDR[38] = \<const0> ;
  assign m_axi_gmem_AWADDR[37] = \<const0> ;
  assign m_axi_gmem_AWADDR[36] = \<const0> ;
  assign m_axi_gmem_AWADDR[35] = \<const0> ;
  assign m_axi_gmem_AWADDR[34] = \<const0> ;
  assign m_axi_gmem_AWADDR[33] = \<const0> ;
  assign m_axi_gmem_AWADDR[32] = \<const0> ;
  assign m_axi_gmem_AWADDR[31] = \<const0> ;
  assign m_axi_gmem_AWADDR[30] = \<const0> ;
  assign m_axi_gmem_AWADDR[29] = \<const0> ;
  assign m_axi_gmem_AWADDR[28] = \<const0> ;
  assign m_axi_gmem_AWADDR[27] = \<const0> ;
  assign m_axi_gmem_AWADDR[26] = \<const0> ;
  assign m_axi_gmem_AWADDR[25] = \<const0> ;
  assign m_axi_gmem_AWADDR[24] = \<const0> ;
  assign m_axi_gmem_AWADDR[23] = \<const0> ;
  assign m_axi_gmem_AWADDR[22] = \<const0> ;
  assign m_axi_gmem_AWADDR[21] = \<const0> ;
  assign m_axi_gmem_AWADDR[20] = \<const0> ;
  assign m_axi_gmem_AWADDR[19] = \<const0> ;
  assign m_axi_gmem_AWADDR[18] = \<const0> ;
  assign m_axi_gmem_AWADDR[17] = \<const0> ;
  assign m_axi_gmem_AWADDR[16] = \<const0> ;
  assign m_axi_gmem_AWADDR[15] = \<const0> ;
  assign m_axi_gmem_AWADDR[14] = \<const0> ;
  assign m_axi_gmem_AWADDR[13] = \<const0> ;
  assign m_axi_gmem_AWADDR[12] = \<const0> ;
  assign m_axi_gmem_AWADDR[11] = \<const0> ;
  assign m_axi_gmem_AWADDR[10] = \<const0> ;
  assign m_axi_gmem_AWADDR[9] = \<const0> ;
  assign m_axi_gmem_AWADDR[8] = \<const0> ;
  assign m_axi_gmem_AWADDR[7] = \<const0> ;
  assign m_axi_gmem_AWADDR[6] = \<const0> ;
  assign m_axi_gmem_AWADDR[5] = \<const0> ;
  assign m_axi_gmem_AWADDR[4] = \<const0> ;
  assign m_axi_gmem_AWADDR[3] = \<const0> ;
  assign m_axi_gmem_AWADDR[2] = \<const0> ;
  assign m_axi_gmem_AWADDR[1] = \<const0> ;
  assign m_axi_gmem_AWADDR[0] = \<const0> ;
  assign m_axi_gmem_AWBURST[1] = \<const0> ;
  assign m_axi_gmem_AWBURST[0] = \<const0> ;
  assign m_axi_gmem_AWCACHE[3] = \<const0> ;
  assign m_axi_gmem_AWCACHE[2] = \<const0> ;
  assign m_axi_gmem_AWCACHE[1] = \<const0> ;
  assign m_axi_gmem_AWCACHE[0] = \<const0> ;
  assign m_axi_gmem_AWID[0] = \<const0> ;
  assign m_axi_gmem_AWLEN[7] = \<const0> ;
  assign m_axi_gmem_AWLEN[6] = \<const0> ;
  assign m_axi_gmem_AWLEN[5] = \<const0> ;
  assign m_axi_gmem_AWLEN[4] = \<const0> ;
  assign m_axi_gmem_AWLEN[3] = \<const0> ;
  assign m_axi_gmem_AWLEN[2] = \<const0> ;
  assign m_axi_gmem_AWLEN[1] = \<const0> ;
  assign m_axi_gmem_AWLEN[0] = \<const0> ;
  assign m_axi_gmem_AWLOCK[1] = \<const0> ;
  assign m_axi_gmem_AWLOCK[0] = \<const0> ;
  assign m_axi_gmem_AWPROT[2] = \<const0> ;
  assign m_axi_gmem_AWPROT[1] = \<const0> ;
  assign m_axi_gmem_AWPROT[0] = \<const0> ;
  assign m_axi_gmem_AWQOS[3] = \<const0> ;
  assign m_axi_gmem_AWQOS[2] = \<const0> ;
  assign m_axi_gmem_AWQOS[1] = \<const0> ;
  assign m_axi_gmem_AWQOS[0] = \<const0> ;
  assign m_axi_gmem_AWREGION[3] = \<const0> ;
  assign m_axi_gmem_AWREGION[2] = \<const0> ;
  assign m_axi_gmem_AWREGION[1] = \<const0> ;
  assign m_axi_gmem_AWREGION[0] = \<const0> ;
  assign m_axi_gmem_AWSIZE[2] = \<const0> ;
  assign m_axi_gmem_AWSIZE[1] = \<const0> ;
  assign m_axi_gmem_AWSIZE[0] = \<const0> ;
  assign m_axi_gmem_AWUSER[0] = \<const0> ;
  assign m_axi_gmem_AWVALID = \<const0> ;
  assign m_axi_gmem_BREADY = \<const0> ;
  assign m_axi_gmem_WDATA[31] = \<const0> ;
  assign m_axi_gmem_WDATA[30] = \<const0> ;
  assign m_axi_gmem_WDATA[29] = \<const0> ;
  assign m_axi_gmem_WDATA[28] = \<const0> ;
  assign m_axi_gmem_WDATA[27] = \<const0> ;
  assign m_axi_gmem_WDATA[26] = \<const0> ;
  assign m_axi_gmem_WDATA[25] = \<const0> ;
  assign m_axi_gmem_WDATA[24] = \<const0> ;
  assign m_axi_gmem_WDATA[23] = \<const0> ;
  assign m_axi_gmem_WDATA[22] = \<const0> ;
  assign m_axi_gmem_WDATA[21] = \<const0> ;
  assign m_axi_gmem_WDATA[20] = \<const0> ;
  assign m_axi_gmem_WDATA[19] = \<const0> ;
  assign m_axi_gmem_WDATA[18] = \<const0> ;
  assign m_axi_gmem_WDATA[17] = \<const0> ;
  assign m_axi_gmem_WDATA[16] = \<const0> ;
  assign m_axi_gmem_WDATA[15] = \<const0> ;
  assign m_axi_gmem_WDATA[14] = \<const0> ;
  assign m_axi_gmem_WDATA[13] = \<const0> ;
  assign m_axi_gmem_WDATA[12] = \<const0> ;
  assign m_axi_gmem_WDATA[11] = \<const0> ;
  assign m_axi_gmem_WDATA[10] = \<const0> ;
  assign m_axi_gmem_WDATA[9] = \<const0> ;
  assign m_axi_gmem_WDATA[8] = \<const0> ;
  assign m_axi_gmem_WDATA[7] = \<const0> ;
  assign m_axi_gmem_WDATA[6] = \<const0> ;
  assign m_axi_gmem_WDATA[5] = \<const0> ;
  assign m_axi_gmem_WDATA[4] = \<const0> ;
  assign m_axi_gmem_WDATA[3] = \<const0> ;
  assign m_axi_gmem_WDATA[2] = \<const0> ;
  assign m_axi_gmem_WDATA[1] = \<const0> ;
  assign m_axi_gmem_WDATA[0] = \<const0> ;
  assign m_axi_gmem_WID[0] = \<const0> ;
  assign m_axi_gmem_WLAST = \<const0> ;
  assign m_axi_gmem_WSTRB[3] = \<const0> ;
  assign m_axi_gmem_WSTRB[2] = \<const0> ;
  assign m_axi_gmem_WSTRB[1] = \<const0> ;
  assign m_axi_gmem_WSTRB[0] = \<const0> ;
  assign m_axi_gmem_WUSER[0] = \<const0> ;
  assign m_axi_gmem_WVALID = \<const0> ;
  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln25_1_reg_423[11]_i_2 
       (.I0(zext_ln27_fu_305_p1[12]),
        .I1(numOfInNeurons_cast1_reg_411[11]),
        .O(\add_ln25_1_reg_423[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln25_1_reg_423[11]_i_3 
       (.I0(zext_ln27_fu_305_p1[11]),
        .I1(numOfInNeurons_cast1_reg_411[10]),
        .O(\add_ln25_1_reg_423[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln25_1_reg_423[11]_i_4 
       (.I0(zext_ln27_fu_305_p1[10]),
        .I1(numOfInNeurons_cast1_reg_411[9]),
        .O(\add_ln25_1_reg_423[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln25_1_reg_423[11]_i_5 
       (.I0(zext_ln27_fu_305_p1[9]),
        .I1(numOfInNeurons_cast1_reg_411[8]),
        .O(\add_ln25_1_reg_423[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln25_1_reg_423[15]_i_2 
       (.I0(zext_ln27_fu_305_p1[16]),
        .I1(numOfInNeurons_cast1_reg_411[15]),
        .O(\add_ln25_1_reg_423[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln25_1_reg_423[15]_i_3 
       (.I0(zext_ln27_fu_305_p1[15]),
        .I1(numOfInNeurons_cast1_reg_411[14]),
        .O(\add_ln25_1_reg_423[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln25_1_reg_423[15]_i_4 
       (.I0(zext_ln27_fu_305_p1[14]),
        .I1(numOfInNeurons_cast1_reg_411[13]),
        .O(\add_ln25_1_reg_423[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln25_1_reg_423[15]_i_5 
       (.I0(zext_ln27_fu_305_p1[13]),
        .I1(numOfInNeurons_cast1_reg_411[12]),
        .O(\add_ln25_1_reg_423[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln25_1_reg_423[3]_i_2 
       (.I0(zext_ln27_fu_305_p1[4]),
        .I1(numOfInNeurons_cast1_reg_411[3]),
        .O(\add_ln25_1_reg_423[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln25_1_reg_423[3]_i_3 
       (.I0(zext_ln27_fu_305_p1[3]),
        .I1(numOfInNeurons_cast1_reg_411[2]),
        .O(\add_ln25_1_reg_423[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln25_1_reg_423[3]_i_4 
       (.I0(zext_ln27_fu_305_p1[2]),
        .I1(numOfInNeurons_cast1_reg_411[1]),
        .O(\add_ln25_1_reg_423[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln25_1_reg_423[3]_i_5 
       (.I0(zext_ln27_fu_305_p1[1]),
        .I1(numOfInNeurons_cast1_reg_411[0]),
        .O(\add_ln25_1_reg_423[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln25_1_reg_423[7]_i_2 
       (.I0(zext_ln27_fu_305_p1[8]),
        .I1(numOfInNeurons_cast1_reg_411[7]),
        .O(\add_ln25_1_reg_423[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln25_1_reg_423[7]_i_3 
       (.I0(zext_ln27_fu_305_p1[7]),
        .I1(numOfInNeurons_cast1_reg_411[6]),
        .O(\add_ln25_1_reg_423[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln25_1_reg_423[7]_i_4 
       (.I0(zext_ln27_fu_305_p1[6]),
        .I1(numOfInNeurons_cast1_reg_411[5]),
        .O(\add_ln25_1_reg_423[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln25_1_reg_423[7]_i_5 
       (.I0(zext_ln27_fu_305_p1[5]),
        .I1(numOfInNeurons_cast1_reg_411[4]),
        .O(\add_ln25_1_reg_423[7]_i_5_n_0 ));
  FDRE \add_ln25_1_reg_423_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state11),
        .D(add_ln25_1_fu_280_p2[0]),
        .Q(add_ln25_1_reg_423[0]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_423_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state11),
        .D(add_ln25_1_fu_280_p2[10]),
        .Q(add_ln25_1_reg_423[10]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_423_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state11),
        .D(add_ln25_1_fu_280_p2[11]),
        .Q(add_ln25_1_reg_423[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \add_ln25_1_reg_423_reg[11]_i_1 
       (.CI(\add_ln25_1_reg_423_reg[7]_i_1_n_0 ),
        .CO({\add_ln25_1_reg_423_reg[11]_i_1_n_0 ,\add_ln25_1_reg_423_reg[11]_i_1_n_1 ,\add_ln25_1_reg_423_reg[11]_i_1_n_2 ,\add_ln25_1_reg_423_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(zext_ln27_fu_305_p1[12:9]),
        .O(add_ln25_1_fu_280_p2[11:8]),
        .S({\add_ln25_1_reg_423[11]_i_2_n_0 ,\add_ln25_1_reg_423[11]_i_3_n_0 ,\add_ln25_1_reg_423[11]_i_4_n_0 ,\add_ln25_1_reg_423[11]_i_5_n_0 }));
  FDRE \add_ln25_1_reg_423_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state11),
        .D(add_ln25_1_fu_280_p2[12]),
        .Q(add_ln25_1_reg_423[12]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_423_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state11),
        .D(add_ln25_1_fu_280_p2[13]),
        .Q(add_ln25_1_reg_423[13]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_423_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state11),
        .D(add_ln25_1_fu_280_p2[14]),
        .Q(add_ln25_1_reg_423[14]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_423_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state11),
        .D(add_ln25_1_fu_280_p2[15]),
        .Q(add_ln25_1_reg_423[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \add_ln25_1_reg_423_reg[15]_i_1 
       (.CI(\add_ln25_1_reg_423_reg[11]_i_1_n_0 ),
        .CO({\add_ln25_1_reg_423_reg[15]_i_1_n_0 ,\add_ln25_1_reg_423_reg[15]_i_1_n_1 ,\add_ln25_1_reg_423_reg[15]_i_1_n_2 ,\add_ln25_1_reg_423_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(zext_ln27_fu_305_p1[16:13]),
        .O(add_ln25_1_fu_280_p2[15:12]),
        .S({\add_ln25_1_reg_423[15]_i_2_n_0 ,\add_ln25_1_reg_423[15]_i_3_n_0 ,\add_ln25_1_reg_423[15]_i_4_n_0 ,\add_ln25_1_reg_423[15]_i_5_n_0 }));
  FDRE \add_ln25_1_reg_423_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state11),
        .D(add_ln25_1_fu_280_p2[16]),
        .Q(add_ln25_1_reg_423[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \add_ln25_1_reg_423_reg[16]_i_1 
       (.CI(\add_ln25_1_reg_423_reg[15]_i_1_n_0 ),
        .CO(\NLW_add_ln25_1_reg_423_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_add_ln25_1_reg_423_reg[16]_i_1_O_UNCONNECTED [3:1],add_ln25_1_fu_280_p2[16]}),
        .S({1'b0,1'b0,1'b0,zext_ln27_fu_305_p1[17]}));
  FDRE \add_ln25_1_reg_423_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state11),
        .D(add_ln25_1_fu_280_p2[1]),
        .Q(add_ln25_1_reg_423[1]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_423_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state11),
        .D(add_ln25_1_fu_280_p2[2]),
        .Q(add_ln25_1_reg_423[2]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_423_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state11),
        .D(add_ln25_1_fu_280_p2[3]),
        .Q(add_ln25_1_reg_423[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \add_ln25_1_reg_423_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\add_ln25_1_reg_423_reg[3]_i_1_n_0 ,\add_ln25_1_reg_423_reg[3]_i_1_n_1 ,\add_ln25_1_reg_423_reg[3]_i_1_n_2 ,\add_ln25_1_reg_423_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(zext_ln27_fu_305_p1[4:1]),
        .O(add_ln25_1_fu_280_p2[3:0]),
        .S({\add_ln25_1_reg_423[3]_i_2_n_0 ,\add_ln25_1_reg_423[3]_i_3_n_0 ,\add_ln25_1_reg_423[3]_i_4_n_0 ,\add_ln25_1_reg_423[3]_i_5_n_0 }));
  FDRE \add_ln25_1_reg_423_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state11),
        .D(add_ln25_1_fu_280_p2[4]),
        .Q(add_ln25_1_reg_423[4]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_423_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state11),
        .D(add_ln25_1_fu_280_p2[5]),
        .Q(add_ln25_1_reg_423[5]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_423_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state11),
        .D(add_ln25_1_fu_280_p2[6]),
        .Q(add_ln25_1_reg_423[6]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_423_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state11),
        .D(add_ln25_1_fu_280_p2[7]),
        .Q(add_ln25_1_reg_423[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \add_ln25_1_reg_423_reg[7]_i_1 
       (.CI(\add_ln25_1_reg_423_reg[3]_i_1_n_0 ),
        .CO({\add_ln25_1_reg_423_reg[7]_i_1_n_0 ,\add_ln25_1_reg_423_reg[7]_i_1_n_1 ,\add_ln25_1_reg_423_reg[7]_i_1_n_2 ,\add_ln25_1_reg_423_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(zext_ln27_fu_305_p1[8:5]),
        .O(add_ln25_1_fu_280_p2[7:4]),
        .S({\add_ln25_1_reg_423[7]_i_2_n_0 ,\add_ln25_1_reg_423[7]_i_3_n_0 ,\add_ln25_1_reg_423[7]_i_4_n_0 ,\add_ln25_1_reg_423[7]_i_5_n_0 }));
  FDRE \add_ln25_1_reg_423_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state11),
        .D(add_ln25_1_fu_280_p2[8]),
        .Q(add_ln25_1_reg_423[8]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_423_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state11),
        .D(add_ln25_1_fu_280_p2[9]),
        .Q(add_ln25_1_reg_423[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair271" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \add_ln25_reg_431[0]_i_1 
       (.I0(outNeurons_fu_108[0]),
        .O(add_ln25_fu_291_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair271" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln25_reg_431[1]_i_1 
       (.I0(outNeurons_fu_108[1]),
        .I1(outNeurons_fu_108[0]),
        .O(add_ln25_fu_291_p2[1]));
  FDRE \add_ln25_reg_431_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state11),
        .D(add_ln25_fu_291_p2[0]),
        .Q(add_ln25_reg_431[0]),
        .R(1'b0));
  FDRE \add_ln25_reg_431_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state11),
        .D(add_ln25_fu_291_p2[1]),
        .Q(add_ln25_reg_431[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln27_reg_436[11]_i_2 
       (.I0(zext_ln27_fu_305_p1[11]),
        .I1(weights_read_reg_379[11]),
        .O(\add_ln27_reg_436[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln27_reg_436[11]_i_3 
       (.I0(zext_ln27_fu_305_p1[10]),
        .I1(weights_read_reg_379[10]),
        .O(\add_ln27_reg_436[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln27_reg_436[11]_i_4 
       (.I0(zext_ln27_fu_305_p1[9]),
        .I1(weights_read_reg_379[9]),
        .O(\add_ln27_reg_436[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln27_reg_436[11]_i_5 
       (.I0(zext_ln27_fu_305_p1[8]),
        .I1(weights_read_reg_379[8]),
        .O(\add_ln27_reg_436[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln27_reg_436[15]_i_2 
       (.I0(zext_ln27_fu_305_p1[15]),
        .I1(weights_read_reg_379[15]),
        .O(\add_ln27_reg_436[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln27_reg_436[15]_i_3 
       (.I0(zext_ln27_fu_305_p1[14]),
        .I1(weights_read_reg_379[14]),
        .O(\add_ln27_reg_436[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln27_reg_436[15]_i_4 
       (.I0(zext_ln27_fu_305_p1[13]),
        .I1(weights_read_reg_379[13]),
        .O(\add_ln27_reg_436[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln27_reg_436[15]_i_5 
       (.I0(zext_ln27_fu_305_p1[12]),
        .I1(weights_read_reg_379[12]),
        .O(\add_ln27_reg_436[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln27_reg_436[19]_i_2 
       (.I0(zext_ln27_fu_305_p1[17]),
        .I1(weights_read_reg_379[17]),
        .O(\add_ln27_reg_436[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln27_reg_436[19]_i_3 
       (.I0(zext_ln27_fu_305_p1[16]),
        .I1(weights_read_reg_379[16]),
        .O(\add_ln27_reg_436[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln27_reg_436[3]_i_2 
       (.I0(zext_ln27_fu_305_p1[3]),
        .I1(weights_read_reg_379[3]),
        .O(\add_ln27_reg_436[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln27_reg_436[3]_i_3 
       (.I0(zext_ln27_fu_305_p1[2]),
        .I1(weights_read_reg_379[2]),
        .O(\add_ln27_reg_436[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln27_reg_436[3]_i_4 
       (.I0(zext_ln27_fu_305_p1[1]),
        .I1(weights_read_reg_379[1]),
        .O(\add_ln27_reg_436[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \add_ln27_reg_436[63]_i_1 
       (.I0(ap_CS_fsm_state11),
        .I1(outNeurons_fu_108[0]),
        .I2(outNeurons_fu_108[1]),
        .O(add_ln27_reg_4360));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln27_reg_436[7]_i_2 
       (.I0(zext_ln27_fu_305_p1[7]),
        .I1(weights_read_reg_379[7]),
        .O(\add_ln27_reg_436[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln27_reg_436[7]_i_3 
       (.I0(zext_ln27_fu_305_p1[6]),
        .I1(weights_read_reg_379[6]),
        .O(\add_ln27_reg_436[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln27_reg_436[7]_i_4 
       (.I0(zext_ln27_fu_305_p1[5]),
        .I1(weights_read_reg_379[5]),
        .O(\add_ln27_reg_436[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln27_reg_436[7]_i_5 
       (.I0(zext_ln27_fu_305_p1[4]),
        .I1(weights_read_reg_379[4]),
        .O(\add_ln27_reg_436[7]_i_5_n_0 ));
  FDRE \add_ln27_reg_436_reg[10] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[10]),
        .Q(p_cast_fu_317_p4[9]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[11] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[11]),
        .Q(p_cast_fu_317_p4[10]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \add_ln27_reg_436_reg[11]_i_1 
       (.CI(\add_ln27_reg_436_reg[7]_i_1_n_0 ),
        .CO({\add_ln27_reg_436_reg[11]_i_1_n_0 ,\add_ln27_reg_436_reg[11]_i_1_n_1 ,\add_ln27_reg_436_reg[11]_i_1_n_2 ,\add_ln27_reg_436_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(zext_ln27_fu_305_p1[11:8]),
        .O(add_ln27_fu_309_p2[11:8]),
        .S({\add_ln27_reg_436[11]_i_2_n_0 ,\add_ln27_reg_436[11]_i_3_n_0 ,\add_ln27_reg_436[11]_i_4_n_0 ,\add_ln27_reg_436[11]_i_5_n_0 }));
  FDRE \add_ln27_reg_436_reg[12] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[12]),
        .Q(p_cast_fu_317_p4[11]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[13] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[13]),
        .Q(p_cast_fu_317_p4[12]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[14] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[14]),
        .Q(p_cast_fu_317_p4[13]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[15] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[15]),
        .Q(p_cast_fu_317_p4[14]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \add_ln27_reg_436_reg[15]_i_1 
       (.CI(\add_ln27_reg_436_reg[11]_i_1_n_0 ),
        .CO({\add_ln27_reg_436_reg[15]_i_1_n_0 ,\add_ln27_reg_436_reg[15]_i_1_n_1 ,\add_ln27_reg_436_reg[15]_i_1_n_2 ,\add_ln27_reg_436_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(zext_ln27_fu_305_p1[15:12]),
        .O(add_ln27_fu_309_p2[15:12]),
        .S({\add_ln27_reg_436[15]_i_2_n_0 ,\add_ln27_reg_436[15]_i_3_n_0 ,\add_ln27_reg_436[15]_i_4_n_0 ,\add_ln27_reg_436[15]_i_5_n_0 }));
  FDRE \add_ln27_reg_436_reg[16] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[16]),
        .Q(p_cast_fu_317_p4[15]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[17] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[17]),
        .Q(p_cast_fu_317_p4[16]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[18] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[18]),
        .Q(p_cast_fu_317_p4[17]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[19] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[19]),
        .Q(p_cast_fu_317_p4[18]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \add_ln27_reg_436_reg[19]_i_1 
       (.CI(\add_ln27_reg_436_reg[15]_i_1_n_0 ),
        .CO({\add_ln27_reg_436_reg[19]_i_1_n_0 ,\add_ln27_reg_436_reg[19]_i_1_n_1 ,\add_ln27_reg_436_reg[19]_i_1_n_2 ,\add_ln27_reg_436_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,zext_ln27_fu_305_p1[17:16]}),
        .O(add_ln27_fu_309_p2[19:16]),
        .S({weights_read_reg_379[19:18],\add_ln27_reg_436[19]_i_2_n_0 ,\add_ln27_reg_436[19]_i_3_n_0 }));
  FDRE \add_ln27_reg_436_reg[1] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[1]),
        .Q(p_cast_fu_317_p4[0]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[20] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[20]),
        .Q(p_cast_fu_317_p4[19]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[21] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[21]),
        .Q(p_cast_fu_317_p4[20]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[22] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[22]),
        .Q(p_cast_fu_317_p4[21]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[23] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[23]),
        .Q(p_cast_fu_317_p4[22]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \add_ln27_reg_436_reg[23]_i_1 
       (.CI(\add_ln27_reg_436_reg[19]_i_1_n_0 ),
        .CO({\add_ln27_reg_436_reg[23]_i_1_n_0 ,\add_ln27_reg_436_reg[23]_i_1_n_1 ,\add_ln27_reg_436_reg[23]_i_1_n_2 ,\add_ln27_reg_436_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln27_fu_309_p2[23:20]),
        .S(weights_read_reg_379[23:20]));
  FDRE \add_ln27_reg_436_reg[24] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[24]),
        .Q(p_cast_fu_317_p4[23]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[25] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[25]),
        .Q(p_cast_fu_317_p4[24]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[26] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[26]),
        .Q(p_cast_fu_317_p4[25]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[27] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[27]),
        .Q(p_cast_fu_317_p4[26]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \add_ln27_reg_436_reg[27]_i_1 
       (.CI(\add_ln27_reg_436_reg[23]_i_1_n_0 ),
        .CO({\add_ln27_reg_436_reg[27]_i_1_n_0 ,\add_ln27_reg_436_reg[27]_i_1_n_1 ,\add_ln27_reg_436_reg[27]_i_1_n_2 ,\add_ln27_reg_436_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln27_fu_309_p2[27:24]),
        .S(weights_read_reg_379[27:24]));
  FDRE \add_ln27_reg_436_reg[28] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[28]),
        .Q(p_cast_fu_317_p4[27]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[29] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[29]),
        .Q(p_cast_fu_317_p4[28]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[2] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[2]),
        .Q(p_cast_fu_317_p4[1]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[30] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[30]),
        .Q(p_cast_fu_317_p4[29]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[31] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[31]),
        .Q(p_cast_fu_317_p4[30]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \add_ln27_reg_436_reg[31]_i_1 
       (.CI(\add_ln27_reg_436_reg[27]_i_1_n_0 ),
        .CO({\add_ln27_reg_436_reg[31]_i_1_n_0 ,\add_ln27_reg_436_reg[31]_i_1_n_1 ,\add_ln27_reg_436_reg[31]_i_1_n_2 ,\add_ln27_reg_436_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln27_fu_309_p2[31:28]),
        .S(weights_read_reg_379[31:28]));
  FDRE \add_ln27_reg_436_reg[32] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[32]),
        .Q(p_cast_fu_317_p4[31]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[33] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[33]),
        .Q(p_cast_fu_317_p4[32]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[34] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[34]),
        .Q(p_cast_fu_317_p4[33]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[35] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[35]),
        .Q(p_cast_fu_317_p4[34]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \add_ln27_reg_436_reg[35]_i_1 
       (.CI(\add_ln27_reg_436_reg[31]_i_1_n_0 ),
        .CO({\add_ln27_reg_436_reg[35]_i_1_n_0 ,\add_ln27_reg_436_reg[35]_i_1_n_1 ,\add_ln27_reg_436_reg[35]_i_1_n_2 ,\add_ln27_reg_436_reg[35]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln27_fu_309_p2[35:32]),
        .S(weights_read_reg_379[35:32]));
  FDRE \add_ln27_reg_436_reg[36] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[36]),
        .Q(p_cast_fu_317_p4[35]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[37] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[37]),
        .Q(p_cast_fu_317_p4[36]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[38] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[38]),
        .Q(p_cast_fu_317_p4[37]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[39] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[39]),
        .Q(p_cast_fu_317_p4[38]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \add_ln27_reg_436_reg[39]_i_1 
       (.CI(\add_ln27_reg_436_reg[35]_i_1_n_0 ),
        .CO({\add_ln27_reg_436_reg[39]_i_1_n_0 ,\add_ln27_reg_436_reg[39]_i_1_n_1 ,\add_ln27_reg_436_reg[39]_i_1_n_2 ,\add_ln27_reg_436_reg[39]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln27_fu_309_p2[39:36]),
        .S(weights_read_reg_379[39:36]));
  FDRE \add_ln27_reg_436_reg[3] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[3]),
        .Q(p_cast_fu_317_p4[2]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \add_ln27_reg_436_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\add_ln27_reg_436_reg[3]_i_1_n_0 ,\add_ln27_reg_436_reg[3]_i_1_n_1 ,\add_ln27_reg_436_reg[3]_i_1_n_2 ,\add_ln27_reg_436_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({zext_ln27_fu_305_p1[3:1],1'b0}),
        .O({add_ln27_fu_309_p2[3:1],\NLW_add_ln27_reg_436_reg[3]_i_1_O_UNCONNECTED [0]}),
        .S({\add_ln27_reg_436[3]_i_2_n_0 ,\add_ln27_reg_436[3]_i_3_n_0 ,\add_ln27_reg_436[3]_i_4_n_0 ,weights_read_reg_379[0]}));
  FDRE \add_ln27_reg_436_reg[40] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[40]),
        .Q(p_cast_fu_317_p4[39]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[41] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[41]),
        .Q(p_cast_fu_317_p4[40]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[42] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[42]),
        .Q(p_cast_fu_317_p4[41]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[43] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[43]),
        .Q(p_cast_fu_317_p4[42]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \add_ln27_reg_436_reg[43]_i_1 
       (.CI(\add_ln27_reg_436_reg[39]_i_1_n_0 ),
        .CO({\add_ln27_reg_436_reg[43]_i_1_n_0 ,\add_ln27_reg_436_reg[43]_i_1_n_1 ,\add_ln27_reg_436_reg[43]_i_1_n_2 ,\add_ln27_reg_436_reg[43]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln27_fu_309_p2[43:40]),
        .S(weights_read_reg_379[43:40]));
  FDRE \add_ln27_reg_436_reg[44] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[44]),
        .Q(p_cast_fu_317_p4[43]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[45] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[45]),
        .Q(p_cast_fu_317_p4[44]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[46] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[46]),
        .Q(p_cast_fu_317_p4[45]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[47] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[47]),
        .Q(p_cast_fu_317_p4[46]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \add_ln27_reg_436_reg[47]_i_1 
       (.CI(\add_ln27_reg_436_reg[43]_i_1_n_0 ),
        .CO({\add_ln27_reg_436_reg[47]_i_1_n_0 ,\add_ln27_reg_436_reg[47]_i_1_n_1 ,\add_ln27_reg_436_reg[47]_i_1_n_2 ,\add_ln27_reg_436_reg[47]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln27_fu_309_p2[47:44]),
        .S(weights_read_reg_379[47:44]));
  FDRE \add_ln27_reg_436_reg[48] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[48]),
        .Q(p_cast_fu_317_p4[47]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[49] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[49]),
        .Q(p_cast_fu_317_p4[48]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[4] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[4]),
        .Q(p_cast_fu_317_p4[3]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[50] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[50]),
        .Q(p_cast_fu_317_p4[49]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[51] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[51]),
        .Q(p_cast_fu_317_p4[50]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \add_ln27_reg_436_reg[51]_i_1 
       (.CI(\add_ln27_reg_436_reg[47]_i_1_n_0 ),
        .CO({\add_ln27_reg_436_reg[51]_i_1_n_0 ,\add_ln27_reg_436_reg[51]_i_1_n_1 ,\add_ln27_reg_436_reg[51]_i_1_n_2 ,\add_ln27_reg_436_reg[51]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln27_fu_309_p2[51:48]),
        .S(weights_read_reg_379[51:48]));
  FDRE \add_ln27_reg_436_reg[52] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[52]),
        .Q(p_cast_fu_317_p4[51]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[53] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[53]),
        .Q(p_cast_fu_317_p4[52]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[54] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[54]),
        .Q(p_cast_fu_317_p4[53]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[55] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[55]),
        .Q(p_cast_fu_317_p4[54]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \add_ln27_reg_436_reg[55]_i_1 
       (.CI(\add_ln27_reg_436_reg[51]_i_1_n_0 ),
        .CO({\add_ln27_reg_436_reg[55]_i_1_n_0 ,\add_ln27_reg_436_reg[55]_i_1_n_1 ,\add_ln27_reg_436_reg[55]_i_1_n_2 ,\add_ln27_reg_436_reg[55]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln27_fu_309_p2[55:52]),
        .S(weights_read_reg_379[55:52]));
  FDRE \add_ln27_reg_436_reg[56] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[56]),
        .Q(p_cast_fu_317_p4[55]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[57] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[57]),
        .Q(p_cast_fu_317_p4[56]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[58] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[58]),
        .Q(p_cast_fu_317_p4[57]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[59] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[59]),
        .Q(p_cast_fu_317_p4[58]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \add_ln27_reg_436_reg[59]_i_1 
       (.CI(\add_ln27_reg_436_reg[55]_i_1_n_0 ),
        .CO({\add_ln27_reg_436_reg[59]_i_1_n_0 ,\add_ln27_reg_436_reg[59]_i_1_n_1 ,\add_ln27_reg_436_reg[59]_i_1_n_2 ,\add_ln27_reg_436_reg[59]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln27_fu_309_p2[59:56]),
        .S(weights_read_reg_379[59:56]));
  FDRE \add_ln27_reg_436_reg[5] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[5]),
        .Q(p_cast_fu_317_p4[4]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[60] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[60]),
        .Q(p_cast_fu_317_p4[59]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[61] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[61]),
        .Q(p_cast_fu_317_p4[60]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[62] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[62]),
        .Q(p_cast_fu_317_p4[61]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[63] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[63]),
        .Q(p_cast_fu_317_p4[62]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \add_ln27_reg_436_reg[63]_i_2 
       (.CI(\add_ln27_reg_436_reg[59]_i_1_n_0 ),
        .CO({\NLW_add_ln27_reg_436_reg[63]_i_2_CO_UNCONNECTED [3],\add_ln27_reg_436_reg[63]_i_2_n_1 ,\add_ln27_reg_436_reg[63]_i_2_n_2 ,\add_ln27_reg_436_reg[63]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln27_fu_309_p2[63:60]),
        .S(weights_read_reg_379[63:60]));
  FDRE \add_ln27_reg_436_reg[6] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[6]),
        .Q(p_cast_fu_317_p4[5]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[7] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[7]),
        .Q(p_cast_fu_317_p4[6]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \add_ln27_reg_436_reg[7]_i_1 
       (.CI(\add_ln27_reg_436_reg[3]_i_1_n_0 ),
        .CO({\add_ln27_reg_436_reg[7]_i_1_n_0 ,\add_ln27_reg_436_reg[7]_i_1_n_1 ,\add_ln27_reg_436_reg[7]_i_1_n_2 ,\add_ln27_reg_436_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(zext_ln27_fu_305_p1[7:4]),
        .O(add_ln27_fu_309_p2[7:4]),
        .S({\add_ln27_reg_436[7]_i_2_n_0 ,\add_ln27_reg_436[7]_i_3_n_0 ,\add_ln27_reg_436[7]_i_4_n_0 ,\add_ln27_reg_436[7]_i_5_n_0 }));
  FDRE \add_ln27_reg_436_reg[8] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[8]),
        .Q(p_cast_fu_317_p4[7]),
        .R(1'b0));
  FDRE \add_ln27_reg_436_reg[9] 
       (.C(ap_clk),
        .CE(add_ln27_reg_4360),
        .D(add_ln27_fu_309_p2[9]),
        .Q(p_cast_fu_317_p4[8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(ap_CS_fsm_state19),
        .I1(ap_CS_fsm_state20),
        .I2(ap_CS_fsm_state24),
        .I3(ap_CS_fsm_state25),
        .I4(ap_CS_fsm_state21),
        .I5(ap_CS_fsm_state22),
        .O(\ap_CS_fsm[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ap_CS_fsm[1]_i_4 
       (.I0(\ap_CS_fsm_reg_n_0_[3] ),
        .I1(\ap_CS_fsm_reg_n_0_[15] ),
        .I2(\ap_CS_fsm_reg_n_0_[13] ),
        .I3(\ap_CS_fsm_reg_n_0_[7] ),
        .I4(\ap_CS_fsm[1]_i_6_n_0 ),
        .I5(\ap_CS_fsm[1]_i_7_n_0 ),
        .O(\ap_CS_fsm[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ap_CS_fsm[1]_i_5 
       (.I0(ap_CS_fsm_state9),
        .I1(ap_CS_fsm_state10),
        .O(\ap_CS_fsm[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[1]_i_6 
       (.I0(\ap_CS_fsm_reg_n_0_[2] ),
        .I1(\ap_CS_fsm_reg_n_0_[4] ),
        .I2(\ap_CS_fsm_reg_n_0_[16] ),
        .I3(ap_CS_fsm_state11),
        .O(\ap_CS_fsm[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[1]_i_7 
       (.I0(\ap_CS_fsm_reg_n_0_[12] ),
        .I1(ap_CS_fsm_state12),
        .I2(ap_CS_fsm_state23),
        .I3(ap_CS_fsm_state18),
        .O(\ap_CS_fsm[1]_i_7_n_0 ));
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
    \ap_CS_fsm_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm__0[10]),
        .Q(ap_CS_fsm_state11),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm__0[11]),
        .Q(ap_CS_fsm_state12),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm__0[12]),
        .Q(\ap_CS_fsm_reg_n_0_[12] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[12] ),
        .Q(\ap_CS_fsm_reg_n_0_[13] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[13] ),
        .Q(\ap_CS_fsm_reg_n_0_[14] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[14] ),
        .Q(\ap_CS_fsm_reg_n_0_[15] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[15] ),
        .Q(\ap_CS_fsm_reg_n_0_[16] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[16] ),
        .Q(ap_CS_fsm_state18),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state18),
        .Q(ap_CS_fsm_state19),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm__0[19]),
        .Q(ap_CS_fsm_state20),
        .R(ap_rst_n_inv));
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
    \ap_CS_fsm_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm__0[20]),
        .Q(ap_CS_fsm_state21),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[21] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm__0[21]),
        .Q(ap_CS_fsm_state22),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm__0[22]),
        .Q(ap_CS_fsm_state23),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[23] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state23),
        .Q(ap_CS_fsm_state24),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[24] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state24),
        .Q(ap_CS_fsm_state25),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm__0[2]),
        .Q(\ap_CS_fsm_reg_n_0_[2] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[2] ),
        .Q(\ap_CS_fsm_reg_n_0_[3] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[3] ),
        .Q(\ap_CS_fsm_reg_n_0_[4] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[4] ),
        .Q(\ap_CS_fsm_reg_n_0_[5] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[5] ),
        .Q(\ap_CS_fsm_reg_n_0_[6] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[6] ),
        .Q(\ap_CS_fsm_reg_n_0_[7] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[7] ),
        .Q(ap_CS_fsm_state9),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm__0[9]),
        .Q(ap_CS_fsm_state10),
        .R(ap_rst_n_inv));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_control_s_axi control_s_axi_U
       (.D(ap_NS_fsm__0[1:0]),
        .DIBDI(output_r_d0),
        .DOADO(tmp_bias_load_reg_478),
        .Q({ap_CS_fsm_state25,ap_CS_fsm_state24,ap_CS_fsm_state23,ap_CS_fsm_state11,ap_CS_fsm_state1}),
        .SR(ap_NS_fsm14_out),
        .add_ln33_fu_349_p2(add_ln33_fu_349_p2),
        .\ap_CS_fsm_reg[1] (\ap_CS_fsm[1]_i_2_n_0 ),
        .\ap_CS_fsm_reg[1]_0 (gmem_m_axi_U_n_72),
        .\ap_CS_fsm_reg[1]_1 (\ap_CS_fsm[1]_i_4_n_0 ),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .int_ap_start_reg_0(outNeurons_fu_108),
        .\int_bias_reg[63]_0 (bias),
        .\int_input_r_reg[63]_0 (input_r),
        .\int_numOfInNeurons_reg[15]_0 (numOfInNeurons),
        .\int_output_r_shift0_reg[0]_0 (control_s_axi_U_n_1),
        .\int_output_r_shift0_reg[0]_1 (grp_runLayer_Pipeline_2_fu_201_n_48),
        .\int_weights_reg[63]_0 (weights),
        .interrupt(interrupt),
        .mem_reg(output_r_q0),
        .mem_reg_0(\empty_24_reg_416_reg_n_0_[0] ),
        .output_r_addr_1_reg_473(output_r_addr_1_reg_473),
        .\output_r_addr_1_reg_473_reg[0] (output_r_address0),
        .output_r_addr_reg_458(output_r_addr_reg_458),
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
        .zext_ln25_reg_441(zext_ln25_reg_441));
  FDRE \conv4_reg_406_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(numOfInNeurons_read_reg_369[0]),
        .Q(numOfInNeurons_cast1_reg_411[0]),
        .R(1'b0));
  FDRE \conv4_reg_406_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(numOfInNeurons_read_reg_369[10]),
        .Q(numOfInNeurons_cast1_reg_411[10]),
        .R(1'b0));
  FDRE \conv4_reg_406_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(numOfInNeurons_read_reg_369[11]),
        .Q(numOfInNeurons_cast1_reg_411[11]),
        .R(1'b0));
  FDRE \conv4_reg_406_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(numOfInNeurons_read_reg_369[12]),
        .Q(numOfInNeurons_cast1_reg_411[12]),
        .R(1'b0));
  FDRE \conv4_reg_406_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(numOfInNeurons_read_reg_369[13]),
        .Q(numOfInNeurons_cast1_reg_411[13]),
        .R(1'b0));
  FDRE \conv4_reg_406_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(numOfInNeurons_read_reg_369[14]),
        .Q(numOfInNeurons_cast1_reg_411[14]),
        .R(1'b0));
  FDRE \conv4_reg_406_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(numOfInNeurons_read_reg_369[15]),
        .Q(numOfInNeurons_cast1_reg_411[15]),
        .R(1'b0));
  FDRE \conv4_reg_406_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(numOfInNeurons_read_reg_369[1]),
        .Q(numOfInNeurons_cast1_reg_411[1]),
        .R(1'b0));
  FDRE \conv4_reg_406_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(numOfInNeurons_read_reg_369[2]),
        .Q(numOfInNeurons_cast1_reg_411[2]),
        .R(1'b0));
  FDRE \conv4_reg_406_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(numOfInNeurons_read_reg_369[3]),
        .Q(numOfInNeurons_cast1_reg_411[3]),
        .R(1'b0));
  FDRE \conv4_reg_406_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(numOfInNeurons_read_reg_369[4]),
        .Q(numOfInNeurons_cast1_reg_411[4]),
        .R(1'b0));
  FDRE \conv4_reg_406_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(numOfInNeurons_read_reg_369[5]),
        .Q(numOfInNeurons_cast1_reg_411[5]),
        .R(1'b0));
  FDRE \conv4_reg_406_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(numOfInNeurons_read_reg_369[6]),
        .Q(numOfInNeurons_cast1_reg_411[6]),
        .R(1'b0));
  FDRE \conv4_reg_406_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(numOfInNeurons_read_reg_369[7]),
        .Q(numOfInNeurons_cast1_reg_411[7]),
        .R(1'b0));
  FDRE \conv4_reg_406_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(numOfInNeurons_read_reg_369[8]),
        .Q(numOfInNeurons_cast1_reg_411[8]),
        .R(1'b0));
  FDRE \conv4_reg_406_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(numOfInNeurons_read_reg_369[9]),
        .Q(numOfInNeurons_cast1_reg_411[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4444444F44444444)) 
    \empty_24_reg_416[0]_i_1 
       (.I0(ap_CS_fsm_state10),
        .I1(\empty_24_reg_416_reg_n_0_[0] ),
        .I2(\empty_24_reg_416[0]_i_2_n_0 ),
        .I3(\empty_24_reg_416[0]_i_3_n_0 ),
        .I4(\empty_24_reg_416[0]_i_4_n_0 ),
        .I5(\empty_24_reg_416[0]_i_5_n_0 ),
        .O(\empty_24_reg_416[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \empty_24_reg_416[0]_i_2 
       (.I0(numOfInNeurons_read_reg_369[2]),
        .I1(numOfInNeurons_read_reg_369[9]),
        .I2(numOfInNeurons_read_reg_369[11]),
        .O(\empty_24_reg_416[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \empty_24_reg_416[0]_i_3 
       (.I0(numOfInNeurons_read_reg_369[14]),
        .I1(numOfInNeurons_read_reg_369[10]),
        .I2(numOfInNeurons_read_reg_369[12]),
        .I3(numOfInNeurons_read_reg_369[3]),
        .O(\empty_24_reg_416[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \empty_24_reg_416[0]_i_4 
       (.I0(numOfInNeurons_read_reg_369[13]),
        .I1(numOfInNeurons_read_reg_369[7]),
        .I2(numOfInNeurons_read_reg_369[0]),
        .I3(numOfInNeurons_read_reg_369[4]),
        .O(\empty_24_reg_416[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \empty_24_reg_416[0]_i_5 
       (.I0(numOfInNeurons_read_reg_369[1]),
        .I1(numOfInNeurons_read_reg_369[6]),
        .I2(numOfInNeurons_read_reg_369[5]),
        .I3(numOfInNeurons_read_reg_369[15]),
        .I4(numOfInNeurons_read_reg_369[8]),
        .I5(ap_CS_fsm_state10),
        .O(\empty_24_reg_416[0]_i_5_n_0 ));
  FDRE \empty_24_reg_416_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\empty_24_reg_416[0]_i_1_n_0 ),
        .Q(\empty_24_reg_416_reg_n_0_[0] ),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_gmem_m_axi gmem_m_axi_U
       (.CO(exitcond_fu_110_p2),
        .D({m_axi_gmem_RLAST,m_axi_gmem_RDATA}),
        .E(ap_block_pp0_stage0_subdone),
        .Q(gmem_RVALID),
        .\ap_CS_fsm_reg[11] (outNeurons_fu_108),
        .\ap_CS_fsm_reg[11]_0 (\empty_24_reg_416_reg_n_0_[0] ),
        .\ap_CS_fsm_reg[19] (gmem_m_axi_U_n_74),
        .\ap_CS_fsm_reg[1] (\ap_CS_fsm[1]_i_5_n_0 ),
        .\ap_CS_fsm_reg[20] (gmem_m_axi_U_n_73),
        .\ap_CS_fsm_reg[5] (gmem_m_axi_U_n_72),
        .ap_NS_fsm__0({ap_NS_fsm__0[12:11],ap_NS_fsm__0[2]}),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone_0),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter1_0(ap_enable_reg_pp0_iter1_1),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\could_multi_bursts.ARVALID_Dummy_reg (m_axi_gmem_ARVALID),
        .\could_multi_bursts.arlen_buf_reg[3] (\^m_axi_gmem_ARLEN ),
        .\data_p1_reg[15] (gmem_RDATA),
        .\data_p1_reg[79] (grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_m_axi_gmem_ARLEN),
        .\data_p1_reg[79]_0 (numOfInNeurons_cast1_reg_411),
        .\data_p2_reg[62] (grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_m_axi_gmem_ARADDR),
        .\data_p2_reg[62]_0 (p_cast_fu_317_p4),
        .\data_p2_reg[62]_1 (trunc_ln_reg_390),
        .\data_p2_reg[64] ({ap_CS_fsm_state22,ap_CS_fsm_state21,ap_CS_fsm_state20,ap_CS_fsm_state19,ap_CS_fsm_state18,\ap_CS_fsm_reg_n_0_[14] ,ap_CS_fsm_state12,ap_CS_fsm_state11,\ap_CS_fsm_reg_n_0_[6] ,\ap_CS_fsm_reg_n_0_[5] ,ap_CS_fsm_state2,ap_CS_fsm_state1}),
        .\data_p2_reg[79] (\bus_read/rs_rreq/load_p2 ),
        .full_n_reg(m_axi_gmem_RREADY),
        .gmem_ARREADY(gmem_ARREADY),
        .gmem_ARVALID(gmem_ARVALID),
        .gmem_RREADY(gmem_RREADY),
        .grp_runLayer_Pipeline_2_fu_201_ap_start_reg(grp_runLayer_Pipeline_2_fu_201_ap_start_reg),
        .m_axi_gmem_ARADDR(\^m_axi_gmem_ARADDR ),
        .m_axi_gmem_ARREADY(m_axi_gmem_ARREADY),
        .m_axi_gmem_RRESP(m_axi_gmem_RRESP),
        .m_axi_gmem_RVALID(m_axi_gmem_RVALID),
        .\state_reg[0] (gmem_m_axi_U_n_75));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_runLayer_Pipeline_1 grp_runLayer_Pipeline_1_fu_193
       (.ADDRARDADDR(tmp_bias_address0),
        .D(ap_NS_fsm__0[10:9]),
        .Q(gmem_RVALID),
        .WEA(tmp_bias_we0),
        .\ap_CS_fsm_reg[10] ({ap_CS_fsm_state25,ap_CS_fsm_state23,ap_CS_fsm_state10,ap_CS_fsm_state9}),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone_0),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\gmem_addr_read_reg_136_reg[15]_0 (grp_runLayer_Pipeline_1_fu_193_tmp_bias_d0),
        .grp_runLayer_Pipeline_1_fu_193_ap_start_reg(grp_runLayer_Pipeline_1_fu_193_ap_start_reg),
        .grp_runLayer_Pipeline_1_fu_193_ap_start_reg_reg(grp_runLayer_Pipeline_1_fu_193_n_12),
        .m_axi_gmem_RDATA(gmem_RDATA),
        .tmp_bias_ce0(tmp_bias_ce0),
        .zext_ln25_reg_441(zext_ln25_reg_441));
  FDRE #(
    .INIT(1'b0)) 
    grp_runLayer_Pipeline_1_fu_193_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_runLayer_Pipeline_1_fu_193_n_12),
        .Q(grp_runLayer_Pipeline_1_fu_193_ap_start_reg),
        .R(ap_rst_n_inv));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_runLayer_Pipeline_2 grp_runLayer_Pipeline_2_fu_201
       (.CO(exitcond_fu_110_p2),
        .D(ap_NS_fsm__0[20:19]),
        .E(ap_block_pp0_stage0_subdone),
        .\FSM_sequential_state[1]_i_2 (gmem_m_axi_U_n_74),
        .Q(gmem_RVALID),
        .S({\loop_index_fu_48[0]_i_33_n_0 ,\loop_index_fu_48[0]_i_34_n_0 }),
        .WEA(tmp_weights_we0),
        .\ap_CS_fsm_reg[23] (grp_runLayer_Pipeline_2_fu_201_n_48),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1_1),
        .ap_enable_reg_pp0_iter1_0(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter1_reg_0(grp_runLayer_Pipeline_2_fu_201_n_51),
        .ap_enable_reg_pp0_iter1_reg_1({\loop_index_fu_48[0]_i_7_n_0 ,\loop_index_fu_48[0]_i_8_n_0 }),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\conv5_cast_reg_127_reg[15]_0 (numOfInNeurons_read_reg_369),
        .\gmem_addr_read_reg_142_reg[15]_0 (grp_runLayer_Pipeline_2_fu_201_tmp_weights_d0),
        .\gmem_addr_read_reg_142_reg[15]_1 (gmem_RDATA),
        .grp_runLayer_Pipeline_2_fu_201_ap_start_reg(grp_runLayer_Pipeline_2_fu_201_ap_start_reg),
        .\int_output_r_shift0_reg[0] (output_r_address0),
        .\int_output_r_shift0_reg[0]_0 (control_s_axi_U_n_1),
        .\loop_index_fu_48_reg[0]_i_4_0 ({\loop_index_fu_48[0]_i_10_n_0 ,\loop_index_fu_48[0]_i_11_n_0 ,\loop_index_fu_48[0]_i_12_n_0 ,\loop_index_fu_48[0]_i_13_n_0 }),
        .\loop_index_fu_48_reg[0]_i_6_0 ({\loop_index_fu_48[0]_i_17_n_0 ,\loop_index_fu_48[0]_i_18_n_0 ,\loop_index_fu_48[0]_i_19_n_0 ,\loop_index_fu_48[0]_i_20_n_0 }),
        .\loop_index_fu_48_reg[0]_i_9_0 ({\loop_index_fu_48[0]_i_25_n_0 ,\loop_index_fu_48[0]_i_26_n_0 ,\loop_index_fu_48[0]_i_27_n_0 ,\loop_index_fu_48[0]_i_28_n_0 }),
        .\loop_index_fu_48_reg[63]_0 (empty_fu_104_p2),
        .\loop_index_load_reg_137_reg[6]_0 (grp_runLayer_Pipeline_2_fu_201_tmp_weights_address0),
        .mem_reg({ap_CS_fsm_state25,ap_CS_fsm_state24,ap_CS_fsm_state23,ap_CS_fsm_state20,ap_CS_fsm_state19,ap_CS_fsm_state10,ap_CS_fsm_state9}),
        .output_r_ce0(output_r_ce0));
  FDRE #(
    .INIT(1'b0)) 
    grp_runLayer_Pipeline_2_fu_201_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(gmem_m_axi_U_n_75),
        .Q(grp_runLayer_Pipeline_2_fu_201_ap_start_reg),
        .R(ap_rst_n_inv));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_runLayer_Pipeline_VITIS_LOOP_29_2 grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210
       (.ADDRARDADDR(tmp_weights_address0),
        .D(ap_NS_fsm__0[12]),
        .DIBDI(output_r_d0),
        .DOADO(tmp_weights_q0),
        .\FSM_sequential_state_reg[1] (gmem_m_axi_U_n_73),
        .\FSM_sequential_state_reg[1]_0 (grp_runLayer_Pipeline_2_fu_201_n_51),
        .Q(gmem_RVALID),
        .WEA(tmp_weights_we0),
        .add_ln33_fu_349_p2(add_ln33_fu_349_p2),
        .\ap_CS_fsm_reg[22] (\empty_24_reg_416_reg_n_0_[0] ),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\conv205_fu_72_reg[15]_0 (output_r_load_reg_463),
        .\conv4_cast_reg_233_reg[15]_0 (numOfInNeurons_read_reg_369),
        .\empty_24_reg_416_reg[0] (ap_NS_fsm__0[22:21]),
        .gmem_ARREADY(gmem_ARREADY),
        .gmem_ARVALID(gmem_ARVALID),
        .gmem_RREADY(gmem_RREADY),
        .grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg_reg(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_n_29),
        .m_axi_gmem_ARADDR(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_m_axi_gmem_ARADDR),
        .m_axi_gmem_ARLEN(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_m_axi_gmem_ARLEN),
        .mem_reg({ap_CS_fsm_state25,ap_CS_fsm_state22,ap_CS_fsm_state21,ap_CS_fsm_state12,ap_CS_fsm_state2}),
        .p_reg_reg(gmem_RDATA),
        .ram_reg(grp_runLayer_Pipeline_2_fu_201_tmp_weights_address0),
        .s_ready_t_reg(\bus_read/rs_rreq/load_p2 ),
        .\sext_ln29_cast_reg_238_reg[62]_0 (trunc_ln1_reg_396),
        .tmp_weights_ce0(tmp_weights_ce0));
  FDRE #(
    .INIT(1'b0)) 
    grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_n_29),
        .Q(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h01)) 
    \loop_index_fu_48[0]_i_10 
       (.I0(empty_fu_104_p2[59]),
        .I1(empty_fu_104_p2[58]),
        .I2(empty_fu_104_p2[57]),
        .O(\loop_index_fu_48[0]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \loop_index_fu_48[0]_i_11 
       (.I0(empty_fu_104_p2[56]),
        .I1(empty_fu_104_p2[55]),
        .I2(empty_fu_104_p2[54]),
        .O(\loop_index_fu_48[0]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \loop_index_fu_48[0]_i_12 
       (.I0(empty_fu_104_p2[53]),
        .I1(empty_fu_104_p2[52]),
        .I2(empty_fu_104_p2[51]),
        .O(\loop_index_fu_48[0]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \loop_index_fu_48[0]_i_13 
       (.I0(empty_fu_104_p2[50]),
        .I1(empty_fu_104_p2[49]),
        .I2(empty_fu_104_p2[48]),
        .O(\loop_index_fu_48[0]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \loop_index_fu_48[0]_i_17 
       (.I0(empty_fu_104_p2[47]),
        .I1(empty_fu_104_p2[46]),
        .I2(empty_fu_104_p2[45]),
        .O(\loop_index_fu_48[0]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \loop_index_fu_48[0]_i_18 
       (.I0(empty_fu_104_p2[44]),
        .I1(empty_fu_104_p2[43]),
        .I2(empty_fu_104_p2[42]),
        .O(\loop_index_fu_48[0]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \loop_index_fu_48[0]_i_19 
       (.I0(empty_fu_104_p2[41]),
        .I1(empty_fu_104_p2[40]),
        .I2(empty_fu_104_p2[39]),
        .O(\loop_index_fu_48[0]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \loop_index_fu_48[0]_i_20 
       (.I0(empty_fu_104_p2[38]),
        .I1(empty_fu_104_p2[37]),
        .I2(empty_fu_104_p2[36]),
        .O(\loop_index_fu_48[0]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \loop_index_fu_48[0]_i_25 
       (.I0(empty_fu_104_p2[35]),
        .I1(empty_fu_104_p2[34]),
        .I2(empty_fu_104_p2[33]),
        .O(\loop_index_fu_48[0]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \loop_index_fu_48[0]_i_26 
       (.I0(empty_fu_104_p2[32]),
        .I1(empty_fu_104_p2[31]),
        .I2(empty_fu_104_p2[30]),
        .O(\loop_index_fu_48[0]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \loop_index_fu_48[0]_i_27 
       (.I0(empty_fu_104_p2[29]),
        .I1(empty_fu_104_p2[28]),
        .I2(empty_fu_104_p2[27]),
        .O(\loop_index_fu_48[0]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \loop_index_fu_48[0]_i_28 
       (.I0(empty_fu_104_p2[26]),
        .I1(empty_fu_104_p2[25]),
        .I2(empty_fu_104_p2[24]),
        .O(\loop_index_fu_48[0]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \loop_index_fu_48[0]_i_33 
       (.I0(empty_fu_104_p2[23]),
        .I1(empty_fu_104_p2[22]),
        .I2(empty_fu_104_p2[21]),
        .O(\loop_index_fu_48[0]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \loop_index_fu_48[0]_i_34 
       (.I0(empty_fu_104_p2[20]),
        .I1(empty_fu_104_p2[19]),
        .I2(empty_fu_104_p2[18]),
        .O(\loop_index_fu_48[0]_i_34_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \loop_index_fu_48[0]_i_7 
       (.I0(empty_fu_104_p2[63]),
        .O(\loop_index_fu_48[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \loop_index_fu_48[0]_i_8 
       (.I0(empty_fu_104_p2[62]),
        .I1(empty_fu_104_p2[61]),
        .I2(empty_fu_104_p2[60]),
        .O(\loop_index_fu_48[0]_i_8_n_0 ));
  FDRE \numOfInNeurons_read_reg_369_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[0]),
        .Q(numOfInNeurons_read_reg_369[0]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_369_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[10]),
        .Q(numOfInNeurons_read_reg_369[10]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_369_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[11]),
        .Q(numOfInNeurons_read_reg_369[11]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_369_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[12]),
        .Q(numOfInNeurons_read_reg_369[12]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_369_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[13]),
        .Q(numOfInNeurons_read_reg_369[13]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_369_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[14]),
        .Q(numOfInNeurons_read_reg_369[14]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_369_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[15]),
        .Q(numOfInNeurons_read_reg_369[15]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_369_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[1]),
        .Q(numOfInNeurons_read_reg_369[1]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_369_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[2]),
        .Q(numOfInNeurons_read_reg_369[2]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_369_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[3]),
        .Q(numOfInNeurons_read_reg_369[3]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_369_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[4]),
        .Q(numOfInNeurons_read_reg_369[4]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_369_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[5]),
        .Q(numOfInNeurons_read_reg_369[5]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_369_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[6]),
        .Q(numOfInNeurons_read_reg_369[6]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_369_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[7]),
        .Q(numOfInNeurons_read_reg_369[7]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_369_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[8]),
        .Q(numOfInNeurons_read_reg_369[8]),
        .R(1'b0));
  FDRE \numOfInNeurons_read_reg_369_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(numOfInNeurons[9]),
        .Q(numOfInNeurons_read_reg_369[9]),
        .R(1'b0));
  FDRE \outNeurons_fu_108_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state23),
        .D(add_ln25_reg_431[0]),
        .Q(outNeurons_fu_108[0]),
        .R(ap_NS_fsm14_out));
  FDRE \outNeurons_fu_108_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state23),
        .D(add_ln25_reg_431[1]),
        .Q(outNeurons_fu_108[1]),
        .R(ap_NS_fsm14_out));
  (* SOFT_HLUTNM = "soft_lutpair270" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_addr_1_reg_473[0]_i_1 
       (.I0(zext_ln25_reg_441[0]),
        .I1(ap_CS_fsm_state23),
        .I2(output_r_addr_1_reg_473[0]),
        .O(\output_r_addr_1_reg_473[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair269" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_addr_1_reg_473[1]_i_1 
       (.I0(zext_ln25_reg_441[1]),
        .I1(ap_CS_fsm_state23),
        .I2(output_r_addr_1_reg_473[1]),
        .O(\output_r_addr_1_reg_473[1]_i_1_n_0 ));
  FDRE \output_r_addr_1_reg_473_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\output_r_addr_1_reg_473[0]_i_1_n_0 ),
        .Q(output_r_addr_1_reg_473[0]),
        .R(1'b0));
  FDRE \output_r_addr_1_reg_473_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\output_r_addr_1_reg_473[1]_i_1_n_0 ),
        .Q(output_r_addr_1_reg_473[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair270" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_addr_reg_458[0]_i_1 
       (.I0(zext_ln25_reg_441[0]),
        .I1(ap_CS_fsm_state20),
        .I2(output_r_addr_reg_458[0]),
        .O(\output_r_addr_reg_458[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair269" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_addr_reg_458[1]_i_1 
       (.I0(zext_ln25_reg_441[1]),
        .I1(ap_CS_fsm_state20),
        .I2(output_r_addr_reg_458[1]),
        .O(\output_r_addr_reg_458[1]_i_1_n_0 ));
  FDRE \output_r_addr_reg_458_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\output_r_addr_reg_458[0]_i_1_n_0 ),
        .Q(output_r_addr_reg_458[0]),
        .R(1'b0));
  FDRE \output_r_addr_reg_458_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\output_r_addr_reg_458[1]_i_1_n_0 ),
        .Q(output_r_addr_reg_458[1]),
        .R(1'b0));
  FDRE \output_r_load_reg_463_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state21),
        .D(output_r_q0[0]),
        .Q(output_r_load_reg_463[0]),
        .R(1'b0));
  FDRE \output_r_load_reg_463_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state21),
        .D(output_r_q0[10]),
        .Q(output_r_load_reg_463[10]),
        .R(1'b0));
  FDRE \output_r_load_reg_463_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state21),
        .D(output_r_q0[11]),
        .Q(output_r_load_reg_463[11]),
        .R(1'b0));
  FDRE \output_r_load_reg_463_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state21),
        .D(output_r_q0[12]),
        .Q(output_r_load_reg_463[12]),
        .R(1'b0));
  FDRE \output_r_load_reg_463_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state21),
        .D(output_r_q0[13]),
        .Q(output_r_load_reg_463[13]),
        .R(1'b0));
  FDRE \output_r_load_reg_463_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state21),
        .D(output_r_q0[14]),
        .Q(output_r_load_reg_463[14]),
        .R(1'b0));
  FDRE \output_r_load_reg_463_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state21),
        .D(output_r_q0[15]),
        .Q(output_r_load_reg_463[15]),
        .R(1'b0));
  FDRE \output_r_load_reg_463_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state21),
        .D(output_r_q0[1]),
        .Q(output_r_load_reg_463[1]),
        .R(1'b0));
  FDRE \output_r_load_reg_463_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state21),
        .D(output_r_q0[2]),
        .Q(output_r_load_reg_463[2]),
        .R(1'b0));
  FDRE \output_r_load_reg_463_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state21),
        .D(output_r_q0[3]),
        .Q(output_r_load_reg_463[3]),
        .R(1'b0));
  FDRE \output_r_load_reg_463_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state21),
        .D(output_r_q0[4]),
        .Q(output_r_load_reg_463[4]),
        .R(1'b0));
  FDRE \output_r_load_reg_463_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state21),
        .D(output_r_q0[5]),
        .Q(output_r_load_reg_463[5]),
        .R(1'b0));
  FDRE \output_r_load_reg_463_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state21),
        .D(output_r_q0[6]),
        .Q(output_r_load_reg_463[6]),
        .R(1'b0));
  FDRE \output_r_load_reg_463_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state21),
        .D(output_r_q0[7]),
        .Q(output_r_load_reg_463[7]),
        .R(1'b0));
  FDRE \output_r_load_reg_463_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state21),
        .D(output_r_q0[8]),
        .Q(output_r_load_reg_463[8]),
        .R(1'b0));
  FDRE \output_r_load_reg_463_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state21),
        .D(output_r_q0[9]),
        .Q(output_r_load_reg_463[9]),
        .R(1'b0));
  FDRE \phi_mul_fu_104_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state23),
        .D(add_ln25_1_reg_423[0]),
        .Q(zext_ln27_fu_305_p1[1]),
        .R(ap_NS_fsm14_out));
  FDRE \phi_mul_fu_104_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state23),
        .D(add_ln25_1_reg_423[10]),
        .Q(zext_ln27_fu_305_p1[11]),
        .R(ap_NS_fsm14_out));
  FDRE \phi_mul_fu_104_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state23),
        .D(add_ln25_1_reg_423[11]),
        .Q(zext_ln27_fu_305_p1[12]),
        .R(ap_NS_fsm14_out));
  FDRE \phi_mul_fu_104_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state23),
        .D(add_ln25_1_reg_423[12]),
        .Q(zext_ln27_fu_305_p1[13]),
        .R(ap_NS_fsm14_out));
  FDRE \phi_mul_fu_104_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state23),
        .D(add_ln25_1_reg_423[13]),
        .Q(zext_ln27_fu_305_p1[14]),
        .R(ap_NS_fsm14_out));
  FDRE \phi_mul_fu_104_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state23),
        .D(add_ln25_1_reg_423[14]),
        .Q(zext_ln27_fu_305_p1[15]),
        .R(ap_NS_fsm14_out));
  FDRE \phi_mul_fu_104_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state23),
        .D(add_ln25_1_reg_423[15]),
        .Q(zext_ln27_fu_305_p1[16]),
        .R(ap_NS_fsm14_out));
  FDRE \phi_mul_fu_104_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state23),
        .D(add_ln25_1_reg_423[16]),
        .Q(zext_ln27_fu_305_p1[17]),
        .R(ap_NS_fsm14_out));
  FDRE \phi_mul_fu_104_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state23),
        .D(add_ln25_1_reg_423[1]),
        .Q(zext_ln27_fu_305_p1[2]),
        .R(ap_NS_fsm14_out));
  FDRE \phi_mul_fu_104_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state23),
        .D(add_ln25_1_reg_423[2]),
        .Q(zext_ln27_fu_305_p1[3]),
        .R(ap_NS_fsm14_out));
  FDRE \phi_mul_fu_104_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state23),
        .D(add_ln25_1_reg_423[3]),
        .Q(zext_ln27_fu_305_p1[4]),
        .R(ap_NS_fsm14_out));
  FDRE \phi_mul_fu_104_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state23),
        .D(add_ln25_1_reg_423[4]),
        .Q(zext_ln27_fu_305_p1[5]),
        .R(ap_NS_fsm14_out));
  FDRE \phi_mul_fu_104_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state23),
        .D(add_ln25_1_reg_423[5]),
        .Q(zext_ln27_fu_305_p1[6]),
        .R(ap_NS_fsm14_out));
  FDRE \phi_mul_fu_104_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state23),
        .D(add_ln25_1_reg_423[6]),
        .Q(zext_ln27_fu_305_p1[7]),
        .R(ap_NS_fsm14_out));
  FDRE \phi_mul_fu_104_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state23),
        .D(add_ln25_1_reg_423[7]),
        .Q(zext_ln27_fu_305_p1[8]),
        .R(ap_NS_fsm14_out));
  FDRE \phi_mul_fu_104_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state23),
        .D(add_ln25_1_reg_423[8]),
        .Q(zext_ln27_fu_305_p1[9]),
        .R(ap_NS_fsm14_out));
  FDRE \phi_mul_fu_104_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state23),
        .D(add_ln25_1_reg_423[9]),
        .Q(zext_ln27_fu_305_p1[10]),
        .R(ap_NS_fsm14_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_tmp_weights_RAM_AUTO_1R1W tmp_bias_U
       (.ADDRARDADDR(tmp_bias_address0),
        .DOADO(tmp_bias_load_reg_478),
        .Q(ap_CS_fsm_state24),
        .WEA(tmp_bias_we0),
        .ap_clk(ap_clk),
        .ram_reg_0(grp_runLayer_Pipeline_1_fu_193_tmp_bias_d0),
        .tmp_bias_ce0(tmp_bias_ce0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_tmp_weights_RAM_AUTO_1R1W_0 tmp_weights_U
       (.ADDRARDADDR(tmp_weights_address0),
        .DOADO(tmp_weights_q0),
        .WEA(tmp_weights_we0),
        .ap_clk(ap_clk),
        .ram_reg_0(grp_runLayer_Pipeline_2_fu_201_tmp_weights_d0),
        .tmp_weights_ce0(tmp_weights_ce0));
  FDRE \trunc_ln1_reg_396_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[1]),
        .Q(trunc_ln1_reg_396[0]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[11]),
        .Q(trunc_ln1_reg_396[10]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[12]),
        .Q(trunc_ln1_reg_396[11]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[13]),
        .Q(trunc_ln1_reg_396[12]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[14]),
        .Q(trunc_ln1_reg_396[13]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[15]),
        .Q(trunc_ln1_reg_396[14]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[16]),
        .Q(trunc_ln1_reg_396[15]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[17]),
        .Q(trunc_ln1_reg_396[16]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[18]),
        .Q(trunc_ln1_reg_396[17]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[19]),
        .Q(trunc_ln1_reg_396[18]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[20]),
        .Q(trunc_ln1_reg_396[19]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[2]),
        .Q(trunc_ln1_reg_396[1]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[21]),
        .Q(trunc_ln1_reg_396[20]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[22]),
        .Q(trunc_ln1_reg_396[21]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[22] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[23]),
        .Q(trunc_ln1_reg_396[22]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[23] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[24]),
        .Q(trunc_ln1_reg_396[23]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[24] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[25]),
        .Q(trunc_ln1_reg_396[24]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[25] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[26]),
        .Q(trunc_ln1_reg_396[25]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[26] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[27]),
        .Q(trunc_ln1_reg_396[26]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[27] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[28]),
        .Q(trunc_ln1_reg_396[27]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[28] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[29]),
        .Q(trunc_ln1_reg_396[28]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[29] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[30]),
        .Q(trunc_ln1_reg_396[29]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[3]),
        .Q(trunc_ln1_reg_396[2]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[30] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[31]),
        .Q(trunc_ln1_reg_396[30]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[31] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[32]),
        .Q(trunc_ln1_reg_396[31]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[32] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[33]),
        .Q(trunc_ln1_reg_396[32]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[33] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[34]),
        .Q(trunc_ln1_reg_396[33]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[34] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[35]),
        .Q(trunc_ln1_reg_396[34]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[35] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[36]),
        .Q(trunc_ln1_reg_396[35]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[36] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[37]),
        .Q(trunc_ln1_reg_396[36]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[37] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[38]),
        .Q(trunc_ln1_reg_396[37]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[38] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[39]),
        .Q(trunc_ln1_reg_396[38]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[39] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[40]),
        .Q(trunc_ln1_reg_396[39]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[4]),
        .Q(trunc_ln1_reg_396[3]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[40] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[41]),
        .Q(trunc_ln1_reg_396[40]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[41] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[42]),
        .Q(trunc_ln1_reg_396[41]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[42] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[43]),
        .Q(trunc_ln1_reg_396[42]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[43] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[44]),
        .Q(trunc_ln1_reg_396[43]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[44] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[45]),
        .Q(trunc_ln1_reg_396[44]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[45] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[46]),
        .Q(trunc_ln1_reg_396[45]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[46] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[47]),
        .Q(trunc_ln1_reg_396[46]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[47] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[48]),
        .Q(trunc_ln1_reg_396[47]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[48] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[49]),
        .Q(trunc_ln1_reg_396[48]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[49] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[50]),
        .Q(trunc_ln1_reg_396[49]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[5]),
        .Q(trunc_ln1_reg_396[4]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[50] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[51]),
        .Q(trunc_ln1_reg_396[50]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[51] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[52]),
        .Q(trunc_ln1_reg_396[51]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[52] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[53]),
        .Q(trunc_ln1_reg_396[52]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[53] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[54]),
        .Q(trunc_ln1_reg_396[53]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[54] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[55]),
        .Q(trunc_ln1_reg_396[54]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[55] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[56]),
        .Q(trunc_ln1_reg_396[55]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[56] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[57]),
        .Q(trunc_ln1_reg_396[56]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[57] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[58]),
        .Q(trunc_ln1_reg_396[57]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[58] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[59]),
        .Q(trunc_ln1_reg_396[58]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[59] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[60]),
        .Q(trunc_ln1_reg_396[59]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[6]),
        .Q(trunc_ln1_reg_396[5]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[60] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[61]),
        .Q(trunc_ln1_reg_396[60]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[61] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[62]),
        .Q(trunc_ln1_reg_396[61]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[62] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[63]),
        .Q(trunc_ln1_reg_396[62]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[7]),
        .Q(trunc_ln1_reg_396[6]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[8]),
        .Q(trunc_ln1_reg_396[7]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[9]),
        .Q(trunc_ln1_reg_396[8]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_396_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(input_r[10]),
        .Q(trunc_ln1_reg_396[9]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[1]),
        .Q(trunc_ln_reg_390[0]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[11]),
        .Q(trunc_ln_reg_390[10]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[12]),
        .Q(trunc_ln_reg_390[11]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[13]),
        .Q(trunc_ln_reg_390[12]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[14]),
        .Q(trunc_ln_reg_390[13]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[15]),
        .Q(trunc_ln_reg_390[14]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[16]),
        .Q(trunc_ln_reg_390[15]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[17]),
        .Q(trunc_ln_reg_390[16]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[18]),
        .Q(trunc_ln_reg_390[17]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[19]),
        .Q(trunc_ln_reg_390[18]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[20]),
        .Q(trunc_ln_reg_390[19]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[2]),
        .Q(trunc_ln_reg_390[1]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[21]),
        .Q(trunc_ln_reg_390[20]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[22]),
        .Q(trunc_ln_reg_390[21]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[22] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[23]),
        .Q(trunc_ln_reg_390[22]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[23] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[24]),
        .Q(trunc_ln_reg_390[23]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[24] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[25]),
        .Q(trunc_ln_reg_390[24]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[25] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[26]),
        .Q(trunc_ln_reg_390[25]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[26] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[27]),
        .Q(trunc_ln_reg_390[26]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[27] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[28]),
        .Q(trunc_ln_reg_390[27]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[28] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[29]),
        .Q(trunc_ln_reg_390[28]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[29] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[30]),
        .Q(trunc_ln_reg_390[29]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[3]),
        .Q(trunc_ln_reg_390[2]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[30] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[31]),
        .Q(trunc_ln_reg_390[30]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[31] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[32]),
        .Q(trunc_ln_reg_390[31]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[32] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[33]),
        .Q(trunc_ln_reg_390[32]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[33] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[34]),
        .Q(trunc_ln_reg_390[33]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[34] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[35]),
        .Q(trunc_ln_reg_390[34]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[35] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[36]),
        .Q(trunc_ln_reg_390[35]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[36] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[37]),
        .Q(trunc_ln_reg_390[36]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[37] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[38]),
        .Q(trunc_ln_reg_390[37]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[38] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[39]),
        .Q(trunc_ln_reg_390[38]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[39] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[40]),
        .Q(trunc_ln_reg_390[39]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[4]),
        .Q(trunc_ln_reg_390[3]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[40] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[41]),
        .Q(trunc_ln_reg_390[40]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[41] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[42]),
        .Q(trunc_ln_reg_390[41]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[42] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[43]),
        .Q(trunc_ln_reg_390[42]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[43] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[44]),
        .Q(trunc_ln_reg_390[43]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[44] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[45]),
        .Q(trunc_ln_reg_390[44]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[45] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[46]),
        .Q(trunc_ln_reg_390[45]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[46] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[47]),
        .Q(trunc_ln_reg_390[46]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[47] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[48]),
        .Q(trunc_ln_reg_390[47]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[48] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[49]),
        .Q(trunc_ln_reg_390[48]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[49] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[50]),
        .Q(trunc_ln_reg_390[49]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[5]),
        .Q(trunc_ln_reg_390[4]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[50] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[51]),
        .Q(trunc_ln_reg_390[50]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[51] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[52]),
        .Q(trunc_ln_reg_390[51]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[52] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[53]),
        .Q(trunc_ln_reg_390[52]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[53] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[54]),
        .Q(trunc_ln_reg_390[53]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[54] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[55]),
        .Q(trunc_ln_reg_390[54]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[55] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[56]),
        .Q(trunc_ln_reg_390[55]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[56] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[57]),
        .Q(trunc_ln_reg_390[56]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[57] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[58]),
        .Q(trunc_ln_reg_390[57]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[58] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[59]),
        .Q(trunc_ln_reg_390[58]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[59] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[60]),
        .Q(trunc_ln_reg_390[59]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[6]),
        .Q(trunc_ln_reg_390[5]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[60] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[61]),
        .Q(trunc_ln_reg_390[60]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[61] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[62]),
        .Q(trunc_ln_reg_390[61]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[62] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[63]),
        .Q(trunc_ln_reg_390[62]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[7]),
        .Q(trunc_ln_reg_390[6]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[8]),
        .Q(trunc_ln_reg_390[7]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[9]),
        .Q(trunc_ln_reg_390[8]),
        .R(1'b0));
  FDRE \trunc_ln_reg_390_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(bias[10]),
        .Q(trunc_ln_reg_390[9]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[0]),
        .Q(weights_read_reg_379[0]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[10]),
        .Q(weights_read_reg_379[10]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[11]),
        .Q(weights_read_reg_379[11]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[12]),
        .Q(weights_read_reg_379[12]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[13]),
        .Q(weights_read_reg_379[13]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[14]),
        .Q(weights_read_reg_379[14]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[15]),
        .Q(weights_read_reg_379[15]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[16]),
        .Q(weights_read_reg_379[16]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[17]),
        .Q(weights_read_reg_379[17]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[18]),
        .Q(weights_read_reg_379[18]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[19]),
        .Q(weights_read_reg_379[19]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[1]),
        .Q(weights_read_reg_379[1]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[20]),
        .Q(weights_read_reg_379[20]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[21]),
        .Q(weights_read_reg_379[21]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[22] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[22]),
        .Q(weights_read_reg_379[22]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[23] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[23]),
        .Q(weights_read_reg_379[23]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[24] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[24]),
        .Q(weights_read_reg_379[24]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[25] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[25]),
        .Q(weights_read_reg_379[25]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[26] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[26]),
        .Q(weights_read_reg_379[26]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[27] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[27]),
        .Q(weights_read_reg_379[27]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[28] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[28]),
        .Q(weights_read_reg_379[28]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[29] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[29]),
        .Q(weights_read_reg_379[29]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[2]),
        .Q(weights_read_reg_379[2]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[30] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[30]),
        .Q(weights_read_reg_379[30]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[31] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[31]),
        .Q(weights_read_reg_379[31]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[32] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[32]),
        .Q(weights_read_reg_379[32]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[33] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[33]),
        .Q(weights_read_reg_379[33]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[34] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[34]),
        .Q(weights_read_reg_379[34]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[35] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[35]),
        .Q(weights_read_reg_379[35]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[36] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[36]),
        .Q(weights_read_reg_379[36]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[37] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[37]),
        .Q(weights_read_reg_379[37]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[38] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[38]),
        .Q(weights_read_reg_379[38]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[39] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[39]),
        .Q(weights_read_reg_379[39]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[3]),
        .Q(weights_read_reg_379[3]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[40] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[40]),
        .Q(weights_read_reg_379[40]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[41] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[41]),
        .Q(weights_read_reg_379[41]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[42] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[42]),
        .Q(weights_read_reg_379[42]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[43] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[43]),
        .Q(weights_read_reg_379[43]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[44] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[44]),
        .Q(weights_read_reg_379[44]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[45] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[45]),
        .Q(weights_read_reg_379[45]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[46] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[46]),
        .Q(weights_read_reg_379[46]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[47] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[47]),
        .Q(weights_read_reg_379[47]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[48] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[48]),
        .Q(weights_read_reg_379[48]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[49] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[49]),
        .Q(weights_read_reg_379[49]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[4]),
        .Q(weights_read_reg_379[4]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[50] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[50]),
        .Q(weights_read_reg_379[50]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[51] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[51]),
        .Q(weights_read_reg_379[51]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[52] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[52]),
        .Q(weights_read_reg_379[52]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[53] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[53]),
        .Q(weights_read_reg_379[53]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[54] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[54]),
        .Q(weights_read_reg_379[54]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[55] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[55]),
        .Q(weights_read_reg_379[55]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[56] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[56]),
        .Q(weights_read_reg_379[56]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[57] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[57]),
        .Q(weights_read_reg_379[57]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[58] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[58]),
        .Q(weights_read_reg_379[58]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[59] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[59]),
        .Q(weights_read_reg_379[59]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[5]),
        .Q(weights_read_reg_379[5]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[60] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[60]),
        .Q(weights_read_reg_379[60]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[61] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[61]),
        .Q(weights_read_reg_379[61]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[62] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[62]),
        .Q(weights_read_reg_379[62]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[63] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[63]),
        .Q(weights_read_reg_379[63]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[6]),
        .Q(weights_read_reg_379[6]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[7]),
        .Q(weights_read_reg_379[7]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[8]),
        .Q(weights_read_reg_379[8]),
        .R(1'b0));
  FDRE \weights_read_reg_379_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(weights[9]),
        .Q(weights_read_reg_379[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair268" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \zext_ln25_reg_441[0]_i_1 
       (.I0(outNeurons_fu_108[0]),
        .I1(ap_CS_fsm_state12),
        .I2(zext_ln25_reg_441[0]),
        .O(\zext_ln25_reg_441[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair268" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \zext_ln25_reg_441[1]_i_1 
       (.I0(outNeurons_fu_108[1]),
        .I1(ap_CS_fsm_state12),
        .I2(zext_ln25_reg_441[1]),
        .O(\zext_ln25_reg_441[1]_i_1_n_0 ));
  FDRE \zext_ln25_reg_441_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\zext_ln25_reg_441[0]_i_1_n_0 ),
        .Q(zext_ln25_reg_441[0]),
        .R(1'b0));
  FDRE \zext_ln25_reg_441_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\zext_ln25_reg_441[1]_i_1_n_0 ),
        .Q(zext_ln25_reg_441[1]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_control_s_axi
   (\output_r_addr_1_reg_473_reg[0] ,
    \int_output_r_shift0_reg[0]_0 ,
    D,
    SR,
    add_ln33_fu_349_p2,
    \int_weights_reg[63]_0 ,
    \int_bias_reg[63]_0 ,
    \int_input_r_reg[63]_0 ,
    \int_numOfInNeurons_reg[15]_0 ,
    s_axi_control_RDATA,
    mem_reg,
    s_axi_control_RVALID,
    s_axi_control_WREADY,
    s_axi_control_ARREADY,
    s_axi_control_AWREADY,
    interrupt,
    s_axi_control_BVALID,
    ap_clk,
    output_r_ce0,
    s_axi_control_WDATA,
    DIBDI,
    ap_rst_n_inv,
    \int_output_r_shift0_reg[0]_1 ,
    Q,
    s_axi_control_WSTRB,
    s_axi_control_ARADDR,
    int_ap_start_reg_0,
    s_axi_control_WVALID,
    mem_reg_0,
    \ap_CS_fsm_reg[1] ,
    \ap_CS_fsm_reg[1]_0 ,
    \ap_CS_fsm_reg[1]_1 ,
    output_r_addr_1_reg_473,
    output_r_addr_reg_458,
    zext_ln25_reg_441,
    DOADO,
    s_axi_control_AWADDR,
    s_axi_control_ARVALID,
    s_axi_control_RREADY,
    s_axi_control_AWVALID,
    s_axi_control_BREADY);
  output [0:0]\output_r_addr_1_reg_473_reg[0] ;
  output \int_output_r_shift0_reg[0]_0 ;
  output [1:0]D;
  output [0:0]SR;
  output [15:0]add_ln33_fu_349_p2;
  output [63:0]\int_weights_reg[63]_0 ;
  output [62:0]\int_bias_reg[63]_0 ;
  output [62:0]\int_input_r_reg[63]_0 ;
  output [15:0]\int_numOfInNeurons_reg[15]_0 ;
  output [31:0]s_axi_control_RDATA;
  output [15:0]mem_reg;
  output s_axi_control_RVALID;
  output s_axi_control_WREADY;
  output s_axi_control_ARREADY;
  output s_axi_control_AWREADY;
  output interrupt;
  output s_axi_control_BVALID;
  input ap_clk;
  input output_r_ce0;
  input [31:0]s_axi_control_WDATA;
  input [15:0]DIBDI;
  input ap_rst_n_inv;
  input \int_output_r_shift0_reg[0]_1 ;
  input [4:0]Q;
  input [3:0]s_axi_control_WSTRB;
  input [6:0]s_axi_control_ARADDR;
  input [1:0]int_ap_start_reg_0;
  input s_axi_control_WVALID;
  input mem_reg_0;
  input \ap_CS_fsm_reg[1] ;
  input \ap_CS_fsm_reg[1]_0 ;
  input \ap_CS_fsm_reg[1]_1 ;
  input [1:0]output_r_addr_1_reg_473;
  input [1:0]output_r_addr_reg_458;
  input [1:0]zext_ln25_reg_441;
  input [15:0]DOADO;
  input [6:0]s_axi_control_AWADDR;
  input s_axi_control_ARVALID;
  input s_axi_control_RREADY;
  input s_axi_control_AWVALID;
  input s_axi_control_BREADY;

  wire [1:0]D;
  wire [15:0]DIBDI;
  wire [15:0]DOADO;
  wire [4:0]Q;
  wire [0:0]SR;
  wire [15:0]add_ln33_fu_349_p2;
  wire \ap_CS_fsm_reg[1] ;
  wire \ap_CS_fsm_reg[1]_0 ;
  wire \ap_CS_fsm_reg[1]_1 ;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_rst_n_inv;
  wire ap_start;
  wire auto_restart_status_i_1_n_0;
  wire auto_restart_status_reg_n_0;
  wire aw_hs;
  wire int_ap_ready;
  wire int_ap_ready_i_1_n_0;
  wire int_ap_ready_i_2_n_0;
  wire int_ap_start1;
  wire int_ap_start5_out;
  wire int_ap_start_i_1_n_0;
  wire [1:0]int_ap_start_reg_0;
  wire int_auto_restart_i_1_n_0;
  wire \int_bias[31]_i_1_n_0 ;
  wire \int_bias[63]_i_1_n_0 ;
  wire [31:0]int_bias_reg0;
  wire [31:0]int_bias_reg01_out;
  wire [62:0]\int_bias_reg[63]_0 ;
  wire \int_bias_reg_n_0_[0] ;
  wire int_gie_i_1_n_0;
  wire int_gie_i_2_n_0;
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
  wire \int_input_r[31]_i_1_n_0 ;
  wire \int_input_r[31]_i_3_n_0 ;
  wire \int_input_r[63]_i_1_n_0 ;
  wire [31:0]int_input_r_reg0;
  wire [31:0]int_input_r_reg06_out;
  wire [62:0]\int_input_r_reg[63]_0 ;
  wire \int_input_r_reg_n_0_[0] ;
  wire int_isr9_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr[5]_i_1_n_0 ;
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
  wire \int_numOfInNeurons[15]_i_3_n_0 ;
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
  wire int_output_r_n_81;
  wire [31:0]int_output_r_q0;
  wire int_output_r_read;
  wire int_output_r_read0;
  wire \int_output_r_shift0_reg[0]_0 ;
  wire \int_output_r_shift0_reg[0]_1 ;
  wire int_output_r_write0;
  wire int_output_r_write_i_1_n_0;
  wire int_output_r_write_reg_n_0;
  wire int_task_ap_done;
  wire int_task_ap_done_i_1_n_0;
  wire int_task_ap_done_i_3_n_0;
  wire \int_weights[31]_i_1_n_0 ;
  wire \int_weights[63]_i_1_n_0 ;
  wire [31:0]int_weights_reg0;
  wire [31:0]int_weights_reg03_out;
  wire [63:0]\int_weights_reg[63]_0 ;
  wire interrupt;
  wire [15:0]mem_reg;
  wire mem_reg_0;
  wire mem_reg_i_40_n_0;
  wire mem_reg_i_41_n_0;
  wire mem_reg_i_42_n_0;
  wire mem_reg_i_47_n_0;
  wire mem_reg_i_48_n_0;
  wire mem_reg_i_49_n_0;
  wire mem_reg_i_50_n_0;
  wire mem_reg_i_55_n_0;
  wire mem_reg_i_56_n_0;
  wire mem_reg_i_57_n_0;
  wire mem_reg_i_58_n_0;
  wire mem_reg_i_63_n_0;
  wire mem_reg_i_64_n_0;
  wire mem_reg_i_65_n_0;
  wire mem_reg_i_66_n_0;
  wire [1:0]output_r_addr_1_reg_473;
  wire [0:0]\output_r_addr_1_reg_473_reg[0] ;
  wire [1:0]output_r_addr_reg_458;
  wire output_r_ce0;
  wire [31:0]p_0_in;
  wire [7:2]p_7_in;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[0]_i_3_n_0 ;
  wire \rdata[0]_i_4_n_0 ;
  wire \rdata[0]_i_5_n_0 ;
  wire \rdata[0]_i_6_n_0 ;
  wire \rdata[10]_i_2_n_0 ;
  wire \rdata[10]_i_3_n_0 ;
  wire \rdata[10]_i_4_n_0 ;
  wire \rdata[11]_i_2_n_0 ;
  wire \rdata[11]_i_3_n_0 ;
  wire \rdata[11]_i_4_n_0 ;
  wire \rdata[12]_i_2_n_0 ;
  wire \rdata[12]_i_3_n_0 ;
  wire \rdata[12]_i_4_n_0 ;
  wire \rdata[13]_i_2_n_0 ;
  wire \rdata[13]_i_3_n_0 ;
  wire \rdata[13]_i_4_n_0 ;
  wire \rdata[14]_i_2_n_0 ;
  wire \rdata[14]_i_3_n_0 ;
  wire \rdata[14]_i_4_n_0 ;
  wire \rdata[15]_i_2_n_0 ;
  wire \rdata[15]_i_3_n_0 ;
  wire \rdata[15]_i_4_n_0 ;
  wire \rdata[15]_i_5_n_0 ;
  wire \rdata[15]_i_6_n_0 ;
  wire \rdata[15]_i_7_n_0 ;
  wire \rdata[16]_i_2_n_0 ;
  wire \rdata[16]_i_3_n_0 ;
  wire \rdata[16]_i_4_n_0 ;
  wire \rdata[17]_i_2_n_0 ;
  wire \rdata[17]_i_3_n_0 ;
  wire \rdata[17]_i_4_n_0 ;
  wire \rdata[18]_i_2_n_0 ;
  wire \rdata[18]_i_3_n_0 ;
  wire \rdata[18]_i_4_n_0 ;
  wire \rdata[19]_i_2_n_0 ;
  wire \rdata[19]_i_3_n_0 ;
  wire \rdata[19]_i_4_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[1]_i_3_n_0 ;
  wire \rdata[1]_i_4_n_0 ;
  wire \rdata[1]_i_5_n_0 ;
  wire \rdata[1]_i_6_n_0 ;
  wire \rdata[20]_i_2_n_0 ;
  wire \rdata[20]_i_3_n_0 ;
  wire \rdata[20]_i_4_n_0 ;
  wire \rdata[21]_i_2_n_0 ;
  wire \rdata[21]_i_3_n_0 ;
  wire \rdata[21]_i_4_n_0 ;
  wire \rdata[22]_i_2_n_0 ;
  wire \rdata[22]_i_3_n_0 ;
  wire \rdata[22]_i_4_n_0 ;
  wire \rdata[23]_i_2_n_0 ;
  wire \rdata[23]_i_3_n_0 ;
  wire \rdata[23]_i_4_n_0 ;
  wire \rdata[24]_i_2_n_0 ;
  wire \rdata[24]_i_3_n_0 ;
  wire \rdata[24]_i_4_n_0 ;
  wire \rdata[25]_i_2_n_0 ;
  wire \rdata[25]_i_3_n_0 ;
  wire \rdata[25]_i_4_n_0 ;
  wire \rdata[26]_i_2_n_0 ;
  wire \rdata[26]_i_3_n_0 ;
  wire \rdata[26]_i_4_n_0 ;
  wire \rdata[27]_i_2_n_0 ;
  wire \rdata[27]_i_3_n_0 ;
  wire \rdata[27]_i_4_n_0 ;
  wire \rdata[28]_i_2_n_0 ;
  wire \rdata[28]_i_3_n_0 ;
  wire \rdata[28]_i_4_n_0 ;
  wire \rdata[29]_i_2_n_0 ;
  wire \rdata[29]_i_3_n_0 ;
  wire \rdata[29]_i_4_n_0 ;
  wire \rdata[2]_i_2_n_0 ;
  wire \rdata[2]_i_3_n_0 ;
  wire \rdata[2]_i_4_n_0 ;
  wire \rdata[2]_i_5_n_0 ;
  wire \rdata[2]_i_6_n_0 ;
  wire \rdata[30]_i_2_n_0 ;
  wire \rdata[30]_i_3_n_0 ;
  wire \rdata[30]_i_4_n_0 ;
  wire \rdata[31]_i_1_n_0 ;
  wire \rdata[31]_i_3_n_0 ;
  wire \rdata[31]_i_5_n_0 ;
  wire \rdata[31]_i_6_n_0 ;
  wire \rdata[31]_i_7_n_0 ;
  wire \rdata[31]_i_8_n_0 ;
  wire \rdata[3]_i_2_n_0 ;
  wire \rdata[3]_i_3_n_0 ;
  wire \rdata[3]_i_4_n_0 ;
  wire \rdata[3]_i_5_n_0 ;
  wire \rdata[3]_i_6_n_0 ;
  wire \rdata[4]_i_2_n_0 ;
  wire \rdata[4]_i_3_n_0 ;
  wire \rdata[4]_i_4_n_0 ;
  wire \rdata[4]_i_5_n_0 ;
  wire \rdata[5]_i_2_n_0 ;
  wire \rdata[5]_i_3_n_0 ;
  wire \rdata[5]_i_4_n_0 ;
  wire \rdata[5]_i_5_n_0 ;
  wire \rdata[5]_i_6_n_0 ;
  wire \rdata[6]_i_2_n_0 ;
  wire \rdata[6]_i_3_n_0 ;
  wire \rdata[6]_i_4_n_0 ;
  wire \rdata[7]_i_2_n_0 ;
  wire \rdata[7]_i_3_n_0 ;
  wire \rdata[7]_i_4_n_0 ;
  wire \rdata[7]_i_5_n_0 ;
  wire \rdata[7]_i_6_n_0 ;
  wire \rdata[7]_i_7_n_0 ;
  wire \rdata[8]_i_2_n_0 ;
  wire \rdata[8]_i_3_n_0 ;
  wire \rdata[8]_i_4_n_0 ;
  wire \rdata[9]_i_2_n_0 ;
  wire \rdata[9]_i_3_n_0 ;
  wire \rdata[9]_i_4_n_0 ;
  wire [1:0]rstate;
  wire \rstate[0]_i_1_n_0 ;
  wire [6:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [6:0]s_axi_control_AWADDR;
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
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire \waddr_reg_n_0_[5] ;
  wire \waddr_reg_n_0_[6] ;
  wire [1:0]wstate;
  wire \wstate[0]_i_1_n_0 ;
  wire \wstate[1]_i_1_n_0 ;
  wire [1:0]zext_ln25_reg_441;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h74444444)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(int_ap_start_reg_0[0]),
        .I4(int_ap_start_reg_0[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h888F8888)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(Q[0]),
        .I1(ap_start),
        .I2(\ap_CS_fsm_reg[1] ),
        .I3(\ap_CS_fsm_reg[1]_0 ),
        .I4(\ap_CS_fsm_reg[1]_1 ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hFBF0)) 
    auto_restart_status_i_1
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(p_7_in[7]),
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
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
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
        .Q(p_7_in[2]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h7555555530000000)) 
    int_ap_ready_i_1
       (.I0(int_ap_ready_i_2_n_0),
        .I1(p_7_in[7]),
        .I2(Q[1]),
        .I3(int_ap_start_reg_0[0]),
        .I4(int_ap_start_reg_0[1]),
        .I5(int_ap_ready),
        .O(int_ap_ready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    int_ap_ready_i_2
       (.I0(\rdata[15]_i_5_n_0 ),
        .I1(s_axi_control_ARADDR[5]),
        .I2(s_axi_control_ARADDR[6]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[3]),
        .I5(s_axi_control_ARADDR[4]),
        .O(int_ap_ready_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_ready_i_1_n_0),
        .Q(int_ap_ready),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFBFFFFFFF8000)) 
    int_ap_start_i_1
       (.I0(p_7_in[7]),
        .I1(int_ap_start_reg_0[1]),
        .I2(int_ap_start_reg_0[0]),
        .I3(Q[1]),
        .I4(int_ap_start5_out),
        .I5(ap_start),
        .O(int_ap_start_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    int_ap_start_i_2
       (.I0(s_axi_control_WDATA[0]),
        .I1(int_ap_start1),
        .O(int_ap_start5_out));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    int_auto_restart_i_1
       (.I0(s_axi_control_WDATA[7]),
        .I1(int_ap_start1),
        .I2(p_7_in[7]),
        .O(int_auto_restart_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    int_auto_restart_i_2
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\int_input_r[31]_i_3_n_0 ),
        .I4(\waddr_reg_n_0_[2] ),
        .I5(s_axi_control_WSTRB[0]),
        .O(int_ap_start1));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(p_7_in[7]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_bias_reg_n_0_[0] ),
        .O(int_bias_reg01_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_bias_reg[63]_0 [9]),
        .O(int_bias_reg01_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_bias_reg[63]_0 [10]),
        .O(int_bias_reg01_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_bias_reg[63]_0 [11]),
        .O(int_bias_reg01_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_bias_reg[63]_0 [12]),
        .O(int_bias_reg01_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_bias_reg[63]_0 [13]),
        .O(int_bias_reg01_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_bias_reg[63]_0 [14]),
        .O(int_bias_reg01_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_bias_reg[63]_0 [15]),
        .O(int_bias_reg01_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_bias_reg[63]_0 [16]),
        .O(int_bias_reg01_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_bias_reg[63]_0 [17]),
        .O(int_bias_reg01_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_bias_reg[63]_0 [18]),
        .O(int_bias_reg01_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_bias_reg[63]_0 [0]),
        .O(int_bias_reg01_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_bias_reg[63]_0 [19]),
        .O(int_bias_reg01_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[21]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_bias_reg[63]_0 [20]),
        .O(int_bias_reg01_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[22]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_bias_reg[63]_0 [21]),
        .O(int_bias_reg01_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[23]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_bias_reg[63]_0 [22]),
        .O(int_bias_reg01_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[24]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_bias_reg[63]_0 [23]),
        .O(int_bias_reg01_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[25]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_bias_reg[63]_0 [24]),
        .O(int_bias_reg01_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[26]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_bias_reg[63]_0 [25]),
        .O(int_bias_reg01_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[27]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_bias_reg[63]_0 [26]),
        .O(int_bias_reg01_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[28]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_bias_reg[63]_0 [27]),
        .O(int_bias_reg01_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[29]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_bias_reg[63]_0 [28]),
        .O(int_bias_reg01_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_bias_reg[63]_0 [1]),
        .O(int_bias_reg01_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[30]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_bias_reg[63]_0 [29]),
        .O(int_bias_reg01_out[30]));
  LUT5 #(
    .INIT(32'h00000080)) 
    \int_bias[31]_i_1 
       (.I0(\waddr_reg_n_0_[5] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\int_input_r[31]_i_3_n_0 ),
        .I4(\waddr_reg_n_0_[3] ),
        .O(\int_bias[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[31]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_bias_reg[63]_0 [30]),
        .O(int_bias_reg01_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[32]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_bias_reg[63]_0 [31]),
        .O(int_bias_reg0[0]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[33]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_bias_reg[63]_0 [32]),
        .O(int_bias_reg0[1]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[34]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_bias_reg[63]_0 [33]),
        .O(int_bias_reg0[2]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[35]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_bias_reg[63]_0 [34]),
        .O(int_bias_reg0[3]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[36]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_bias_reg[63]_0 [35]),
        .O(int_bias_reg0[4]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[37]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_bias_reg[63]_0 [36]),
        .O(int_bias_reg0[5]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[38]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_bias_reg[63]_0 [37]),
        .O(int_bias_reg0[6]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[39]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_bias_reg[63]_0 [38]),
        .O(int_bias_reg0[7]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_bias_reg[63]_0 [2]),
        .O(int_bias_reg01_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[40]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_bias_reg[63]_0 [39]),
        .O(int_bias_reg0[8]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[41]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_bias_reg[63]_0 [40]),
        .O(int_bias_reg0[9]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[42]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_bias_reg[63]_0 [41]),
        .O(int_bias_reg0[10]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[43]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_bias_reg[63]_0 [42]),
        .O(int_bias_reg0[11]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[44]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_bias_reg[63]_0 [43]),
        .O(int_bias_reg0[12]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[45]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_bias_reg[63]_0 [44]),
        .O(int_bias_reg0[13]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[46]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_bias_reg[63]_0 [45]),
        .O(int_bias_reg0[14]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[47]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_bias_reg[63]_0 [46]),
        .O(int_bias_reg0[15]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[48]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_bias_reg[63]_0 [47]),
        .O(int_bias_reg0[16]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[49]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_bias_reg[63]_0 [48]),
        .O(int_bias_reg0[17]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_bias_reg[63]_0 [3]),
        .O(int_bias_reg01_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[50]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_bias_reg[63]_0 [49]),
        .O(int_bias_reg0[18]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[51]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_bias_reg[63]_0 [50]),
        .O(int_bias_reg0[19]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[52]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_bias_reg[63]_0 [51]),
        .O(int_bias_reg0[20]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[53]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_bias_reg[63]_0 [52]),
        .O(int_bias_reg0[21]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[54]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_bias_reg[63]_0 [53]),
        .O(int_bias_reg0[22]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[55]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_bias_reg[63]_0 [54]),
        .O(int_bias_reg0[23]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[56]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_bias_reg[63]_0 [55]),
        .O(int_bias_reg0[24]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[57]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_bias_reg[63]_0 [56]),
        .O(int_bias_reg0[25]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[58]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_bias_reg[63]_0 [57]),
        .O(int_bias_reg0[26]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[59]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_bias_reg[63]_0 [58]),
        .O(int_bias_reg0[27]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_bias_reg[63]_0 [4]),
        .O(int_bias_reg01_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[60]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_bias_reg[63]_0 [59]),
        .O(int_bias_reg0[28]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[61]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_bias_reg[63]_0 [60]),
        .O(int_bias_reg0[29]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[62]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_bias_reg[63]_0 [61]),
        .O(int_bias_reg0[30]));
  LUT4 #(
    .INIT(16'h0008)) 
    \int_bias[63]_i_1 
       (.I0(\waddr_reg_n_0_[5] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\int_ier[5]_i_2_n_0 ),
        .O(\int_bias[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[63]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_bias_reg[63]_0 [62]),
        .O(int_bias_reg0[31]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_bias_reg[63]_0 [5]),
        .O(int_bias_reg01_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_bias_reg[63]_0 [6]),
        .O(int_bias_reg01_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_bias_reg[63]_0 [7]),
        .O(int_bias_reg01_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_bias_reg[63]_0 [8]),
        .O(int_bias_reg01_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[0] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[0]),
        .Q(\int_bias_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[10] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[10]),
        .Q(\int_bias_reg[63]_0 [9]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[11] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[11]),
        .Q(\int_bias_reg[63]_0 [10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[12] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[12]),
        .Q(\int_bias_reg[63]_0 [11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[13] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[13]),
        .Q(\int_bias_reg[63]_0 [12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[14] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[14]),
        .Q(\int_bias_reg[63]_0 [13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[15] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[15]),
        .Q(\int_bias_reg[63]_0 [14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[16] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[16]),
        .Q(\int_bias_reg[63]_0 [15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[17] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[17]),
        .Q(\int_bias_reg[63]_0 [16]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[18] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[18]),
        .Q(\int_bias_reg[63]_0 [17]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[19] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[19]),
        .Q(\int_bias_reg[63]_0 [18]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[1] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[1]),
        .Q(\int_bias_reg[63]_0 [0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[20] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[20]),
        .Q(\int_bias_reg[63]_0 [19]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[21] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[21]),
        .Q(\int_bias_reg[63]_0 [20]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[22] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[22]),
        .Q(\int_bias_reg[63]_0 [21]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[23] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[23]),
        .Q(\int_bias_reg[63]_0 [22]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[24] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[24]),
        .Q(\int_bias_reg[63]_0 [23]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[25] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[25]),
        .Q(\int_bias_reg[63]_0 [24]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[26] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[26]),
        .Q(\int_bias_reg[63]_0 [25]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[27] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[27]),
        .Q(\int_bias_reg[63]_0 [26]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[28] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[28]),
        .Q(\int_bias_reg[63]_0 [27]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[29] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[29]),
        .Q(\int_bias_reg[63]_0 [28]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[2] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[2]),
        .Q(\int_bias_reg[63]_0 [1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[30] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[30]),
        .Q(\int_bias_reg[63]_0 [29]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[31] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[31]),
        .Q(\int_bias_reg[63]_0 [30]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[32] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[0]),
        .Q(\int_bias_reg[63]_0 [31]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[33] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[1]),
        .Q(\int_bias_reg[63]_0 [32]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[34] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[2]),
        .Q(\int_bias_reg[63]_0 [33]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[35] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[3]),
        .Q(\int_bias_reg[63]_0 [34]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[36] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[4]),
        .Q(\int_bias_reg[63]_0 [35]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[37] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[5]),
        .Q(\int_bias_reg[63]_0 [36]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[38] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[6]),
        .Q(\int_bias_reg[63]_0 [37]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[39] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[7]),
        .Q(\int_bias_reg[63]_0 [38]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[3] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[3]),
        .Q(\int_bias_reg[63]_0 [2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[40] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[8]),
        .Q(\int_bias_reg[63]_0 [39]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[41] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[9]),
        .Q(\int_bias_reg[63]_0 [40]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[42] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[10]),
        .Q(\int_bias_reg[63]_0 [41]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[43] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[11]),
        .Q(\int_bias_reg[63]_0 [42]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[44] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[12]),
        .Q(\int_bias_reg[63]_0 [43]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[45] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[13]),
        .Q(\int_bias_reg[63]_0 [44]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[46] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[14]),
        .Q(\int_bias_reg[63]_0 [45]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[47] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[15]),
        .Q(\int_bias_reg[63]_0 [46]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[48] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[16]),
        .Q(\int_bias_reg[63]_0 [47]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[49] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[17]),
        .Q(\int_bias_reg[63]_0 [48]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[4] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[4]),
        .Q(\int_bias_reg[63]_0 [3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[50] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[18]),
        .Q(\int_bias_reg[63]_0 [49]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[51] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[19]),
        .Q(\int_bias_reg[63]_0 [50]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[52] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[20]),
        .Q(\int_bias_reg[63]_0 [51]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[53] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[21]),
        .Q(\int_bias_reg[63]_0 [52]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[54] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[22]),
        .Q(\int_bias_reg[63]_0 [53]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[55] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[23]),
        .Q(\int_bias_reg[63]_0 [54]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[56] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[24]),
        .Q(\int_bias_reg[63]_0 [55]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[57] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[25]),
        .Q(\int_bias_reg[63]_0 [56]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[58] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[26]),
        .Q(\int_bias_reg[63]_0 [57]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[59] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[27]),
        .Q(\int_bias_reg[63]_0 [58]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[5] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[5]),
        .Q(\int_bias_reg[63]_0 [4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[60] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[28]),
        .Q(\int_bias_reg[63]_0 [59]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[61] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[29]),
        .Q(\int_bias_reg[63]_0 [60]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[62] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[30]),
        .Q(\int_bias_reg[63]_0 [61]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[63] 
       (.C(ap_clk),
        .CE(\int_bias[63]_i_1_n_0 ),
        .D(int_bias_reg0[31]),
        .Q(\int_bias_reg[63]_0 [62]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[6] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[6]),
        .Q(\int_bias_reg[63]_0 [5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[7] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[7]),
        .Q(\int_bias_reg[63]_0 [6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[8] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[8]),
        .Q(\int_bias_reg[63]_0 [7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_reg[9] 
       (.C(ap_clk),
        .CE(\int_bias[31]_i_1_n_0 ),
        .D(int_bias_reg01_out[9]),
        .Q(\int_bias_reg[63]_0 [8]),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    int_gie_i_1
       (.I0(s_axi_control_WDATA[0]),
        .I1(int_gie_i_2_n_0),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(s_axi_control_WSTRB[0]),
        .I4(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    int_gie_i_2
       (.I0(\int_input_r[31]_i_3_n_0 ),
        .I1(\waddr_reg_n_0_[5] ),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\waddr_reg_n_0_[3] ),
        .O(int_gie_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h00000004)) 
    \int_ier[5]_i_1 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_ier[5]_i_2_n_0 ),
        .I3(\waddr_reg_n_0_[5] ),
        .I4(\waddr_reg_n_0_[4] ),
        .O(int_ier12_out));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \int_ier[5]_i_2 
       (.I0(\waddr_reg_n_0_[1] ),
        .I1(\waddr_reg_n_0_[0] ),
        .I2(\int_ier[5]_i_3_n_0 ),
        .I3(\waddr_reg_n_0_[6] ),
        .I4(\waddr_reg_n_0_[3] ),
        .O(\int_ier[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2020202020200020)) 
    \int_ier[5]_i_3 
       (.I0(s_axi_control_WVALID),
        .I1(wstate[1]),
        .I2(wstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .I5(rstate[0]),
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
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_input_r_reg_n_0_[0] ),
        .O(int_input_r_reg06_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_input_r_reg[63]_0 [9]),
        .O(int_input_r_reg06_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_input_r_reg[63]_0 [10]),
        .O(int_input_r_reg06_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_input_r_reg[63]_0 [11]),
        .O(int_input_r_reg06_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_input_r_reg[63]_0 [12]),
        .O(int_input_r_reg06_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_input_r_reg[63]_0 [13]),
        .O(int_input_r_reg06_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_input_r_reg[63]_0 [14]),
        .O(int_input_r_reg06_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_input_r_reg[63]_0 [15]),
        .O(int_input_r_reg06_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_input_r_reg[63]_0 [16]),
        .O(int_input_r_reg06_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_input_r_reg[63]_0 [17]),
        .O(int_input_r_reg06_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_input_r_reg[63]_0 [18]),
        .O(int_input_r_reg06_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_input_r_reg[63]_0 [0]),
        .O(int_input_r_reg06_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_input_r_reg[63]_0 [19]),
        .O(int_input_r_reg06_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[21]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_input_r_reg[63]_0 [20]),
        .O(int_input_r_reg06_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[22]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_input_r_reg[63]_0 [21]),
        .O(int_input_r_reg06_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[23]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_input_r_reg[63]_0 [22]),
        .O(int_input_r_reg06_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[24]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_input_r_reg[63]_0 [23]),
        .O(int_input_r_reg06_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[25]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_input_r_reg[63]_0 [24]),
        .O(int_input_r_reg06_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[26]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_input_r_reg[63]_0 [25]),
        .O(int_input_r_reg06_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[27]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_input_r_reg[63]_0 [26]),
        .O(int_input_r_reg06_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[28]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_input_r_reg[63]_0 [27]),
        .O(int_input_r_reg06_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[29]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_input_r_reg[63]_0 [28]),
        .O(int_input_r_reg06_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_input_r_reg[63]_0 [1]),
        .O(int_input_r_reg06_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[30]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_input_r_reg[63]_0 [29]),
        .O(int_input_r_reg06_out[30]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \int_input_r[31]_i_1 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[5] ),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(\int_input_r[31]_i_3_n_0 ),
        .O(\int_input_r[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[31]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_input_r_reg[63]_0 [30]),
        .O(int_input_r_reg06_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \int_input_r[31]_i_3 
       (.I0(\waddr_reg_n_0_[6] ),
        .I1(\int_ier[5]_i_3_n_0 ),
        .I2(\waddr_reg_n_0_[0] ),
        .I3(\waddr_reg_n_0_[1] ),
        .O(\int_input_r[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[32]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_input_r_reg[63]_0 [31]),
        .O(int_input_r_reg0[0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[33]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_input_r_reg[63]_0 [32]),
        .O(int_input_r_reg0[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[34]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_input_r_reg[63]_0 [33]),
        .O(int_input_r_reg0[2]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[35]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_input_r_reg[63]_0 [34]),
        .O(int_input_r_reg0[3]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[36]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_input_r_reg[63]_0 [35]),
        .O(int_input_r_reg0[4]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[37]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_input_r_reg[63]_0 [36]),
        .O(int_input_r_reg0[5]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[38]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_input_r_reg[63]_0 [37]),
        .O(int_input_r_reg0[6]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[39]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_input_r_reg[63]_0 [38]),
        .O(int_input_r_reg0[7]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_input_r_reg[63]_0 [2]),
        .O(int_input_r_reg06_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[40]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_input_r_reg[63]_0 [39]),
        .O(int_input_r_reg0[8]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[41]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_input_r_reg[63]_0 [40]),
        .O(int_input_r_reg0[9]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[42]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_input_r_reg[63]_0 [41]),
        .O(int_input_r_reg0[10]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[43]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_input_r_reg[63]_0 [42]),
        .O(int_input_r_reg0[11]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[44]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_input_r_reg[63]_0 [43]),
        .O(int_input_r_reg0[12]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[45]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_input_r_reg[63]_0 [44]),
        .O(int_input_r_reg0[13]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[46]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_input_r_reg[63]_0 [45]),
        .O(int_input_r_reg0[14]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[47]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_input_r_reg[63]_0 [46]),
        .O(int_input_r_reg0[15]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[48]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_input_r_reg[63]_0 [47]),
        .O(int_input_r_reg0[16]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[49]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_input_r_reg[63]_0 [48]),
        .O(int_input_r_reg0[17]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_input_r_reg[63]_0 [3]),
        .O(int_input_r_reg06_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[50]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_input_r_reg[63]_0 [49]),
        .O(int_input_r_reg0[18]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[51]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_input_r_reg[63]_0 [50]),
        .O(int_input_r_reg0[19]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[52]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_input_r_reg[63]_0 [51]),
        .O(int_input_r_reg0[20]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[53]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_input_r_reg[63]_0 [52]),
        .O(int_input_r_reg0[21]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[54]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_input_r_reg[63]_0 [53]),
        .O(int_input_r_reg0[22]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[55]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_input_r_reg[63]_0 [54]),
        .O(int_input_r_reg0[23]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[56]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_input_r_reg[63]_0 [55]),
        .O(int_input_r_reg0[24]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[57]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_input_r_reg[63]_0 [56]),
        .O(int_input_r_reg0[25]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[58]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_input_r_reg[63]_0 [57]),
        .O(int_input_r_reg0[26]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[59]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_input_r_reg[63]_0 [58]),
        .O(int_input_r_reg0[27]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_input_r_reg[63]_0 [4]),
        .O(int_input_r_reg06_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[60]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_input_r_reg[63]_0 [59]),
        .O(int_input_r_reg0[28]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[61]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_input_r_reg[63]_0 [60]),
        .O(int_input_r_reg0[29]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[62]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_input_r_reg[63]_0 [61]),
        .O(int_input_r_reg0[30]));
  LUT5 #(
    .INIT(32'h00000020)) 
    \int_input_r[63]_i_1 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[5] ),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(\int_input_r[31]_i_3_n_0 ),
        .O(\int_input_r[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[63]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_input_r_reg[63]_0 [62]),
        .O(int_input_r_reg0[31]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_input_r_reg[63]_0 [5]),
        .O(int_input_r_reg06_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_input_r_reg[63]_0 [6]),
        .O(int_input_r_reg06_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_input_r_reg[63]_0 [7]),
        .O(int_input_r_reg06_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_r[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_input_r_reg[63]_0 [8]),
        .O(int_input_r_reg06_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[0] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[0]),
        .Q(\int_input_r_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[10] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[10]),
        .Q(\int_input_r_reg[63]_0 [9]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[11] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[11]),
        .Q(\int_input_r_reg[63]_0 [10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[12] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[12]),
        .Q(\int_input_r_reg[63]_0 [11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[13] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[13]),
        .Q(\int_input_r_reg[63]_0 [12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[14] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[14]),
        .Q(\int_input_r_reg[63]_0 [13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[15] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[15]),
        .Q(\int_input_r_reg[63]_0 [14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[16] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[16]),
        .Q(\int_input_r_reg[63]_0 [15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[17] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[17]),
        .Q(\int_input_r_reg[63]_0 [16]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[18] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[18]),
        .Q(\int_input_r_reg[63]_0 [17]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[19] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[19]),
        .Q(\int_input_r_reg[63]_0 [18]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[1] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[1]),
        .Q(\int_input_r_reg[63]_0 [0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[20] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[20]),
        .Q(\int_input_r_reg[63]_0 [19]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[21] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[21]),
        .Q(\int_input_r_reg[63]_0 [20]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[22] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[22]),
        .Q(\int_input_r_reg[63]_0 [21]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[23] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[23]),
        .Q(\int_input_r_reg[63]_0 [22]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[24] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[24]),
        .Q(\int_input_r_reg[63]_0 [23]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[25] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[25]),
        .Q(\int_input_r_reg[63]_0 [24]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[26] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[26]),
        .Q(\int_input_r_reg[63]_0 [25]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[27] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[27]),
        .Q(\int_input_r_reg[63]_0 [26]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[28] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[28]),
        .Q(\int_input_r_reg[63]_0 [27]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[29] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[29]),
        .Q(\int_input_r_reg[63]_0 [28]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[2] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[2]),
        .Q(\int_input_r_reg[63]_0 [1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[30] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[30]),
        .Q(\int_input_r_reg[63]_0 [29]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[31] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[31]),
        .Q(\int_input_r_reg[63]_0 [30]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[32] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[0]),
        .Q(\int_input_r_reg[63]_0 [31]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[33] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[1]),
        .Q(\int_input_r_reg[63]_0 [32]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[34] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[2]),
        .Q(\int_input_r_reg[63]_0 [33]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[35] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[3]),
        .Q(\int_input_r_reg[63]_0 [34]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[36] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[4]),
        .Q(\int_input_r_reg[63]_0 [35]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[37] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[5]),
        .Q(\int_input_r_reg[63]_0 [36]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[38] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[6]),
        .Q(\int_input_r_reg[63]_0 [37]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[39] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[7]),
        .Q(\int_input_r_reg[63]_0 [38]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[3] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[3]),
        .Q(\int_input_r_reg[63]_0 [2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[40] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[8]),
        .Q(\int_input_r_reg[63]_0 [39]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[41] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[9]),
        .Q(\int_input_r_reg[63]_0 [40]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[42] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[10]),
        .Q(\int_input_r_reg[63]_0 [41]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[43] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[11]),
        .Q(\int_input_r_reg[63]_0 [42]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[44] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[12]),
        .Q(\int_input_r_reg[63]_0 [43]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[45] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[13]),
        .Q(\int_input_r_reg[63]_0 [44]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[46] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[14]),
        .Q(\int_input_r_reg[63]_0 [45]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[47] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[15]),
        .Q(\int_input_r_reg[63]_0 [46]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[48] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[16]),
        .Q(\int_input_r_reg[63]_0 [47]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[49] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[17]),
        .Q(\int_input_r_reg[63]_0 [48]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[4] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[4]),
        .Q(\int_input_r_reg[63]_0 [3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[50] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[18]),
        .Q(\int_input_r_reg[63]_0 [49]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[51] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[19]),
        .Q(\int_input_r_reg[63]_0 [50]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[52] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[20]),
        .Q(\int_input_r_reg[63]_0 [51]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[53] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[21]),
        .Q(\int_input_r_reg[63]_0 [52]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[54] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[22]),
        .Q(\int_input_r_reg[63]_0 [53]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[55] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[23]),
        .Q(\int_input_r_reg[63]_0 [54]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[56] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[24]),
        .Q(\int_input_r_reg[63]_0 [55]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[57] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[25]),
        .Q(\int_input_r_reg[63]_0 [56]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[58] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[26]),
        .Q(\int_input_r_reg[63]_0 [57]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[59] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[27]),
        .Q(\int_input_r_reg[63]_0 [58]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[5] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[5]),
        .Q(\int_input_r_reg[63]_0 [4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[60] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[28]),
        .Q(\int_input_r_reg[63]_0 [59]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[61] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[29]),
        .Q(\int_input_r_reg[63]_0 [60]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[62] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[30]),
        .Q(\int_input_r_reg[63]_0 [61]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[63] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[31]),
        .Q(\int_input_r_reg[63]_0 [62]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[6] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[6]),
        .Q(\int_input_r_reg[63]_0 [5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[7] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[7]),
        .Q(\int_input_r_reg[63]_0 [6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[8] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[8]),
        .Q(\int_input_r_reg[63]_0 [7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_r_reg[9] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg06_out[9]),
        .Q(\int_input_r_reg[63]_0 [8]),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(int_isr9_out),
        .I2(\int_ier_reg_n_0_[0] ),
        .I3(ap_done),
        .I4(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \int_isr[0]_i_2 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_ier[5]_i_2_n_0 ),
        .I3(\waddr_reg_n_0_[5] ),
        .I4(\waddr_reg_n_0_[4] ),
        .O(int_isr9_out));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \int_isr[0]_i_3 
       (.I0(Q[1]),
        .I1(int_ap_start_reg_0[0]),
        .I2(int_ap_start_reg_0[1]),
        .O(ap_done));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(int_isr9_out),
        .I2(\int_ier_reg_n_0_[1] ),
        .I3(ap_done),
        .I4(\int_isr_reg_n_0_[1] ),
        .O(\int_isr[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_isr[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(int_isr9_out),
        .I2(\int_isr_reg_n_0_[5] ),
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
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [0]),
        .O(\int_numOfInNeurons[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [10]),
        .O(\int_numOfInNeurons[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [11]),
        .O(\int_numOfInNeurons[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [12]),
        .O(\int_numOfInNeurons[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [13]),
        .O(\int_numOfInNeurons[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [14]),
        .O(\int_numOfInNeurons[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \int_numOfInNeurons[15]_i_1 
       (.I0(\int_numOfInNeurons[15]_i_3_n_0 ),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\waddr_reg_n_0_[6] ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(\waddr_reg_n_0_[4] ),
        .I5(\waddr_reg_n_0_[5] ),
        .O(\int_numOfInNeurons[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[15]_i_2 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [15]),
        .O(\int_numOfInNeurons[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    \int_numOfInNeurons[15]_i_3 
       (.I0(\waddr_reg_n_0_[1] ),
        .I1(\waddr_reg_n_0_[0] ),
        .I2(int_output_r_n_81),
        .I3(wstate[0]),
        .I4(wstate[1]),
        .I5(s_axi_control_WVALID),
        .O(\int_numOfInNeurons[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [1]),
        .O(\int_numOfInNeurons[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [2]),
        .O(\int_numOfInNeurons[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [3]),
        .O(\int_numOfInNeurons[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [4]),
        .O(\int_numOfInNeurons[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [5]),
        .O(\int_numOfInNeurons[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [6]),
        .O(\int_numOfInNeurons[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_numOfInNeurons_reg[15]_0 [7]),
        .O(\int_numOfInNeurons[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_numOfInNeurons[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_numOfInNeurons_reg[15]_0 [8]),
        .O(\int_numOfInNeurons[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
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
       (.D(p_0_in),
        .DI({mem_reg_i_63_n_0,mem_reg_i_64_n_0,mem_reg_i_65_n_0,mem_reg_i_66_n_0}),
        .DIBDI(DIBDI),
        .DOADO(DOADO),
        .DOBDO(int_output_r_q0),
        .Q(Q[4:2]),
        .add_ln33_fu_349_p2(add_ln33_fu_349_p2),
        .ap_clk(ap_clk),
        .mem_reg_0(mem_reg_0),
        .mem_reg_1({mem_reg_i_55_n_0,mem_reg_i_56_n_0,mem_reg_i_57_n_0,mem_reg_i_58_n_0}),
        .mem_reg_2({mem_reg_i_47_n_0,mem_reg_i_48_n_0,mem_reg_i_49_n_0,mem_reg_i_50_n_0}),
        .mem_reg_3({mem_reg_i_40_n_0,mem_reg_i_41_n_0,mem_reg_i_42_n_0}),
        .mem_reg_4(int_output_r_write_reg_n_0),
        .mem_reg_5(\waddr_reg_n_0_[2] ),
        .mem_reg_i_38_0(\int_output_r_shift0_reg[0]_0 ),
        .output_r_addr_1_reg_473(output_r_addr_1_reg_473),
        .\output_r_addr_1_reg_473_reg[0] (\output_r_addr_1_reg_473_reg[0] ),
        .output_r_addr_reg_458(output_r_addr_reg_458),
        .output_r_ce0(output_r_ce0),
        .\rdata_reg[0] (\rdata[0]_i_2_n_0 ),
        .\rdata_reg[10] (\rdata[10]_i_2_n_0 ),
        .\rdata_reg[10]_0 (\rdata[10]_i_3_n_0 ),
        .\rdata_reg[11] (\rdata[11]_i_2_n_0 ),
        .\rdata_reg[11]_0 (\rdata[11]_i_3_n_0 ),
        .\rdata_reg[12] (\rdata[12]_i_2_n_0 ),
        .\rdata_reg[12]_0 (\rdata[12]_i_3_n_0 ),
        .\rdata_reg[13] (\rdata[13]_i_2_n_0 ),
        .\rdata_reg[13]_0 (\rdata[13]_i_3_n_0 ),
        .\rdata_reg[14] (\rdata[14]_i_2_n_0 ),
        .\rdata_reg[14]_0 (\rdata[14]_i_3_n_0 ),
        .\rdata_reg[15] (\rdata[15]_i_3_n_0 ),
        .\rdata_reg[15]_0 (\rdata[15]_i_4_n_0 ),
        .\rdata_reg[16] (\rdata[16]_i_2_n_0 ),
        .\rdata_reg[17] (\rdata[17]_i_2_n_0 ),
        .\rdata_reg[18] (\rdata[18]_i_2_n_0 ),
        .\rdata_reg[19] (\rdata[19]_i_2_n_0 ),
        .\rdata_reg[1] (\rdata[1]_i_2_n_0 ),
        .\rdata_reg[20] (\rdata[20]_i_2_n_0 ),
        .\rdata_reg[21] (\rdata[21]_i_2_n_0 ),
        .\rdata_reg[22] (\rdata[22]_i_2_n_0 ),
        .\rdata_reg[23] (\rdata[23]_i_2_n_0 ),
        .\rdata_reg[24] (\rdata[24]_i_2_n_0 ),
        .\rdata_reg[25] (\rdata[25]_i_2_n_0 ),
        .\rdata_reg[26] (\rdata[26]_i_2_n_0 ),
        .\rdata_reg[27] (\rdata[27]_i_2_n_0 ),
        .\rdata_reg[28] (\rdata[28]_i_2_n_0 ),
        .\rdata_reg[29] (\rdata[29]_i_2_n_0 ),
        .\rdata_reg[2] (\rdata[2]_i_2_n_0 ),
        .\rdata_reg[30] (\rdata[30]_i_2_n_0 ),
        .\rdata_reg[31] (\rdata[31]_i_3_n_0 ),
        .\rdata_reg[3] (\rdata[3]_i_2_n_0 ),
        .\rdata_reg[4] (\rdata[4]_i_2_n_0 ),
        .\rdata_reg[5] (\rdata[5]_i_2_n_0 ),
        .\rdata_reg[6] (\rdata[15]_i_2_n_0 ),
        .\rdata_reg[6]_0 (\rdata[6]_i_2_n_0 ),
        .\rdata_reg[6]_1 (\rdata[6]_i_3_n_0 ),
        .\rdata_reg[6]_2 (\rdata[15]_i_5_n_0 ),
        .\rdata_reg[7] (\rdata[7]_i_2_n_0 ),
        .\rdata_reg[7]_0 (\rdata[7]_i_3_n_0 ),
        .\rdata_reg[7]_1 (\rdata[7]_i_4_n_0 ),
        .\rdata_reg[8] (\rdata[8]_i_2_n_0 ),
        .\rdata_reg[8]_0 (\rdata[8]_i_3_n_0 ),
        .\rdata_reg[9] (\rdata[9]_i_2_n_0 ),
        .\rdata_reg[9]_0 (\rdata[9]_i_3_n_0 ),
        .rstate(rstate),
        .s_axi_control_ARADDR(s_axi_control_ARADDR[2:0]),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_ARVALID_0(int_output_r_n_81),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .wstate(wstate),
        .zext_ln25_reg_441(zext_ln25_reg_441));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    int_output_r_read_i_1
       (.I0(int_output_r_n_81),
        .I1(s_axi_control_ARADDR[5]),
        .I2(s_axi_control_ARADDR[6]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[3]),
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
    .INIT(64'hFFFFFBFFFFFF0000)) 
    int_output_r_write_i_1
       (.I0(int_output_r_n_81),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(s_axi_control_WVALID),
        .I4(int_output_r_write0),
        .I5(int_output_r_write_reg_n_0),
        .O(int_output_r_write_i_1_n_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    int_output_r_write_i_2
       (.I0(aw_hs),
        .I1(s_axi_control_AWADDR[4]),
        .I2(s_axi_control_AWADDR[6]),
        .I3(s_axi_control_AWADDR[3]),
        .I4(s_axi_control_AWADDR[5]),
        .O(int_output_r_write0));
  FDRE int_output_r_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_output_r_write_i_1_n_0),
        .Q(int_output_r_write_reg_n_0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFEFFFFAAAAAAAA)) 
    int_task_ap_done_i_1
       (.I0(task_ap_done),
        .I1(int_task_ap_done_i_3_n_0),
        .I2(s_axi_control_ARADDR[6]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(\rdata[15]_i_5_n_0 ),
        .I5(int_task_ap_done),
        .O(int_task_ap_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    int_task_ap_done_i_2
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(p_7_in[2]),
        .I3(auto_restart_status_reg_n_0),
        .I4(ap_done),
        .O(task_ap_done));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    int_task_ap_done_i_3
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[4]),
        .O(int_task_ap_done_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_task_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_task_ap_done_i_1_n_0),
        .Q(int_task_ap_done),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_weights_reg[63]_0 [0]),
        .O(int_weights_reg03_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_weights_reg[63]_0 [10]),
        .O(int_weights_reg03_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_weights_reg[63]_0 [11]),
        .O(int_weights_reg03_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_weights_reg[63]_0 [12]),
        .O(int_weights_reg03_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_weights_reg[63]_0 [13]),
        .O(int_weights_reg03_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_weights_reg[63]_0 [14]),
        .O(int_weights_reg03_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_weights_reg[63]_0 [15]),
        .O(int_weights_reg03_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_weights_reg[63]_0 [16]),
        .O(int_weights_reg03_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_weights_reg[63]_0 [17]),
        .O(int_weights_reg03_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_weights_reg[63]_0 [18]),
        .O(int_weights_reg03_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_weights_reg[63]_0 [19]),
        .O(int_weights_reg03_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_weights_reg[63]_0 [1]),
        .O(int_weights_reg03_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_weights_reg[63]_0 [20]),
        .O(int_weights_reg03_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[21]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_weights_reg[63]_0 [21]),
        .O(int_weights_reg03_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[22]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_weights_reg[63]_0 [22]),
        .O(int_weights_reg03_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[23]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_weights_reg[63]_0 [23]),
        .O(int_weights_reg03_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[24]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_weights_reg[63]_0 [24]),
        .O(int_weights_reg03_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[25]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_weights_reg[63]_0 [25]),
        .O(int_weights_reg03_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[26]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_weights_reg[63]_0 [26]),
        .O(int_weights_reg03_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[27]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_weights_reg[63]_0 [27]),
        .O(int_weights_reg03_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[28]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_weights_reg[63]_0 [28]),
        .O(int_weights_reg03_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[29]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_weights_reg[63]_0 [29]),
        .O(int_weights_reg03_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_weights_reg[63]_0 [2]),
        .O(int_weights_reg03_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[30]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_weights_reg[63]_0 [30]),
        .O(int_weights_reg03_out[30]));
  LUT4 #(
    .INIT(16'h0010)) 
    \int_weights[31]_i_1 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\int_ier[5]_i_2_n_0 ),
        .O(\int_weights[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[31]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_weights_reg[63]_0 [31]),
        .O(int_weights_reg03_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[32]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_weights_reg[63]_0 [32]),
        .O(int_weights_reg0[0]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[33]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_weights_reg[63]_0 [33]),
        .O(int_weights_reg0[1]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[34]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_weights_reg[63]_0 [34]),
        .O(int_weights_reg0[2]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[35]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_weights_reg[63]_0 [35]),
        .O(int_weights_reg0[3]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[36]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_weights_reg[63]_0 [36]),
        .O(int_weights_reg0[4]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[37]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_weights_reg[63]_0 [37]),
        .O(int_weights_reg0[5]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[38]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_weights_reg[63]_0 [38]),
        .O(int_weights_reg0[6]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[39]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_weights_reg[63]_0 [39]),
        .O(int_weights_reg0[7]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_weights_reg[63]_0 [3]),
        .O(int_weights_reg03_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[40]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_weights_reg[63]_0 [40]),
        .O(int_weights_reg0[8]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[41]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_weights_reg[63]_0 [41]),
        .O(int_weights_reg0[9]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[42]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_weights_reg[63]_0 [42]),
        .O(int_weights_reg0[10]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[43]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_weights_reg[63]_0 [43]),
        .O(int_weights_reg0[11]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[44]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_weights_reg[63]_0 [44]),
        .O(int_weights_reg0[12]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[45]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_weights_reg[63]_0 [45]),
        .O(int_weights_reg0[13]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[46]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_weights_reg[63]_0 [46]),
        .O(int_weights_reg0[14]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[47]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_weights_reg[63]_0 [47]),
        .O(int_weights_reg0[15]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[48]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_weights_reg[63]_0 [48]),
        .O(int_weights_reg0[16]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[49]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_weights_reg[63]_0 [49]),
        .O(int_weights_reg0[17]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_weights_reg[63]_0 [4]),
        .O(int_weights_reg03_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[50]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_weights_reg[63]_0 [50]),
        .O(int_weights_reg0[18]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[51]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_weights_reg[63]_0 [51]),
        .O(int_weights_reg0[19]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[52]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_weights_reg[63]_0 [52]),
        .O(int_weights_reg0[20]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[53]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_weights_reg[63]_0 [53]),
        .O(int_weights_reg0[21]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[54]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_weights_reg[63]_0 [54]),
        .O(int_weights_reg0[22]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[55]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_weights_reg[63]_0 [55]),
        .O(int_weights_reg0[23]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[56]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_weights_reg[63]_0 [56]),
        .O(int_weights_reg0[24]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[57]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_weights_reg[63]_0 [57]),
        .O(int_weights_reg0[25]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[58]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_weights_reg[63]_0 [58]),
        .O(int_weights_reg0[26]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[59]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_weights_reg[63]_0 [59]),
        .O(int_weights_reg0[27]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_weights_reg[63]_0 [5]),
        .O(int_weights_reg03_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[60]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_weights_reg[63]_0 [60]),
        .O(int_weights_reg0[28]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[61]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_weights_reg[63]_0 [61]),
        .O(int_weights_reg0[29]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[62]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_weights_reg[63]_0 [62]),
        .O(int_weights_reg0[30]));
  LUT4 #(
    .INIT(16'h0020)) 
    \int_weights[63]_i_1 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\int_ier[5]_i_2_n_0 ),
        .O(\int_weights[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[63]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_weights_reg[63]_0 [63]),
        .O(int_weights_reg0[31]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_weights_reg[63]_0 [6]),
        .O(int_weights_reg03_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_weights_reg[63]_0 [7]),
        .O(int_weights_reg03_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_weights_reg[63]_0 [8]),
        .O(int_weights_reg03_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_weights[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_weights_reg[63]_0 [9]),
        .O(int_weights_reg03_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[0] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[0]),
        .Q(\int_weights_reg[63]_0 [0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[10] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[10]),
        .Q(\int_weights_reg[63]_0 [10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[11] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[11]),
        .Q(\int_weights_reg[63]_0 [11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[12] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[12]),
        .Q(\int_weights_reg[63]_0 [12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[13] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[13]),
        .Q(\int_weights_reg[63]_0 [13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[14] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[14]),
        .Q(\int_weights_reg[63]_0 [14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[15] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[15]),
        .Q(\int_weights_reg[63]_0 [15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[16] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[16]),
        .Q(\int_weights_reg[63]_0 [16]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[17] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[17]),
        .Q(\int_weights_reg[63]_0 [17]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[18] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[18]),
        .Q(\int_weights_reg[63]_0 [18]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[19] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[19]),
        .Q(\int_weights_reg[63]_0 [19]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[1] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[1]),
        .Q(\int_weights_reg[63]_0 [1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[20] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[20]),
        .Q(\int_weights_reg[63]_0 [20]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[21] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[21]),
        .Q(\int_weights_reg[63]_0 [21]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[22] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[22]),
        .Q(\int_weights_reg[63]_0 [22]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[23] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[23]),
        .Q(\int_weights_reg[63]_0 [23]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[24] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[24]),
        .Q(\int_weights_reg[63]_0 [24]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[25] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[25]),
        .Q(\int_weights_reg[63]_0 [25]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[26] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[26]),
        .Q(\int_weights_reg[63]_0 [26]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[27] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[27]),
        .Q(\int_weights_reg[63]_0 [27]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[28] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[28]),
        .Q(\int_weights_reg[63]_0 [28]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[29] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[29]),
        .Q(\int_weights_reg[63]_0 [29]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[2] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[2]),
        .Q(\int_weights_reg[63]_0 [2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[30] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[30]),
        .Q(\int_weights_reg[63]_0 [30]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[31] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[31]),
        .Q(\int_weights_reg[63]_0 [31]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[32] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[0]),
        .Q(\int_weights_reg[63]_0 [32]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[33] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[1]),
        .Q(\int_weights_reg[63]_0 [33]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[34] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[2]),
        .Q(\int_weights_reg[63]_0 [34]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[35] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[3]),
        .Q(\int_weights_reg[63]_0 [35]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[36] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[4]),
        .Q(\int_weights_reg[63]_0 [36]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[37] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[5]),
        .Q(\int_weights_reg[63]_0 [37]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[38] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[6]),
        .Q(\int_weights_reg[63]_0 [38]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[39] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[7]),
        .Q(\int_weights_reg[63]_0 [39]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[3] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[3]),
        .Q(\int_weights_reg[63]_0 [3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[40] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[8]),
        .Q(\int_weights_reg[63]_0 [40]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[41] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[9]),
        .Q(\int_weights_reg[63]_0 [41]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[42] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[10]),
        .Q(\int_weights_reg[63]_0 [42]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[43] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[11]),
        .Q(\int_weights_reg[63]_0 [43]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[44] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[12]),
        .Q(\int_weights_reg[63]_0 [44]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[45] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[13]),
        .Q(\int_weights_reg[63]_0 [45]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[46] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[14]),
        .Q(\int_weights_reg[63]_0 [46]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[47] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[15]),
        .Q(\int_weights_reg[63]_0 [47]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[48] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[16]),
        .Q(\int_weights_reg[63]_0 [48]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[49] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[17]),
        .Q(\int_weights_reg[63]_0 [49]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[4] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[4]),
        .Q(\int_weights_reg[63]_0 [4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[50] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[18]),
        .Q(\int_weights_reg[63]_0 [50]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[51] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[19]),
        .Q(\int_weights_reg[63]_0 [51]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[52] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[20]),
        .Q(\int_weights_reg[63]_0 [52]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[53] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[21]),
        .Q(\int_weights_reg[63]_0 [53]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[54] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[22]),
        .Q(\int_weights_reg[63]_0 [54]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[55] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[23]),
        .Q(\int_weights_reg[63]_0 [55]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[56] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[24]),
        .Q(\int_weights_reg[63]_0 [56]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[57] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[25]),
        .Q(\int_weights_reg[63]_0 [57]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[58] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[26]),
        .Q(\int_weights_reg[63]_0 [58]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[59] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[27]),
        .Q(\int_weights_reg[63]_0 [59]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[5] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[5]),
        .Q(\int_weights_reg[63]_0 [5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[60] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[28]),
        .Q(\int_weights_reg[63]_0 [60]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[61] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[29]),
        .Q(\int_weights_reg[63]_0 [61]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[62] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[30]),
        .Q(\int_weights_reg[63]_0 [62]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[63] 
       (.C(ap_clk),
        .CE(\int_weights[63]_i_1_n_0 ),
        .D(int_weights_reg0[31]),
        .Q(\int_weights_reg[63]_0 [63]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[6] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[6]),
        .Q(\int_weights_reg[63]_0 [6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[7] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[7]),
        .Q(\int_weights_reg[63]_0 [7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[8] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[8]),
        .Q(\int_weights_reg[63]_0 [8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_weights_reg[9] 
       (.C(ap_clk),
        .CE(\int_weights[31]_i_1_n_0 ),
        .D(int_weights_reg03_out[9]),
        .Q(\int_weights_reg[63]_0 [9]),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hAAA8)) 
    interrupt_INST_0
       (.I0(int_gie_reg_n_0),
        .I1(\int_isr_reg_n_0_[0] ),
        .I2(\int_isr_reg_n_0_[1] ),
        .I3(\int_isr_reg_n_0_[5] ),
        .O(interrupt));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_40
       (.I0(int_output_r_q0[30]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[14]),
        .O(mem_reg_i_40_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_41
       (.I0(int_output_r_q0[29]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[13]),
        .O(mem_reg_i_41_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_42
       (.I0(int_output_r_q0[28]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[12]),
        .O(mem_reg_i_42_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_47
       (.I0(int_output_r_q0[27]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[11]),
        .O(mem_reg_i_47_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_48
       (.I0(int_output_r_q0[26]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[10]),
        .O(mem_reg_i_48_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_49
       (.I0(int_output_r_q0[25]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[9]),
        .O(mem_reg_i_49_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_50
       (.I0(int_output_r_q0[24]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[8]),
        .O(mem_reg_i_50_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_55
       (.I0(int_output_r_q0[23]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[7]),
        .O(mem_reg_i_55_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_56
       (.I0(int_output_r_q0[22]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[6]),
        .O(mem_reg_i_56_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_57
       (.I0(int_output_r_q0[21]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[5]),
        .O(mem_reg_i_57_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_58
       (.I0(int_output_r_q0[20]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[4]),
        .O(mem_reg_i_58_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_63
       (.I0(int_output_r_q0[19]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[3]),
        .O(mem_reg_i_63_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_64
       (.I0(int_output_r_q0[18]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[2]),
        .O(mem_reg_i_64_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_65
       (.I0(int_output_r_q0[17]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[1]),
        .O(mem_reg_i_65_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_66
       (.I0(int_output_r_q0[16]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[0]),
        .O(mem_reg_i_66_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \outNeurons_fu_108[1]_i_1 
       (.I0(ap_start),
        .I1(Q[0]),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_463[0]_i_1 
       (.I0(int_output_r_q0[16]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[0]),
        .O(mem_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_463[10]_i_1 
       (.I0(int_output_r_q0[26]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[10]),
        .O(mem_reg[10]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_463[11]_i_1 
       (.I0(int_output_r_q0[27]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[11]),
        .O(mem_reg[11]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_463[12]_i_1 
       (.I0(int_output_r_q0[28]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[12]),
        .O(mem_reg[12]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_463[13]_i_1 
       (.I0(int_output_r_q0[29]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[13]),
        .O(mem_reg[13]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_463[14]_i_1 
       (.I0(int_output_r_q0[30]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[14]),
        .O(mem_reg[14]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_463[15]_i_1 
       (.I0(int_output_r_q0[31]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[15]),
        .O(mem_reg[15]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_463[1]_i_1 
       (.I0(int_output_r_q0[17]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[1]),
        .O(mem_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_463[2]_i_1 
       (.I0(int_output_r_q0[18]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[2]),
        .O(mem_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_463[3]_i_1 
       (.I0(int_output_r_q0[19]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[3]),
        .O(mem_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_463[4]_i_1 
       (.I0(int_output_r_q0[20]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[4]),
        .O(mem_reg[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_463[5]_i_1 
       (.I0(int_output_r_q0[21]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[5]),
        .O(mem_reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_463[6]_i_1 
       (.I0(int_output_r_q0[22]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[6]),
        .O(mem_reg[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_463[7]_i_1 
       (.I0(int_output_r_q0[23]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[7]),
        .O(mem_reg[7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_463[8]_i_1 
       (.I0(int_output_r_q0[24]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[8]),
        .O(mem_reg[8]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_r_load_reg_463[9]_i_1 
       (.I0(int_output_r_q0[25]),
        .I1(\int_output_r_shift0_reg[0]_0 ),
        .I2(int_output_r_q0[9]),
        .O(mem_reg[9]));
  LUT6 #(
    .INIT(64'hFECEFECE0000FECE)) 
    \rdata[0]_i_2 
       (.I0(\rdata[0]_i_3_n_0 ),
        .I1(s_axi_control_ARADDR[6]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\rdata[0]_i_4_n_0 ),
        .I4(\int_numOfInNeurons_reg[15]_0 [0]),
        .I5(\rdata[15]_i_7_n_0 ),
        .O(\rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC5C5C5F5F5F5C5F5)) 
    \rdata[0]_i_3 
       (.I0(\rdata[0]_i_5_n_0 ),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(\int_input_r_reg_n_0_[0] ),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\int_input_r_reg[63]_0 [31]),
        .O(\rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[0]_i_4 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg_n_0_[0] ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [31]),
        .I5(\rdata[0]_i_6_n_0 ),
        .O(\rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[0]_i_5 
       (.I0(\int_isr_reg_n_0_[0] ),
        .I1(\int_ier_reg_n_0_[0] ),
        .I2(s_axi_control_ARADDR[3]),
        .I3(int_gie_reg_n_0),
        .I4(s_axi_control_ARADDR[2]),
        .I5(ap_start),
        .O(\rdata[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00B80000)) 
    \rdata[0]_i_6 
       (.I0(\int_weights_reg[63]_0 [32]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [0]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[3]),
        .O(\rdata[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[10]_i_2 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [9]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [41]),
        .I5(\rdata[10]_i_4_n_0 ),
        .O(\rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \rdata[10]_i_3 
       (.I0(\rdata[15]_i_7_n_0 ),
        .I1(\int_numOfInNeurons_reg[15]_0 [10]),
        .I2(\rdata[31]_i_5_n_0 ),
        .I3(\int_input_r_reg[63]_0 [9]),
        .I4(\rdata[31]_i_6_n_0 ),
        .I5(\int_input_r_reg[63]_0 [41]),
        .O(\rdata[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \rdata[10]_i_4 
       (.I0(\int_weights_reg[63]_0 [42]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [10]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[11]_i_2 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [10]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [42]),
        .I5(\rdata[11]_i_4_n_0 ),
        .O(\rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \rdata[11]_i_3 
       (.I0(\rdata[15]_i_7_n_0 ),
        .I1(\int_numOfInNeurons_reg[15]_0 [11]),
        .I2(\rdata[31]_i_5_n_0 ),
        .I3(\int_input_r_reg[63]_0 [10]),
        .I4(\rdata[31]_i_6_n_0 ),
        .I5(\int_input_r_reg[63]_0 [42]),
        .O(\rdata[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \rdata[11]_i_4 
       (.I0(\int_weights_reg[63]_0 [43]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [11]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[12]_i_2 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [11]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [43]),
        .I5(\rdata[12]_i_4_n_0 ),
        .O(\rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \rdata[12]_i_3 
       (.I0(\rdata[15]_i_7_n_0 ),
        .I1(\int_numOfInNeurons_reg[15]_0 [12]),
        .I2(\rdata[31]_i_5_n_0 ),
        .I3(\int_input_r_reg[63]_0 [11]),
        .I4(\rdata[31]_i_6_n_0 ),
        .I5(\int_input_r_reg[63]_0 [43]),
        .O(\rdata[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \rdata[12]_i_4 
       (.I0(\int_weights_reg[63]_0 [44]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [12]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[13]_i_2 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [12]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [44]),
        .I5(\rdata[13]_i_4_n_0 ),
        .O(\rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \rdata[13]_i_3 
       (.I0(\rdata[15]_i_7_n_0 ),
        .I1(\int_numOfInNeurons_reg[15]_0 [13]),
        .I2(\rdata[31]_i_5_n_0 ),
        .I3(\int_input_r_reg[63]_0 [12]),
        .I4(\rdata[31]_i_6_n_0 ),
        .I5(\int_input_r_reg[63]_0 [44]),
        .O(\rdata[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \rdata[13]_i_4 
       (.I0(\int_weights_reg[63]_0 [45]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [13]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[14]_i_2 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [13]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [45]),
        .I5(\rdata[14]_i_4_n_0 ),
        .O(\rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \rdata[14]_i_3 
       (.I0(\rdata[15]_i_7_n_0 ),
        .I1(\int_numOfInNeurons_reg[15]_0 [14]),
        .I2(\rdata[31]_i_5_n_0 ),
        .I3(\int_input_r_reg[63]_0 [13]),
        .I4(\rdata[31]_i_6_n_0 ),
        .I5(\int_input_r_reg[63]_0 [45]),
        .O(\rdata[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \rdata[14]_i_4 
       (.I0(\int_weights_reg[63]_0 [46]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [14]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[14]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata[15]_i_2 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[6]),
        .O(\rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[15]_i_3 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [14]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [46]),
        .I5(\rdata[15]_i_6_n_0 ),
        .O(\rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \rdata[15]_i_4 
       (.I0(\rdata[15]_i_7_n_0 ),
        .I1(\int_numOfInNeurons_reg[15]_0 [15]),
        .I2(\rdata[31]_i_5_n_0 ),
        .I3(\int_input_r_reg[63]_0 [14]),
        .I4(\rdata[31]_i_6_n_0 ),
        .I5(\int_input_r_reg[63]_0 [46]),
        .O(\rdata[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \rdata[15]_i_5 
       (.I0(rstate[0]),
        .I1(rstate[1]),
        .I2(s_axi_control_ARVALID),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .O(\rdata[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \rdata[15]_i_6 
       (.I0(\int_weights_reg[63]_0 [47]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [15]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \rdata[15]_i_7 
       (.I0(s_axi_control_ARADDR[6]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[5]),
        .O(\rdata[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBABF0000BABFBABF)) 
    \rdata[16]_i_2 
       (.I0(\rdata[31]_i_5_n_0 ),
        .I1(\int_input_r_reg[63]_0 [15]),
        .I2(\rdata[31]_i_6_n_0 ),
        .I3(\int_input_r_reg[63]_0 [47]),
        .I4(\rdata[16]_i_3_n_0 ),
        .I5(\rdata[15]_i_2_n_0 ),
        .O(\rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[16]_i_3 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [15]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [47]),
        .I5(\rdata[16]_i_4_n_0 ),
        .O(\rdata[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \rdata[16]_i_4 
       (.I0(\int_weights_reg[63]_0 [48]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [16]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBABF0000BABFBABF)) 
    \rdata[17]_i_2 
       (.I0(\rdata[31]_i_5_n_0 ),
        .I1(\int_input_r_reg[63]_0 [16]),
        .I2(\rdata[31]_i_6_n_0 ),
        .I3(\int_input_r_reg[63]_0 [48]),
        .I4(\rdata[17]_i_3_n_0 ),
        .I5(\rdata[15]_i_2_n_0 ),
        .O(\rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[17]_i_3 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [16]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [48]),
        .I5(\rdata[17]_i_4_n_0 ),
        .O(\rdata[17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \rdata[17]_i_4 
       (.I0(\int_weights_reg[63]_0 [49]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [17]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBABF0000BABFBABF)) 
    \rdata[18]_i_2 
       (.I0(\rdata[31]_i_5_n_0 ),
        .I1(\int_input_r_reg[63]_0 [17]),
        .I2(\rdata[31]_i_6_n_0 ),
        .I3(\int_input_r_reg[63]_0 [49]),
        .I4(\rdata[18]_i_3_n_0 ),
        .I5(\rdata[15]_i_2_n_0 ),
        .O(\rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[18]_i_3 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [17]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [49]),
        .I5(\rdata[18]_i_4_n_0 ),
        .O(\rdata[18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \rdata[18]_i_4 
       (.I0(\int_weights_reg[63]_0 [50]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [18]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBABF0000BABFBABF)) 
    \rdata[19]_i_2 
       (.I0(\rdata[31]_i_5_n_0 ),
        .I1(\int_input_r_reg[63]_0 [18]),
        .I2(\rdata[31]_i_6_n_0 ),
        .I3(\int_input_r_reg[63]_0 [50]),
        .I4(\rdata[19]_i_3_n_0 ),
        .I5(\rdata[15]_i_2_n_0 ),
        .O(\rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[19]_i_3 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [18]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [50]),
        .I5(\rdata[19]_i_4_n_0 ),
        .O(\rdata[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \rdata[19]_i_4 
       (.I0(\int_weights_reg[63]_0 [51]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [19]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFECEFECE0000FECE)) 
    \rdata[1]_i_2 
       (.I0(\rdata[1]_i_3_n_0 ),
        .I1(s_axi_control_ARADDR[6]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\rdata[1]_i_4_n_0 ),
        .I4(\int_numOfInNeurons_reg[15]_0 [1]),
        .I5(\rdata[15]_i_7_n_0 ),
        .O(\rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F3F7FFF7)) 
    \rdata[1]_i_3 
       (.I0(\int_input_r_reg[63]_0 [0]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(\int_input_r_reg[63]_0 [32]),
        .I5(\rdata[1]_i_5_n_0 ),
        .O(\rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[1]_i_4 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [0]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [32]),
        .I5(\rdata[1]_i_6_n_0 ),
        .O(\rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0C0E0C02000E0002)) 
    \rdata[1]_i_5 
       (.I0(int_task_ap_done),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(\int_ier_reg_n_0_[1] ),
        .I5(\int_isr_reg_n_0_[1] ),
        .O(\rdata[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00B80000)) 
    \rdata[1]_i_6 
       (.I0(\int_weights_reg[63]_0 [33]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [1]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[3]),
        .O(\rdata[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBABF0000BABFBABF)) 
    \rdata[20]_i_2 
       (.I0(\rdata[31]_i_5_n_0 ),
        .I1(\int_input_r_reg[63]_0 [19]),
        .I2(\rdata[31]_i_6_n_0 ),
        .I3(\int_input_r_reg[63]_0 [51]),
        .I4(\rdata[20]_i_3_n_0 ),
        .I5(\rdata[15]_i_2_n_0 ),
        .O(\rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[20]_i_3 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [19]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [51]),
        .I5(\rdata[20]_i_4_n_0 ),
        .O(\rdata[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \rdata[20]_i_4 
       (.I0(\int_weights_reg[63]_0 [52]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [20]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBABF0000BABFBABF)) 
    \rdata[21]_i_2 
       (.I0(\rdata[31]_i_5_n_0 ),
        .I1(\int_input_r_reg[63]_0 [20]),
        .I2(\rdata[31]_i_6_n_0 ),
        .I3(\int_input_r_reg[63]_0 [52]),
        .I4(\rdata[21]_i_3_n_0 ),
        .I5(\rdata[15]_i_2_n_0 ),
        .O(\rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[21]_i_3 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [20]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [52]),
        .I5(\rdata[21]_i_4_n_0 ),
        .O(\rdata[21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \rdata[21]_i_4 
       (.I0(\int_weights_reg[63]_0 [53]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [21]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBABF0000BABFBABF)) 
    \rdata[22]_i_2 
       (.I0(\rdata[31]_i_5_n_0 ),
        .I1(\int_input_r_reg[63]_0 [21]),
        .I2(\rdata[31]_i_6_n_0 ),
        .I3(\int_input_r_reg[63]_0 [53]),
        .I4(\rdata[22]_i_3_n_0 ),
        .I5(\rdata[15]_i_2_n_0 ),
        .O(\rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[22]_i_3 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [21]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [53]),
        .I5(\rdata[22]_i_4_n_0 ),
        .O(\rdata[22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \rdata[22]_i_4 
       (.I0(\int_weights_reg[63]_0 [54]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [22]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBABF0000BABFBABF)) 
    \rdata[23]_i_2 
       (.I0(\rdata[31]_i_5_n_0 ),
        .I1(\int_input_r_reg[63]_0 [22]),
        .I2(\rdata[31]_i_6_n_0 ),
        .I3(\int_input_r_reg[63]_0 [54]),
        .I4(\rdata[23]_i_3_n_0 ),
        .I5(\rdata[15]_i_2_n_0 ),
        .O(\rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[23]_i_3 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [22]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [54]),
        .I5(\rdata[23]_i_4_n_0 ),
        .O(\rdata[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \rdata[23]_i_4 
       (.I0(\int_weights_reg[63]_0 [55]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [23]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBABF0000BABFBABF)) 
    \rdata[24]_i_2 
       (.I0(\rdata[31]_i_5_n_0 ),
        .I1(\int_input_r_reg[63]_0 [23]),
        .I2(\rdata[31]_i_6_n_0 ),
        .I3(\int_input_r_reg[63]_0 [55]),
        .I4(\rdata[24]_i_3_n_0 ),
        .I5(\rdata[15]_i_2_n_0 ),
        .O(\rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[24]_i_3 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [23]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [55]),
        .I5(\rdata[24]_i_4_n_0 ),
        .O(\rdata[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \rdata[24]_i_4 
       (.I0(\int_weights_reg[63]_0 [56]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [24]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBABF0000BABFBABF)) 
    \rdata[25]_i_2 
       (.I0(\rdata[31]_i_5_n_0 ),
        .I1(\int_input_r_reg[63]_0 [24]),
        .I2(\rdata[31]_i_6_n_0 ),
        .I3(\int_input_r_reg[63]_0 [56]),
        .I4(\rdata[25]_i_3_n_0 ),
        .I5(\rdata[15]_i_2_n_0 ),
        .O(\rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[25]_i_3 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [24]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [56]),
        .I5(\rdata[25]_i_4_n_0 ),
        .O(\rdata[25]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \rdata[25]_i_4 
       (.I0(\int_weights_reg[63]_0 [57]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [25]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBABF0000BABFBABF)) 
    \rdata[26]_i_2 
       (.I0(\rdata[31]_i_5_n_0 ),
        .I1(\int_input_r_reg[63]_0 [25]),
        .I2(\rdata[31]_i_6_n_0 ),
        .I3(\int_input_r_reg[63]_0 [57]),
        .I4(\rdata[26]_i_3_n_0 ),
        .I5(\rdata[15]_i_2_n_0 ),
        .O(\rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[26]_i_3 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [25]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [57]),
        .I5(\rdata[26]_i_4_n_0 ),
        .O(\rdata[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \rdata[26]_i_4 
       (.I0(\int_weights_reg[63]_0 [58]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [26]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBABF0000BABFBABF)) 
    \rdata[27]_i_2 
       (.I0(\rdata[31]_i_5_n_0 ),
        .I1(\int_input_r_reg[63]_0 [26]),
        .I2(\rdata[31]_i_6_n_0 ),
        .I3(\int_input_r_reg[63]_0 [58]),
        .I4(\rdata[27]_i_3_n_0 ),
        .I5(\rdata[15]_i_2_n_0 ),
        .O(\rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[27]_i_3 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [26]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [58]),
        .I5(\rdata[27]_i_4_n_0 ),
        .O(\rdata[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \rdata[27]_i_4 
       (.I0(\int_weights_reg[63]_0 [59]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [27]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBABF0000BABFBABF)) 
    \rdata[28]_i_2 
       (.I0(\rdata[31]_i_5_n_0 ),
        .I1(\int_input_r_reg[63]_0 [27]),
        .I2(\rdata[31]_i_6_n_0 ),
        .I3(\int_input_r_reg[63]_0 [59]),
        .I4(\rdata[28]_i_3_n_0 ),
        .I5(\rdata[15]_i_2_n_0 ),
        .O(\rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[28]_i_3 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [27]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [59]),
        .I5(\rdata[28]_i_4_n_0 ),
        .O(\rdata[28]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \rdata[28]_i_4 
       (.I0(\int_weights_reg[63]_0 [60]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [28]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBABF0000BABFBABF)) 
    \rdata[29]_i_2 
       (.I0(\rdata[31]_i_5_n_0 ),
        .I1(\int_input_r_reg[63]_0 [28]),
        .I2(\rdata[31]_i_6_n_0 ),
        .I3(\int_input_r_reg[63]_0 [60]),
        .I4(\rdata[29]_i_3_n_0 ),
        .I5(\rdata[15]_i_2_n_0 ),
        .O(\rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[29]_i_3 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [28]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [60]),
        .I5(\rdata[29]_i_4_n_0 ),
        .O(\rdata[29]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \rdata[29]_i_4 
       (.I0(\int_weights_reg[63]_0 [61]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [29]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEFECEFEC0000EFEC)) 
    \rdata[2]_i_2 
       (.I0(\rdata[2]_i_3_n_0 ),
        .I1(s_axi_control_ARADDR[6]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\rdata[2]_i_4_n_0 ),
        .I4(\int_numOfInNeurons_reg[15]_0 [2]),
        .I5(\rdata[15]_i_7_n_0 ),
        .O(\rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[2]_i_3 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [1]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [33]),
        .I5(\rdata[2]_i_5_n_0 ),
        .O(\rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DDDFFFDF)) 
    \rdata[2]_i_4 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(\int_input_r_reg[63]_0 [1]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(\int_input_r_reg[63]_0 [33]),
        .I5(\rdata[2]_i_6_n_0 ),
        .O(\rdata[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0000B800)) 
    \rdata[2]_i_5 
       (.I0(\int_weights_reg[63]_0 [34]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00300022)) 
    \rdata[2]_i_6 
       (.I0(p_7_in[2]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_ier_reg_n_0_[2] ),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[3]),
        .O(\rdata[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBABF0000BABFBABF)) 
    \rdata[30]_i_2 
       (.I0(\rdata[31]_i_5_n_0 ),
        .I1(\int_input_r_reg[63]_0 [29]),
        .I2(\rdata[31]_i_6_n_0 ),
        .I3(\int_input_r_reg[63]_0 [61]),
        .I4(\rdata[30]_i_3_n_0 ),
        .I5(\rdata[15]_i_2_n_0 ),
        .O(\rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[30]_i_3 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [29]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [61]),
        .I5(\rdata[30]_i_4_n_0 ),
        .O(\rdata[30]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \rdata[30]_i_4 
       (.I0(\int_weights_reg[63]_0 [62]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [30]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[30]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hABAA)) 
    \rdata[31]_i_1 
       (.I0(int_output_r_read),
        .I1(rstate[0]),
        .I2(rstate[1]),
        .I3(s_axi_control_ARVALID),
        .O(\rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBABF0000BABFBABF)) 
    \rdata[31]_i_3 
       (.I0(\rdata[31]_i_5_n_0 ),
        .I1(\int_input_r_reg[63]_0 [30]),
        .I2(\rdata[31]_i_6_n_0 ),
        .I3(\int_input_r_reg[63]_0 [62]),
        .I4(\rdata[31]_i_7_n_0 ),
        .I5(\rdata[15]_i_2_n_0 ),
        .O(\rdata[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \rdata[31]_i_5 
       (.I0(s_axi_control_ARADDR[6]),
        .I1(s_axi_control_ARADDR[5]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .O(\rdata[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \rdata[31]_i_6 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .O(\rdata[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[31]_i_7 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [30]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [62]),
        .I5(\rdata[31]_i_8_n_0 ),
        .O(\rdata[31]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \rdata[31]_i_8 
       (.I0(\int_weights_reg[63]_0 [63]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [31]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF3F3F3A2F300F3A2)) 
    \rdata[3]_i_2 
       (.I0(\rdata[3]_i_3_n_0 ),
        .I1(\int_numOfInNeurons_reg[15]_0 [3]),
        .I2(\rdata[15]_i_7_n_0 ),
        .I3(s_axi_control_ARADDR[6]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\rdata[3]_i_4_n_0 ),
        .O(\rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F3F7FFF7)) 
    \rdata[3]_i_3 
       (.I0(\int_input_r_reg[63]_0 [2]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(\int_input_r_reg[63]_0 [34]),
        .I5(\rdata[3]_i_5_n_0 ),
        .O(\rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[3]_i_4 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [2]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [34]),
        .I5(\rdata[3]_i_6_n_0 ),
        .O(\rdata[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00300022)) 
    \rdata[3]_i_5 
       (.I0(int_ap_ready),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_ier_reg_n_0_[3] ),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[3]),
        .O(\rdata[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00B80000)) 
    \rdata[3]_i_6 
       (.I0(\int_weights_reg[63]_0 [35]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [3]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[3]),
        .O(\rdata[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEFECEFEC0000EFEC)) 
    \rdata[4]_i_2 
       (.I0(\rdata[4]_i_3_n_0 ),
        .I1(s_axi_control_ARADDR[6]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\rdata[4]_i_4_n_0 ),
        .I4(\int_numOfInNeurons_reg[15]_0 [4]),
        .I5(\rdata[15]_i_7_n_0 ),
        .O(\rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[4]_i_3 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [35]),
        .I5(\rdata[4]_i_5_n_0 ),
        .O(\rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF0FF3535FFFF)) 
    \rdata[4]_i_4 
       (.I0(\int_input_r_reg[63]_0 [3]),
        .I1(\int_input_r_reg[63]_0 [35]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(\int_ier_reg_n_0_[4] ),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[3]),
        .O(\rdata[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \rdata[4]_i_5 
       (.I0(\int_weights_reg[63]_0 [36]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEFECEFEC0000EFEC)) 
    \rdata[5]_i_2 
       (.I0(\rdata[5]_i_3_n_0 ),
        .I1(s_axi_control_ARADDR[6]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\rdata[5]_i_4_n_0 ),
        .I4(\int_numOfInNeurons_reg[15]_0 [5]),
        .I5(\rdata[15]_i_7_n_0 ),
        .O(\rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[5]_i_3 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [4]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [36]),
        .I5(\rdata[5]_i_5_n_0 ),
        .O(\rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DDDFFFDF)) 
    \rdata[5]_i_4 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(\int_input_r_reg[63]_0 [4]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(\int_input_r_reg[63]_0 [36]),
        .I5(\rdata[5]_i_6_n_0 ),
        .O(\rdata[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \rdata[5]_i_5 
       (.I0(\int_weights_reg[63]_0 [37]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [5]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \rdata[5]_i_6 
       (.I0(\int_isr_reg_n_0_[5] ),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_ier_reg_n_0_[5] ),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[3]),
        .O(\rdata[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[6]_i_2 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [5]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [37]),
        .I5(\rdata[6]_i_4_n_0 ),
        .O(\rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \rdata[6]_i_3 
       (.I0(\rdata[15]_i_7_n_0 ),
        .I1(\int_numOfInNeurons_reg[15]_0 [6]),
        .I2(\rdata[31]_i_5_n_0 ),
        .I3(\int_input_r_reg[63]_0 [5]),
        .I4(\rdata[31]_i_6_n_0 ),
        .I5(\int_input_r_reg[63]_0 [37]),
        .O(\rdata[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \rdata[6]_i_4 
       (.I0(\int_weights_reg[63]_0 [38]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [6]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF1D0000FFFFFFFF)) 
    \rdata[7]_i_2 
       (.I0(\int_weights_reg[63]_0 [39]),
        .I1(\rdata[7]_i_5_n_0 ),
        .I2(\int_weights_reg[63]_0 [7]),
        .I3(\rdata[7]_i_6_n_0 ),
        .I4(\rdata[7]_i_7_n_0 ),
        .I5(\rdata[15]_i_2_n_0 ),
        .O(\rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \rdata[7]_i_3 
       (.I0(\rdata[15]_i_7_n_0 ),
        .I1(\int_numOfInNeurons_reg[15]_0 [7]),
        .I2(\rdata[31]_i_5_n_0 ),
        .I3(\int_input_r_reg[63]_0 [6]),
        .I4(\rdata[31]_i_6_n_0 ),
        .I5(\int_input_r_reg[63]_0 [38]),
        .O(\rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \rdata[7]_i_4 
       (.I0(p_7_in[7]),
        .I1(s_axi_control_ARADDR[5]),
        .I2(s_axi_control_ARADDR[6]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[3]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h13)) 
    \rdata[7]_i_5 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[2]),
        .O(\rdata[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \rdata[7]_i_6 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARADDR[3]),
        .O(\rdata[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hC7F7FFFF)) 
    \rdata[7]_i_7 
       (.I0(\int_bias_reg[63]_0 [38]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(\int_bias_reg[63]_0 [6]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[8]_i_2 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [7]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [39]),
        .I5(\rdata[8]_i_4_n_0 ),
        .O(\rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \rdata[8]_i_3 
       (.I0(\rdata[15]_i_7_n_0 ),
        .I1(\int_numOfInNeurons_reg[15]_0 [8]),
        .I2(\rdata[31]_i_5_n_0 ),
        .I3(\int_input_r_reg[63]_0 [7]),
        .I4(\rdata[31]_i_6_n_0 ),
        .I5(\int_input_r_reg[63]_0 [39]),
        .O(\rdata[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \rdata[8]_i_4 
       (.I0(\int_weights_reg[63]_0 [40]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [8]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F57FFF7F)) 
    \rdata[9]_i_2 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_bias_reg[63]_0 [8]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_bias_reg[63]_0 [40]),
        .I5(\rdata[9]_i_4_n_0 ),
        .O(\rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \rdata[9]_i_3 
       (.I0(\rdata[15]_i_7_n_0 ),
        .I1(\int_numOfInNeurons_reg[15]_0 [9]),
        .I2(\rdata[31]_i_5_n_0 ),
        .I3(\int_input_r_reg[63]_0 [8]),
        .I4(\rdata[31]_i_6_n_0 ),
        .I5(\int_input_r_reg[63]_0 [40]),
        .O(\rdata[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \rdata[9]_i_4 
       (.I0(\int_weights_reg[63]_0 [41]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\int_weights_reg[63]_0 [9]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[9]_i_4_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(s_axi_control_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[10]),
        .Q(s_axi_control_RDATA[10]),
        .R(1'b0));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[11]),
        .Q(s_axi_control_RDATA[11]),
        .R(1'b0));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[12]),
        .Q(s_axi_control_RDATA[12]),
        .R(1'b0));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[13]),
        .Q(s_axi_control_RDATA[13]),
        .R(1'b0));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[14]),
        .Q(s_axi_control_RDATA[14]),
        .R(1'b0));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[15]),
        .Q(s_axi_control_RDATA[15]),
        .R(1'b0));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[16]),
        .Q(s_axi_control_RDATA[16]),
        .R(1'b0));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[17]),
        .Q(s_axi_control_RDATA[17]),
        .R(1'b0));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[18]),
        .Q(s_axi_control_RDATA[18]),
        .R(1'b0));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[19]),
        .Q(s_axi_control_RDATA[19]),
        .R(1'b0));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(s_axi_control_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[20]),
        .Q(s_axi_control_RDATA[20]),
        .R(1'b0));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[21]),
        .Q(s_axi_control_RDATA[21]),
        .R(1'b0));
  FDRE \rdata_reg[22] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[22]),
        .Q(s_axi_control_RDATA[22]),
        .R(1'b0));
  FDRE \rdata_reg[23] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[23]),
        .Q(s_axi_control_RDATA[23]),
        .R(1'b0));
  FDRE \rdata_reg[24] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[24]),
        .Q(s_axi_control_RDATA[24]),
        .R(1'b0));
  FDRE \rdata_reg[25] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[25]),
        .Q(s_axi_control_RDATA[25]),
        .R(1'b0));
  FDRE \rdata_reg[26] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[26]),
        .Q(s_axi_control_RDATA[26]),
        .R(1'b0));
  FDRE \rdata_reg[27] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[27]),
        .Q(s_axi_control_RDATA[27]),
        .R(1'b0));
  FDRE \rdata_reg[28] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[28]),
        .Q(s_axi_control_RDATA[28]),
        .R(1'b0));
  FDRE \rdata_reg[29] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[29]),
        .Q(s_axi_control_RDATA[29]),
        .R(1'b0));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(s_axi_control_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[30] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[30]),
        .Q(s_axi_control_RDATA[30]),
        .R(1'b0));
  FDRE \rdata_reg[31] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[31]),
        .Q(s_axi_control_RDATA[31]),
        .R(1'b0));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(s_axi_control_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(s_axi_control_RDATA[4]),
        .R(1'b0));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(s_axi_control_RDATA[5]),
        .R(1'b0));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(s_axi_control_RDATA[6]),
        .R(1'b0));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(s_axi_control_RDATA[7]),
        .R(1'b0));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[8]),
        .Q(s_axi_control_RDATA[8]),
        .R(1'b0));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[9]),
        .Q(s_axi_control_RDATA[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h0B080F0C)) 
    \rstate[0]_i_1 
       (.I0(int_output_r_read),
        .I1(rstate[0]),
        .I2(rstate[1]),
        .I3(s_axi_control_ARVALID),
        .I4(s_axi_control_RREADY),
        .O(\rstate[0]_i_1_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_control_ARREADY_INST_0
       (.I0(rstate[1]),
        .I1(rstate[0]),
        .O(s_axi_control_ARREADY));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_control_AWREADY_INST_0
       (.I0(wstate[0]),
        .I1(wstate[1]),
        .O(s_axi_control_AWREADY));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_control_BVALID_INST_0
       (.I0(wstate[1]),
        .I1(wstate[0]),
        .O(s_axi_control_BVALID));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h04)) 
    s_axi_control_RVALID_INST_0
       (.I0(rstate[1]),
        .I1(rstate[0]),
        .I2(int_output_r_read),
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
    \waddr[6]_i_1 
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00CA00FA)) 
    \wstate[0]_i_1 
       (.I0(s_axi_control_AWVALID),
        .I1(int_output_r_n_81),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .I4(s_axi_control_WVALID),
        .O(\wstate[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00440F00)) 
    \wstate[1]_i_1 
       (.I0(int_output_r_n_81),
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
   (DOBDO,
    \output_r_addr_1_reg_473_reg[0] ,
    add_ln33_fu_349_p2,
    D,
    s_axi_control_ARVALID_0,
    ap_clk,
    output_r_ce0,
    s_axi_control_WDATA,
    DIBDI,
    Q,
    mem_reg_0,
    output_r_addr_1_reg_473,
    output_r_addr_reg_458,
    zext_ln25_reg_441,
    mem_reg_i_38_0,
    DOADO,
    DI,
    mem_reg_1,
    mem_reg_2,
    mem_reg_3,
    \rdata_reg[0] ,
    s_axi_control_ARADDR,
    \rdata_reg[1] ,
    \rdata_reg[2] ,
    \rdata_reg[3] ,
    \rdata_reg[4] ,
    \rdata_reg[5] ,
    \rdata_reg[6] ,
    \rdata_reg[6]_0 ,
    \rdata_reg[6]_1 ,
    \rdata_reg[6]_2 ,
    \rdata_reg[7] ,
    \rdata_reg[7]_0 ,
    \rdata_reg[7]_1 ,
    \rdata_reg[8] ,
    \rdata_reg[8]_0 ,
    \rdata_reg[9] ,
    \rdata_reg[9]_0 ,
    \rdata_reg[10] ,
    \rdata_reg[10]_0 ,
    \rdata_reg[11] ,
    \rdata_reg[11]_0 ,
    \rdata_reg[12] ,
    \rdata_reg[12]_0 ,
    \rdata_reg[13] ,
    \rdata_reg[13]_0 ,
    \rdata_reg[14] ,
    \rdata_reg[14]_0 ,
    \rdata_reg[15] ,
    \rdata_reg[15]_0 ,
    \rdata_reg[16] ,
    \rdata_reg[17] ,
    \rdata_reg[18] ,
    \rdata_reg[19] ,
    \rdata_reg[20] ,
    \rdata_reg[21] ,
    \rdata_reg[22] ,
    \rdata_reg[23] ,
    \rdata_reg[24] ,
    \rdata_reg[25] ,
    \rdata_reg[26] ,
    \rdata_reg[27] ,
    \rdata_reg[28] ,
    \rdata_reg[29] ,
    \rdata_reg[30] ,
    \rdata_reg[31] ,
    rstate,
    s_axi_control_ARVALID,
    mem_reg_4,
    s_axi_control_WVALID,
    mem_reg_5,
    s_axi_control_WSTRB,
    wstate);
  output [31:0]DOBDO;
  output [0:0]\output_r_addr_1_reg_473_reg[0] ;
  output [15:0]add_ln33_fu_349_p2;
  output [31:0]D;
  output s_axi_control_ARVALID_0;
  input ap_clk;
  input output_r_ce0;
  input [31:0]s_axi_control_WDATA;
  input [15:0]DIBDI;
  input [2:0]Q;
  input mem_reg_0;
  input [1:0]output_r_addr_1_reg_473;
  input [1:0]output_r_addr_reg_458;
  input [1:0]zext_ln25_reg_441;
  input mem_reg_i_38_0;
  input [15:0]DOADO;
  input [3:0]DI;
  input [3:0]mem_reg_1;
  input [3:0]mem_reg_2;
  input [2:0]mem_reg_3;
  input \rdata_reg[0] ;
  input [2:0]s_axi_control_ARADDR;
  input \rdata_reg[1] ;
  input \rdata_reg[2] ;
  input \rdata_reg[3] ;
  input \rdata_reg[4] ;
  input \rdata_reg[5] ;
  input \rdata_reg[6] ;
  input \rdata_reg[6]_0 ;
  input \rdata_reg[6]_1 ;
  input \rdata_reg[6]_2 ;
  input \rdata_reg[7] ;
  input \rdata_reg[7]_0 ;
  input \rdata_reg[7]_1 ;
  input \rdata_reg[8] ;
  input \rdata_reg[8]_0 ;
  input \rdata_reg[9] ;
  input \rdata_reg[9]_0 ;
  input \rdata_reg[10] ;
  input \rdata_reg[10]_0 ;
  input \rdata_reg[11] ;
  input \rdata_reg[11]_0 ;
  input \rdata_reg[12] ;
  input \rdata_reg[12]_0 ;
  input \rdata_reg[13] ;
  input \rdata_reg[13]_0 ;
  input \rdata_reg[14] ;
  input \rdata_reg[14]_0 ;
  input \rdata_reg[15] ;
  input \rdata_reg[15]_0 ;
  input \rdata_reg[16] ;
  input \rdata_reg[17] ;
  input \rdata_reg[18] ;
  input \rdata_reg[19] ;
  input \rdata_reg[20] ;
  input \rdata_reg[21] ;
  input \rdata_reg[22] ;
  input \rdata_reg[23] ;
  input \rdata_reg[24] ;
  input \rdata_reg[25] ;
  input \rdata_reg[26] ;
  input \rdata_reg[27] ;
  input \rdata_reg[28] ;
  input \rdata_reg[29] ;
  input \rdata_reg[30] ;
  input \rdata_reg[31] ;
  input [1:0]rstate;
  input s_axi_control_ARVALID;
  input mem_reg_4;
  input s_axi_control_WVALID;
  input [0:0]mem_reg_5;
  input [3:0]s_axi_control_WSTRB;
  input [1:0]wstate;

  wire [31:0]D;
  wire [3:0]DI;
  wire [15:0]DIBDI;
  wire [15:0]DOADO;
  wire [31:0]DOBDO;
  wire [2:0]Q;
  wire [15:0]add_ln33_fu_349_p2;
  wire ap_clk;
  wire int_output_r_address1;
  wire [3:0]int_output_r_be1;
  wire int_output_r_ce1;
  wire mem_reg_0;
  wire [3:0]mem_reg_1;
  wire [3:0]mem_reg_2;
  wire [2:0]mem_reg_3;
  wire mem_reg_4;
  wire [0:0]mem_reg_5;
  wire mem_reg_i_34_n_0;
  wire mem_reg_i_35_n_1;
  wire mem_reg_i_35_n_2;
  wire mem_reg_i_35_n_3;
  wire mem_reg_i_36_n_0;
  wire mem_reg_i_36_n_1;
  wire mem_reg_i_36_n_2;
  wire mem_reg_i_36_n_3;
  wire mem_reg_i_37_n_0;
  wire mem_reg_i_37_n_1;
  wire mem_reg_i_37_n_2;
  wire mem_reg_i_37_n_3;
  wire mem_reg_i_38_0;
  wire mem_reg_i_38_n_0;
  wire mem_reg_i_38_n_1;
  wire mem_reg_i_38_n_2;
  wire mem_reg_i_38_n_3;
  wire mem_reg_i_43_n_0;
  wire mem_reg_i_44_n_0;
  wire mem_reg_i_45_n_0;
  wire mem_reg_i_46_n_0;
  wire mem_reg_i_51_n_0;
  wire mem_reg_i_52_n_0;
  wire mem_reg_i_53_n_0;
  wire mem_reg_i_54_n_0;
  wire mem_reg_i_59_n_0;
  wire mem_reg_i_60_n_0;
  wire mem_reg_i_61_n_0;
  wire mem_reg_i_62_n_0;
  wire mem_reg_i_67_n_0;
  wire mem_reg_i_68_n_0;
  wire mem_reg_i_69_n_0;
  wire mem_reg_i_70_n_0;
  wire mem_reg_n_10;
  wire mem_reg_n_11;
  wire mem_reg_n_12;
  wire mem_reg_n_13;
  wire mem_reg_n_14;
  wire mem_reg_n_15;
  wire mem_reg_n_16;
  wire mem_reg_n_17;
  wire mem_reg_n_18;
  wire mem_reg_n_19;
  wire mem_reg_n_20;
  wire mem_reg_n_21;
  wire mem_reg_n_22;
  wire mem_reg_n_23;
  wire mem_reg_n_24;
  wire mem_reg_n_25;
  wire mem_reg_n_26;
  wire mem_reg_n_27;
  wire mem_reg_n_28;
  wire mem_reg_n_29;
  wire mem_reg_n_30;
  wire mem_reg_n_31;
  wire mem_reg_n_32;
  wire mem_reg_n_33;
  wire mem_reg_n_34;
  wire mem_reg_n_35;
  wire mem_reg_n_4;
  wire mem_reg_n_5;
  wire mem_reg_n_6;
  wire mem_reg_n_7;
  wire mem_reg_n_8;
  wire mem_reg_n_9;
  wire [1:0]output_r_addr_1_reg_473;
  wire [0:0]\output_r_addr_1_reg_473_reg[0] ;
  wire [1:0]output_r_addr_reg_458;
  wire [1:1]output_r_address0;
  wire output_r_ce0;
  wire [31:24]p_2_in;
  wire p_2_out;
  wire \rdata_reg[0] ;
  wire \rdata_reg[10] ;
  wire \rdata_reg[10]_0 ;
  wire \rdata_reg[11] ;
  wire \rdata_reg[11]_0 ;
  wire \rdata_reg[12] ;
  wire \rdata_reg[12]_0 ;
  wire \rdata_reg[13] ;
  wire \rdata_reg[13]_0 ;
  wire \rdata_reg[14] ;
  wire \rdata_reg[14]_0 ;
  wire \rdata_reg[15] ;
  wire \rdata_reg[15]_0 ;
  wire \rdata_reg[16] ;
  wire \rdata_reg[17] ;
  wire \rdata_reg[18] ;
  wire \rdata_reg[19] ;
  wire \rdata_reg[1] ;
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
  wire \rdata_reg[2] ;
  wire \rdata_reg[30] ;
  wire \rdata_reg[31] ;
  wire \rdata_reg[3] ;
  wire \rdata_reg[4] ;
  wire \rdata_reg[5] ;
  wire \rdata_reg[6] ;
  wire \rdata_reg[6]_0 ;
  wire \rdata_reg[6]_1 ;
  wire \rdata_reg[6]_2 ;
  wire \rdata_reg[7] ;
  wire \rdata_reg[7]_0 ;
  wire \rdata_reg[7]_1 ;
  wire \rdata_reg[8] ;
  wire \rdata_reg[8]_0 ;
  wire \rdata_reg[9] ;
  wire \rdata_reg[9]_0 ;
  wire [1:0]rstate;
  wire [2:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire s_axi_control_ARVALID_0;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [1:0]wstate;
  wire [1:0]zext_ln25_reg_441;
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
  wire [3:3]NLW_mem_reg_i_35_CO_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "int_output_r/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "1022" *) 
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
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,int_output_r_address1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,output_r_address0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI({p_2_in,s_axi_control_WDATA[23:0]}),
        .DIBDI({DIBDI,DIBDI}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({mem_reg_n_4,mem_reg_n_5,mem_reg_n_6,mem_reg_n_7,mem_reg_n_8,mem_reg_n_9,mem_reg_n_10,mem_reg_n_11,mem_reg_n_12,mem_reg_n_13,mem_reg_n_14,mem_reg_n_15,mem_reg_n_16,mem_reg_n_17,mem_reg_n_18,mem_reg_n_19,mem_reg_n_20,mem_reg_n_21,mem_reg_n_22,mem_reg_n_23,mem_reg_n_24,mem_reg_n_25,mem_reg_n_26,mem_reg_n_27,mem_reg_n_28,mem_reg_n_29,mem_reg_n_30,mem_reg_n_31,mem_reg_n_32,mem_reg_n_33,mem_reg_n_34,mem_reg_n_35}),
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
        .WEBWE({1'b0,1'b0,1'b0,1'b0,p_2_out,p_2_out,mem_reg_i_34_n_0,mem_reg_i_34_n_0}));
  LUT5 #(
    .INIT(32'hFF101010)) 
    mem_reg_i_1
       (.I0(rstate[0]),
        .I1(rstate[1]),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_4),
        .I4(s_axi_control_WVALID),
        .O(int_output_r_ce1));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_10
       (.I0(s_axi_control_WDATA[26]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[26]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_11
       (.I0(s_axi_control_WDATA[25]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[25]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_12
       (.I0(s_axi_control_WDATA[24]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[24]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_29
       (.I0(s_axi_control_WSTRB[3]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_4),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_output_r_be1[3]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    mem_reg_i_3
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(rstate[0]),
        .I4(mem_reg_5),
        .O(int_output_r_address1));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_30
       (.I0(s_axi_control_WSTRB[2]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_4),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_output_r_be1[2]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_31
       (.I0(s_axi_control_WSTRB[1]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_4),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_output_r_be1[1]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mem_reg_i_32
       (.I0(s_axi_control_WSTRB[0]),
        .I1(s_axi_control_WVALID),
        .I2(mem_reg_4),
        .I3(s_axi_control_ARVALID_0),
        .I4(wstate[0]),
        .I5(wstate[1]),
        .O(int_output_r_be1[0]));
  LUT4 #(
    .INIT(16'hAA08)) 
    mem_reg_i_33
       (.I0(\output_r_addr_1_reg_473_reg[0] ),
        .I1(Q[0]),
        .I2(mem_reg_0),
        .I3(Q[2]),
        .O(p_2_out));
  LUT4 #(
    .INIT(16'h00F2)) 
    mem_reg_i_34
       (.I0(Q[0]),
        .I1(mem_reg_0),
        .I2(Q[2]),
        .I3(\output_r_addr_1_reg_473_reg[0] ),
        .O(mem_reg_i_34_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_i_35
       (.CI(mem_reg_i_36_n_0),
        .CO({NLW_mem_reg_i_35_CO_UNCONNECTED[3],mem_reg_i_35_n_1,mem_reg_i_35_n_2,mem_reg_i_35_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,mem_reg_3}),
        .O(add_ln33_fu_349_p2[15:12]),
        .S({mem_reg_i_43_n_0,mem_reg_i_44_n_0,mem_reg_i_45_n_0,mem_reg_i_46_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_i_36
       (.CI(mem_reg_i_37_n_0),
        .CO({mem_reg_i_36_n_0,mem_reg_i_36_n_1,mem_reg_i_36_n_2,mem_reg_i_36_n_3}),
        .CYINIT(1'b0),
        .DI(mem_reg_2),
        .O(add_ln33_fu_349_p2[11:8]),
        .S({mem_reg_i_51_n_0,mem_reg_i_52_n_0,mem_reg_i_53_n_0,mem_reg_i_54_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_i_37
       (.CI(mem_reg_i_38_n_0),
        .CO({mem_reg_i_37_n_0,mem_reg_i_37_n_1,mem_reg_i_37_n_2,mem_reg_i_37_n_3}),
        .CYINIT(1'b0),
        .DI(mem_reg_1),
        .O(add_ln33_fu_349_p2[7:4]),
        .S({mem_reg_i_59_n_0,mem_reg_i_60_n_0,mem_reg_i_61_n_0,mem_reg_i_62_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_i_38
       (.CI(1'b0),
        .CO({mem_reg_i_38_n_0,mem_reg_i_38_n_1,mem_reg_i_38_n_2,mem_reg_i_38_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(add_ln33_fu_349_p2[3:0]),
        .S({mem_reg_i_67_n_0,mem_reg_i_68_n_0,mem_reg_i_69_n_0,mem_reg_i_70_n_0}));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    mem_reg_i_39
       (.I0(output_r_addr_1_reg_473[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(output_r_addr_reg_458[0]),
        .I4(Q[0]),
        .I5(zext_ln25_reg_441[0]),
        .O(\output_r_addr_1_reg_473_reg[0] ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_43
       (.I0(DOBDO[15]),
        .I1(mem_reg_i_38_0),
        .I2(DOBDO[31]),
        .I3(DOADO[15]),
        .O(mem_reg_i_43_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_44
       (.I0(DOBDO[14]),
        .I1(mem_reg_i_38_0),
        .I2(DOBDO[30]),
        .I3(DOADO[14]),
        .O(mem_reg_i_44_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_45
       (.I0(DOBDO[13]),
        .I1(mem_reg_i_38_0),
        .I2(DOBDO[29]),
        .I3(DOADO[13]),
        .O(mem_reg_i_45_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_46
       (.I0(DOBDO[12]),
        .I1(mem_reg_i_38_0),
        .I2(DOBDO[28]),
        .I3(DOADO[12]),
        .O(mem_reg_i_46_n_0));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    mem_reg_i_4__0
       (.I0(output_r_addr_1_reg_473[1]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(output_r_addr_reg_458[1]),
        .I4(Q[0]),
        .I5(zext_ln25_reg_441[1]),
        .O(output_r_address0));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_5
       (.I0(s_axi_control_WDATA[31]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[31]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_51
       (.I0(DOBDO[11]),
        .I1(mem_reg_i_38_0),
        .I2(DOBDO[27]),
        .I3(DOADO[11]),
        .O(mem_reg_i_51_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_52
       (.I0(DOBDO[10]),
        .I1(mem_reg_i_38_0),
        .I2(DOBDO[26]),
        .I3(DOADO[10]),
        .O(mem_reg_i_52_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_53
       (.I0(DOBDO[9]),
        .I1(mem_reg_i_38_0),
        .I2(DOBDO[25]),
        .I3(DOADO[9]),
        .O(mem_reg_i_53_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_54
       (.I0(DOBDO[8]),
        .I1(mem_reg_i_38_0),
        .I2(DOBDO[24]),
        .I3(DOADO[8]),
        .O(mem_reg_i_54_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_59
       (.I0(DOBDO[7]),
        .I1(mem_reg_i_38_0),
        .I2(DOBDO[23]),
        .I3(DOADO[7]),
        .O(mem_reg_i_59_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_6
       (.I0(s_axi_control_WDATA[30]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[30]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_60
       (.I0(DOBDO[6]),
        .I1(mem_reg_i_38_0),
        .I2(DOBDO[22]),
        .I3(DOADO[6]),
        .O(mem_reg_i_60_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_61
       (.I0(DOBDO[5]),
        .I1(mem_reg_i_38_0),
        .I2(DOBDO[21]),
        .I3(DOADO[5]),
        .O(mem_reg_i_61_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_62
       (.I0(DOBDO[4]),
        .I1(mem_reg_i_38_0),
        .I2(DOBDO[20]),
        .I3(DOADO[4]),
        .O(mem_reg_i_62_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_67
       (.I0(DOBDO[3]),
        .I1(mem_reg_i_38_0),
        .I2(DOBDO[19]),
        .I3(DOADO[3]),
        .O(mem_reg_i_67_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_68
       (.I0(DOBDO[2]),
        .I1(mem_reg_i_38_0),
        .I2(DOBDO[18]),
        .I3(DOADO[2]),
        .O(mem_reg_i_68_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_69
       (.I0(DOBDO[1]),
        .I1(mem_reg_i_38_0),
        .I2(DOBDO[17]),
        .I3(DOADO[1]),
        .O(mem_reg_i_69_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_7
       (.I0(s_axi_control_WDATA[29]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[29]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    mem_reg_i_70
       (.I0(DOBDO[0]),
        .I1(mem_reg_i_38_0),
        .I2(DOBDO[16]),
        .I3(DOADO[0]),
        .O(mem_reg_i_70_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_8
       (.I0(s_axi_control_WDATA[28]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[28]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_9
       (.I0(s_axi_control_WDATA[27]),
        .I1(int_output_r_be1[3]),
        .O(p_2_in[27]));
  LUT5 #(
    .INIT(32'h0A0A0A3A)) 
    \rdata[0]_i_1 
       (.I0(mem_reg_n_35),
        .I1(\rdata_reg[0] ),
        .I2(s_axi_control_ARVALID_0),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \rdata[10]_i_1 
       (.I0(s_axi_control_ARVALID_0),
        .I1(mem_reg_n_25),
        .I2(\rdata_reg[6] ),
        .I3(\rdata_reg[10] ),
        .I4(\rdata_reg[10]_0 ),
        .I5(\rdata_reg[6]_2 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \rdata[11]_i_1 
       (.I0(s_axi_control_ARVALID_0),
        .I1(mem_reg_n_24),
        .I2(\rdata_reg[6] ),
        .I3(\rdata_reg[11] ),
        .I4(\rdata_reg[11]_0 ),
        .I5(\rdata_reg[6]_2 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \rdata[12]_i_1 
       (.I0(s_axi_control_ARVALID_0),
        .I1(mem_reg_n_23),
        .I2(\rdata_reg[6] ),
        .I3(\rdata_reg[12] ),
        .I4(\rdata_reg[12]_0 ),
        .I5(\rdata_reg[6]_2 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \rdata[13]_i_1 
       (.I0(s_axi_control_ARVALID_0),
        .I1(mem_reg_n_22),
        .I2(\rdata_reg[6] ),
        .I3(\rdata_reg[13] ),
        .I4(\rdata_reg[13]_0 ),
        .I5(\rdata_reg[6]_2 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \rdata[14]_i_1 
       (.I0(s_axi_control_ARVALID_0),
        .I1(mem_reg_n_21),
        .I2(\rdata_reg[6] ),
        .I3(\rdata_reg[14] ),
        .I4(\rdata_reg[14]_0 ),
        .I5(\rdata_reg[6]_2 ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \rdata[15]_i_1 
       (.I0(s_axi_control_ARVALID_0),
        .I1(mem_reg_n_20),
        .I2(\rdata_reg[6] ),
        .I3(\rdata_reg[15] ),
        .I4(\rdata_reg[15]_0 ),
        .I5(\rdata_reg[6]_2 ),
        .O(D[15]));
  LUT5 #(
    .INIT(32'h0A0A0A3A)) 
    \rdata[16]_i_1 
       (.I0(mem_reg_n_19),
        .I1(\rdata_reg[16] ),
        .I2(s_axi_control_ARVALID_0),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .O(D[16]));
  LUT5 #(
    .INIT(32'h0A0A0A3A)) 
    \rdata[17]_i_1 
       (.I0(mem_reg_n_18),
        .I1(\rdata_reg[17] ),
        .I2(s_axi_control_ARVALID_0),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .O(D[17]));
  LUT5 #(
    .INIT(32'h0A0A0A3A)) 
    \rdata[18]_i_1 
       (.I0(mem_reg_n_17),
        .I1(\rdata_reg[18] ),
        .I2(s_axi_control_ARVALID_0),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .O(D[18]));
  LUT5 #(
    .INIT(32'h0A0A0A3A)) 
    \rdata[19]_i_1 
       (.I0(mem_reg_n_16),
        .I1(\rdata_reg[19] ),
        .I2(s_axi_control_ARVALID_0),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .O(D[19]));
  LUT5 #(
    .INIT(32'h0A0A0A3A)) 
    \rdata[1]_i_1 
       (.I0(mem_reg_n_34),
        .I1(\rdata_reg[1] ),
        .I2(s_axi_control_ARVALID_0),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h0A0A0A3A)) 
    \rdata[20]_i_1 
       (.I0(mem_reg_n_15),
        .I1(\rdata_reg[20] ),
        .I2(s_axi_control_ARVALID_0),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .O(D[20]));
  LUT5 #(
    .INIT(32'h0A0A0A3A)) 
    \rdata[21]_i_1 
       (.I0(mem_reg_n_14),
        .I1(\rdata_reg[21] ),
        .I2(s_axi_control_ARVALID_0),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .O(D[21]));
  LUT5 #(
    .INIT(32'h0A0A0A3A)) 
    \rdata[22]_i_1 
       (.I0(mem_reg_n_13),
        .I1(\rdata_reg[22] ),
        .I2(s_axi_control_ARVALID_0),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .O(D[22]));
  LUT5 #(
    .INIT(32'h0A0A0A3A)) 
    \rdata[23]_i_1 
       (.I0(mem_reg_n_12),
        .I1(\rdata_reg[23] ),
        .I2(s_axi_control_ARVALID_0),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .O(D[23]));
  LUT5 #(
    .INIT(32'h0A0A0A3A)) 
    \rdata[24]_i_1 
       (.I0(mem_reg_n_11),
        .I1(\rdata_reg[24] ),
        .I2(s_axi_control_ARVALID_0),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .O(D[24]));
  LUT5 #(
    .INIT(32'h0A0A0A3A)) 
    \rdata[25]_i_1 
       (.I0(mem_reg_n_10),
        .I1(\rdata_reg[25] ),
        .I2(s_axi_control_ARVALID_0),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .O(D[25]));
  LUT5 #(
    .INIT(32'h0A0A0A3A)) 
    \rdata[26]_i_1 
       (.I0(mem_reg_n_9),
        .I1(\rdata_reg[26] ),
        .I2(s_axi_control_ARVALID_0),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .O(D[26]));
  LUT5 #(
    .INIT(32'h0A0A0A3A)) 
    \rdata[27]_i_1 
       (.I0(mem_reg_n_8),
        .I1(\rdata_reg[27] ),
        .I2(s_axi_control_ARVALID_0),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .O(D[27]));
  LUT5 #(
    .INIT(32'h0A0A0A3A)) 
    \rdata[28]_i_1 
       (.I0(mem_reg_n_7),
        .I1(\rdata_reg[28] ),
        .I2(s_axi_control_ARVALID_0),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .O(D[28]));
  LUT5 #(
    .INIT(32'h0A0A0A3A)) 
    \rdata[29]_i_1 
       (.I0(mem_reg_n_6),
        .I1(\rdata_reg[29] ),
        .I2(s_axi_control_ARVALID_0),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .O(D[29]));
  LUT5 #(
    .INIT(32'h0A0A0A3A)) 
    \rdata[2]_i_1 
       (.I0(mem_reg_n_33),
        .I1(\rdata_reg[2] ),
        .I2(s_axi_control_ARVALID_0),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h0A0A0A3A)) 
    \rdata[30]_i_1 
       (.I0(mem_reg_n_5),
        .I1(\rdata_reg[30] ),
        .I2(s_axi_control_ARVALID_0),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .O(D[30]));
  LUT5 #(
    .INIT(32'h0A0A0A3A)) 
    \rdata[31]_i_2 
       (.I0(mem_reg_n_4),
        .I1(\rdata_reg[31] ),
        .I2(s_axi_control_ARVALID_0),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .O(D[31]));
  LUT3 #(
    .INIT(8'h02)) 
    \rdata[31]_i_4 
       (.I0(s_axi_control_ARVALID),
        .I1(rstate[1]),
        .I2(rstate[0]),
        .O(s_axi_control_ARVALID_0));
  LUT5 #(
    .INIT(32'h0A0A0A3A)) 
    \rdata[3]_i_1 
       (.I0(mem_reg_n_32),
        .I1(\rdata_reg[3] ),
        .I2(s_axi_control_ARVALID_0),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h0A0A0A3A)) 
    \rdata[4]_i_1 
       (.I0(mem_reg_n_31),
        .I1(\rdata_reg[4] ),
        .I2(s_axi_control_ARVALID_0),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h0A0A0A3A)) 
    \rdata[5]_i_1 
       (.I0(mem_reg_n_30),
        .I1(\rdata_reg[5] ),
        .I2(s_axi_control_ARVALID_0),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \rdata[6]_i_1 
       (.I0(s_axi_control_ARVALID_0),
        .I1(mem_reg_n_29),
        .I2(\rdata_reg[6] ),
        .I3(\rdata_reg[6]_0 ),
        .I4(\rdata_reg[6]_1 ),
        .I5(\rdata_reg[6]_2 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFFF4F44444444)) 
    \rdata[7]_i_1 
       (.I0(s_axi_control_ARVALID_0),
        .I1(mem_reg_n_28),
        .I2(\rdata_reg[7] ),
        .I3(\rdata_reg[7]_0 ),
        .I4(\rdata_reg[7]_1 ),
        .I5(\rdata_reg[6]_2 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \rdata[8]_i_1 
       (.I0(s_axi_control_ARVALID_0),
        .I1(mem_reg_n_27),
        .I2(\rdata_reg[6] ),
        .I3(\rdata_reg[8] ),
        .I4(\rdata_reg[8]_0 ),
        .I5(\rdata_reg[6]_2 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \rdata[9]_i_1 
       (.I0(s_axi_control_ARVALID_0),
        .I1(mem_reg_n_26),
        .I2(\rdata_reg[6] ),
        .I3(\rdata_reg[9] ),
        .I4(\rdata_reg[9]_0 ),
        .I5(\rdata_reg[6]_2 ),
        .O(D[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_flow_control_loop_pipe_sequential_init
   (\empty_24_reg_416_reg[0] ,
    grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg_reg,
    CO,
    s_ready_t_reg,
    ap_enable_reg_pp0_iter8_reg,
    SR,
    E,
    ap_sig_allocacmp_inNeurons_1,
    ap_loop_init_int_reg_0,
    D,
    ap_rst_n_inv,
    ap_clk,
    \ap_CS_fsm_reg[22] ,
    \ap_CS_fsm_reg[21] ,
    ap_loop_exit_ready_pp0_iter11_reg,
    ap_block_pp0_stage0_subdone,
    grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg,
    \first_itr_reg_131_reg[0] ,
    gmem_ARREADY,
    \first_itr_reg_131_reg[0]_0 ,
    ap_rst_n,
    ap_done_cache_reg_0,
    ap_enable_reg_pp0_iter8,
    Q,
    icmp_ln29_reg_248_pp0_iter7_reg,
    \icmp_ln29_reg_248_reg[0] ,
    \icmp_ln29_reg_248_reg[0]_i_3_0 );
  output [1:0]\empty_24_reg_416_reg[0] ;
  output grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg_reg;
  output [0:0]CO;
  output s_ready_t_reg;
  output ap_enable_reg_pp0_iter8_reg;
  output [0:0]SR;
  output [0:0]E;
  output [6:0]ap_sig_allocacmp_inNeurons_1;
  output ap_loop_init_int_reg_0;
  output [15:0]D;
  input ap_rst_n_inv;
  input ap_clk;
  input \ap_CS_fsm_reg[22] ;
  input [2:0]\ap_CS_fsm_reg[21] ;
  input ap_loop_exit_ready_pp0_iter11_reg;
  input ap_block_pp0_stage0_subdone;
  input grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg;
  input \first_itr_reg_131_reg[0] ;
  input gmem_ARREADY;
  input \first_itr_reg_131_reg[0]_0 ;
  input ap_rst_n;
  input ap_done_cache_reg_0;
  input ap_enable_reg_pp0_iter8;
  input [0:0]Q;
  input icmp_ln29_reg_248_pp0_iter7_reg;
  input [15:0]\icmp_ln29_reg_248_reg[0] ;
  input [15:0]\icmp_ln29_reg_248_reg[0]_i_3_0 ;

  wire [0:0]CO;
  wire [15:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [2:0]\ap_CS_fsm_reg[21] ;
  wire \ap_CS_fsm_reg[22] ;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1__1_n_0;
  wire ap_done_cache_reg_0;
  wire ap_enable_reg_pp0_iter8;
  wire ap_enable_reg_pp0_iter8_reg;
  wire ap_loop_exit_ready_pp0_iter11_reg;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__1_n_0;
  wire ap_loop_init_int_i_2_n_0;
  wire ap_loop_init_int_reg_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [6:0]ap_sig_allocacmp_inNeurons_1;
  wire [15:7]ap_sig_allocacmp_inNeurons_1__0;
  wire [1:0]\empty_24_reg_416_reg[0] ;
  wire \first_itr_reg_131_reg[0] ;
  wire \first_itr_reg_131_reg[0]_0 ;
  wire gmem_ARREADY;
  wire grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_done;
  wire grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg;
  wire grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg_reg;
  wire \icmp_ln29_reg_248[0]_i_10_n_0 ;
  wire \icmp_ln29_reg_248[0]_i_11_n_0 ;
  wire \icmp_ln29_reg_248[0]_i_12_n_0 ;
  wire \icmp_ln29_reg_248[0]_i_13_n_0 ;
  wire \icmp_ln29_reg_248[0]_i_14_n_0 ;
  wire \icmp_ln29_reg_248[0]_i_15_n_0 ;
  wire \icmp_ln29_reg_248[0]_i_16_n_0 ;
  wire \icmp_ln29_reg_248[0]_i_17_n_0 ;
  wire \icmp_ln29_reg_248[0]_i_18_n_0 ;
  wire \icmp_ln29_reg_248[0]_i_19_n_0 ;
  wire \icmp_ln29_reg_248[0]_i_20_n_0 ;
  wire \icmp_ln29_reg_248[0]_i_21_n_0 ;
  wire \icmp_ln29_reg_248[0]_i_22_n_0 ;
  wire \icmp_ln29_reg_248[0]_i_5_n_0 ;
  wire \icmp_ln29_reg_248[0]_i_7_n_0 ;
  wire \icmp_ln29_reg_248[0]_i_8_n_0 ;
  wire \icmp_ln29_reg_248[0]_i_9_n_0 ;
  wire icmp_ln29_reg_248_pp0_iter7_reg;
  wire [15:0]\icmp_ln29_reg_248_reg[0] ;
  wire [15:0]\icmp_ln29_reg_248_reg[0]_i_3_0 ;
  wire \icmp_ln29_reg_248_reg[0]_i_3_n_0 ;
  wire \icmp_ln29_reg_248_reg[0]_i_3_n_1 ;
  wire \icmp_ln29_reg_248_reg[0]_i_3_n_2 ;
  wire \icmp_ln29_reg_248_reg[0]_i_3_n_3 ;
  wire \icmp_ln29_reg_248_reg[0]_i_6_n_0 ;
  wire \icmp_ln29_reg_248_reg[0]_i_6_n_1 ;
  wire \icmp_ln29_reg_248_reg[0]_i_6_n_2 ;
  wire \icmp_ln29_reg_248_reg[0]_i_6_n_3 ;
  wire \inNeurons_fu_68[15]_i_4_n_0 ;
  wire \inNeurons_fu_68[4]_i_2_n_0 ;
  wire \inNeurons_fu_68[4]_i_3_n_0 ;
  wire \inNeurons_fu_68[4]_i_4_n_0 ;
  wire \inNeurons_fu_68[4]_i_5_n_0 ;
  wire \inNeurons_fu_68[8]_i_4_n_0 ;
  wire \inNeurons_fu_68[8]_i_5_n_0 ;
  wire \inNeurons_fu_68_reg[12]_i_1_n_0 ;
  wire \inNeurons_fu_68_reg[12]_i_1_n_1 ;
  wire \inNeurons_fu_68_reg[12]_i_1_n_2 ;
  wire \inNeurons_fu_68_reg[12]_i_1_n_3 ;
  wire \inNeurons_fu_68_reg[15]_i_3_n_2 ;
  wire \inNeurons_fu_68_reg[15]_i_3_n_3 ;
  wire \inNeurons_fu_68_reg[4]_i_1_n_0 ;
  wire \inNeurons_fu_68_reg[4]_i_1_n_1 ;
  wire \inNeurons_fu_68_reg[4]_i_1_n_2 ;
  wire \inNeurons_fu_68_reg[4]_i_1_n_3 ;
  wire \inNeurons_fu_68_reg[8]_i_1_n_0 ;
  wire \inNeurons_fu_68_reg[8]_i_1_n_1 ;
  wire \inNeurons_fu_68_reg[8]_i_1_n_2 ;
  wire \inNeurons_fu_68_reg[8]_i_1_n_3 ;
  wire s_ready_t_reg;
  wire [3:1]\NLW_icmp_ln29_reg_248_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_icmp_ln29_reg_248_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_icmp_ln29_reg_248_reg[0]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_icmp_ln29_reg_248_reg[0]_i_6_O_UNCONNECTED ;
  wire [3:2]\NLW_inNeurons_fu_68_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_inNeurons_fu_68_reg[15]_i_3_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hBFAABFBFAAAAAAAA)) 
    \ap_CS_fsm[21]_i_1 
       (.I0(\ap_CS_fsm_reg[21] [1]),
        .I1(ap_loop_exit_ready_pp0_iter11_reg),
        .I2(ap_block_pp0_stage0_subdone),
        .I3(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I4(ap_done_cache),
        .I5(\ap_CS_fsm_reg[21] [2]),
        .O(\empty_24_reg_416_reg[0] [0]));
  LUT4 #(
    .INIT(16'hB888)) 
    \ap_CS_fsm[22]_i_1 
       (.I0(\ap_CS_fsm_reg[22] ),
        .I1(\ap_CS_fsm_reg[21] [0]),
        .I2(\ap_CS_fsm_reg[21] [2]),
        .I3(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_done),
        .O(\empty_24_reg_416_reg[0] [1]));
  (* SOFT_HLUTNM = "soft_lutpair263" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \ap_CS_fsm[22]_i_2 
       (.I0(ap_loop_exit_ready_pp0_iter11_reg),
        .I1(ap_block_pp0_stage0_subdone),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I3(ap_done_cache),
        .O(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_done));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    ap_done_cache_i_1__1
       (.I0(ap_done_cache_reg_0),
        .I1(ap_enable_reg_pp0_iter8_reg),
        .I2(ap_loop_exit_ready_pp0_iter11_reg),
        .I3(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I4(ap_done_cache),
        .O(ap_done_cache_i_1__1_n_0));
  LUT3 #(
    .INIT(8'hDF)) 
    ap_done_cache_i_2
       (.I0(ap_enable_reg_pp0_iter8),
        .I1(Q),
        .I2(icmp_ln29_reg_248_pp0_iter7_reg),
        .O(ap_enable_reg_pp0_iter8_reg));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__1_n_0),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFFFF5DDDDDDD)) 
    ap_loop_init_int_i_1__1
       (.I0(ap_rst_n),
        .I1(ap_loop_init_int),
        .I2(ap_done_cache_reg_0),
        .I3(ap_enable_reg_pp0_iter8_reg),
        .I4(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I5(ap_loop_init_int_i_2_n_0),
        .O(ap_loop_init_int_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair263" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ap_loop_init_int_i_2
       (.I0(ap_block_pp0_stage0_subdone),
        .I1(ap_loop_exit_ready_pp0_iter11_reg),
        .O(ap_loop_init_int_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__1_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair267" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \conv205_fu_72[15]_i_2 
       (.I0(ap_loop_init_int),
        .I1(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .O(ap_loop_init_int_reg_0));
  LUT6 #(
    .INIT(64'hBAB0B0B0B0B0B0B0)) 
    \first_itr_reg_131[0]_i_1 
       (.I0(\first_itr_reg_131_reg[0] ),
        .I1(gmem_ARREADY),
        .I2(\first_itr_reg_131_reg[0]_0 ),
        .I3(ap_loop_init_int),
        .I4(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I5(ap_block_pp0_stage0_subdone),
        .O(s_ready_t_reg));
  (* SOFT_HLUTNM = "soft_lutpair262" *) 
  LUT4 #(
    .INIT(16'hFFC4)) 
    grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg_i_1
       (.I0(ap_block_pp0_stage0_subdone),
        .I1(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I2(CO),
        .I3(\ap_CS_fsm_reg[21] [1]),
        .O(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg_reg));
  LUT6 #(
    .INIT(64'hEEEE0A8E0A8E0A8E)) 
    \icmp_ln29_reg_248[0]_i_10 
       (.I0(\icmp_ln29_reg_248_reg[0]_i_3_0 [9]),
        .I1(\icmp_ln29_reg_248_reg[0]_i_3_0 [8]),
        .I2(\icmp_ln29_reg_248_reg[0] [9]),
        .I3(\icmp_ln29_reg_248_reg[0] [8]),
        .I4(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I5(ap_loop_init_int),
        .O(\icmp_ln29_reg_248[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000F842184218421)) 
    \icmp_ln29_reg_248[0]_i_11 
       (.I0(\icmp_ln29_reg_248_reg[0] [14]),
        .I1(\icmp_ln29_reg_248_reg[0] [15]),
        .I2(\icmp_ln29_reg_248_reg[0]_i_3_0 [14]),
        .I3(\icmp_ln29_reg_248_reg[0]_i_3_0 [15]),
        .I4(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I5(ap_loop_init_int),
        .O(\icmp_ln29_reg_248[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000F842184218421)) 
    \icmp_ln29_reg_248[0]_i_12 
       (.I0(\icmp_ln29_reg_248_reg[0] [12]),
        .I1(\icmp_ln29_reg_248_reg[0] [13]),
        .I2(\icmp_ln29_reg_248_reg[0]_i_3_0 [12]),
        .I3(\icmp_ln29_reg_248_reg[0]_i_3_0 [13]),
        .I4(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I5(ap_loop_init_int),
        .O(\icmp_ln29_reg_248[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h000F842184218421)) 
    \icmp_ln29_reg_248[0]_i_13 
       (.I0(\icmp_ln29_reg_248_reg[0] [10]),
        .I1(\icmp_ln29_reg_248_reg[0] [11]),
        .I2(\icmp_ln29_reg_248_reg[0]_i_3_0 [10]),
        .I3(\icmp_ln29_reg_248_reg[0]_i_3_0 [11]),
        .I4(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I5(ap_loop_init_int),
        .O(\icmp_ln29_reg_248[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000F842184218421)) 
    \icmp_ln29_reg_248[0]_i_14 
       (.I0(\icmp_ln29_reg_248_reg[0] [8]),
        .I1(\icmp_ln29_reg_248_reg[0] [9]),
        .I2(\icmp_ln29_reg_248_reg[0]_i_3_0 [8]),
        .I3(\icmp_ln29_reg_248_reg[0]_i_3_0 [9]),
        .I4(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I5(ap_loop_init_int),
        .O(\icmp_ln29_reg_248[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hEEEE0A8E0A8E0A8E)) 
    \icmp_ln29_reg_248[0]_i_15 
       (.I0(\icmp_ln29_reg_248_reg[0]_i_3_0 [7]),
        .I1(\icmp_ln29_reg_248_reg[0]_i_3_0 [6]),
        .I2(\icmp_ln29_reg_248_reg[0] [7]),
        .I3(\icmp_ln29_reg_248_reg[0] [6]),
        .I4(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I5(ap_loop_init_int),
        .O(\icmp_ln29_reg_248[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hEEEE0A8E0A8E0A8E)) 
    \icmp_ln29_reg_248[0]_i_16 
       (.I0(\icmp_ln29_reg_248_reg[0]_i_3_0 [5]),
        .I1(\icmp_ln29_reg_248_reg[0]_i_3_0 [4]),
        .I2(\icmp_ln29_reg_248_reg[0] [5]),
        .I3(\icmp_ln29_reg_248_reg[0] [4]),
        .I4(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I5(ap_loop_init_int),
        .O(\icmp_ln29_reg_248[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hEEEE0A8E0A8E0A8E)) 
    \icmp_ln29_reg_248[0]_i_17 
       (.I0(\icmp_ln29_reg_248_reg[0]_i_3_0 [3]),
        .I1(\icmp_ln29_reg_248_reg[0]_i_3_0 [2]),
        .I2(\icmp_ln29_reg_248_reg[0] [3]),
        .I3(\icmp_ln29_reg_248_reg[0] [2]),
        .I4(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I5(ap_loop_init_int),
        .O(\icmp_ln29_reg_248[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hEEEE0A8E0A8E0A8E)) 
    \icmp_ln29_reg_248[0]_i_18 
       (.I0(\icmp_ln29_reg_248_reg[0]_i_3_0 [1]),
        .I1(\icmp_ln29_reg_248_reg[0]_i_3_0 [0]),
        .I2(\icmp_ln29_reg_248_reg[0] [1]),
        .I3(\icmp_ln29_reg_248_reg[0] [0]),
        .I4(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I5(ap_loop_init_int),
        .O(\icmp_ln29_reg_248[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000F842184218421)) 
    \icmp_ln29_reg_248[0]_i_19 
       (.I0(\icmp_ln29_reg_248_reg[0] [6]),
        .I1(\icmp_ln29_reg_248_reg[0] [7]),
        .I2(\icmp_ln29_reg_248_reg[0]_i_3_0 [6]),
        .I3(\icmp_ln29_reg_248_reg[0]_i_3_0 [7]),
        .I4(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I5(ap_loop_init_int),
        .O(\icmp_ln29_reg_248[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000F842184218421)) 
    \icmp_ln29_reg_248[0]_i_20 
       (.I0(\icmp_ln29_reg_248_reg[0] [4]),
        .I1(\icmp_ln29_reg_248_reg[0] [5]),
        .I2(\icmp_ln29_reg_248_reg[0]_i_3_0 [4]),
        .I3(\icmp_ln29_reg_248_reg[0]_i_3_0 [5]),
        .I4(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I5(ap_loop_init_int),
        .O(\icmp_ln29_reg_248[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h000F842184218421)) 
    \icmp_ln29_reg_248[0]_i_21 
       (.I0(\icmp_ln29_reg_248_reg[0] [2]),
        .I1(\icmp_ln29_reg_248_reg[0] [3]),
        .I2(\icmp_ln29_reg_248_reg[0]_i_3_0 [2]),
        .I3(\icmp_ln29_reg_248_reg[0]_i_3_0 [3]),
        .I4(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I5(ap_loop_init_int),
        .O(\icmp_ln29_reg_248[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h1111842184218421)) 
    \icmp_ln29_reg_248[0]_i_22 
       (.I0(\icmp_ln29_reg_248_reg[0]_i_3_0 [1]),
        .I1(\icmp_ln29_reg_248_reg[0]_i_3_0 [0]),
        .I2(\icmp_ln29_reg_248_reg[0] [1]),
        .I3(\icmp_ln29_reg_248_reg[0] [0]),
        .I4(ap_loop_init_int),
        .I5(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .O(\icmp_ln29_reg_248[0]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \icmp_ln29_reg_248[0]_i_4 
       (.I0(\icmp_ln29_reg_248_reg[0] [15]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .O(ap_sig_allocacmp_inNeurons_1__0[15]));
  LUT3 #(
    .INIT(8'h8F)) 
    \icmp_ln29_reg_248[0]_i_5 
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\icmp_ln29_reg_248_reg[0] [15]),
        .O(\icmp_ln29_reg_248[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEEE0A8E0A8E0A8E)) 
    \icmp_ln29_reg_248[0]_i_7 
       (.I0(\icmp_ln29_reg_248_reg[0]_i_3_0 [15]),
        .I1(\icmp_ln29_reg_248_reg[0]_i_3_0 [14]),
        .I2(\icmp_ln29_reg_248_reg[0] [15]),
        .I3(\icmp_ln29_reg_248_reg[0] [14]),
        .I4(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I5(ap_loop_init_int),
        .O(\icmp_ln29_reg_248[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEEEE0A8E0A8E0A8E)) 
    \icmp_ln29_reg_248[0]_i_8 
       (.I0(\icmp_ln29_reg_248_reg[0]_i_3_0 [13]),
        .I1(\icmp_ln29_reg_248_reg[0]_i_3_0 [12]),
        .I2(\icmp_ln29_reg_248_reg[0] [13]),
        .I3(\icmp_ln29_reg_248_reg[0] [12]),
        .I4(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I5(ap_loop_init_int),
        .O(\icmp_ln29_reg_248[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEEEE0A8E0A8E0A8E)) 
    \icmp_ln29_reg_248[0]_i_9 
       (.I0(\icmp_ln29_reg_248_reg[0]_i_3_0 [11]),
        .I1(\icmp_ln29_reg_248_reg[0]_i_3_0 [10]),
        .I2(\icmp_ln29_reg_248_reg[0] [11]),
        .I3(\icmp_ln29_reg_248_reg[0] [10]),
        .I4(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I5(ap_loop_init_int),
        .O(\icmp_ln29_reg_248[0]_i_9_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \icmp_ln29_reg_248_reg[0]_i_2 
       (.CI(\icmp_ln29_reg_248_reg[0]_i_3_n_0 ),
        .CO({\NLW_icmp_ln29_reg_248_reg[0]_i_2_CO_UNCONNECTED [3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,ap_sig_allocacmp_inNeurons_1__0[15]}),
        .O(\NLW_icmp_ln29_reg_248_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\icmp_ln29_reg_248[0]_i_5_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \icmp_ln29_reg_248_reg[0]_i_3 
       (.CI(\icmp_ln29_reg_248_reg[0]_i_6_n_0 ),
        .CO({\icmp_ln29_reg_248_reg[0]_i_3_n_0 ,\icmp_ln29_reg_248_reg[0]_i_3_n_1 ,\icmp_ln29_reg_248_reg[0]_i_3_n_2 ,\icmp_ln29_reg_248_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\icmp_ln29_reg_248[0]_i_7_n_0 ,\icmp_ln29_reg_248[0]_i_8_n_0 ,\icmp_ln29_reg_248[0]_i_9_n_0 ,\icmp_ln29_reg_248[0]_i_10_n_0 }),
        .O(\NLW_icmp_ln29_reg_248_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({\icmp_ln29_reg_248[0]_i_11_n_0 ,\icmp_ln29_reg_248[0]_i_12_n_0 ,\icmp_ln29_reg_248[0]_i_13_n_0 ,\icmp_ln29_reg_248[0]_i_14_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \icmp_ln29_reg_248_reg[0]_i_6 
       (.CI(1'b0),
        .CO({\icmp_ln29_reg_248_reg[0]_i_6_n_0 ,\icmp_ln29_reg_248_reg[0]_i_6_n_1 ,\icmp_ln29_reg_248_reg[0]_i_6_n_2 ,\icmp_ln29_reg_248_reg[0]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\icmp_ln29_reg_248[0]_i_15_n_0 ,\icmp_ln29_reg_248[0]_i_16_n_0 ,\icmp_ln29_reg_248[0]_i_17_n_0 ,\icmp_ln29_reg_248[0]_i_18_n_0 }),
        .O(\NLW_icmp_ln29_reg_248_reg[0]_i_6_O_UNCONNECTED [3:0]),
        .S({\icmp_ln29_reg_248[0]_i_19_n_0 ,\icmp_ln29_reg_248[0]_i_20_n_0 ,\icmp_ln29_reg_248[0]_i_21_n_0 ,\icmp_ln29_reg_248[0]_i_22_n_0 }));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_1_reg_243_pp0_iter6_reg_reg[0]_srl7_i_1 
       (.I0(\icmp_ln29_reg_248_reg[0] [0]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .O(ap_sig_allocacmp_inNeurons_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair264" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_1_reg_243_pp0_iter6_reg_reg[1]_srl7_i_1 
       (.I0(\icmp_ln29_reg_248_reg[0] [1]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .O(ap_sig_allocacmp_inNeurons_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair264" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \inNeurons_1_reg_243_pp0_iter6_reg_reg[2]_srl7_i_1 
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\icmp_ln29_reg_248_reg[0] [2]),
        .O(ap_sig_allocacmp_inNeurons_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair265" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_1_reg_243_pp0_iter6_reg_reg[3]_srl7_i_1 
       (.I0(\icmp_ln29_reg_248_reg[0] [3]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .O(ap_sig_allocacmp_inNeurons_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair265" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \inNeurons_1_reg_243_pp0_iter6_reg_reg[4]_srl7_i_1 
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\icmp_ln29_reg_248_reg[0] [4]),
        .O(ap_sig_allocacmp_inNeurons_1[4]));
  (* SOFT_HLUTNM = "soft_lutpair266" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_1_reg_243_pp0_iter6_reg_reg[5]_srl7_i_1 
       (.I0(\icmp_ln29_reg_248_reg[0] [5]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .O(ap_sig_allocacmp_inNeurons_1[5]));
  (* SOFT_HLUTNM = "soft_lutpair266" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \inNeurons_1_reg_243_pp0_iter6_reg_reg[6]_srl7_i_1 
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\icmp_ln29_reg_248_reg[0] [6]),
        .O(ap_sig_allocacmp_inNeurons_1[6]));
  (* SOFT_HLUTNM = "soft_lutpair267" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \inNeurons_fu_68[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\icmp_ln29_reg_248_reg[0] [0]),
        .O(D[0]));
  LUT3 #(
    .INIT(8'h70)) 
    \inNeurons_fu_68[12]_i_2 
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\icmp_ln29_reg_248_reg[0] [12]),
        .O(ap_sig_allocacmp_inNeurons_1__0[12]));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_68[12]_i_3 
       (.I0(\icmp_ln29_reg_248_reg[0] [11]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .O(ap_sig_allocacmp_inNeurons_1__0[11]));
  LUT3 #(
    .INIT(8'h70)) 
    \inNeurons_fu_68[12]_i_4 
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\icmp_ln29_reg_248_reg[0] [10]),
        .O(ap_sig_allocacmp_inNeurons_1__0[10]));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_68[12]_i_5 
       (.I0(\icmp_ln29_reg_248_reg[0] [9]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .O(ap_sig_allocacmp_inNeurons_1__0[9]));
  (* SOFT_HLUTNM = "soft_lutpair262" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \inNeurons_fu_68[15]_i_1 
       (.I0(CO),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I3(ap_block_pp0_stage0_subdone),
        .O(SR));
  LUT6 #(
    .INIT(64'hDF00000000000000)) 
    \inNeurons_fu_68[15]_i_2 
       (.I0(ap_enable_reg_pp0_iter8),
        .I1(Q),
        .I2(icmp_ln29_reg_248_pp0_iter7_reg),
        .I3(CO),
        .I4(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I5(ap_done_cache_reg_0),
        .O(E));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_68[15]_i_4 
       (.I0(\icmp_ln29_reg_248_reg[0] [15]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .O(\inNeurons_fu_68[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h70)) 
    \inNeurons_fu_68[15]_i_5 
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\icmp_ln29_reg_248_reg[0] [14]),
        .O(ap_sig_allocacmp_inNeurons_1__0[14]));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_68[15]_i_6 
       (.I0(\icmp_ln29_reg_248_reg[0] [13]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .O(ap_sig_allocacmp_inNeurons_1__0[13]));
  LUT3 #(
    .INIT(8'h70)) 
    \inNeurons_fu_68[4]_i_2 
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\icmp_ln29_reg_248_reg[0] [4]),
        .O(\inNeurons_fu_68[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_68[4]_i_3 
       (.I0(\icmp_ln29_reg_248_reg[0] [3]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .O(\inNeurons_fu_68[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h70)) 
    \inNeurons_fu_68[4]_i_4 
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\icmp_ln29_reg_248_reg[0] [2]),
        .O(\inNeurons_fu_68[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_68[4]_i_5 
       (.I0(\icmp_ln29_reg_248_reg[0] [1]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .O(\inNeurons_fu_68[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h70)) 
    \inNeurons_fu_68[8]_i_2 
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\icmp_ln29_reg_248_reg[0] [8]),
        .O(ap_sig_allocacmp_inNeurons_1__0[8]));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_68[8]_i_3 
       (.I0(\icmp_ln29_reg_248_reg[0] [7]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .O(ap_sig_allocacmp_inNeurons_1__0[7]));
  LUT3 #(
    .INIT(8'h70)) 
    \inNeurons_fu_68[8]_i_4 
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\icmp_ln29_reg_248_reg[0] [6]),
        .O(\inNeurons_fu_68[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \inNeurons_fu_68[8]_i_5 
       (.I0(\icmp_ln29_reg_248_reg[0] [5]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .O(\inNeurons_fu_68[8]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \inNeurons_fu_68_reg[12]_i_1 
       (.CI(\inNeurons_fu_68_reg[8]_i_1_n_0 ),
        .CO({\inNeurons_fu_68_reg[12]_i_1_n_0 ,\inNeurons_fu_68_reg[12]_i_1_n_1 ,\inNeurons_fu_68_reg[12]_i_1_n_2 ,\inNeurons_fu_68_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[12:9]),
        .S(ap_sig_allocacmp_inNeurons_1__0[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \inNeurons_fu_68_reg[15]_i_3 
       (.CI(\inNeurons_fu_68_reg[12]_i_1_n_0 ),
        .CO({\NLW_inNeurons_fu_68_reg[15]_i_3_CO_UNCONNECTED [3:2],\inNeurons_fu_68_reg[15]_i_3_n_2 ,\inNeurons_fu_68_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_inNeurons_fu_68_reg[15]_i_3_O_UNCONNECTED [3],D[15:13]}),
        .S({1'b0,\inNeurons_fu_68[15]_i_4_n_0 ,ap_sig_allocacmp_inNeurons_1__0[14:13]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \inNeurons_fu_68_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\inNeurons_fu_68_reg[4]_i_1_n_0 ,\inNeurons_fu_68_reg[4]_i_1_n_1 ,\inNeurons_fu_68_reg[4]_i_1_n_2 ,\inNeurons_fu_68_reg[4]_i_1_n_3 }),
        .CYINIT(ap_sig_allocacmp_inNeurons_1[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[4:1]),
        .S({\inNeurons_fu_68[4]_i_2_n_0 ,\inNeurons_fu_68[4]_i_3_n_0 ,\inNeurons_fu_68[4]_i_4_n_0 ,\inNeurons_fu_68[4]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \inNeurons_fu_68_reg[8]_i_1 
       (.CI(\inNeurons_fu_68_reg[4]_i_1_n_0 ),
        .CO({\inNeurons_fu_68_reg[8]_i_1_n_0 ,\inNeurons_fu_68_reg[8]_i_1_n_1 ,\inNeurons_fu_68_reg[8]_i_1_n_2 ,\inNeurons_fu_68_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[8:5]),
        .S({ap_sig_allocacmp_inNeurons_1__0[8:7],\inNeurons_fu_68[8]_i_4_n_0 ,\inNeurons_fu_68[8]_i_5_n_0 }));
endmodule

(* ORIG_REF_NAME = "runLayer_flow_control_loop_pipe_sequential_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_flow_control_loop_pipe_sequential_init_1
   (\ap_CS_fsm_reg[23] ,
    D,
    output_r_ce0,
    clear,
    ap_rst_n_inv,
    ap_clk,
    grp_runLayer_Pipeline_2_fu_201_ap_start_reg,
    ap_rst_n,
    ap_loop_exit_ready_pp0_iter2_reg,
    Q,
    \ap_CS_fsm_reg[20] ,
    \int_output_r_shift0_reg[0] ,
    mem_reg,
    \int_output_r_shift0_reg[0]_0 ,
    ap_block_pp0_stage0_11001);
  output \ap_CS_fsm_reg[23] ;
  output [1:0]D;
  output output_r_ce0;
  output clear;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_runLayer_Pipeline_2_fu_201_ap_start_reg;
  input ap_rst_n;
  input ap_loop_exit_ready_pp0_iter2_reg;
  input [0:0]Q;
  input \ap_CS_fsm_reg[20] ;
  input [0:0]\int_output_r_shift0_reg[0] ;
  input [4:0]mem_reg;
  input \int_output_r_shift0_reg[0]_0 ;
  input ap_block_pp0_stage0_11001;

  wire [1:0]D;
  wire [0:0]Q;
  wire \ap_CS_fsm_reg[20] ;
  wire \ap_CS_fsm_reg[23] ;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1__0_n_0;
  wire ap_loop_exit_ready_pp0_iter2_reg;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__0_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire clear;
  wire grp_runLayer_Pipeline_2_fu_201_ap_start_reg;
  wire [0:0]\int_output_r_shift0_reg[0] ;
  wire \int_output_r_shift0_reg[0]_0 ;
  wire [4:0]mem_reg;
  wire output_r_ce0;

  LUT6 #(
    .INIT(64'hEFAAEFEFAAAAAAAA)) 
    \ap_CS_fsm[19]_i_1 
       (.I0(mem_reg[0]),
        .I1(ap_block_pp0_stage0_11001),
        .I2(ap_loop_exit_ready_pp0_iter2_reg),
        .I3(grp_runLayer_Pipeline_2_fu_201_ap_start_reg),
        .I4(ap_done_cache),
        .I5(mem_reg[1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAA080808AA08AA08)) 
    \ap_CS_fsm[20]_i_1 
       (.I0(mem_reg[1]),
        .I1(ap_done_cache),
        .I2(grp_runLayer_Pipeline_2_fu_201_ap_start_reg),
        .I3(ap_loop_exit_ready_pp0_iter2_reg),
        .I4(Q),
        .I5(\ap_CS_fsm_reg[20] ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hD0FFD0D0)) 
    ap_done_cache_i_1__0
       (.I0(\ap_CS_fsm_reg[20] ),
        .I1(Q),
        .I2(ap_loop_exit_ready_pp0_iter2_reg),
        .I3(grp_runLayer_Pipeline_2_fu_201_ap_start_reg),
        .I4(ap_done_cache),
        .O(ap_done_cache_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__0_n_0),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFF4FCFCFFF4FFF4F)) 
    ap_loop_init_int_i_1__0
       (.I0(grp_runLayer_Pipeline_2_fu_201_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(ap_rst_n),
        .I3(ap_loop_exit_ready_pp0_iter2_reg),
        .I4(Q),
        .I5(\ap_CS_fsm_reg[20] ),
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
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \int_output_r_shift0[0]_i_1 
       (.I0(\int_output_r_shift0_reg[0] ),
        .I1(mem_reg[3]),
        .I2(mem_reg[4]),
        .I3(mem_reg[2]),
        .I4(D[1]),
        .I5(\int_output_r_shift0_reg[0]_0 ),
        .O(\ap_CS_fsm_reg[23] ));
  LUT4 #(
    .INIT(16'h8088)) 
    \loop_index_fu_48[0]_i_1 
       (.I0(grp_runLayer_Pipeline_2_fu_201_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(Q),
        .I3(\ap_CS_fsm_reg[20] ),
        .O(clear));
  LUT4 #(
    .INIT(16'hFFFE)) 
    mem_reg_i_2__0
       (.I0(mem_reg[3]),
        .I1(mem_reg[4]),
        .I2(mem_reg[2]),
        .I3(D[1]),
        .O(output_r_ce0));
endmodule

(* ORIG_REF_NAME = "runLayer_flow_control_loop_pipe_sequential_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_flow_control_loop_pipe_sequential_init_2
   (grp_runLayer_Pipeline_1_fu_193_ap_ready,
    D,
    \ap_CS_fsm_reg[24] ,
    grp_runLayer_Pipeline_1_fu_193_ap_start_reg_reg,
    grp_runLayer_Pipeline_1_fu_193_ap_start_reg_reg_0,
    grp_runLayer_Pipeline_1_fu_193_ap_start_reg_reg_1,
    SR,
    E,
    ap_rst_n_inv,
    ap_clk,
    grp_runLayer_Pipeline_1_fu_193_ap_start_reg,
    \loop_index1_fu_48_reg[7] ,
    Q,
    \loop_index1_fu_48_reg[7]_0 ,
    ap_rst_n,
    ap_loop_exit_ready_pp0_iter1_reg,
    \ap_CS_fsm_reg[10] ,
    ap_block_pp0_stage0_11001);
  output grp_runLayer_Pipeline_1_fu_193_ap_ready;
  output [7:0]D;
  output [1:0]\ap_CS_fsm_reg[24] ;
  output grp_runLayer_Pipeline_1_fu_193_ap_start_reg_reg;
  output grp_runLayer_Pipeline_1_fu_193_ap_start_reg_reg_0;
  output grp_runLayer_Pipeline_1_fu_193_ap_start_reg_reg_1;
  output [0:0]SR;
  output [0:0]E;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_runLayer_Pipeline_1_fu_193_ap_start_reg;
  input \loop_index1_fu_48_reg[7] ;
  input [0:0]Q;
  input [7:0]\loop_index1_fu_48_reg[7]_0 ;
  input ap_rst_n;
  input ap_loop_exit_ready_pp0_iter1_reg;
  input [2:0]\ap_CS_fsm_reg[10] ;
  input ap_block_pp0_stage0_11001;

  wire [7:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [2:0]\ap_CS_fsm_reg[10] ;
  wire [1:0]\ap_CS_fsm_reg[24] ;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1_n_0;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_loop_init;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire exitcond710_fu_94_p2;
  wire grp_runLayer_Pipeline_1_fu_193_ap_ready;
  wire grp_runLayer_Pipeline_1_fu_193_ap_start_reg;
  wire grp_runLayer_Pipeline_1_fu_193_ap_start_reg_reg;
  wire grp_runLayer_Pipeline_1_fu_193_ap_start_reg_reg_0;
  wire grp_runLayer_Pipeline_1_fu_193_ap_start_reg_reg_1;
  wire \loop_index1_fu_48[6]_i_2_n_0 ;
  wire \loop_index1_fu_48[7]_i_5_n_0 ;
  wire \loop_index1_fu_48[7]_i_6_n_0 ;
  wire \loop_index1_fu_48_reg[7] ;
  wire [7:0]\loop_index1_fu_48_reg[7]_0 ;

  LUT6 #(
    .INIT(64'hBAFFBABAAAAAAAAA)) 
    \ap_CS_fsm[10]_i_1 
       (.I0(\ap_CS_fsm_reg[10] [2]),
        .I1(ap_block_pp0_stage0_11001),
        .I2(ap_loop_exit_ready_pp0_iter1_reg),
        .I3(grp_runLayer_Pipeline_1_fu_193_ap_start_reg),
        .I4(ap_done_cache),
        .I5(\ap_CS_fsm_reg[10] [1]),
        .O(\ap_CS_fsm_reg[24] [1]));
  LUT6 #(
    .INIT(64'hEFAAEFEFAAAAAAAA)) 
    \ap_CS_fsm[9]_i_1 
       (.I0(\ap_CS_fsm_reg[10] [0]),
        .I1(ap_block_pp0_stage0_11001),
        .I2(ap_loop_exit_ready_pp0_iter1_reg),
        .I3(grp_runLayer_Pipeline_1_fu_193_ap_start_reg),
        .I4(ap_done_cache),
        .I5(\ap_CS_fsm_reg[10] [1]),
        .O(\ap_CS_fsm_reg[24] [0]));
  LUT5 #(
    .INIT(32'hD0FFD0D0)) 
    ap_done_cache_i_1
       (.I0(\loop_index1_fu_48_reg[7] ),
        .I1(Q),
        .I2(ap_loop_exit_ready_pp0_iter1_reg),
        .I3(grp_runLayer_Pipeline_1_fu_193_ap_start_reg),
        .I4(ap_done_cache),
        .O(ap_done_cache_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1_n_0),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h0CAE0000)) 
    ap_enable_reg_pp0_iter1_i_1__0
       (.I0(grp_runLayer_Pipeline_1_fu_193_ap_start_reg),
        .I1(\loop_index1_fu_48_reg[7] ),
        .I2(Q),
        .I3(exitcond710_fu_94_p2),
        .I4(ap_rst_n),
        .O(grp_runLayer_Pipeline_1_fu_193_ap_start_reg_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair256" *) 
  LUT4 #(
    .INIT(16'hA200)) 
    ap_loop_exit_ready_pp0_iter1_reg_i_1
       (.I0(grp_runLayer_Pipeline_1_fu_193_ap_start_reg),
        .I1(\loop_index1_fu_48_reg[7] ),
        .I2(Q),
        .I3(exitcond710_fu_94_p2),
        .O(grp_runLayer_Pipeline_1_fu_193_ap_ready));
  LUT6 #(
    .INIT(64'hFF4FCFCFFF4FFF4F)) 
    ap_loop_init_int_i_1
       (.I0(grp_runLayer_Pipeline_1_fu_193_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(ap_rst_n),
        .I3(ap_loop_exit_ready_pp0_iter1_reg),
        .I4(Q),
        .I5(\loop_index1_fu_48_reg[7] ),
        .O(ap_loop_init_int_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair256" *) 
  LUT5 #(
    .INIT(32'hFFFF08AA)) 
    grp_runLayer_Pipeline_1_fu_193_ap_start_reg_i_1
       (.I0(grp_runLayer_Pipeline_1_fu_193_ap_start_reg),
        .I1(\loop_index1_fu_48_reg[7] ),
        .I2(Q),
        .I3(exitcond710_fu_94_p2),
        .I4(\ap_CS_fsm_reg[10] [0]),
        .O(grp_runLayer_Pipeline_1_fu_193_ap_start_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair259" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \loop_index1_fu_48[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(grp_runLayer_Pipeline_1_fu_193_ap_start_reg),
        .I2(\loop_index1_fu_48_reg[7]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair258" *) 
  LUT4 #(
    .INIT(16'h152A)) 
    \loop_index1_fu_48[1]_i_1 
       (.I0(\loop_index1_fu_48_reg[7]_0 [0]),
        .I1(ap_loop_init_int),
        .I2(grp_runLayer_Pipeline_1_fu_193_ap_start_reg),
        .I3(\loop_index1_fu_48_reg[7]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair258" *) 
  LUT5 #(
    .INIT(32'h07770888)) 
    \loop_index1_fu_48[2]_i_1 
       (.I0(\loop_index1_fu_48_reg[7]_0 [0]),
        .I1(\loop_index1_fu_48_reg[7]_0 [1]),
        .I2(ap_loop_init_int),
        .I3(grp_runLayer_Pipeline_1_fu_193_ap_start_reg),
        .I4(\loop_index1_fu_48_reg[7]_0 [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h007F7F7F00808080)) 
    \loop_index1_fu_48[3]_i_1 
       (.I0(\loop_index1_fu_48_reg[7]_0 [1]),
        .I1(\loop_index1_fu_48_reg[7]_0 [0]),
        .I2(\loop_index1_fu_48_reg[7]_0 [2]),
        .I3(ap_loop_init_int),
        .I4(grp_runLayer_Pipeline_1_fu_193_ap_start_reg),
        .I5(\loop_index1_fu_48_reg[7]_0 [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \loop_index1_fu_48[4]_i_1 
       (.I0(\loop_index1_fu_48_reg[7]_0 [2]),
        .I1(\loop_index1_fu_48_reg[7]_0 [0]),
        .I2(\loop_index1_fu_48_reg[7]_0 [1]),
        .I3(\loop_index1_fu_48_reg[7]_0 [3]),
        .I4(ap_loop_init),
        .I5(\loop_index1_fu_48_reg[7]_0 [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair257" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \loop_index1_fu_48[4]_i_2 
       (.I0(ap_loop_init_int),
        .I1(grp_runLayer_Pipeline_1_fu_193_ap_start_reg),
        .O(ap_loop_init));
  (* SOFT_HLUTNM = "soft_lutpair257" *) 
  LUT5 #(
    .INIT(32'h07770888)) 
    \loop_index1_fu_48[5]_i_1 
       (.I0(\loop_index1_fu_48[6]_i_2_n_0 ),
        .I1(\loop_index1_fu_48_reg[7]_0 [4]),
        .I2(ap_loop_init_int),
        .I3(grp_runLayer_Pipeline_1_fu_193_ap_start_reg),
        .I4(\loop_index1_fu_48_reg[7]_0 [5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h007F7F7F00808080)) 
    \loop_index1_fu_48[6]_i_1 
       (.I0(\loop_index1_fu_48_reg[7]_0 [4]),
        .I1(\loop_index1_fu_48[6]_i_2_n_0 ),
        .I2(\loop_index1_fu_48_reg[7]_0 [5]),
        .I3(ap_loop_init_int),
        .I4(grp_runLayer_Pipeline_1_fu_193_ap_start_reg),
        .I5(\loop_index1_fu_48_reg[7]_0 [6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    \loop_index1_fu_48[6]_i_2 
       (.I0(\loop_index1_fu_48_reg[7]_0 [3]),
        .I1(\loop_index1_fu_48_reg[7]_0 [1]),
        .I2(ap_loop_init_int),
        .I3(grp_runLayer_Pipeline_1_fu_193_ap_start_reg),
        .I4(\loop_index1_fu_48_reg[7]_0 [0]),
        .I5(\loop_index1_fu_48_reg[7]_0 [2]),
        .O(\loop_index1_fu_48[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair255" *) 
  LUT5 #(
    .INIT(32'h80008080)) 
    \loop_index1_fu_48[7]_i_1 
       (.I0(grp_runLayer_Pipeline_1_fu_193_ap_start_reg),
        .I1(exitcond710_fu_94_p2),
        .I2(ap_loop_init_int),
        .I3(Q),
        .I4(\loop_index1_fu_48_reg[7] ),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair255" *) 
  LUT4 #(
    .INIT(16'h2022)) 
    \loop_index1_fu_48[7]_i_2 
       (.I0(grp_runLayer_Pipeline_1_fu_193_ap_start_reg),
        .I1(exitcond710_fu_94_p2),
        .I2(Q),
        .I3(\loop_index1_fu_48_reg[7] ),
        .O(E));
  LUT6 #(
    .INIT(64'h007F7F7F00808080)) 
    \loop_index1_fu_48[7]_i_3 
       (.I0(\loop_index1_fu_48_reg[7]_0 [5]),
        .I1(\loop_index1_fu_48[7]_i_5_n_0 ),
        .I2(\loop_index1_fu_48_reg[7]_0 [6]),
        .I3(ap_loop_init_int),
        .I4(grp_runLayer_Pipeline_1_fu_193_ap_start_reg),
        .I5(\loop_index1_fu_48_reg[7]_0 [7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h00000000CCCCCCCD)) 
    \loop_index1_fu_48[7]_i_4 
       (.I0(\loop_index1_fu_48_reg[7]_0 [5]),
        .I1(ap_loop_init),
        .I2(\loop_index1_fu_48_reg[7]_0 [4]),
        .I3(\loop_index1_fu_48_reg[7]_0 [6]),
        .I4(\loop_index1_fu_48_reg[7]_0 [0]),
        .I5(\loop_index1_fu_48[7]_i_6_n_0 ),
        .O(exitcond710_fu_94_p2));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \loop_index1_fu_48[7]_i_5 
       (.I0(\loop_index1_fu_48_reg[7]_0 [4]),
        .I1(\loop_index1_fu_48_reg[7]_0 [2]),
        .I2(\loop_index1_fu_48_reg[7]_0 [0]),
        .I3(ap_loop_init),
        .I4(\loop_index1_fu_48_reg[7]_0 [1]),
        .I5(\loop_index1_fu_48_reg[7]_0 [3]),
        .O(\loop_index1_fu_48[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFEFEF)) 
    \loop_index1_fu_48[7]_i_6 
       (.I0(\loop_index1_fu_48_reg[7]_0 [2]),
        .I1(\loop_index1_fu_48_reg[7]_0 [3]),
        .I2(\loop_index1_fu_48_reg[7]_0 [7]),
        .I3(grp_runLayer_Pipeline_1_fu_193_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(\loop_index1_fu_48_reg[7]_0 [1]),
        .O(\loop_index1_fu_48[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair259" *) 
  LUT4 #(
    .INIT(16'h8088)) 
    \loop_index1_load_reg_122[6]_i_1 
       (.I0(grp_runLayer_Pipeline_1_fu_193_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(Q),
        .I3(\loop_index1_fu_48_reg[7] ),
        .O(grp_runLayer_Pipeline_1_fu_193_ap_start_reg_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_gmem_m_axi
   (full_n_reg,
    ap_rst_n_inv,
    gmem_ARREADY,
    \could_multi_bursts.ARVALID_Dummy_reg ,
    ap_block_pp0_stage0_subdone,
    Q,
    E,
    ap_NS_fsm__0,
    m_axi_gmem_ARADDR,
    \ap_CS_fsm_reg[5] ,
    \ap_CS_fsm_reg[20] ,
    \ap_CS_fsm_reg[19] ,
    \state_reg[0] ,
    \could_multi_bursts.arlen_buf_reg[3] ,
    \data_p1_reg[15] ,
    ap_clk,
    D,
    m_axi_gmem_RRESP,
    m_axi_gmem_RVALID,
    ap_enable_reg_pp0_iter1,
    ap_enable_reg_pp0_iter1_0,
    gmem_RREADY,
    gmem_ARVALID,
    ap_rst_n,
    m_axi_gmem_ARREADY,
    \data_p1_reg[79] ,
    \data_p1_reg[79]_0 ,
    \ap_CS_fsm_reg[11] ,
    \data_p2_reg[64] ,
    \ap_CS_fsm_reg[11]_0 ,
    \data_p2_reg[62] ,
    \data_p2_reg[62]_0 ,
    \data_p2_reg[62]_1 ,
    \ap_CS_fsm_reg[1] ,
    CO,
    grp_runLayer_Pipeline_2_fu_201_ap_start_reg,
    \data_p2_reg[79] );
  output full_n_reg;
  output ap_rst_n_inv;
  output gmem_ARREADY;
  output \could_multi_bursts.ARVALID_Dummy_reg ;
  output ap_block_pp0_stage0_subdone;
  output [0:0]Q;
  output [0:0]E;
  output [2:0]ap_NS_fsm__0;
  output [61:0]m_axi_gmem_ARADDR;
  output \ap_CS_fsm_reg[5] ;
  output \ap_CS_fsm_reg[20] ;
  output \ap_CS_fsm_reg[19] ;
  output \state_reg[0] ;
  output [3:0]\could_multi_bursts.arlen_buf_reg[3] ;
  output [15:0]\data_p1_reg[15] ;
  input ap_clk;
  input [32:0]D;
  input [1:0]m_axi_gmem_RRESP;
  input m_axi_gmem_RVALID;
  input ap_enable_reg_pp0_iter1;
  input ap_enable_reg_pp0_iter1_0;
  input gmem_RREADY;
  input gmem_ARVALID;
  input ap_rst_n;
  input m_axi_gmem_ARREADY;
  input [15:0]\data_p1_reg[79] ;
  input [15:0]\data_p1_reg[79]_0 ;
  input [1:0]\ap_CS_fsm_reg[11] ;
  input [11:0]\data_p2_reg[64] ;
  input \ap_CS_fsm_reg[11]_0 ;
  input [62:0]\data_p2_reg[62] ;
  input [62:0]\data_p2_reg[62]_0 ;
  input [62:0]\data_p2_reg[62]_1 ;
  input \ap_CS_fsm_reg[1] ;
  input [0:0]CO;
  input grp_runLayer_Pipeline_2_fu_201_ap_start_reg;
  input [0:0]\data_p2_reg[79] ;

  wire [0:0]CO;
  wire [32:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [1:0]\ap_CS_fsm_reg[11] ;
  wire \ap_CS_fsm_reg[11]_0 ;
  wire \ap_CS_fsm_reg[19] ;
  wire \ap_CS_fsm_reg[1] ;
  wire \ap_CS_fsm_reg[20] ;
  wire \ap_CS_fsm_reg[5] ;
  wire [2:0]ap_NS_fsm__0;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire \could_multi_bursts.ARVALID_Dummy_reg ;
  wire [3:0]\could_multi_bursts.arlen_buf_reg[3] ;
  wire [15:0]\data_p1_reg[15] ;
  wire [15:0]\data_p1_reg[79] ;
  wire [15:0]\data_p1_reg[79]_0 ;
  wire [62:0]\data_p2_reg[62] ;
  wire [62:0]\data_p2_reg[62]_0 ;
  wire [62:0]\data_p2_reg[62]_1 ;
  wire [11:0]\data_p2_reg[64] ;
  wire [0:0]\data_p2_reg[79] ;
  wire full_n_reg;
  wire gmem_ARREADY;
  wire gmem_ARVALID;
  wire gmem_RREADY;
  wire grp_runLayer_Pipeline_2_fu_201_ap_start_reg;
  wire [61:0]m_axi_gmem_ARADDR;
  wire m_axi_gmem_ARREADY;
  wire [1:0]m_axi_gmem_RRESP;
  wire m_axi_gmem_RVALID;
  wire \state_reg[0] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_gmem_m_axi_read bus_read
       (.CO(CO),
        .D(D),
        .E(E),
        .Q(Q),
        .SR(ap_rst_n_inv),
        .\ap_CS_fsm_reg[11] (\ap_CS_fsm_reg[11] ),
        .\ap_CS_fsm_reg[11]_0 (\ap_CS_fsm_reg[11]_0 ),
        .\ap_CS_fsm_reg[19] (\ap_CS_fsm_reg[19] ),
        .\ap_CS_fsm_reg[1] (\ap_CS_fsm_reg[1] ),
        .\ap_CS_fsm_reg[20] (\ap_CS_fsm_reg[20] ),
        .\ap_CS_fsm_reg[5] (\ap_CS_fsm_reg[5] ),
        .ap_NS_fsm__0(ap_NS_fsm__0[1:0]),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter1_0(ap_enable_reg_pp0_iter1_0),
        .ap_rst_n(ap_rst_n),
        .\could_multi_bursts.ARVALID_Dummy_reg_0 (\could_multi_bursts.ARVALID_Dummy_reg ),
        .\could_multi_bursts.arlen_buf_reg[3]_0 (\could_multi_bursts.arlen_buf_reg[3] ),
        .\data_p1_reg[15] (\data_p1_reg[15] ),
        .\data_p1_reg[79] (\data_p1_reg[79] ),
        .\data_p1_reg[79]_0 (\data_p1_reg[79]_0 ),
        .\data_p2_reg[62] (\data_p2_reg[62] ),
        .\data_p2_reg[62]_0 (\data_p2_reg[62]_0 ),
        .\data_p2_reg[62]_1 (\data_p2_reg[62]_1 ),
        .\data_p2_reg[64] (\data_p2_reg[64] ),
        .\data_p2_reg[79] (\data_p2_reg[79] ),
        .full_n_reg(full_n_reg),
        .gmem_ARVALID(gmem_ARVALID),
        .gmem_RREADY(gmem_RREADY),
        .grp_runLayer_Pipeline_2_fu_201_ap_start_reg(grp_runLayer_Pipeline_2_fu_201_ap_start_reg),
        .m_axi_gmem_ARADDR(m_axi_gmem_ARADDR),
        .m_axi_gmem_ARREADY(m_axi_gmem_ARREADY),
        .m_axi_gmem_RRESP(m_axi_gmem_RRESP),
        .m_axi_gmem_RVALID(m_axi_gmem_RVALID),
        .s_ready_t_reg(gmem_ARREADY),
        .s_ready_t_reg_0(ap_NS_fsm__0[2]),
        .\state_reg[0] (\state_reg[0] ));
endmodule

(* ORIG_REF_NAME = "runLayer_gmem_m_axi_buffer" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_gmem_m_axi_buffer__parameterized0
   (full_n_reg_0,
    beat_valid,
    SR,
    \dout_buf_reg[34]_0 ,
    Q,
    dout_valid_reg_0,
    ap_clk,
    D,
    m_axi_gmem_RRESP,
    m_axi_gmem_RVALID,
    ap_rst_n,
    \dout_buf_reg[34]_1 ,
    \bus_wide_gen.ready_for_data__0 ,
    \bus_wide_gen.split_cnt__2 ,
    \dout_buf_reg[34]_2 ,
    rdata_ack_t,
    \bus_wide_gen.data_buf_reg[16] ,
    p_28_in,
    \bus_wide_gen.last_split );
  output full_n_reg_0;
  output beat_valid;
  output [0:0]SR;
  output \dout_buf_reg[34]_0 ;
  output [32:0]Q;
  output dout_valid_reg_0;
  input ap_clk;
  input [32:0]D;
  input [1:0]m_axi_gmem_RRESP;
  input m_axi_gmem_RVALID;
  input ap_rst_n;
  input \dout_buf_reg[34]_1 ;
  input \bus_wide_gen.ready_for_data__0 ;
  input \bus_wide_gen.split_cnt__2 ;
  input \dout_buf_reg[34]_2 ;
  input rdata_ack_t;
  input \bus_wide_gen.data_buf_reg[16] ;
  input p_28_in;
  input \bus_wide_gen.last_split ;

  wire [32:0]D;
  wire [32:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire beat_valid;
  wire \bus_wide_gen.data_buf_reg[16] ;
  wire \bus_wide_gen.last_split ;
  wire \bus_wide_gen.ready_for_data__0 ;
  wire \bus_wide_gen.split_cnt__2 ;
  wire \dout_buf[0]_i_1_n_0 ;
  wire \dout_buf[10]_i_1_n_0 ;
  wire \dout_buf[11]_i_1_n_0 ;
  wire \dout_buf[12]_i_1_n_0 ;
  wire \dout_buf[13]_i_1_n_0 ;
  wire \dout_buf[14]_i_1_n_0 ;
  wire \dout_buf[15]_i_1_n_0 ;
  wire \dout_buf[16]_i_1_n_0 ;
  wire \dout_buf[17]_i_1_n_0 ;
  wire \dout_buf[18]_i_1_n_0 ;
  wire \dout_buf[19]_i_1_n_0 ;
  wire \dout_buf[1]_i_1_n_0 ;
  wire \dout_buf[20]_i_1_n_0 ;
  wire \dout_buf[21]_i_1_n_0 ;
  wire \dout_buf[22]_i_1_n_0 ;
  wire \dout_buf[23]_i_1_n_0 ;
  wire \dout_buf[24]_i_1_n_0 ;
  wire \dout_buf[25]_i_1_n_0 ;
  wire \dout_buf[26]_i_1_n_0 ;
  wire \dout_buf[27]_i_1_n_0 ;
  wire \dout_buf[28]_i_1_n_0 ;
  wire \dout_buf[29]_i_1_n_0 ;
  wire \dout_buf[2]_i_1_n_0 ;
  wire \dout_buf[30]_i_1_n_0 ;
  wire \dout_buf[31]_i_1_n_0 ;
  wire \dout_buf[34]_i_2_n_0 ;
  wire \dout_buf[3]_i_1_n_0 ;
  wire \dout_buf[4]_i_1_n_0 ;
  wire \dout_buf[5]_i_1_n_0 ;
  wire \dout_buf[6]_i_1_n_0 ;
  wire \dout_buf[7]_i_1_n_0 ;
  wire \dout_buf[8]_i_1_n_0 ;
  wire \dout_buf[9]_i_1_n_0 ;
  wire \dout_buf_reg[34]_0 ;
  wire \dout_buf_reg[34]_1 ;
  wire \dout_buf_reg[34]_2 ;
  wire dout_valid_i_1_n_0;
  wire dout_valid_reg_0;
  wire empty_n_i_1_n_0;
  wire empty_n_i_2__0_n_0;
  wire empty_n_i_3__0_n_0;
  wire empty_n_reg_n_0;
  wire full_n_i_1_n_0;
  wire full_n_i_3_n_0;
  wire full_n_reg_0;
  wire [8:0]mOutPtr;
  wire mOutPtr19_out;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr[2]_i_1_n_0 ;
  wire \mOutPtr[3]_i_1_n_0 ;
  wire \mOutPtr[4]_i_1_n_0 ;
  wire \mOutPtr[5]_i_1_n_0 ;
  wire \mOutPtr[5]_i_2_n_0 ;
  wire \mOutPtr[5]_i_3_n_0 ;
  wire \mOutPtr[6]_i_1_n_0 ;
  wire \mOutPtr[7]_i_1_n_0 ;
  wire \mOutPtr[8]_i_1_n_0 ;
  wire \mOutPtr[8]_i_2_n_0 ;
  wire \mOutPtr[8]_i_3_n_0 ;
  wire \mOutPtr[8]_i_5_n_0 ;
  wire [1:0]m_axi_gmem_RRESP;
  wire m_axi_gmem_RVALID;
  wire mem_reg_i_10__0_n_0;
  wire mem_reg_i_11__0_n_0;
  wire mem_reg_i_12__0_n_0;
  wire mem_reg_i_13_n_0;
  wire mem_reg_i_15_n_0;
  wire mem_reg_i_9__0_n_0;
  wire mem_reg_n_32;
  wire mem_reg_n_33;
  wire p_1_in;
  wire p_28_in;
  wire pop;
  wire push;
  wire [34:0]q_buf;
  wire [34:0]q_tmp;
  wire [7:0]raddr;
  wire rdata_ack_t;
  wire [7:0]rnext;
  wire show_ahead;
  wire show_ahead0;
  wire show_ahead1;
  wire show_ahead1_carry_i_1_n_0;
  wire show_ahead1_carry_i_2_n_0;
  wire show_ahead1_carry_i_3_n_0;
  wire show_ahead1_carry_n_2;
  wire show_ahead1_carry_n_3;
  wire [7:0]waddr;
  wire \waddr[0]_i_1_n_0 ;
  wire \waddr[1]_i_1_n_0 ;
  wire \waddr[2]_i_1_n_0 ;
  wire \waddr[3]_i_1_n_0 ;
  wire \waddr[4]_i_1_n_0 ;
  wire \waddr[5]_i_1_n_0 ;
  wire \waddr[6]_i_1__0_n_0 ;
  wire \waddr[6]_i_2_n_0 ;
  wire \waddr[7]_i_2_n_0 ;
  wire \waddr[7]_i_3_n_0 ;
  wire \waddr[7]_i_4_n_0 ;
  wire [1:1]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [3:3]NLW_show_ahead1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_show_ahead1_carry_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'hCFCFCF8A)) 
    \bus_wide_gen.data_buf[15]_i_1 
       (.I0(beat_valid),
        .I1(rdata_ack_t),
        .I2(\dout_buf_reg[34]_2 ),
        .I3(\bus_wide_gen.data_buf_reg[16] ),
        .I4(p_28_in),
        .O(dout_valid_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    \could_multi_bursts.araddr_buf[63]_i_1 
       (.I0(ap_rst_n),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[0]_i_1 
       (.I0(q_tmp[0]),
        .I1(q_buf[0]),
        .I2(show_ahead),
        .O(\dout_buf[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[10]_i_1 
       (.I0(q_tmp[10]),
        .I1(q_buf[10]),
        .I2(show_ahead),
        .O(\dout_buf[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[11]_i_1 
       (.I0(q_tmp[11]),
        .I1(q_buf[11]),
        .I2(show_ahead),
        .O(\dout_buf[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[12]_i_1 
       (.I0(q_tmp[12]),
        .I1(q_buf[12]),
        .I2(show_ahead),
        .O(\dout_buf[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[13]_i_1 
       (.I0(q_tmp[13]),
        .I1(q_buf[13]),
        .I2(show_ahead),
        .O(\dout_buf[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[14]_i_1 
       (.I0(q_tmp[14]),
        .I1(q_buf[14]),
        .I2(show_ahead),
        .O(\dout_buf[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[15]_i_1 
       (.I0(q_tmp[15]),
        .I1(q_buf[15]),
        .I2(show_ahead),
        .O(\dout_buf[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[16]_i_1 
       (.I0(q_tmp[16]),
        .I1(q_buf[16]),
        .I2(show_ahead),
        .O(\dout_buf[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[17]_i_1 
       (.I0(q_tmp[17]),
        .I1(q_buf[17]),
        .I2(show_ahead),
        .O(\dout_buf[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[18]_i_1 
       (.I0(q_tmp[18]),
        .I1(q_buf[18]),
        .I2(show_ahead),
        .O(\dout_buf[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[19]_i_1 
       (.I0(q_tmp[19]),
        .I1(q_buf[19]),
        .I2(show_ahead),
        .O(\dout_buf[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[1]_i_1 
       (.I0(q_tmp[1]),
        .I1(q_buf[1]),
        .I2(show_ahead),
        .O(\dout_buf[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[20]_i_1 
       (.I0(q_tmp[20]),
        .I1(q_buf[20]),
        .I2(show_ahead),
        .O(\dout_buf[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[21]_i_1 
       (.I0(q_tmp[21]),
        .I1(q_buf[21]),
        .I2(show_ahead),
        .O(\dout_buf[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[22]_i_1 
       (.I0(q_tmp[22]),
        .I1(q_buf[22]),
        .I2(show_ahead),
        .O(\dout_buf[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[23]_i_1 
       (.I0(q_tmp[23]),
        .I1(q_buf[23]),
        .I2(show_ahead),
        .O(\dout_buf[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[24]_i_1 
       (.I0(q_tmp[24]),
        .I1(q_buf[24]),
        .I2(show_ahead),
        .O(\dout_buf[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[25]_i_1 
       (.I0(q_tmp[25]),
        .I1(q_buf[25]),
        .I2(show_ahead),
        .O(\dout_buf[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[26]_i_1 
       (.I0(q_tmp[26]),
        .I1(q_buf[26]),
        .I2(show_ahead),
        .O(\dout_buf[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[27]_i_1 
       (.I0(q_tmp[27]),
        .I1(q_buf[27]),
        .I2(show_ahead),
        .O(\dout_buf[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[28]_i_1 
       (.I0(q_tmp[28]),
        .I1(q_buf[28]),
        .I2(show_ahead),
        .O(\dout_buf[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[29]_i_1 
       (.I0(q_tmp[29]),
        .I1(q_buf[29]),
        .I2(show_ahead),
        .O(\dout_buf[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[2]_i_1 
       (.I0(q_tmp[2]),
        .I1(q_buf[2]),
        .I2(show_ahead),
        .O(\dout_buf[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[30]_i_1 
       (.I0(q_tmp[30]),
        .I1(q_buf[30]),
        .I2(show_ahead),
        .O(\dout_buf[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[31]_i_1 
       (.I0(q_tmp[31]),
        .I1(q_buf[31]),
        .I2(show_ahead),
        .O(\dout_buf[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDD5D775700000000)) 
    \dout_buf[34]_i_1 
       (.I0(beat_valid),
        .I1(\bus_wide_gen.split_cnt__2 ),
        .I2(\dout_buf_reg[34]_2 ),
        .I3(rdata_ack_t),
        .I4(\dout_buf_reg[34]_1 ),
        .I5(empty_n_reg_n_0),
        .O(pop));
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[34]_i_2 
       (.I0(q_tmp[34]),
        .I1(q_buf[34]),
        .I2(show_ahead),
        .O(\dout_buf[34]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[3]_i_1 
       (.I0(q_tmp[3]),
        .I1(q_buf[3]),
        .I2(show_ahead),
        .O(\dout_buf[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[4]_i_1 
       (.I0(q_tmp[4]),
        .I1(q_buf[4]),
        .I2(show_ahead),
        .O(\dout_buf[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[5]_i_1 
       (.I0(q_tmp[5]),
        .I1(q_buf[5]),
        .I2(show_ahead),
        .O(\dout_buf[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[6]_i_1 
       (.I0(q_tmp[6]),
        .I1(q_buf[6]),
        .I2(show_ahead),
        .O(\dout_buf[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[7]_i_1 
       (.I0(q_tmp[7]),
        .I1(q_buf[7]),
        .I2(show_ahead),
        .O(\dout_buf[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[8]_i_1 
       (.I0(q_tmp[8]),
        .I1(q_buf[8]),
        .I2(show_ahead),
        .O(\dout_buf[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[9]_i_1 
       (.I0(q_tmp[9]),
        .I1(q_buf[9]),
        .I2(show_ahead),
        .O(\dout_buf[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[0] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[10] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[10]_i_1_n_0 ),
        .Q(Q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[11] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[11]_i_1_n_0 ),
        .Q(Q[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[12] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[12]_i_1_n_0 ),
        .Q(Q[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[13] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[13]_i_1_n_0 ),
        .Q(Q[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[14] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[14]_i_1_n_0 ),
        .Q(Q[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[15] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[15]_i_1_n_0 ),
        .Q(Q[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[16] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[16]_i_1_n_0 ),
        .Q(Q[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[17] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[17]_i_1_n_0 ),
        .Q(Q[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[18] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[18]_i_1_n_0 ),
        .Q(Q[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[19] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[19]_i_1_n_0 ),
        .Q(Q[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[1] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[20] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[20]_i_1_n_0 ),
        .Q(Q[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[21] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[21]_i_1_n_0 ),
        .Q(Q[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[22] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[22]_i_1_n_0 ),
        .Q(Q[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[23] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[23]_i_1_n_0 ),
        .Q(Q[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[24] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[24]_i_1_n_0 ),
        .Q(Q[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[25] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[25]_i_1_n_0 ),
        .Q(Q[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[26] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[26]_i_1_n_0 ),
        .Q(Q[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[27] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[27]_i_1_n_0 ),
        .Q(Q[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[28] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[28]_i_1_n_0 ),
        .Q(Q[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[29] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[29]_i_1_n_0 ),
        .Q(Q[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[2] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[30] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[30]_i_1_n_0 ),
        .Q(Q[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[31] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[31]_i_1_n_0 ),
        .Q(Q[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[34] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[34]_i_2_n_0 ),
        .Q(Q[32]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[3] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[4] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[5] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[6] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[7] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[8] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[9] 
       (.C(ap_clk),
        .CE(pop),
        .D(\dout_buf[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    dout_valid_i_1
       (.I0(empty_n_reg_n_0),
        .I1(beat_valid),
        .I2(\bus_wide_gen.last_split ),
        .O(dout_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dout_valid_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(dout_valid_i_1_n_0),
        .Q(beat_valid),
        .R(SR));
  LUT5 #(
    .INIT(32'hFBBB3888)) 
    empty_n_i_1
       (.I0(empty_n_i_2__0_n_0),
        .I1(pop),
        .I2(full_n_reg_0),
        .I3(m_axi_gmem_RVALID),
        .I4(empty_n_reg_n_0),
        .O(empty_n_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    empty_n_i_2__0
       (.I0(empty_n_i_3__0_n_0),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[0]),
        .I3(mOutPtr[7]),
        .I4(mOutPtr[2]),
        .O(empty_n_i_2__0_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    empty_n_i_3__0
       (.I0(mOutPtr[5]),
        .I1(mOutPtr[3]),
        .I2(mOutPtr[4]),
        .I3(mOutPtr[8]),
        .I4(mOutPtr[6]),
        .O(empty_n_i_3__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(empty_n_i_1_n_0),
        .Q(empty_n_reg_n_0),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFFFDF55)) 
    full_n_i_1
       (.I0(ap_rst_n),
        .I1(p_1_in),
        .I2(m_axi_gmem_RVALID),
        .I3(full_n_reg_0),
        .I4(pop),
        .O(full_n_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFBFFFFF)) 
    full_n_i_2__2
       (.I0(full_n_i_3_n_0),
        .I1(mOutPtr[4]),
        .I2(mOutPtr[2]),
        .I3(mOutPtr[8]),
        .I4(mOutPtr[3]),
        .O(p_1_in));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    full_n_i_3
       (.I0(mOutPtr[5]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(mOutPtr[7]),
        .I4(mOutPtr[6]),
        .O(full_n_i_3_n_0));
  FDRE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(full_n_i_1_n_0),
        .Q(full_n_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1 
       (.I0(mOutPtr[0]),
        .O(\mOutPtr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'h96999999)) 
    \mOutPtr[1]_i_1 
       (.I0(mOutPtr[1]),
        .I1(mOutPtr[0]),
        .I2(pop),
        .I3(full_n_reg_0),
        .I4(m_axi_gmem_RVALID),
        .O(\mOutPtr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE7EEEEEE18111111)) 
    \mOutPtr[2]_i_1 
       (.I0(mOutPtr[0]),
        .I1(mOutPtr[1]),
        .I2(pop),
        .I3(full_n_reg_0),
        .I4(m_axi_gmem_RVALID),
        .I5(mOutPtr[2]),
        .O(\mOutPtr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE7FFEFE01800101)) 
    \mOutPtr[3]_i_1 
       (.I0(mOutPtr[1]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[2]),
        .I3(pop),
        .I4(push),
        .I5(mOutPtr[3]),
        .O(\mOutPtr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFE80000001)) 
    \mOutPtr[4]_i_1 
       (.I0(mOutPtr[2]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(mOutPtr[3]),
        .I4(mOutPtr19_out),
        .I5(mOutPtr[4]),
        .O(\mOutPtr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8AAABAAA75554555)) 
    \mOutPtr[5]_i_1 
       (.I0(\mOutPtr[5]_i_2_n_0 ),
        .I1(pop),
        .I2(full_n_reg_0),
        .I3(m_axi_gmem_RVALID),
        .I4(\mOutPtr[5]_i_3_n_0 ),
        .I5(mOutPtr[5]),
        .O(\mOutPtr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \mOutPtr[5]_i_2 
       (.I0(mOutPtr[3]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[0]),
        .I3(mOutPtr[2]),
        .I4(mOutPtr[4]),
        .O(\mOutPtr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \mOutPtr[5]_i_3 
       (.I0(mOutPtr[4]),
        .I1(mOutPtr[2]),
        .I2(mOutPtr[1]),
        .I3(mOutPtr[0]),
        .I4(mOutPtr[3]),
        .O(\mOutPtr[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8AAABAAA75554555)) 
    \mOutPtr[6]_i_1 
       (.I0(\mOutPtr[8]_i_3_n_0 ),
        .I1(pop),
        .I2(full_n_reg_0),
        .I3(m_axi_gmem_RVALID),
        .I4(\mOutPtr[8]_i_5_n_0 ),
        .I5(mOutPtr[6]),
        .O(\mOutPtr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE3EEEFEE1C111011)) 
    \mOutPtr[7]_i_1 
       (.I0(\mOutPtr[8]_i_3_n_0 ),
        .I1(mOutPtr[6]),
        .I2(pop),
        .I3(push),
        .I4(\mOutPtr[8]_i_5_n_0 ),
        .I5(mOutPtr[7]),
        .O(\mOutPtr[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \mOutPtr[8]_i_1 
       (.I0(full_n_reg_0),
        .I1(m_axi_gmem_RVALID),
        .I2(pop),
        .O(\mOutPtr[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5FFEFFFEA0010001)) 
    \mOutPtr[8]_i_2 
       (.I0(mOutPtr[7]),
        .I1(\mOutPtr[8]_i_3_n_0 ),
        .I2(mOutPtr[6]),
        .I3(mOutPtr19_out),
        .I4(\mOutPtr[8]_i_5_n_0 ),
        .I5(mOutPtr[8]),
        .O(\mOutPtr[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \mOutPtr[8]_i_3 
       (.I0(mOutPtr[4]),
        .I1(mOutPtr[2]),
        .I2(mOutPtr[0]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[3]),
        .I5(mOutPtr[5]),
        .O(\mOutPtr[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAA2AA22222222)) 
    \mOutPtr[8]_i_4 
       (.I0(push),
        .I1(empty_n_reg_n_0),
        .I2(\dout_buf_reg[34]_1 ),
        .I3(\bus_wide_gen.ready_for_data__0 ),
        .I4(\bus_wide_gen.split_cnt__2 ),
        .I5(beat_valid),
        .O(mOutPtr19_out));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \mOutPtr[8]_i_5 
       (.I0(mOutPtr[5]),
        .I1(mOutPtr[3]),
        .I2(mOutPtr[0]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[2]),
        .I5(mOutPtr[4]),
        .O(\mOutPtr[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(\mOutPtr[8]_i_1_n_0 ),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(mOutPtr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(\mOutPtr[8]_i_1_n_0 ),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(mOutPtr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mOutPtr_reg[2] 
       (.C(ap_clk),
        .CE(\mOutPtr[8]_i_1_n_0 ),
        .D(\mOutPtr[2]_i_1_n_0 ),
        .Q(mOutPtr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mOutPtr_reg[3] 
       (.C(ap_clk),
        .CE(\mOutPtr[8]_i_1_n_0 ),
        .D(\mOutPtr[3]_i_1_n_0 ),
        .Q(mOutPtr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mOutPtr_reg[4] 
       (.C(ap_clk),
        .CE(\mOutPtr[8]_i_1_n_0 ),
        .D(\mOutPtr[4]_i_1_n_0 ),
        .Q(mOutPtr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mOutPtr_reg[5] 
       (.C(ap_clk),
        .CE(\mOutPtr[8]_i_1_n_0 ),
        .D(\mOutPtr[5]_i_1_n_0 ),
        .Q(mOutPtr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mOutPtr_reg[6] 
       (.C(ap_clk),
        .CE(\mOutPtr[8]_i_1_n_0 ),
        .D(\mOutPtr[6]_i_1_n_0 ),
        .Q(mOutPtr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mOutPtr_reg[7] 
       (.C(ap_clk),
        .CE(\mOutPtr[8]_i_1_n_0 ),
        .D(\mOutPtr[7]_i_1_n_0 ),
        .Q(mOutPtr[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mOutPtr_reg[8] 
       (.C(ap_clk),
        .CE(\mOutPtr[8]_i_1_n_0 ),
        .D(\mOutPtr[8]_i_2_n_0 ),
        .Q(mOutPtr[8]),
        .R(SR));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p3_d32" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p3_d32" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8960" *) 
  (* RTL_RAM_NAME = "bus_read/buff_rdata/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "256" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "34" *) 
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
    mem_reg
       (.ADDRARDADDR({1'b1,rnext,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,waddr,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DIADI(D[15:0]),
        .DIBDI(D[31:16]),
        .DIPADIP(m_axi_gmem_RRESP),
        .DIPBDIP({1'b1,D[32]}),
        .DOADO(q_buf[15:0]),
        .DOBDO(q_buf[31:16]),
        .DOPADOP({mem_reg_n_32,mem_reg_n_33}),
        .DOPBDOP({NLW_mem_reg_DOPBDOP_UNCONNECTED[1],q_buf[34]}),
        .ENARDEN(1'b1),
        .ENBWREN(full_n_reg_0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({m_axi_gmem_RVALID,m_axi_gmem_RVALID,m_axi_gmem_RVALID,m_axi_gmem_RVALID}));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mem_reg_i_10__0
       (.I0(raddr[5]),
        .I1(raddr[3]),
        .I2(raddr[1]),
        .I3(raddr[0]),
        .I4(raddr[2]),
        .I5(raddr[4]),
        .O(mem_reg_i_10__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_reg_i_11__0
       (.I0(raddr[4]),
        .I1(raddr[2]),
        .I2(raddr[0]),
        .I3(raddr[1]),
        .I4(raddr[3]),
        .O(mem_reg_i_11__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h7)) 
    mem_reg_i_12__0
       (.I0(raddr[1]),
        .I1(raddr[0]),
        .O(mem_reg_i_12__0_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    mem_reg_i_13
       (.I0(raddr[5]),
        .I1(raddr[4]),
        .I2(raddr[3]),
        .I3(raddr[2]),
        .I4(mem_reg_i_15_n_0),
        .O(mem_reg_i_13_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    mem_reg_i_15
       (.I0(raddr[7]),
        .I1(raddr[6]),
        .I2(raddr[0]),
        .I3(raddr[1]),
        .O(mem_reg_i_15_n_0));
  LUT5 #(
    .INIT(32'h57773000)) 
    mem_reg_i_1__0
       (.I0(pop),
        .I1(mem_reg_i_9__0_n_0),
        .I2(mem_reg_i_10__0_n_0),
        .I3(raddr[6]),
        .I4(raddr[7]),
        .O(rnext[7]));
  LUT4 #(
    .INIT(16'h5370)) 
    mem_reg_i_2
       (.I0(pop),
        .I1(mem_reg_i_9__0_n_0),
        .I2(raddr[6]),
        .I3(mem_reg_i_10__0_n_0),
        .O(rnext[6]));
  LUT4 #(
    .INIT(16'h5370)) 
    mem_reg_i_3__0
       (.I0(pop),
        .I1(mem_reg_i_9__0_n_0),
        .I2(raddr[5]),
        .I3(mem_reg_i_11__0_n_0),
        .O(rnext[5]));
  LUT6 #(
    .INIT(64'h7070537070707070)) 
    mem_reg_i_4
       (.I0(pop),
        .I1(mem_reg_i_9__0_n_0),
        .I2(raddr[4]),
        .I3(raddr[2]),
        .I4(mem_reg_i_12__0_n_0),
        .I5(raddr[3]),
        .O(rnext[4]));
  LUT6 #(
    .INIT(64'h5370707070707070)) 
    mem_reg_i_5__0
       (.I0(pop),
        .I1(mem_reg_i_9__0_n_0),
        .I2(raddr[3]),
        .I3(raddr[1]),
        .I4(raddr[0]),
        .I5(raddr[2]),
        .O(rnext[3]));
  LUT5 #(
    .INIT(32'h53707070)) 
    mem_reg_i_6__0
       (.I0(pop),
        .I1(mem_reg_i_9__0_n_0),
        .I2(raddr[2]),
        .I3(raddr[0]),
        .I4(raddr[1]),
        .O(rnext[2]));
  LUT4 #(
    .INIT(16'h447C)) 
    mem_reg_i_7__0
       (.I0(pop),
        .I1(raddr[1]),
        .I2(raddr[0]),
        .I3(mem_reg_i_9__0_n_0),
        .O(rnext[1]));
  LUT3 #(
    .INIT(8'h47)) 
    mem_reg_i_8__0
       (.I0(pop),
        .I1(raddr[0]),
        .I2(mem_reg_i_9__0_n_0),
        .O(rnext[0]));
  LUT6 #(
    .INIT(64'h7FFFF7FF77777777)) 
    mem_reg_i_9__0
       (.I0(mem_reg_i_13_n_0),
        .I1(empty_n_reg_n_0),
        .I2(\dout_buf_reg[34]_1 ),
        .I3(\bus_wide_gen.ready_for_data__0 ),
        .I4(\bus_wide_gen.split_cnt__2 ),
        .I5(beat_valid),
        .O(mem_reg_i_9__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pout[3]_i_6 
       (.I0(Q[32]),
        .I1(beat_valid),
        .O(\dout_buf_reg[34]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[0] 
       (.C(ap_clk),
        .CE(push),
        .D(D[0]),
        .Q(q_tmp[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[10] 
       (.C(ap_clk),
        .CE(push),
        .D(D[10]),
        .Q(q_tmp[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[11] 
       (.C(ap_clk),
        .CE(push),
        .D(D[11]),
        .Q(q_tmp[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[12] 
       (.C(ap_clk),
        .CE(push),
        .D(D[12]),
        .Q(q_tmp[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[13] 
       (.C(ap_clk),
        .CE(push),
        .D(D[13]),
        .Q(q_tmp[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[14] 
       (.C(ap_clk),
        .CE(push),
        .D(D[14]),
        .Q(q_tmp[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[15] 
       (.C(ap_clk),
        .CE(push),
        .D(D[15]),
        .Q(q_tmp[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[16] 
       (.C(ap_clk),
        .CE(push),
        .D(D[16]),
        .Q(q_tmp[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[17] 
       (.C(ap_clk),
        .CE(push),
        .D(D[17]),
        .Q(q_tmp[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[18] 
       (.C(ap_clk),
        .CE(push),
        .D(D[18]),
        .Q(q_tmp[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[19] 
       (.C(ap_clk),
        .CE(push),
        .D(D[19]),
        .Q(q_tmp[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[1] 
       (.C(ap_clk),
        .CE(push),
        .D(D[1]),
        .Q(q_tmp[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[20] 
       (.C(ap_clk),
        .CE(push),
        .D(D[20]),
        .Q(q_tmp[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[21] 
       (.C(ap_clk),
        .CE(push),
        .D(D[21]),
        .Q(q_tmp[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[22] 
       (.C(ap_clk),
        .CE(push),
        .D(D[22]),
        .Q(q_tmp[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[23] 
       (.C(ap_clk),
        .CE(push),
        .D(D[23]),
        .Q(q_tmp[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[24] 
       (.C(ap_clk),
        .CE(push),
        .D(D[24]),
        .Q(q_tmp[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[25] 
       (.C(ap_clk),
        .CE(push),
        .D(D[25]),
        .Q(q_tmp[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[26] 
       (.C(ap_clk),
        .CE(push),
        .D(D[26]),
        .Q(q_tmp[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[27] 
       (.C(ap_clk),
        .CE(push),
        .D(D[27]),
        .Q(q_tmp[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[28] 
       (.C(ap_clk),
        .CE(push),
        .D(D[28]),
        .Q(q_tmp[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[29] 
       (.C(ap_clk),
        .CE(push),
        .D(D[29]),
        .Q(q_tmp[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[2] 
       (.C(ap_clk),
        .CE(push),
        .D(D[2]),
        .Q(q_tmp[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[30] 
       (.C(ap_clk),
        .CE(push),
        .D(D[30]),
        .Q(q_tmp[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[31] 
       (.C(ap_clk),
        .CE(push),
        .D(D[31]),
        .Q(q_tmp[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[34] 
       (.C(ap_clk),
        .CE(push),
        .D(D[32]),
        .Q(q_tmp[34]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[3] 
       (.C(ap_clk),
        .CE(push),
        .D(D[3]),
        .Q(q_tmp[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[4] 
       (.C(ap_clk),
        .CE(push),
        .D(D[4]),
        .Q(q_tmp[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[5] 
       (.C(ap_clk),
        .CE(push),
        .D(D[5]),
        .Q(q_tmp[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[6] 
       (.C(ap_clk),
        .CE(push),
        .D(D[6]),
        .Q(q_tmp[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[7] 
       (.C(ap_clk),
        .CE(push),
        .D(D[7]),
        .Q(q_tmp[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[8] 
       (.C(ap_clk),
        .CE(push),
        .D(D[8]),
        .Q(q_tmp[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[9] 
       (.C(ap_clk),
        .CE(push),
        .D(D[9]),
        .Q(q_tmp[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(rnext[0]),
        .Q(raddr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(rnext[1]),
        .Q(raddr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(rnext[2]),
        .Q(raddr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(rnext[3]),
        .Q(raddr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(rnext[4]),
        .Q(raddr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(rnext[5]),
        .Q(raddr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(rnext[6]),
        .Q(raddr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(rnext[7]),
        .Q(raddr[7]),
        .R(SR));
  CARRY4 show_ahead1_carry
       (.CI(1'b0),
        .CO({NLW_show_ahead1_carry_CO_UNCONNECTED[3],show_ahead1,show_ahead1_carry_n_2,show_ahead1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_show_ahead1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,show_ahead1_carry_i_1_n_0,show_ahead1_carry_i_2_n_0,show_ahead1_carry_i_3_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    show_ahead1_carry_i_1
       (.I0(mOutPtr[8]),
        .I1(mOutPtr[7]),
        .I2(mOutPtr[6]),
        .O(show_ahead1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    show_ahead1_carry_i_2
       (.I0(mOutPtr[5]),
        .I1(mOutPtr[4]),
        .I2(mOutPtr[3]),
        .O(show_ahead1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h1001)) 
    show_ahead1_carry_i_3
       (.I0(mOutPtr[2]),
        .I1(mOutPtr[1]),
        .I2(pop),
        .I3(mOutPtr[0]),
        .O(show_ahead1_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    show_ahead_i_1
       (.I0(m_axi_gmem_RVALID),
        .I1(full_n_reg_0),
        .I2(show_ahead1),
        .O(show_ahead0));
  FDRE #(
    .INIT(1'b0)) 
    show_ahead_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(show_ahead0),
        .Q(show_ahead),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \waddr[0]_i_1 
       (.I0(waddr[0]),
        .O(\waddr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \waddr[1]_i_1 
       (.I0(waddr[0]),
        .I1(waddr[1]),
        .O(\waddr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \waddr[2]_i_1 
       (.I0(waddr[2]),
        .I1(waddr[0]),
        .I2(waddr[1]),
        .O(\waddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \waddr[3]_i_1 
       (.I0(waddr[3]),
        .I1(waddr[0]),
        .I2(waddr[1]),
        .I3(waddr[2]),
        .O(\waddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \waddr[4]_i_1 
       (.I0(waddr[4]),
        .I1(waddr[2]),
        .I2(waddr[1]),
        .I3(waddr[0]),
        .I4(waddr[3]),
        .O(\waddr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \waddr[5]_i_1 
       (.I0(waddr[5]),
        .I1(waddr[3]),
        .I2(waddr[0]),
        .I3(waddr[1]),
        .I4(waddr[2]),
        .I5(waddr[4]),
        .O(\waddr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \waddr[6]_i_1__0 
       (.I0(waddr[6]),
        .I1(waddr[4]),
        .I2(waddr[2]),
        .I3(\waddr[6]_i_2_n_0 ),
        .I4(waddr[3]),
        .I5(waddr[5]),
        .O(\waddr[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[6]_i_2 
       (.I0(waddr[1]),
        .I1(waddr[0]),
        .O(\waddr[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[7]_i_1 
       (.I0(full_n_reg_0),
        .I1(m_axi_gmem_RVALID),
        .O(push));
  LUT4 #(
    .INIT(16'hB8CC)) 
    \waddr[7]_i_2 
       (.I0(\waddr[7]_i_3_n_0 ),
        .I1(waddr[7]),
        .I2(\waddr[7]_i_4_n_0 ),
        .I3(waddr[6]),
        .O(\waddr[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \waddr[7]_i_3 
       (.I0(waddr[4]),
        .I1(waddr[2]),
        .I2(waddr[0]),
        .I3(waddr[1]),
        .I4(waddr[3]),
        .I5(waddr[5]),
        .O(\waddr[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \waddr[7]_i_4 
       (.I0(waddr[4]),
        .I1(waddr[2]),
        .I2(waddr[1]),
        .I3(waddr[0]),
        .I4(waddr[3]),
        .I5(waddr[5]),
        .O(\waddr[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[0] 
       (.C(ap_clk),
        .CE(push),
        .D(\waddr[0]_i_1_n_0 ),
        .Q(waddr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[1] 
       (.C(ap_clk),
        .CE(push),
        .D(\waddr[1]_i_1_n_0 ),
        .Q(waddr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[2] 
       (.C(ap_clk),
        .CE(push),
        .D(\waddr[2]_i_1_n_0 ),
        .Q(waddr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[3] 
       (.C(ap_clk),
        .CE(push),
        .D(\waddr[3]_i_1_n_0 ),
        .Q(waddr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[4] 
       (.C(ap_clk),
        .CE(push),
        .D(\waddr[4]_i_1_n_0 ),
        .Q(waddr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[5] 
       (.C(ap_clk),
        .CE(push),
        .D(\waddr[5]_i_1_n_0 ),
        .Q(waddr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[6] 
       (.C(ap_clk),
        .CE(push),
        .D(\waddr[6]_i_1__0_n_0 ),
        .Q(waddr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[7] 
       (.C(ap_clk),
        .CE(push),
        .D(\waddr[7]_i_2_n_0 ),
        .Q(waddr[7]),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_gmem_m_axi_fifo
   (fifo_burst_ready,
    \could_multi_bursts.ARVALID_Dummy_reg ,
    \could_multi_bursts.next_loop ,
    ap_rst_n_0,
    \bus_wide_gen.split_cnt__2 ,
    \bus_wide_gen.last_split ,
    \q_reg[8]_0 ,
    D,
    p_28_in,
    E,
    p_21_in,
    \could_multi_bursts.loop_cnt_reg[2] ,
    rreq_handling_reg,
    \bus_wide_gen.rdata_valid_t_reg ,
    ap_rst_n_1,
    ap_rst_n_2,
    \q_reg[8]_1 ,
    in,
    \could_multi_bursts.sect_handling_reg ,
    dout_valid_reg,
    \end_addr_buf_reg[1] ,
    SR,
    ap_clk,
    \could_multi_bursts.ARVALID_Dummy_reg_0 ,
    m_axi_gmem_ARREADY,
    ap_rst_n,
    invalid_len_event_reg2,
    \bus_wide_gen.split_cnt_buf_reg[0] ,
    \bus_wide_gen.rdata_valid_t_reg_0 ,
    rdata_ack_t,
    beat_valid,
    Q,
    \bus_wide_gen.data_buf_reg[0] ,
    \bus_wide_gen.data_buf_reg[15] ,
    \bus_wide_gen.data_buf_reg[1] ,
    \bus_wide_gen.data_buf_reg[2] ,
    \bus_wide_gen.data_buf_reg[3] ,
    \bus_wide_gen.data_buf_reg[4] ,
    \bus_wide_gen.data_buf_reg[5] ,
    \bus_wide_gen.data_buf_reg[6] ,
    \bus_wide_gen.data_buf_reg[7] ,
    \bus_wide_gen.data_buf_reg[8] ,
    \bus_wide_gen.data_buf_reg[9] ,
    \bus_wide_gen.data_buf_reg[10] ,
    \bus_wide_gen.data_buf_reg[11] ,
    \bus_wide_gen.data_buf_reg[12] ,
    \bus_wide_gen.data_buf_reg[13] ,
    \bus_wide_gen.data_buf_reg[14] ,
    \bus_wide_gen.data_buf_reg[15]_0 ,
    rreq_handling_reg_0,
    CO,
    readRequestFIFONotEmpty,
    \sect_len_buf_reg[3] ,
    fifo_rctl_ready,
    \could_multi_bursts.sect_handling_reg_0 ,
    \could_multi_bursts.sect_handling_reg_1 ,
    \q_reg[9]_0 ,
    push,
    invalid_len_event,
    rreq_handling_reg_1,
    \sect_addr_buf_reg[1] ,
    \sect_end_buf_reg[1] ,
    \sect_end_buf_reg[1]_0 );
  output fifo_burst_ready;
  output \could_multi_bursts.ARVALID_Dummy_reg ;
  output \could_multi_bursts.next_loop ;
  output ap_rst_n_0;
  output \bus_wide_gen.split_cnt__2 ;
  output \bus_wide_gen.last_split ;
  output \q_reg[8]_0 ;
  output [15:0]D;
  output p_28_in;
  output [0:0]E;
  output p_21_in;
  output \could_multi_bursts.loop_cnt_reg[2] ;
  output rreq_handling_reg;
  output \bus_wide_gen.rdata_valid_t_reg ;
  output [0:0]ap_rst_n_1;
  output [0:0]ap_rst_n_2;
  output [0:0]\q_reg[8]_1 ;
  output [3:0]in;
  output \could_multi_bursts.sect_handling_reg ;
  output dout_valid_reg;
  output \end_addr_buf_reg[1] ;
  input [0:0]SR;
  input ap_clk;
  input \could_multi_bursts.ARVALID_Dummy_reg_0 ;
  input m_axi_gmem_ARREADY;
  input ap_rst_n;
  input invalid_len_event_reg2;
  input \bus_wide_gen.split_cnt_buf_reg[0] ;
  input \bus_wide_gen.rdata_valid_t_reg_0 ;
  input rdata_ack_t;
  input beat_valid;
  input [7:0]Q;
  input \bus_wide_gen.data_buf_reg[0] ;
  input [31:0]\bus_wide_gen.data_buf_reg[15] ;
  input \bus_wide_gen.data_buf_reg[1] ;
  input \bus_wide_gen.data_buf_reg[2] ;
  input \bus_wide_gen.data_buf_reg[3] ;
  input \bus_wide_gen.data_buf_reg[4] ;
  input \bus_wide_gen.data_buf_reg[5] ;
  input \bus_wide_gen.data_buf_reg[6] ;
  input \bus_wide_gen.data_buf_reg[7] ;
  input \bus_wide_gen.data_buf_reg[8] ;
  input \bus_wide_gen.data_buf_reg[9] ;
  input \bus_wide_gen.data_buf_reg[10] ;
  input \bus_wide_gen.data_buf_reg[11] ;
  input \bus_wide_gen.data_buf_reg[12] ;
  input \bus_wide_gen.data_buf_reg[13] ;
  input \bus_wide_gen.data_buf_reg[14] ;
  input \bus_wide_gen.data_buf_reg[15]_0 ;
  input rreq_handling_reg_0;
  input [0:0]CO;
  input readRequestFIFONotEmpty;
  input \sect_len_buf_reg[3] ;
  input fifo_rctl_ready;
  input [9:0]\could_multi_bursts.sect_handling_reg_0 ;
  input [5:0]\could_multi_bursts.sect_handling_reg_1 ;
  input [0:0]\q_reg[9]_0 ;
  input push;
  input invalid_len_event;
  input rreq_handling_reg_1;
  input [0:0]\sect_addr_buf_reg[1] ;
  input \sect_end_buf_reg[1] ;
  input [0:0]\sect_end_buf_reg[1]_0 ;

  wire [0:0]CO;
  wire [15:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire [0:0]ap_rst_n_1;
  wire [0:0]ap_rst_n_2;
  wire beat_valid;
  wire burst_valid;
  wire \bus_wide_gen.data_buf1 ;
  wire \bus_wide_gen.data_buf[15]_i_4_n_0 ;
  wire \bus_wide_gen.data_buf[15]_i_5_n_0 ;
  wire \bus_wide_gen.data_buf[15]_i_6_n_0 ;
  wire \bus_wide_gen.data_buf[15]_i_7_n_0 ;
  wire \bus_wide_gen.data_buf_reg[0] ;
  wire \bus_wide_gen.data_buf_reg[10] ;
  wire \bus_wide_gen.data_buf_reg[11] ;
  wire \bus_wide_gen.data_buf_reg[12] ;
  wire \bus_wide_gen.data_buf_reg[13] ;
  wire \bus_wide_gen.data_buf_reg[14] ;
  wire [31:0]\bus_wide_gen.data_buf_reg[15] ;
  wire \bus_wide_gen.data_buf_reg[15]_0 ;
  wire \bus_wide_gen.data_buf_reg[1] ;
  wire \bus_wide_gen.data_buf_reg[2] ;
  wire \bus_wide_gen.data_buf_reg[3] ;
  wire \bus_wide_gen.data_buf_reg[4] ;
  wire \bus_wide_gen.data_buf_reg[5] ;
  wire \bus_wide_gen.data_buf_reg[6] ;
  wire \bus_wide_gen.data_buf_reg[7] ;
  wire \bus_wide_gen.data_buf_reg[8] ;
  wire \bus_wide_gen.data_buf_reg[9] ;
  wire \bus_wide_gen.first_split ;
  wire \bus_wide_gen.last_beat__0 ;
  wire \bus_wide_gen.last_split ;
  wire \bus_wide_gen.next_split__0 ;
  wire \bus_wide_gen.rdata_valid_t_reg ;
  wire \bus_wide_gen.rdata_valid_t_reg_0 ;
  wire \bus_wide_gen.split_cnt__2 ;
  wire \bus_wide_gen.split_cnt_buf_reg[0] ;
  wire \bus_wide_gen.tail_split ;
  wire [9:8]\bus_wide_gen.tmp_burst_info ;
  wire \could_multi_bursts.ARVALID_Dummy_reg ;
  wire \could_multi_bursts.ARVALID_Dummy_reg_0 ;
  wire \could_multi_bursts.arlen_buf[3]_i_2_n_0 ;
  wire \could_multi_bursts.arlen_buf[3]_i_3_n_0 ;
  wire \could_multi_bursts.loop_cnt_reg[2] ;
  wire \could_multi_bursts.next_loop ;
  wire \could_multi_bursts.sect_handling_reg ;
  wire [9:0]\could_multi_bursts.sect_handling_reg_0 ;
  wire [5:0]\could_multi_bursts.sect_handling_reg_1 ;
  wire data_vld_i_1_n_0;
  wire data_vld_reg_n_0;
  wire dout_valid_reg;
  wire empty_n_i_4_n_0;
  wire empty_n_i_5_n_0;
  wire \end_addr_buf_reg[1] ;
  wire fifo_burst_ready;
  wire fifo_rctl_ready;
  wire full_n_i_1__0_n_0;
  wire full_n_i_2_n_0;
  wire [3:0]in;
  wire invalid_len_event;
  wire invalid_len_event_reg2;
  wire m_axi_gmem_ARREADY;
  wire \mem_reg[4][0]_srl5_n_0 ;
  wire \mem_reg[4][1]_srl5_n_0 ;
  wire \mem_reg[4][2]_srl5_n_0 ;
  wire \mem_reg[4][3]_srl5_n_0 ;
  wire \mem_reg[4][8]_srl5_n_0 ;
  wire \mem_reg[4][9]_srl5_n_0 ;
  wire p_21_in;
  wire p_28_in;
  wire pop0;
  wire \pout[0]_i_1_n_0 ;
  wire \pout[1]_i_1_n_0 ;
  wire \pout[2]_i_1_n_0 ;
  wire \pout_reg_n_0_[0] ;
  wire \pout_reg_n_0_[1] ;
  wire \pout_reg_n_0_[2] ;
  wire push;
  wire \q_reg[8]_0 ;
  wire [0:0]\q_reg[8]_1 ;
  wire [0:0]\q_reg[9]_0 ;
  wire \q_reg_n_0_[0] ;
  wire \q_reg_n_0_[1] ;
  wire \q_reg_n_0_[2] ;
  wire \q_reg_n_0_[3] ;
  wire rdata_ack_t;
  wire readRequestFIFONotEmpty;
  wire rreq_handling_reg;
  wire rreq_handling_reg_0;
  wire rreq_handling_reg_1;
  wire [0:0]\sect_addr_buf_reg[1] ;
  wire \sect_end_buf_reg[1] ;
  wire [0:0]\sect_end_buf_reg[1]_0 ;
  wire \sect_len_buf_reg[3] ;

  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'hD500)) 
    \align_len[31]_i_1 
       (.I0(rreq_handling_reg_0),
        .I1(CO),
        .I2(p_21_in),
        .I3(readRequestFIFONotEmpty),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \bus_wide_gen.data_buf[0]_i_1 
       (.I0(\bus_wide_gen.data_buf_reg[0] ),
        .I1(\bus_wide_gen.data_buf[15]_i_4_n_0 ),
        .I2(\bus_wide_gen.data_buf[15]_i_5_n_0 ),
        .I3(\bus_wide_gen.data_buf_reg[15] [0]),
        .I4(\bus_wide_gen.data_buf_reg[15] [16]),
        .I5(\bus_wide_gen.data_buf[15]_i_6_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \bus_wide_gen.data_buf[10]_i_1 
       (.I0(\bus_wide_gen.data_buf_reg[10] ),
        .I1(\bus_wide_gen.data_buf[15]_i_4_n_0 ),
        .I2(\bus_wide_gen.data_buf[15]_i_5_n_0 ),
        .I3(\bus_wide_gen.data_buf_reg[15] [10]),
        .I4(\bus_wide_gen.data_buf_reg[15] [26]),
        .I5(\bus_wide_gen.data_buf[15]_i_6_n_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \bus_wide_gen.data_buf[11]_i_1 
       (.I0(\bus_wide_gen.data_buf_reg[11] ),
        .I1(\bus_wide_gen.data_buf[15]_i_4_n_0 ),
        .I2(\bus_wide_gen.data_buf[15]_i_5_n_0 ),
        .I3(\bus_wide_gen.data_buf_reg[15] [11]),
        .I4(\bus_wide_gen.data_buf_reg[15] [27]),
        .I5(\bus_wide_gen.data_buf[15]_i_6_n_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \bus_wide_gen.data_buf[12]_i_1 
       (.I0(\bus_wide_gen.data_buf_reg[12] ),
        .I1(\bus_wide_gen.data_buf[15]_i_4_n_0 ),
        .I2(\bus_wide_gen.data_buf[15]_i_5_n_0 ),
        .I3(\bus_wide_gen.data_buf_reg[15] [12]),
        .I4(\bus_wide_gen.data_buf_reg[15] [28]),
        .I5(\bus_wide_gen.data_buf[15]_i_6_n_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \bus_wide_gen.data_buf[13]_i_1 
       (.I0(\bus_wide_gen.data_buf_reg[13] ),
        .I1(\bus_wide_gen.data_buf[15]_i_4_n_0 ),
        .I2(\bus_wide_gen.data_buf[15]_i_5_n_0 ),
        .I3(\bus_wide_gen.data_buf_reg[15] [13]),
        .I4(\bus_wide_gen.data_buf_reg[15] [29]),
        .I5(\bus_wide_gen.data_buf[15]_i_6_n_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \bus_wide_gen.data_buf[14]_i_1 
       (.I0(\bus_wide_gen.data_buf_reg[14] ),
        .I1(\bus_wide_gen.data_buf[15]_i_4_n_0 ),
        .I2(\bus_wide_gen.data_buf[15]_i_5_n_0 ),
        .I3(\bus_wide_gen.data_buf_reg[15] [14]),
        .I4(\bus_wide_gen.data_buf_reg[15] [30]),
        .I5(\bus_wide_gen.data_buf[15]_i_6_n_0 ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \bus_wide_gen.data_buf[15]_i_2 
       (.I0(\bus_wide_gen.data_buf_reg[15]_0 ),
        .I1(\bus_wide_gen.data_buf[15]_i_4_n_0 ),
        .I2(\bus_wide_gen.data_buf[15]_i_5_n_0 ),
        .I3(\bus_wide_gen.data_buf_reg[15] [15]),
        .I4(\bus_wide_gen.data_buf_reg[15] [31]),
        .I5(\bus_wide_gen.data_buf[15]_i_6_n_0 ),
        .O(D[15]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \bus_wide_gen.data_buf[15]_i_3 
       (.I0(\bus_wide_gen.data_buf[15]_i_7_n_0 ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(p_28_in));
  LUT6 #(
    .INIT(64'hDDDD00DD00D000D0)) 
    \bus_wide_gen.data_buf[15]_i_4 
       (.I0(\bus_wide_gen.rdata_valid_t_reg_0 ),
        .I1(rdata_ack_t),
        .I2(beat_valid),
        .I3(\bus_wide_gen.split_cnt_buf_reg[0] ),
        .I4(\bus_wide_gen.data_buf1 ),
        .I5(p_28_in),
        .O(\bus_wide_gen.data_buf[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000DD00D000D0)) 
    \bus_wide_gen.data_buf[15]_i_5 
       (.I0(\bus_wide_gen.rdata_valid_t_reg_0 ),
        .I1(rdata_ack_t),
        .I2(beat_valid),
        .I3(\bus_wide_gen.split_cnt_buf_reg[0] ),
        .I4(\bus_wide_gen.data_buf1 ),
        .I5(p_28_in),
        .O(\bus_wide_gen.data_buf[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'h8A00)) 
    \bus_wide_gen.data_buf[15]_i_6 
       (.I0(p_28_in),
        .I1(rdata_ack_t),
        .I2(\bus_wide_gen.rdata_valid_t_reg_0 ),
        .I3(\bus_wide_gen.data_buf1 ),
        .O(\bus_wide_gen.data_buf[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \bus_wide_gen.data_buf[15]_i_7 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(burst_valid),
        .I5(beat_valid),
        .O(\bus_wide_gen.data_buf[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \bus_wide_gen.data_buf[1]_i_1 
       (.I0(\bus_wide_gen.data_buf_reg[1] ),
        .I1(\bus_wide_gen.data_buf[15]_i_4_n_0 ),
        .I2(\bus_wide_gen.data_buf[15]_i_5_n_0 ),
        .I3(\bus_wide_gen.data_buf_reg[15] [1]),
        .I4(\bus_wide_gen.data_buf_reg[15] [17]),
        .I5(\bus_wide_gen.data_buf[15]_i_6_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \bus_wide_gen.data_buf[2]_i_1 
       (.I0(\bus_wide_gen.data_buf_reg[2] ),
        .I1(\bus_wide_gen.data_buf[15]_i_4_n_0 ),
        .I2(\bus_wide_gen.data_buf[15]_i_5_n_0 ),
        .I3(\bus_wide_gen.data_buf_reg[15] [2]),
        .I4(\bus_wide_gen.data_buf_reg[15] [18]),
        .I5(\bus_wide_gen.data_buf[15]_i_6_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h00000000CFCFCF8A)) 
    \bus_wide_gen.data_buf[31]_i_1 
       (.I0(beat_valid),
        .I1(rdata_ack_t),
        .I2(\bus_wide_gen.rdata_valid_t_reg_0 ),
        .I3(\bus_wide_gen.split_cnt_buf_reg[0] ),
        .I4(p_28_in),
        .I5(\bus_wide_gen.data_buf[15]_i_5_n_0 ),
        .O(dout_valid_reg));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \bus_wide_gen.data_buf[3]_i_1 
       (.I0(\bus_wide_gen.data_buf_reg[3] ),
        .I1(\bus_wide_gen.data_buf[15]_i_4_n_0 ),
        .I2(\bus_wide_gen.data_buf[15]_i_5_n_0 ),
        .I3(\bus_wide_gen.data_buf_reg[15] [3]),
        .I4(\bus_wide_gen.data_buf_reg[15] [19]),
        .I5(\bus_wide_gen.data_buf[15]_i_6_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \bus_wide_gen.data_buf[4]_i_1 
       (.I0(\bus_wide_gen.data_buf_reg[4] ),
        .I1(\bus_wide_gen.data_buf[15]_i_4_n_0 ),
        .I2(\bus_wide_gen.data_buf[15]_i_5_n_0 ),
        .I3(\bus_wide_gen.data_buf_reg[15] [4]),
        .I4(\bus_wide_gen.data_buf_reg[15] [20]),
        .I5(\bus_wide_gen.data_buf[15]_i_6_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \bus_wide_gen.data_buf[5]_i_1 
       (.I0(\bus_wide_gen.data_buf_reg[5] ),
        .I1(\bus_wide_gen.data_buf[15]_i_4_n_0 ),
        .I2(\bus_wide_gen.data_buf[15]_i_5_n_0 ),
        .I3(\bus_wide_gen.data_buf_reg[15] [5]),
        .I4(\bus_wide_gen.data_buf_reg[15] [21]),
        .I5(\bus_wide_gen.data_buf[15]_i_6_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \bus_wide_gen.data_buf[6]_i_1 
       (.I0(\bus_wide_gen.data_buf_reg[6] ),
        .I1(\bus_wide_gen.data_buf[15]_i_4_n_0 ),
        .I2(\bus_wide_gen.data_buf[15]_i_5_n_0 ),
        .I3(\bus_wide_gen.data_buf_reg[15] [6]),
        .I4(\bus_wide_gen.data_buf_reg[15] [22]),
        .I5(\bus_wide_gen.data_buf[15]_i_6_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \bus_wide_gen.data_buf[7]_i_1 
       (.I0(\bus_wide_gen.data_buf_reg[7] ),
        .I1(\bus_wide_gen.data_buf[15]_i_4_n_0 ),
        .I2(\bus_wide_gen.data_buf[15]_i_5_n_0 ),
        .I3(\bus_wide_gen.data_buf_reg[15] [7]),
        .I4(\bus_wide_gen.data_buf_reg[15] [23]),
        .I5(\bus_wide_gen.data_buf[15]_i_6_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \bus_wide_gen.data_buf[8]_i_1 
       (.I0(\bus_wide_gen.data_buf_reg[8] ),
        .I1(\bus_wide_gen.data_buf[15]_i_4_n_0 ),
        .I2(\bus_wide_gen.data_buf[15]_i_5_n_0 ),
        .I3(\bus_wide_gen.data_buf_reg[15] [8]),
        .I4(\bus_wide_gen.data_buf_reg[15] [24]),
        .I5(\bus_wide_gen.data_buf[15]_i_6_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \bus_wide_gen.data_buf[9]_i_1 
       (.I0(\bus_wide_gen.data_buf_reg[9] ),
        .I1(\bus_wide_gen.data_buf[15]_i_4_n_0 ),
        .I2(\bus_wide_gen.data_buf[15]_i_5_n_0 ),
        .I3(\bus_wide_gen.data_buf_reg[15] [9]),
        .I4(\bus_wide_gen.data_buf_reg[15] [25]),
        .I5(\bus_wide_gen.data_buf[15]_i_6_n_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h8A450000FFFFFFFF)) 
    \bus_wide_gen.len_cnt[7]_i_1 
       (.I0(\bus_wide_gen.tail_split ),
        .I1(rdata_ack_t),
        .I2(\bus_wide_gen.rdata_valid_t_reg_0 ),
        .I3(\bus_wide_gen.split_cnt__2 ),
        .I4(\bus_wide_gen.last_beat__0 ),
        .I5(ap_rst_n),
        .O(\q_reg[8]_1 ));
  LUT4 #(
    .INIT(16'hA251)) 
    \bus_wide_gen.len_cnt[7]_i_2 
       (.I0(\bus_wide_gen.split_cnt__2 ),
        .I1(\bus_wide_gen.rdata_valid_t_reg_0 ),
        .I2(rdata_ack_t),
        .I3(\q_reg[8]_0 ),
        .O(\bus_wide_gen.last_split ));
  LUT6 #(
    .INIT(64'hFFFFAAFFAAF2AAF2)) 
    \bus_wide_gen.rdata_valid_t_i_1 
       (.I0(\bus_wide_gen.rdata_valid_t_reg_0 ),
        .I1(rdata_ack_t),
        .I2(beat_valid),
        .I3(\bus_wide_gen.split_cnt_buf_reg[0] ),
        .I4(\bus_wide_gen.data_buf1 ),
        .I5(p_28_in),
        .O(\bus_wide_gen.rdata_valid_t_reg ));
  LUT6 #(
    .INIT(64'h00000000222A2220)) 
    \bus_wide_gen.split_cnt_buf[0]_i_1 
       (.I0(ap_rst_n),
        .I1(\bus_wide_gen.split_cnt__2 ),
        .I2(\bus_wide_gen.first_split ),
        .I3(\bus_wide_gen.next_split__0 ),
        .I4(\bus_wide_gen.split_cnt_buf_reg[0] ),
        .I5(\bus_wide_gen.last_split ),
        .O(ap_rst_n_0));
  LUT6 #(
    .INIT(64'h8F8A00008F8A8F8A)) 
    \bus_wide_gen.split_cnt_buf[0]_i_2 
       (.I0(p_28_in),
        .I1(\bus_wide_gen.data_buf1 ),
        .I2(\bus_wide_gen.split_cnt_buf_reg[0] ),
        .I3(beat_valid),
        .I4(rdata_ack_t),
        .I5(\bus_wide_gen.rdata_valid_t_reg_0 ),
        .O(\bus_wide_gen.first_split ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT5 #(
    .INIT(32'h70700070)) 
    \bus_wide_gen.split_cnt_buf[0]_i_3 
       (.I0(p_28_in),
        .I1(\bus_wide_gen.data_buf1 ),
        .I2(\bus_wide_gen.split_cnt_buf_reg[0] ),
        .I3(\bus_wide_gen.rdata_valid_t_reg_0 ),
        .I4(rdata_ack_t),
        .O(\bus_wide_gen.next_split__0 ));
  LUT5 #(
    .INIT(32'h00F02020)) 
    \could_multi_bursts.ARVALID_Dummy_i_1 
       (.I0(\could_multi_bursts.ARVALID_Dummy_reg_0 ),
        .I1(m_axi_gmem_ARREADY),
        .I2(ap_rst_n),
        .I3(invalid_len_event_reg2),
        .I4(\could_multi_bursts.next_loop ),
        .O(\could_multi_bursts.ARVALID_Dummy_reg ));
  LUT5 #(
    .INIT(32'h80800080)) 
    \could_multi_bursts.araddr_buf[63]_i_2 
       (.I0(fifo_burst_ready),
        .I1(fifo_rctl_ready),
        .I2(\sect_len_buf_reg[3] ),
        .I3(\could_multi_bursts.ARVALID_Dummy_reg_0 ),
        .I4(m_axi_gmem_ARREADY),
        .O(\could_multi_bursts.next_loop ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \could_multi_bursts.araddr_buf[63]_i_4 
       (.I0(\could_multi_bursts.sect_handling_reg_1 [2]),
        .I1(\could_multi_bursts.sect_handling_reg_1 [3]),
        .I2(\could_multi_bursts.sect_handling_reg_1 [0]),
        .I3(\could_multi_bursts.sect_handling_reg_1 [1]),
        .I4(\could_multi_bursts.sect_handling_reg_1 [5]),
        .I5(\could_multi_bursts.sect_handling_reg_1 [4]),
        .O(\could_multi_bursts.loop_cnt_reg[2] ));
  LUT3 #(
    .INIT(8'hF7)) 
    \could_multi_bursts.arlen_buf[0]_i_1 
       (.I0(\could_multi_bursts.arlen_buf[3]_i_2_n_0 ),
        .I1(\could_multi_bursts.arlen_buf[3]_i_3_n_0 ),
        .I2(\could_multi_bursts.sect_handling_reg_0 [0]),
        .O(in[0]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \could_multi_bursts.arlen_buf[1]_i_1 
       (.I0(\could_multi_bursts.arlen_buf[3]_i_2_n_0 ),
        .I1(\could_multi_bursts.arlen_buf[3]_i_3_n_0 ),
        .I2(\could_multi_bursts.sect_handling_reg_0 [1]),
        .O(in[1]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \could_multi_bursts.arlen_buf[2]_i_1 
       (.I0(\could_multi_bursts.arlen_buf[3]_i_2_n_0 ),
        .I1(\could_multi_bursts.arlen_buf[3]_i_3_n_0 ),
        .I2(\could_multi_bursts.sect_handling_reg_0 [2]),
        .O(in[2]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \could_multi_bursts.arlen_buf[3]_i_1 
       (.I0(\could_multi_bursts.arlen_buf[3]_i_2_n_0 ),
        .I1(\could_multi_bursts.arlen_buf[3]_i_3_n_0 ),
        .I2(\could_multi_bursts.sect_handling_reg_0 [3]),
        .O(in[3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \could_multi_bursts.arlen_buf[3]_i_2 
       (.I0(\could_multi_bursts.sect_handling_reg_0 [8]),
        .I1(\could_multi_bursts.sect_handling_reg_1 [4]),
        .I2(\could_multi_bursts.sect_handling_reg_0 [7]),
        .I3(\could_multi_bursts.sect_handling_reg_1 [3]),
        .I4(\could_multi_bursts.sect_handling_reg_1 [5]),
        .I5(\could_multi_bursts.sect_handling_reg_0 [9]),
        .O(\could_multi_bursts.arlen_buf[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \could_multi_bursts.arlen_buf[3]_i_3 
       (.I0(\could_multi_bursts.sect_handling_reg_0 [5]),
        .I1(\could_multi_bursts.sect_handling_reg_1 [1]),
        .I2(\could_multi_bursts.sect_handling_reg_0 [4]),
        .I3(\could_multi_bursts.sect_handling_reg_1 [0]),
        .I4(\could_multi_bursts.sect_handling_reg_1 [2]),
        .I5(\could_multi_bursts.sect_handling_reg_0 [6]),
        .O(\could_multi_bursts.arlen_buf[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \could_multi_bursts.loop_cnt[5]_i_1 
       (.I0(p_21_in),
        .I1(ap_rst_n),
        .O(ap_rst_n_1));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT5 #(
    .INIT(32'hFFFF70F0)) 
    \could_multi_bursts.sect_handling_i_1 
       (.I0(\could_multi_bursts.arlen_buf[3]_i_2_n_0 ),
        .I1(\could_multi_bursts.arlen_buf[3]_i_3_n_0 ),
        .I2(\sect_len_buf_reg[3] ),
        .I3(\could_multi_bursts.next_loop ),
        .I4(rreq_handling_reg_0),
        .O(\could_multi_bursts.sect_handling_reg ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFE00FF00)) 
    data_vld_i_1
       (.I0(\pout_reg_n_0_[0] ),
        .I1(\pout_reg_n_0_[1] ),
        .I2(\pout_reg_n_0_[2] ),
        .I3(data_vld_reg_n_0),
        .I4(pop0),
        .I5(push),
        .O(data_vld_i_1_n_0));
  FDRE data_vld_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(data_vld_i_1_n_0),
        .Q(data_vld_reg_n_0),
        .R(SR));
  LUT2 #(
    .INIT(4'hB)) 
    \dout_buf[34]_i_3 
       (.I0(\bus_wide_gen.tail_split ),
        .I1(\bus_wide_gen.last_beat__0 ),
        .O(\q_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h88082202FFFFFFFF)) 
    empty_n_i_1
       (.I0(\bus_wide_gen.last_beat__0 ),
        .I1(\bus_wide_gen.split_cnt__2 ),
        .I2(\bus_wide_gen.rdata_valid_t_reg_0 ),
        .I3(rdata_ack_t),
        .I4(\bus_wide_gen.tail_split ),
        .I5(burst_valid),
        .O(pop0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    empty_n_i_2
       (.I0(beat_valid),
        .I1(burst_valid),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(empty_n_i_4_n_0),
        .I5(empty_n_i_5_n_0),
        .O(\bus_wide_gen.last_beat__0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    empty_n_i_3
       (.I0(p_28_in),
        .I1(\bus_wide_gen.data_buf1 ),
        .I2(\bus_wide_gen.split_cnt_buf_reg[0] ),
        .O(\bus_wide_gen.split_cnt__2 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    empty_n_i_4
       (.I0(Q[2]),
        .I1(\q_reg_n_0_[2] ),
        .I2(Q[1]),
        .I3(\q_reg_n_0_[1] ),
        .O(empty_n_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF6FF6)) 
    empty_n_i_5
       (.I0(\q_reg_n_0_[3] ),
        .I1(Q[3]),
        .I2(\q_reg_n_0_[0] ),
        .I3(Q[0]),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(empty_n_i_5_n_0));
  FDRE empty_n_reg
       (.C(ap_clk),
        .CE(pop0),
        .D(data_vld_reg_n_0),
        .Q(burst_valid),
        .R(SR));
  LUT5 #(
    .INIT(32'hF777F555)) 
    full_n_i_1__0
       (.I0(ap_rst_n),
        .I1(full_n_i_2_n_0),
        .I2(pop0),
        .I3(data_vld_reg_n_0),
        .I4(fifo_burst_ready),
        .O(full_n_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    full_n_i_2
       (.I0(data_vld_reg_n_0),
        .I1(\pout_reg_n_0_[2] ),
        .I2(\pout_reg_n_0_[0] ),
        .I3(\pout_reg_n_0_[1] ),
        .I4(\could_multi_bursts.next_loop ),
        .I5(fifo_burst_ready),
        .O(full_n_i_2_n_0));
  FDRE full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(full_n_i_1__0_n_0),
        .Q(fifo_burst_ready),
        .R(1'b0));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/bus_wide_gen.fifo_burst/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/bus_wide_gen.fifo_burst/mem_reg[4][0]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][0]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[0]),
        .Q(\mem_reg[4][0]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/bus_wide_gen.fifo_burst/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/bus_wide_gen.fifo_burst/mem_reg[4][1]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][1]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[1]),
        .Q(\mem_reg[4][1]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/bus_wide_gen.fifo_burst/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/bus_wide_gen.fifo_burst/mem_reg[4][2]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][2]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[2]),
        .Q(\mem_reg[4][2]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/bus_wide_gen.fifo_burst/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/bus_wide_gen.fifo_burst/mem_reg[4][3]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][3]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[3]),
        .Q(\mem_reg[4][3]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/bus_wide_gen.fifo_burst/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/bus_wide_gen.fifo_burst/mem_reg[4][8]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][8]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\bus_wide_gen.tmp_burst_info [8]),
        .Q(\mem_reg[4][8]_srl5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \mem_reg[4][8]_srl5_i_1 
       (.I0(\could_multi_bursts.arlen_buf[3]_i_2_n_0 ),
        .I1(\could_multi_bursts.arlen_buf[3]_i_3_n_0 ),
        .I2(\sect_end_buf_reg[1] ),
        .O(\bus_wide_gen.tmp_burst_info [8]));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/bus_wide_gen.fifo_burst/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/bus_wide_gen.fifo_burst/mem_reg[4][9]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][9]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\bus_wide_gen.tmp_burst_info [9]),
        .Q(\mem_reg[4][9]_srl5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mem_reg[4][9]_srl5_i_1 
       (.I0(\q_reg[9]_0 ),
        .I1(\could_multi_bursts.loop_cnt_reg[2] ),
        .O(\bus_wide_gen.tmp_burst_info [9]));
  LUT6 #(
    .INIT(64'h9F9F9F9F60606020)) 
    \pout[0]_i_1 
       (.I0(push),
        .I1(pop0),
        .I2(data_vld_reg_n_0),
        .I3(\pout_reg_n_0_[1] ),
        .I4(\pout_reg_n_0_[2] ),
        .I5(\pout_reg_n_0_[0] ),
        .O(\pout[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC3CCCC2CCCCCC)) 
    \pout[1]_i_1 
       (.I0(\pout_reg_n_0_[2] ),
        .I1(\pout_reg_n_0_[1] ),
        .I2(\pout_reg_n_0_[0] ),
        .I3(data_vld_reg_n_0),
        .I4(pop0),
        .I5(push),
        .O(\pout[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA6AAAA8AAAAAA)) 
    \pout[2]_i_1 
       (.I0(\pout_reg_n_0_[2] ),
        .I1(\pout_reg_n_0_[1] ),
        .I2(\pout_reg_n_0_[0] ),
        .I3(data_vld_reg_n_0),
        .I4(pop0),
        .I5(push),
        .O(\pout[2]_i_1_n_0 ));
  FDRE \pout_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\pout[0]_i_1_n_0 ),
        .Q(\pout_reg_n_0_[0] ),
        .R(SR));
  FDRE \pout_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\pout[1]_i_1_n_0 ),
        .Q(\pout_reg_n_0_[1] ),
        .R(SR));
  FDRE \pout_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\pout[2]_i_1_n_0 ),
        .Q(\pout_reg_n_0_[2] ),
        .R(SR));
  FDRE \q_reg[0] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][0]_srl5_n_0 ),
        .Q(\q_reg_n_0_[0] ),
        .R(SR));
  FDRE \q_reg[1] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][1]_srl5_n_0 ),
        .Q(\q_reg_n_0_[1] ),
        .R(SR));
  FDRE \q_reg[2] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][2]_srl5_n_0 ),
        .Q(\q_reg_n_0_[2] ),
        .R(SR));
  FDRE \q_reg[3] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][3]_srl5_n_0 ),
        .Q(\q_reg_n_0_[3] ),
        .R(SR));
  FDRE \q_reg[8] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][8]_srl5_n_0 ),
        .Q(\bus_wide_gen.tail_split ),
        .R(SR));
  FDRE \q_reg[9] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][9]_srl5_n_0 ),
        .Q(\bus_wide_gen.data_buf1 ),
        .R(SR));
  LUT5 #(
    .INIT(32'h70FF7070)) 
    rreq_handling_i_1
       (.I0(p_21_in),
        .I1(CO),
        .I2(rreq_handling_reg_0),
        .I3(invalid_len_event),
        .I4(rreq_handling_reg_1),
        .O(rreq_handling_reg));
  LUT3 #(
    .INIT(8'h4F)) 
    \sect_addr_buf[11]_i_1 
       (.I0(\sect_addr_buf_reg[1] ),
        .I1(p_21_in),
        .I2(ap_rst_n),
        .O(ap_rst_n_2));
  LUT4 #(
    .INIT(16'hBFB0)) 
    \sect_end_buf[1]_i_1 
       (.I0(\sect_end_buf_reg[1]_0 ),
        .I1(CO),
        .I2(p_21_in),
        .I3(\sect_end_buf_reg[1] ),
        .O(\end_addr_buf_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT5 #(
    .INIT(32'h80FF0000)) 
    \sect_len_buf[9]_i_1 
       (.I0(\could_multi_bursts.arlen_buf[3]_i_2_n_0 ),
        .I1(\could_multi_bursts.arlen_buf[3]_i_3_n_0 ),
        .I2(\could_multi_bursts.next_loop ),
        .I3(\sect_len_buf_reg[3] ),
        .I4(rreq_handling_reg_0),
        .O(p_21_in));
endmodule

(* ORIG_REF_NAME = "runLayer_gmem_m_axi_fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_gmem_m_axi_fifo__parameterized0
   (readRequestFIFONotEmpty,
    rs2f_rreq_ack,
    next_rreq,
    E,
    D,
    S,
    \q_reg[79]_0 ,
    \q_reg[74]_0 ,
    \q_reg[70]_0 ,
    \q_reg[66]_0 ,
    \q_reg[79]_1 ,
    \end_addr_buf_reg[63] ,
    invalid_len_event0,
    SR,
    ap_clk,
    ap_rst_n,
    p_21_in,
    Q,
    sect_cnt0,
    last_sect_carry__3,
    readRequestFIFONotEmptyReg_reg,
    CO,
    readRequestFIFONotEmptyReg_reg_0,
    full_n_reg_0,
    last_sect_carry__3_0,
    \q_reg[79]_2 );
  output readRequestFIFONotEmpty;
  output rs2f_rreq_ack;
  output next_rreq;
  output [0:0]E;
  output [51:0]D;
  output [3:0]S;
  output [78:0]\q_reg[79]_0 ;
  output [3:0]\q_reg[74]_0 ;
  output [3:0]\q_reg[70]_0 ;
  output [2:0]\q_reg[66]_0 ;
  output [0:0]\q_reg[79]_1 ;
  output [1:0]\end_addr_buf_reg[63] ;
  output invalid_len_event0;
  input [0:0]SR;
  input ap_clk;
  input ap_rst_n;
  input p_21_in;
  input [51:0]Q;
  input [50:0]sect_cnt0;
  input [4:0]last_sect_carry__3;
  input readRequestFIFONotEmptyReg_reg;
  input [0:0]CO;
  input readRequestFIFONotEmptyReg_reg_0;
  input [0:0]full_n_reg_0;
  input [3:0]last_sect_carry__3_0;
  input [78:0]\q_reg[79]_2 ;

  wire [0:0]CO;
  wire [51:0]D;
  wire [0:0]E;
  wire [51:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire data_vld_i_1__0_n_0;
  wire data_vld_reg_n_0;
  wire [1:0]\end_addr_buf_reg[63] ;
  wire full_n_i_1__2_n_0;
  wire full_n_i_2__0_n_0;
  wire [0:0]full_n_reg_0;
  wire invalid_len_event0;
  wire invalid_len_event_i_2_n_0;
  wire invalid_len_event_i_3_n_0;
  wire invalid_len_event_i_4_n_0;
  wire [4:0]last_sect_carry__3;
  wire [3:0]last_sect_carry__3_0;
  wire \mem_reg[4][0]_srl5_n_0 ;
  wire \mem_reg[4][10]_srl5_n_0 ;
  wire \mem_reg[4][11]_srl5_n_0 ;
  wire \mem_reg[4][12]_srl5_n_0 ;
  wire \mem_reg[4][13]_srl5_n_0 ;
  wire \mem_reg[4][14]_srl5_n_0 ;
  wire \mem_reg[4][15]_srl5_n_0 ;
  wire \mem_reg[4][16]_srl5_n_0 ;
  wire \mem_reg[4][17]_srl5_n_0 ;
  wire \mem_reg[4][18]_srl5_n_0 ;
  wire \mem_reg[4][19]_srl5_n_0 ;
  wire \mem_reg[4][1]_srl5_n_0 ;
  wire \mem_reg[4][20]_srl5_n_0 ;
  wire \mem_reg[4][21]_srl5_n_0 ;
  wire \mem_reg[4][22]_srl5_n_0 ;
  wire \mem_reg[4][23]_srl5_n_0 ;
  wire \mem_reg[4][24]_srl5_n_0 ;
  wire \mem_reg[4][25]_srl5_n_0 ;
  wire \mem_reg[4][26]_srl5_n_0 ;
  wire \mem_reg[4][27]_srl5_n_0 ;
  wire \mem_reg[4][28]_srl5_n_0 ;
  wire \mem_reg[4][29]_srl5_n_0 ;
  wire \mem_reg[4][2]_srl5_n_0 ;
  wire \mem_reg[4][30]_srl5_n_0 ;
  wire \mem_reg[4][31]_srl5_n_0 ;
  wire \mem_reg[4][32]_srl5_n_0 ;
  wire \mem_reg[4][33]_srl5_n_0 ;
  wire \mem_reg[4][34]_srl5_n_0 ;
  wire \mem_reg[4][35]_srl5_n_0 ;
  wire \mem_reg[4][36]_srl5_n_0 ;
  wire \mem_reg[4][37]_srl5_n_0 ;
  wire \mem_reg[4][38]_srl5_n_0 ;
  wire \mem_reg[4][39]_srl5_n_0 ;
  wire \mem_reg[4][3]_srl5_n_0 ;
  wire \mem_reg[4][40]_srl5_n_0 ;
  wire \mem_reg[4][41]_srl5_n_0 ;
  wire \mem_reg[4][42]_srl5_n_0 ;
  wire \mem_reg[4][43]_srl5_n_0 ;
  wire \mem_reg[4][44]_srl5_n_0 ;
  wire \mem_reg[4][45]_srl5_n_0 ;
  wire \mem_reg[4][46]_srl5_n_0 ;
  wire \mem_reg[4][47]_srl5_n_0 ;
  wire \mem_reg[4][48]_srl5_n_0 ;
  wire \mem_reg[4][49]_srl5_n_0 ;
  wire \mem_reg[4][4]_srl5_n_0 ;
  wire \mem_reg[4][50]_srl5_n_0 ;
  wire \mem_reg[4][51]_srl5_n_0 ;
  wire \mem_reg[4][52]_srl5_n_0 ;
  wire \mem_reg[4][53]_srl5_n_0 ;
  wire \mem_reg[4][54]_srl5_n_0 ;
  wire \mem_reg[4][55]_srl5_n_0 ;
  wire \mem_reg[4][56]_srl5_n_0 ;
  wire \mem_reg[4][57]_srl5_n_0 ;
  wire \mem_reg[4][58]_srl5_n_0 ;
  wire \mem_reg[4][59]_srl5_n_0 ;
  wire \mem_reg[4][5]_srl5_n_0 ;
  wire \mem_reg[4][60]_srl5_n_0 ;
  wire \mem_reg[4][61]_srl5_n_0 ;
  wire \mem_reg[4][62]_srl5_n_0 ;
  wire \mem_reg[4][64]_srl5_n_0 ;
  wire \mem_reg[4][65]_srl5_n_0 ;
  wire \mem_reg[4][66]_srl5_n_0 ;
  wire \mem_reg[4][67]_srl5_n_0 ;
  wire \mem_reg[4][68]_srl5_n_0 ;
  wire \mem_reg[4][69]_srl5_n_0 ;
  wire \mem_reg[4][6]_srl5_n_0 ;
  wire \mem_reg[4][70]_srl5_n_0 ;
  wire \mem_reg[4][71]_srl5_n_0 ;
  wire \mem_reg[4][72]_srl5_n_0 ;
  wire \mem_reg[4][73]_srl5_n_0 ;
  wire \mem_reg[4][74]_srl5_n_0 ;
  wire \mem_reg[4][75]_srl5_n_0 ;
  wire \mem_reg[4][76]_srl5_n_0 ;
  wire \mem_reg[4][77]_srl5_n_0 ;
  wire \mem_reg[4][78]_srl5_n_0 ;
  wire \mem_reg[4][79]_srl5_n_0 ;
  wire \mem_reg[4][7]_srl5_n_0 ;
  wire \mem_reg[4][8]_srl5_n_0 ;
  wire \mem_reg[4][9]_srl5_n_0 ;
  wire next_rreq;
  wire p_21_in;
  wire pop0;
  wire \pout[0]_i_1_n_0 ;
  wire \pout[1]_i_1_n_0 ;
  wire \pout[2]_i_1_n_0 ;
  wire \pout_reg_n_0_[0] ;
  wire \pout_reg_n_0_[1] ;
  wire \pout_reg_n_0_[2] ;
  wire push;
  wire [2:0]\q_reg[66]_0 ;
  wire [3:0]\q_reg[70]_0 ;
  wire [3:0]\q_reg[74]_0 ;
  wire [78:0]\q_reg[79]_0 ;
  wire [0:0]\q_reg[79]_1 ;
  wire [78:0]\q_reg[79]_2 ;
  wire readRequestFIFONotEmpty;
  wire readRequestFIFONotEmptyReg_reg;
  wire readRequestFIFONotEmptyReg_reg_0;
  wire rs2f_rreq_ack;
  wire [50:0]sect_cnt0;

  LUT1 #(
    .INIT(2'h1)) 
    align_len0_carry__0_i_1
       (.I0(\q_reg[79]_0 [69]),
        .O(\q_reg[70]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    align_len0_carry__0_i_2
       (.I0(\q_reg[79]_0 [68]),
        .O(\q_reg[70]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    align_len0_carry__0_i_3
       (.I0(\q_reg[79]_0 [67]),
        .O(\q_reg[70]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    align_len0_carry__0_i_4
       (.I0(\q_reg[79]_0 [66]),
        .O(\q_reg[70]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    align_len0_carry__1_i_1
       (.I0(\q_reg[79]_0 [73]),
        .O(\q_reg[74]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    align_len0_carry__1_i_2
       (.I0(\q_reg[79]_0 [72]),
        .O(\q_reg[74]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    align_len0_carry__1_i_3
       (.I0(\q_reg[79]_0 [71]),
        .O(\q_reg[74]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    align_len0_carry__1_i_4
       (.I0(\q_reg[79]_0 [70]),
        .O(\q_reg[74]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    align_len0_carry__2_i_1
       (.I0(\q_reg[79]_0 [77]),
        .O(S[3]));
  LUT1 #(
    .INIT(2'h1)) 
    align_len0_carry__2_i_2
       (.I0(\q_reg[79]_0 [76]),
        .O(S[2]));
  LUT1 #(
    .INIT(2'h1)) 
    align_len0_carry__2_i_3
       (.I0(\q_reg[79]_0 [75]),
        .O(S[1]));
  LUT1 #(
    .INIT(2'h1)) 
    align_len0_carry__2_i_4
       (.I0(\q_reg[79]_0 [74]),
        .O(S[0]));
  LUT1 #(
    .INIT(2'h1)) 
    align_len0_carry__3_i_1
       (.I0(\q_reg[79]_0 [78]),
        .O(\q_reg[79]_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    align_len0_carry_i_1
       (.I0(\q_reg[79]_0 [65]),
        .O(\q_reg[66]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    align_len0_carry_i_2
       (.I0(\q_reg[79]_0 [64]),
        .O(\q_reg[66]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    align_len0_carry_i_3
       (.I0(\q_reg[79]_0 [63]),
        .O(\q_reg[66]_0 [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFE00FF00)) 
    data_vld_i_1__0
       (.I0(\pout_reg_n_0_[0] ),
        .I1(\pout_reg_n_0_[1] ),
        .I2(\pout_reg_n_0_[2] ),
        .I3(data_vld_reg_n_0),
        .I4(pop0),
        .I5(push),
        .O(data_vld_i_1__0_n_0));
  FDRE data_vld_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(data_vld_i_1__0_n_0),
        .Q(data_vld_reg_n_0),
        .R(SR));
  LUT2 #(
    .INIT(4'hB)) 
    empty_n_i_1__0
       (.I0(next_rreq),
        .I1(readRequestFIFONotEmpty),
        .O(pop0));
  FDRE empty_n_reg
       (.C(ap_clk),
        .CE(pop0),
        .D(data_vld_reg_n_0),
        .Q(readRequestFIFONotEmpty),
        .R(SR));
  LUT6 #(
    .INIT(64'hF7FF7777F5FF5555)) 
    full_n_i_1__2
       (.I0(ap_rst_n),
        .I1(full_n_i_2__0_n_0),
        .I2(next_rreq),
        .I3(readRequestFIFONotEmpty),
        .I4(data_vld_reg_n_0),
        .I5(rs2f_rreq_ack),
        .O(full_n_i_1__2_n_0));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    full_n_i_2__0
       (.I0(data_vld_reg_n_0),
        .I1(\pout_reg_n_0_[2] ),
        .I2(\pout_reg_n_0_[0] ),
        .I3(\pout_reg_n_0_[1] ),
        .I4(full_n_reg_0),
        .I5(rs2f_rreq_ack),
        .O(full_n_i_2__0_n_0));
  FDRE full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(full_n_i_1__2_n_0),
        .Q(rs2f_rreq_ack),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    invalid_len_event_i_1
       (.I0(\q_reg[79]_0 [65]),
        .I1(\q_reg[79]_0 [64]),
        .I2(\q_reg[79]_0 [63]),
        .I3(invalid_len_event_i_2_n_0),
        .I4(invalid_len_event_i_3_n_0),
        .I5(invalid_len_event_i_4_n_0),
        .O(invalid_len_event0));
  LUT4 #(
    .INIT(16'h0001)) 
    invalid_len_event_i_2
       (.I0(\q_reg[79]_0 [69]),
        .I1(\q_reg[79]_0 [68]),
        .I2(\q_reg[79]_0 [67]),
        .I3(\q_reg[79]_0 [66]),
        .O(invalid_len_event_i_2_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    invalid_len_event_i_3
       (.I0(\q_reg[79]_0 [73]),
        .I1(\q_reg[79]_0 [72]),
        .I2(\q_reg[79]_0 [71]),
        .I3(\q_reg[79]_0 [70]),
        .O(invalid_len_event_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    invalid_len_event_i_4
       (.I0(\q_reg[79]_0 [74]),
        .I1(\q_reg[79]_0 [75]),
        .I2(\q_reg[79]_0 [76]),
        .I3(\q_reg[79]_0 [77]),
        .I4(\q_reg[79]_0 [78]),
        .I5(readRequestFIFONotEmpty),
        .O(invalid_len_event_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    last_sect_carry__3_i_1
       (.I0(last_sect_carry__3_0[3]),
        .I1(last_sect_carry__3[4]),
        .O(\end_addr_buf_reg[63] [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_sect_carry__3_i_2
       (.I0(last_sect_carry__3[2]),
        .I1(last_sect_carry__3_0[1]),
        .I2(last_sect_carry__3[1]),
        .I3(last_sect_carry__3_0[0]),
        .I4(last_sect_carry__3_0[2]),
        .I5(last_sect_carry__3[3]),
        .O(\end_addr_buf_reg[63] [0]));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][0]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][0]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [0]),
        .Q(\mem_reg[4][0]_srl5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mem_reg[4][0]_srl5_i_1__0 
       (.I0(rs2f_rreq_ack),
        .I1(full_n_reg_0),
        .O(push));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][10]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][10]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [10]),
        .Q(\mem_reg[4][10]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][11]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][11]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [11]),
        .Q(\mem_reg[4][11]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][12]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][12]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [12]),
        .Q(\mem_reg[4][12]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][13]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][13]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [13]),
        .Q(\mem_reg[4][13]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][14]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][14]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [14]),
        .Q(\mem_reg[4][14]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][15]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][15]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [15]),
        .Q(\mem_reg[4][15]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][16]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][16]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [16]),
        .Q(\mem_reg[4][16]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][17]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][17]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [17]),
        .Q(\mem_reg[4][17]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][18]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][18]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [18]),
        .Q(\mem_reg[4][18]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][19]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][19]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [19]),
        .Q(\mem_reg[4][19]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][1]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][1]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [1]),
        .Q(\mem_reg[4][1]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][20]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][20]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [20]),
        .Q(\mem_reg[4][20]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][21]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][21]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [21]),
        .Q(\mem_reg[4][21]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][22]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][22]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [22]),
        .Q(\mem_reg[4][22]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][23]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][23]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [23]),
        .Q(\mem_reg[4][23]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][24]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][24]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [24]),
        .Q(\mem_reg[4][24]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][25]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][25]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [25]),
        .Q(\mem_reg[4][25]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][26]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][26]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [26]),
        .Q(\mem_reg[4][26]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][27]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][27]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [27]),
        .Q(\mem_reg[4][27]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][28]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][28]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [28]),
        .Q(\mem_reg[4][28]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][29]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][29]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [29]),
        .Q(\mem_reg[4][29]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][2]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][2]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [2]),
        .Q(\mem_reg[4][2]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][30]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][30]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [30]),
        .Q(\mem_reg[4][30]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][31]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][31]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [31]),
        .Q(\mem_reg[4][31]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][32]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][32]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [32]),
        .Q(\mem_reg[4][32]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][33]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][33]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [33]),
        .Q(\mem_reg[4][33]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][34]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][34]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [34]),
        .Q(\mem_reg[4][34]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][35]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][35]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [35]),
        .Q(\mem_reg[4][35]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][36]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][36]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [36]),
        .Q(\mem_reg[4][36]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][37]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][37]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [37]),
        .Q(\mem_reg[4][37]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][38]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][38]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [38]),
        .Q(\mem_reg[4][38]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][39]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][39]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [39]),
        .Q(\mem_reg[4][39]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][3]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][3]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [3]),
        .Q(\mem_reg[4][3]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][40]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][40]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [40]),
        .Q(\mem_reg[4][40]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][41]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][41]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [41]),
        .Q(\mem_reg[4][41]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][42]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][42]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [42]),
        .Q(\mem_reg[4][42]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][43]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][43]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [43]),
        .Q(\mem_reg[4][43]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][44]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][44]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [44]),
        .Q(\mem_reg[4][44]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][45]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][45]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [45]),
        .Q(\mem_reg[4][45]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][46]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][46]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [46]),
        .Q(\mem_reg[4][46]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][47]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][47]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [47]),
        .Q(\mem_reg[4][47]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][48]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][48]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [48]),
        .Q(\mem_reg[4][48]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][49]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][49]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [49]),
        .Q(\mem_reg[4][49]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][4]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][4]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [4]),
        .Q(\mem_reg[4][4]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][50]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][50]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [50]),
        .Q(\mem_reg[4][50]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][51]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][51]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [51]),
        .Q(\mem_reg[4][51]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][52]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][52]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [52]),
        .Q(\mem_reg[4][52]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][53]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][53]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [53]),
        .Q(\mem_reg[4][53]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][54]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][54]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [54]),
        .Q(\mem_reg[4][54]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][55]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][55]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [55]),
        .Q(\mem_reg[4][55]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][56]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][56]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [56]),
        .Q(\mem_reg[4][56]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][57]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][57]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [57]),
        .Q(\mem_reg[4][57]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][58]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][58]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [58]),
        .Q(\mem_reg[4][58]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][59]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][59]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [59]),
        .Q(\mem_reg[4][59]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][5]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][5]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [5]),
        .Q(\mem_reg[4][5]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][60]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][60]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [60]),
        .Q(\mem_reg[4][60]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][61]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][61]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [61]),
        .Q(\mem_reg[4][61]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][62]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][62]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [62]),
        .Q(\mem_reg[4][62]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][64]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][64]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [63]),
        .Q(\mem_reg[4][64]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][65]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][65]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [64]),
        .Q(\mem_reg[4][65]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][66]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][66]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [65]),
        .Q(\mem_reg[4][66]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][67]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][67]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [66]),
        .Q(\mem_reg[4][67]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][68]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][68]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [67]),
        .Q(\mem_reg[4][68]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][69]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][69]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [68]),
        .Q(\mem_reg[4][69]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][6]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][6]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [6]),
        .Q(\mem_reg[4][6]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][70]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][70]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [69]),
        .Q(\mem_reg[4][70]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][71]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][71]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [70]),
        .Q(\mem_reg[4][71]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][72]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][72]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [71]),
        .Q(\mem_reg[4][72]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][73]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][73]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [72]),
        .Q(\mem_reg[4][73]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][74]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][74]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [73]),
        .Q(\mem_reg[4][74]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][75]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][75]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [74]),
        .Q(\mem_reg[4][75]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][76]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][76]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [75]),
        .Q(\mem_reg[4][76]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][77]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][77]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [76]),
        .Q(\mem_reg[4][77]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][78]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][78]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [77]),
        .Q(\mem_reg[4][78]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][79]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][79]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [78]),
        .Q(\mem_reg[4][79]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][7]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][7]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [7]),
        .Q(\mem_reg[4][7]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][8]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][8]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [8]),
        .Q(\mem_reg[4][8]_srl5_n_0 ));
  (* srl_bus_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4] " *) 
  (* srl_name = "inst/\gmem_m_axi_U/bus_read/fifo_rreq/mem_reg[4][9]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mem_reg[4][9]_srl5 
       (.A0(\pout_reg_n_0_[0] ),
        .A1(\pout_reg_n_0_[1] ),
        .A2(\pout_reg_n_0_[2] ),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(\q_reg[79]_2 [9]),
        .Q(\mem_reg[4][9]_srl5_n_0 ));
  LUT6 #(
    .INIT(64'h9F9F9F9F60606020)) 
    \pout[0]_i_1 
       (.I0(push),
        .I1(pop0),
        .I2(data_vld_reg_n_0),
        .I3(\pout_reg_n_0_[1] ),
        .I4(\pout_reg_n_0_[2] ),
        .I5(\pout_reg_n_0_[0] ),
        .O(\pout[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC3CCCC2CCCCCC)) 
    \pout[1]_i_1 
       (.I0(\pout_reg_n_0_[2] ),
        .I1(\pout_reg_n_0_[1] ),
        .I2(\pout_reg_n_0_[0] ),
        .I3(data_vld_reg_n_0),
        .I4(pop0),
        .I5(push),
        .O(\pout[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA6AAAA8AAAAAA)) 
    \pout[2]_i_1 
       (.I0(\pout_reg_n_0_[2] ),
        .I1(\pout_reg_n_0_[1] ),
        .I2(\pout_reg_n_0_[0] ),
        .I3(data_vld_reg_n_0),
        .I4(pop0),
        .I5(push),
        .O(\pout[2]_i_1_n_0 ));
  FDRE \pout_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\pout[0]_i_1_n_0 ),
        .Q(\pout_reg_n_0_[0] ),
        .R(SR));
  FDRE \pout_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\pout[1]_i_1_n_0 ),
        .Q(\pout_reg_n_0_[1] ),
        .R(SR));
  FDRE \pout_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\pout[2]_i_1_n_0 ),
        .Q(\pout_reg_n_0_[2] ),
        .R(SR));
  FDRE \q_reg[0] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][0]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [0]),
        .R(SR));
  FDRE \q_reg[10] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][10]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [10]),
        .R(SR));
  FDRE \q_reg[11] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][11]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [11]),
        .R(SR));
  FDRE \q_reg[12] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][12]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [12]),
        .R(SR));
  FDRE \q_reg[13] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][13]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [13]),
        .R(SR));
  FDRE \q_reg[14] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][14]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [14]),
        .R(SR));
  FDRE \q_reg[15] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][15]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [15]),
        .R(SR));
  FDRE \q_reg[16] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][16]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [16]),
        .R(SR));
  FDRE \q_reg[17] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][17]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [17]),
        .R(SR));
  FDRE \q_reg[18] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][18]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [18]),
        .R(SR));
  FDRE \q_reg[19] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][19]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [19]),
        .R(SR));
  FDRE \q_reg[1] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][1]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [1]),
        .R(SR));
  FDRE \q_reg[20] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][20]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [20]),
        .R(SR));
  FDRE \q_reg[21] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][21]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [21]),
        .R(SR));
  FDRE \q_reg[22] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][22]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [22]),
        .R(SR));
  FDRE \q_reg[23] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][23]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [23]),
        .R(SR));
  FDRE \q_reg[24] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][24]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [24]),
        .R(SR));
  FDRE \q_reg[25] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][25]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [25]),
        .R(SR));
  FDRE \q_reg[26] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][26]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [26]),
        .R(SR));
  FDRE \q_reg[27] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][27]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [27]),
        .R(SR));
  FDRE \q_reg[28] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][28]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [28]),
        .R(SR));
  FDRE \q_reg[29] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][29]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [29]),
        .R(SR));
  FDRE \q_reg[2] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][2]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [2]),
        .R(SR));
  FDRE \q_reg[30] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][30]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [30]),
        .R(SR));
  FDRE \q_reg[31] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][31]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [31]),
        .R(SR));
  FDRE \q_reg[32] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][32]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [32]),
        .R(SR));
  FDRE \q_reg[33] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][33]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [33]),
        .R(SR));
  FDRE \q_reg[34] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][34]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [34]),
        .R(SR));
  FDRE \q_reg[35] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][35]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [35]),
        .R(SR));
  FDRE \q_reg[36] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][36]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [36]),
        .R(SR));
  FDRE \q_reg[37] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][37]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [37]),
        .R(SR));
  FDRE \q_reg[38] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][38]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [38]),
        .R(SR));
  FDRE \q_reg[39] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][39]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [39]),
        .R(SR));
  FDRE \q_reg[3] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][3]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [3]),
        .R(SR));
  FDRE \q_reg[40] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][40]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [40]),
        .R(SR));
  FDRE \q_reg[41] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][41]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [41]),
        .R(SR));
  FDRE \q_reg[42] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][42]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [42]),
        .R(SR));
  FDRE \q_reg[43] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][43]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [43]),
        .R(SR));
  FDRE \q_reg[44] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][44]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [44]),
        .R(SR));
  FDRE \q_reg[45] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][45]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [45]),
        .R(SR));
  FDRE \q_reg[46] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][46]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [46]),
        .R(SR));
  FDRE \q_reg[47] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][47]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [47]),
        .R(SR));
  FDRE \q_reg[48] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][48]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [48]),
        .R(SR));
  FDRE \q_reg[49] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][49]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [49]),
        .R(SR));
  FDRE \q_reg[4] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][4]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [4]),
        .R(SR));
  FDRE \q_reg[50] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][50]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [50]),
        .R(SR));
  FDRE \q_reg[51] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][51]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [51]),
        .R(SR));
  FDRE \q_reg[52] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][52]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [52]),
        .R(SR));
  FDRE \q_reg[53] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][53]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [53]),
        .R(SR));
  FDRE \q_reg[54] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][54]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [54]),
        .R(SR));
  FDRE \q_reg[55] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][55]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [55]),
        .R(SR));
  FDRE \q_reg[56] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][56]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [56]),
        .R(SR));
  FDRE \q_reg[57] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][57]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [57]),
        .R(SR));
  FDRE \q_reg[58] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][58]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [58]),
        .R(SR));
  FDRE \q_reg[59] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][59]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [59]),
        .R(SR));
  FDRE \q_reg[5] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][5]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [5]),
        .R(SR));
  FDRE \q_reg[60] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][60]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [60]),
        .R(SR));
  FDRE \q_reg[61] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][61]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [61]),
        .R(SR));
  FDRE \q_reg[62] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][62]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [62]),
        .R(SR));
  FDRE \q_reg[64] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][64]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [63]),
        .R(SR));
  FDRE \q_reg[65] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][65]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [64]),
        .R(SR));
  FDRE \q_reg[66] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][66]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [65]),
        .R(SR));
  FDRE \q_reg[67] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][67]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [66]),
        .R(SR));
  FDRE \q_reg[68] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][68]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [67]),
        .R(SR));
  FDRE \q_reg[69] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][69]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [68]),
        .R(SR));
  FDRE \q_reg[6] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][6]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [6]),
        .R(SR));
  FDRE \q_reg[70] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][70]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [69]),
        .R(SR));
  FDRE \q_reg[71] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][71]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [70]),
        .R(SR));
  FDRE \q_reg[72] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][72]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [71]),
        .R(SR));
  FDRE \q_reg[73] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][73]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [72]),
        .R(SR));
  FDRE \q_reg[74] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][74]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [73]),
        .R(SR));
  FDRE \q_reg[75] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][75]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [74]),
        .R(SR));
  FDRE \q_reg[76] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][76]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [75]),
        .R(SR));
  FDRE \q_reg[77] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][77]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [76]),
        .R(SR));
  FDRE \q_reg[78] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][78]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [77]),
        .R(SR));
  FDRE \q_reg[79] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][79]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [78]),
        .R(SR));
  FDRE \q_reg[7] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][7]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [7]),
        .R(SR));
  FDRE \q_reg[8] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][8]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [8]),
        .R(SR));
  FDRE \q_reg[9] 
       (.C(ap_clk),
        .CE(pop0),
        .D(\mem_reg[4][9]_srl5_n_0 ),
        .Q(\q_reg[79]_0 [9]),
        .R(SR));
  LUT5 #(
    .INIT(32'hE000EEEE)) 
    readRequestFIFONotEmptyReg_i_1
       (.I0(readRequestFIFONotEmpty),
        .I1(readRequestFIFONotEmptyReg_reg),
        .I2(p_21_in),
        .I3(CO),
        .I4(readRequestFIFONotEmptyReg_reg_0),
        .O(next_rreq));
  LUT3 #(
    .INIT(8'h8B)) 
    \sect_cnt[0]_i_1 
       (.I0(Q[0]),
        .I1(next_rreq),
        .I2(last_sect_carry__3[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[10]_i_1 
       (.I0(Q[10]),
        .I1(next_rreq),
        .I2(sect_cnt0[9]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[11]_i_1 
       (.I0(Q[11]),
        .I1(next_rreq),
        .I2(sect_cnt0[10]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[12]_i_1 
       (.I0(Q[12]),
        .I1(next_rreq),
        .I2(sect_cnt0[11]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[13]_i_1 
       (.I0(Q[13]),
        .I1(next_rreq),
        .I2(sect_cnt0[12]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[14]_i_1 
       (.I0(Q[14]),
        .I1(next_rreq),
        .I2(sect_cnt0[13]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[15]_i_1 
       (.I0(Q[15]),
        .I1(next_rreq),
        .I2(sect_cnt0[14]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[16]_i_1 
       (.I0(Q[16]),
        .I1(next_rreq),
        .I2(sect_cnt0[15]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[17]_i_1 
       (.I0(Q[17]),
        .I1(next_rreq),
        .I2(sect_cnt0[16]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[18]_i_1 
       (.I0(Q[18]),
        .I1(next_rreq),
        .I2(sect_cnt0[17]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[19]_i_1 
       (.I0(Q[19]),
        .I1(next_rreq),
        .I2(sect_cnt0[18]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[1]_i_1 
       (.I0(Q[1]),
        .I1(next_rreq),
        .I2(sect_cnt0[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[20]_i_1 
       (.I0(Q[20]),
        .I1(next_rreq),
        .I2(sect_cnt0[19]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[21]_i_1 
       (.I0(Q[21]),
        .I1(next_rreq),
        .I2(sect_cnt0[20]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[22]_i_1 
       (.I0(Q[22]),
        .I1(next_rreq),
        .I2(sect_cnt0[21]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[23]_i_1 
       (.I0(Q[23]),
        .I1(next_rreq),
        .I2(sect_cnt0[22]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[24]_i_1 
       (.I0(Q[24]),
        .I1(next_rreq),
        .I2(sect_cnt0[23]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[25]_i_1 
       (.I0(Q[25]),
        .I1(next_rreq),
        .I2(sect_cnt0[24]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[26]_i_1 
       (.I0(Q[26]),
        .I1(next_rreq),
        .I2(sect_cnt0[25]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[27]_i_1 
       (.I0(Q[27]),
        .I1(next_rreq),
        .I2(sect_cnt0[26]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[28]_i_1 
       (.I0(Q[28]),
        .I1(next_rreq),
        .I2(sect_cnt0[27]),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[29]_i_1 
       (.I0(Q[29]),
        .I1(next_rreq),
        .I2(sect_cnt0[28]),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[2]_i_1 
       (.I0(Q[2]),
        .I1(next_rreq),
        .I2(sect_cnt0[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[30]_i_1 
       (.I0(Q[30]),
        .I1(next_rreq),
        .I2(sect_cnt0[29]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[31]_i_1 
       (.I0(Q[31]),
        .I1(next_rreq),
        .I2(sect_cnt0[30]),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[32]_i_1 
       (.I0(Q[32]),
        .I1(next_rreq),
        .I2(sect_cnt0[31]),
        .O(D[32]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[33]_i_1 
       (.I0(Q[33]),
        .I1(next_rreq),
        .I2(sect_cnt0[32]),
        .O(D[33]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[34]_i_1 
       (.I0(Q[34]),
        .I1(next_rreq),
        .I2(sect_cnt0[33]),
        .O(D[34]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[35]_i_1 
       (.I0(Q[35]),
        .I1(next_rreq),
        .I2(sect_cnt0[34]),
        .O(D[35]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[36]_i_1 
       (.I0(Q[36]),
        .I1(next_rreq),
        .I2(sect_cnt0[35]),
        .O(D[36]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[37]_i_1 
       (.I0(Q[37]),
        .I1(next_rreq),
        .I2(sect_cnt0[36]),
        .O(D[37]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[38]_i_1 
       (.I0(Q[38]),
        .I1(next_rreq),
        .I2(sect_cnt0[37]),
        .O(D[38]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[39]_i_1 
       (.I0(Q[39]),
        .I1(next_rreq),
        .I2(sect_cnt0[38]),
        .O(D[39]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[3]_i_1 
       (.I0(Q[3]),
        .I1(next_rreq),
        .I2(sect_cnt0[2]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[40]_i_1 
       (.I0(Q[40]),
        .I1(next_rreq),
        .I2(sect_cnt0[39]),
        .O(D[40]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[41]_i_1 
       (.I0(Q[41]),
        .I1(next_rreq),
        .I2(sect_cnt0[40]),
        .O(D[41]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[42]_i_1 
       (.I0(Q[42]),
        .I1(next_rreq),
        .I2(sect_cnt0[41]),
        .O(D[42]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[43]_i_1 
       (.I0(Q[43]),
        .I1(next_rreq),
        .I2(sect_cnt0[42]),
        .O(D[43]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[44]_i_1 
       (.I0(Q[44]),
        .I1(next_rreq),
        .I2(sect_cnt0[43]),
        .O(D[44]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[45]_i_1 
       (.I0(Q[45]),
        .I1(next_rreq),
        .I2(sect_cnt0[44]),
        .O(D[45]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[46]_i_1 
       (.I0(Q[46]),
        .I1(next_rreq),
        .I2(sect_cnt0[45]),
        .O(D[46]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[47]_i_1 
       (.I0(Q[47]),
        .I1(next_rreq),
        .I2(sect_cnt0[46]),
        .O(D[47]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[48]_i_1 
       (.I0(Q[48]),
        .I1(next_rreq),
        .I2(sect_cnt0[47]),
        .O(D[48]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[49]_i_1 
       (.I0(Q[49]),
        .I1(next_rreq),
        .I2(sect_cnt0[48]),
        .O(D[49]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[4]_i_1 
       (.I0(Q[4]),
        .I1(next_rreq),
        .I2(sect_cnt0[3]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[50]_i_1 
       (.I0(Q[50]),
        .I1(next_rreq),
        .I2(sect_cnt0[49]),
        .O(D[50]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sect_cnt[51]_i_1 
       (.I0(next_rreq),
        .I1(p_21_in),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[51]_i_2 
       (.I0(Q[51]),
        .I1(next_rreq),
        .I2(sect_cnt0[50]),
        .O(D[51]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[5]_i_1 
       (.I0(Q[5]),
        .I1(next_rreq),
        .I2(sect_cnt0[4]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[6]_i_1 
       (.I0(Q[6]),
        .I1(next_rreq),
        .I2(sect_cnt0[5]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[7]_i_1 
       (.I0(Q[7]),
        .I1(next_rreq),
        .I2(sect_cnt0[6]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[8]_i_1 
       (.I0(Q[8]),
        .I1(next_rreq),
        .I2(sect_cnt0[7]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_cnt[9]_i_1 
       (.I0(Q[9]),
        .I1(next_rreq),
        .I2(sect_cnt0[8]),
        .O(D[9]));
endmodule

(* ORIG_REF_NAME = "runLayer_gmem_m_axi_fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_gmem_m_axi_fifo__parameterized1
   (fifo_rctl_ready,
    push,
    ap_clk,
    SR,
    ap_rst_n,
    \could_multi_bursts.next_loop ,
    \pout_reg[3]_0 ,
    \pout_reg[3]_1 ,
    \bus_wide_gen.ready_for_data__0 ,
    \bus_wide_gen.split_cnt__2 ,
    m_axi_gmem_ARREADY,
    \pout_reg[2]_0 ,
    \pout_reg[2]_1 ,
    fifo_burst_ready,
    E,
    Q,
    beat_valid);
  output fifo_rctl_ready;
  output push;
  input ap_clk;
  input [0:0]SR;
  input ap_rst_n;
  input \could_multi_bursts.next_loop ;
  input \pout_reg[3]_0 ;
  input \pout_reg[3]_1 ;
  input \bus_wide_gen.ready_for_data__0 ;
  input \bus_wide_gen.split_cnt__2 ;
  input m_axi_gmem_ARREADY;
  input \pout_reg[2]_0 ;
  input \pout_reg[2]_1 ;
  input fifo_burst_ready;
  input [0:0]E;
  input [0:0]Q;
  input beat_valid;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire beat_valid;
  wire \bus_wide_gen.ready_for_data__0 ;
  wire \bus_wide_gen.split_cnt__2 ;
  wire \could_multi_bursts.next_loop ;
  wire data_vld1__0;
  wire data_vld_i_1__1_n_0;
  wire data_vld_reg_n_0;
  wire empty_n_i_1__1_n_0;
  wire empty_n_reg_n_0;
  wire fifo_burst_ready;
  wire fifo_rctl_ready;
  wire full_n_i_1__1_n_0;
  wire full_n_i_2__1_n_0;
  wire m_axi_gmem_ARREADY;
  wire p_10_in;
  wire \pout[0]_i_1_n_0 ;
  wire \pout[1]_i_1_n_0 ;
  wire \pout[2]_i_1_n_0 ;
  wire \pout[3]_i_1_n_0 ;
  wire \pout[3]_i_2_n_0 ;
  wire \pout[3]_i_5_n_0 ;
  wire [3:0]pout_reg;
  wire \pout_reg[2]_0 ;
  wire \pout_reg[2]_1 ;
  wire \pout_reg[3]_0 ;
  wire \pout_reg[3]_1 ;
  wire push;

  LUT5 #(
    .INIT(32'hF777F000)) 
    data_vld_i_1__1
       (.I0(data_vld1__0),
        .I1(p_10_in),
        .I2(\could_multi_bursts.next_loop ),
        .I3(fifo_rctl_ready),
        .I4(data_vld_reg_n_0),
        .O(data_vld_i_1__1_n_0));
  FDRE data_vld_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(data_vld_i_1__1_n_0),
        .Q(data_vld_reg_n_0),
        .R(SR));
  LUT5 #(
    .INIT(32'hBFFFAAAA)) 
    empty_n_i_1__1
       (.I0(data_vld_reg_n_0),
        .I1(E),
        .I2(Q),
        .I3(beat_valid),
        .I4(empty_n_reg_n_0),
        .O(empty_n_i_1__1_n_0));
  FDRE empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(empty_n_i_1__1_n_0),
        .Q(empty_n_reg_n_0),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFFF5DDD)) 
    full_n_i_1__1
       (.I0(ap_rst_n),
        .I1(fifo_rctl_ready),
        .I2(\could_multi_bursts.next_loop ),
        .I3(full_n_i_2__1_n_0),
        .I4(p_10_in),
        .O(full_n_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    full_n_i_2__1
       (.I0(pout_reg[0]),
        .I1(pout_reg[3]),
        .I2(data_vld_reg_n_0),
        .I3(pout_reg[2]),
        .I4(pout_reg[1]),
        .O(full_n_i_2__1_n_0));
  FDRE full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(full_n_i_1__1_n_0),
        .Q(fifo_rctl_ready),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB0000000)) 
    \mem_reg[4][0]_srl5_i_1 
       (.I0(m_axi_gmem_ARREADY),
        .I1(\pout_reg[2]_0 ),
        .I2(\pout_reg[2]_1 ),
        .I3(fifo_rctl_ready),
        .I4(fifo_burst_ready),
        .O(push));
  LUT1 #(
    .INIT(2'h1)) 
    \pout[0]_i_1 
       (.I0(pout_reg[0]),
        .O(\pout[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9AAAAAAA65555555)) 
    \pout[1]_i_1 
       (.I0(pout_reg[0]),
        .I1(p_10_in),
        .I2(\could_multi_bursts.next_loop ),
        .I3(fifo_rctl_ready),
        .I4(data_vld_reg_n_0),
        .I5(pout_reg[1]),
        .O(\pout[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF0800FF0800F7)) 
    \pout[2]_i_1 
       (.I0(data_vld_reg_n_0),
        .I1(push),
        .I2(p_10_in),
        .I3(pout_reg[0]),
        .I4(pout_reg[2]),
        .I5(pout_reg[1]),
        .O(\pout[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h34440444)) 
    \pout[3]_i_1 
       (.I0(data_vld1__0),
        .I1(p_10_in),
        .I2(\could_multi_bursts.next_loop ),
        .I3(fifo_rctl_ready),
        .I4(data_vld_reg_n_0),
        .O(\pout[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF0800FFAE0051)) 
    \pout[3]_i_2 
       (.I0(pout_reg[1]),
        .I1(\pout[3]_i_5_n_0 ),
        .I2(p_10_in),
        .I3(pout_reg[0]),
        .I4(pout_reg[3]),
        .I5(pout_reg[2]),
        .O(\pout[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \pout[3]_i_3 
       (.I0(pout_reg[1]),
        .I1(pout_reg[0]),
        .I2(pout_reg[3]),
        .I3(pout_reg[2]),
        .O(data_vld1__0));
  LUT6 #(
    .INIT(64'hA222222222A22222)) 
    \pout[3]_i_4 
       (.I0(data_vld_reg_n_0),
        .I1(empty_n_reg_n_0),
        .I2(\pout_reg[3]_0 ),
        .I3(\pout_reg[3]_1 ),
        .I4(\bus_wide_gen.ready_for_data__0 ),
        .I5(\bus_wide_gen.split_cnt__2 ),
        .O(p_10_in));
  LUT6 #(
    .INIT(64'h8080008000000000)) 
    \pout[3]_i_5 
       (.I0(fifo_burst_ready),
        .I1(fifo_rctl_ready),
        .I2(\pout_reg[2]_1 ),
        .I3(\pout_reg[2]_0 ),
        .I4(m_axi_gmem_ARREADY),
        .I5(data_vld_reg_n_0),
        .O(\pout[3]_i_5_n_0 ));
  FDRE \pout_reg[0] 
       (.C(ap_clk),
        .CE(\pout[3]_i_1_n_0 ),
        .D(\pout[0]_i_1_n_0 ),
        .Q(pout_reg[0]),
        .R(SR));
  FDRE \pout_reg[1] 
       (.C(ap_clk),
        .CE(\pout[3]_i_1_n_0 ),
        .D(\pout[1]_i_1_n_0 ),
        .Q(pout_reg[1]),
        .R(SR));
  FDRE \pout_reg[2] 
       (.C(ap_clk),
        .CE(\pout[3]_i_1_n_0 ),
        .D(\pout[2]_i_1_n_0 ),
        .Q(pout_reg[2]),
        .R(SR));
  FDRE \pout_reg[3] 
       (.C(ap_clk),
        .CE(\pout[3]_i_1_n_0 ),
        .D(\pout[3]_i_2_n_0 ),
        .Q(pout_reg[3]),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_gmem_m_axi_read
   (full_n_reg,
    SR,
    s_ready_t_reg,
    \could_multi_bursts.ARVALID_Dummy_reg_0 ,
    ap_block_pp0_stage0_subdone,
    Q,
    E,
    s_ready_t_reg_0,
    m_axi_gmem_ARADDR,
    ap_NS_fsm__0,
    \ap_CS_fsm_reg[5] ,
    \ap_CS_fsm_reg[20] ,
    \ap_CS_fsm_reg[19] ,
    \state_reg[0] ,
    \could_multi_bursts.arlen_buf_reg[3]_0 ,
    \data_p1_reg[15] ,
    ap_clk,
    D,
    m_axi_gmem_RRESP,
    m_axi_gmem_RVALID,
    ap_enable_reg_pp0_iter1,
    ap_enable_reg_pp0_iter1_0,
    gmem_RREADY,
    gmem_ARVALID,
    ap_rst_n,
    m_axi_gmem_ARREADY,
    \data_p1_reg[79] ,
    \data_p1_reg[79]_0 ,
    \ap_CS_fsm_reg[11] ,
    \data_p2_reg[64] ,
    \ap_CS_fsm_reg[11]_0 ,
    \data_p2_reg[62] ,
    \data_p2_reg[62]_0 ,
    \data_p2_reg[62]_1 ,
    \ap_CS_fsm_reg[1] ,
    CO,
    grp_runLayer_Pipeline_2_fu_201_ap_start_reg,
    \data_p2_reg[79] );
  output full_n_reg;
  output [0:0]SR;
  output s_ready_t_reg;
  output \could_multi_bursts.ARVALID_Dummy_reg_0 ;
  output ap_block_pp0_stage0_subdone;
  output [0:0]Q;
  output [0:0]E;
  output s_ready_t_reg_0;
  output [61:0]m_axi_gmem_ARADDR;
  output [1:0]ap_NS_fsm__0;
  output \ap_CS_fsm_reg[5] ;
  output \ap_CS_fsm_reg[20] ;
  output \ap_CS_fsm_reg[19] ;
  output \state_reg[0] ;
  output [3:0]\could_multi_bursts.arlen_buf_reg[3]_0 ;
  output [15:0]\data_p1_reg[15] ;
  input ap_clk;
  input [32:0]D;
  input [1:0]m_axi_gmem_RRESP;
  input m_axi_gmem_RVALID;
  input ap_enable_reg_pp0_iter1;
  input ap_enable_reg_pp0_iter1_0;
  input gmem_RREADY;
  input gmem_ARVALID;
  input ap_rst_n;
  input m_axi_gmem_ARREADY;
  input [15:0]\data_p1_reg[79] ;
  input [15:0]\data_p1_reg[79]_0 ;
  input [1:0]\ap_CS_fsm_reg[11] ;
  input [11:0]\data_p2_reg[64] ;
  input \ap_CS_fsm_reg[11]_0 ;
  input [62:0]\data_p2_reg[62] ;
  input [62:0]\data_p2_reg[62]_0 ;
  input [62:0]\data_p2_reg[62]_1 ;
  input \ap_CS_fsm_reg[1] ;
  input [0:0]CO;
  input grp_runLayer_Pipeline_2_fu_201_ap_start_reg;
  input [0:0]\data_p2_reg[79] ;

  wire [0:0]CO;
  wire [32:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire align_len;
  wire [31:1]align_len0;
  wire align_len0_carry__0_n_0;
  wire align_len0_carry__0_n_1;
  wire align_len0_carry__0_n_2;
  wire align_len0_carry__0_n_3;
  wire align_len0_carry__1_n_0;
  wire align_len0_carry__1_n_1;
  wire align_len0_carry__1_n_2;
  wire align_len0_carry__1_n_3;
  wire align_len0_carry__2_n_0;
  wire align_len0_carry__2_n_1;
  wire align_len0_carry__2_n_2;
  wire align_len0_carry__2_n_3;
  wire align_len0_carry__3_n_3;
  wire align_len0_carry_n_0;
  wire align_len0_carry_n_1;
  wire align_len0_carry_n_2;
  wire align_len0_carry_n_3;
  wire \align_len_reg_n_0_[10] ;
  wire \align_len_reg_n_0_[11] ;
  wire \align_len_reg_n_0_[12] ;
  wire \align_len_reg_n_0_[13] ;
  wire \align_len_reg_n_0_[14] ;
  wire \align_len_reg_n_0_[15] ;
  wire \align_len_reg_n_0_[16] ;
  wire \align_len_reg_n_0_[1] ;
  wire \align_len_reg_n_0_[2] ;
  wire \align_len_reg_n_0_[31] ;
  wire \align_len_reg_n_0_[3] ;
  wire \align_len_reg_n_0_[4] ;
  wire \align_len_reg_n_0_[5] ;
  wire \align_len_reg_n_0_[6] ;
  wire \align_len_reg_n_0_[7] ;
  wire \align_len_reg_n_0_[8] ;
  wire \align_len_reg_n_0_[9] ;
  wire [1:0]\ap_CS_fsm_reg[11] ;
  wire \ap_CS_fsm_reg[11]_0 ;
  wire \ap_CS_fsm_reg[19] ;
  wire \ap_CS_fsm_reg[1] ;
  wire \ap_CS_fsm_reg[20] ;
  wire \ap_CS_fsm_reg[5] ;
  wire [1:0]ap_NS_fsm__0;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_0;
  wire ap_rst_n;
  wire [63:2]araddr_tmp;
  wire [3:0]arlen_tmp;
  wire [9:0]beat_len_buf;
  wire [11:2]beat_len_buf1;
  wire \beat_len_buf[2]_i_2_n_0 ;
  wire \beat_len_buf_reg[2]_i_1_n_0 ;
  wire \beat_len_buf_reg[2]_i_1_n_1 ;
  wire \beat_len_buf_reg[2]_i_1_n_2 ;
  wire \beat_len_buf_reg[2]_i_1_n_3 ;
  wire \beat_len_buf_reg[6]_i_1_n_0 ;
  wire \beat_len_buf_reg[6]_i_1_n_1 ;
  wire \beat_len_buf_reg[6]_i_1_n_2 ;
  wire \beat_len_buf_reg[6]_i_1_n_3 ;
  wire \beat_len_buf_reg[9]_i_1_n_2 ;
  wire \beat_len_buf_reg[9]_i_1_n_3 ;
  wire beat_valid;
  wire buff_rdata_n_10;
  wire buff_rdata_n_11;
  wire buff_rdata_n_12;
  wire buff_rdata_n_13;
  wire buff_rdata_n_14;
  wire buff_rdata_n_15;
  wire buff_rdata_n_16;
  wire buff_rdata_n_17;
  wire buff_rdata_n_18;
  wire buff_rdata_n_19;
  wire buff_rdata_n_20;
  wire buff_rdata_n_21;
  wire buff_rdata_n_22;
  wire buff_rdata_n_23;
  wire buff_rdata_n_24;
  wire buff_rdata_n_25;
  wire buff_rdata_n_26;
  wire buff_rdata_n_27;
  wire buff_rdata_n_28;
  wire buff_rdata_n_29;
  wire buff_rdata_n_3;
  wire buff_rdata_n_30;
  wire buff_rdata_n_31;
  wire buff_rdata_n_32;
  wire buff_rdata_n_33;
  wire buff_rdata_n_34;
  wire buff_rdata_n_35;
  wire buff_rdata_n_36;
  wire buff_rdata_n_37;
  wire buff_rdata_n_5;
  wire buff_rdata_n_6;
  wire buff_rdata_n_7;
  wire buff_rdata_n_8;
  wire buff_rdata_n_9;
  wire \bus_wide_gen.data_buf_reg_n_0_[0] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[10] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[11] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[12] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[13] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[14] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[15] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[16] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[17] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[18] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[19] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[1] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[20] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[21] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[22] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[23] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[24] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[25] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[26] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[27] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[28] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[29] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[2] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[30] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[31] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[3] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[4] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[5] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[6] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[7] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[8] ;
  wire \bus_wide_gen.data_buf_reg_n_0_[9] ;
  wire \bus_wide_gen.fifo_burst_n_1 ;
  wire \bus_wide_gen.fifo_burst_n_10 ;
  wire \bus_wide_gen.fifo_burst_n_11 ;
  wire \bus_wide_gen.fifo_burst_n_12 ;
  wire \bus_wide_gen.fifo_burst_n_13 ;
  wire \bus_wide_gen.fifo_burst_n_14 ;
  wire \bus_wide_gen.fifo_burst_n_15 ;
  wire \bus_wide_gen.fifo_burst_n_16 ;
  wire \bus_wide_gen.fifo_burst_n_17 ;
  wire \bus_wide_gen.fifo_burst_n_18 ;
  wire \bus_wide_gen.fifo_burst_n_19 ;
  wire \bus_wide_gen.fifo_burst_n_20 ;
  wire \bus_wide_gen.fifo_burst_n_21 ;
  wire \bus_wide_gen.fifo_burst_n_22 ;
  wire \bus_wide_gen.fifo_burst_n_26 ;
  wire \bus_wide_gen.fifo_burst_n_27 ;
  wire \bus_wide_gen.fifo_burst_n_28 ;
  wire \bus_wide_gen.fifo_burst_n_29 ;
  wire \bus_wide_gen.fifo_burst_n_3 ;
  wire \bus_wide_gen.fifo_burst_n_30 ;
  wire \bus_wide_gen.fifo_burst_n_31 ;
  wire \bus_wide_gen.fifo_burst_n_36 ;
  wire \bus_wide_gen.fifo_burst_n_37 ;
  wire \bus_wide_gen.fifo_burst_n_38 ;
  wire \bus_wide_gen.fifo_burst_n_6 ;
  wire \bus_wide_gen.fifo_burst_n_7 ;
  wire \bus_wide_gen.fifo_burst_n_8 ;
  wire \bus_wide_gen.fifo_burst_n_9 ;
  wire \bus_wide_gen.last_split ;
  wire \bus_wide_gen.len_cnt[7]_i_4_n_0 ;
  wire [7:0]\bus_wide_gen.len_cnt_reg ;
  wire \bus_wide_gen.rdata_valid_t_reg_n_0 ;
  wire \bus_wide_gen.ready_for_data__0 ;
  wire \bus_wide_gen.split_cnt__2 ;
  wire \bus_wide_gen.split_cnt_buf_reg_n_0_[0] ;
  wire \could_multi_bursts.ARVALID_Dummy_reg_0 ;
  wire \could_multi_bursts.araddr_buf[4]_i_3_n_0 ;
  wire \could_multi_bursts.araddr_buf[4]_i_4_n_0 ;
  wire \could_multi_bursts.araddr_buf[4]_i_5_n_0 ;
  wire \could_multi_bursts.araddr_buf[8]_i_3_n_0 ;
  wire \could_multi_bursts.araddr_buf[8]_i_4_n_0 ;
  wire \could_multi_bursts.araddr_buf_reg[12]_i_2_n_0 ;
  wire \could_multi_bursts.araddr_buf_reg[12]_i_2_n_1 ;
  wire \could_multi_bursts.araddr_buf_reg[12]_i_2_n_2 ;
  wire \could_multi_bursts.araddr_buf_reg[12]_i_2_n_3 ;
  wire \could_multi_bursts.araddr_buf_reg[16]_i_2_n_0 ;
  wire \could_multi_bursts.araddr_buf_reg[16]_i_2_n_1 ;
  wire \could_multi_bursts.araddr_buf_reg[16]_i_2_n_2 ;
  wire \could_multi_bursts.araddr_buf_reg[16]_i_2_n_3 ;
  wire \could_multi_bursts.araddr_buf_reg[20]_i_2_n_0 ;
  wire \could_multi_bursts.araddr_buf_reg[20]_i_2_n_1 ;
  wire \could_multi_bursts.araddr_buf_reg[20]_i_2_n_2 ;
  wire \could_multi_bursts.araddr_buf_reg[20]_i_2_n_3 ;
  wire \could_multi_bursts.araddr_buf_reg[24]_i_2_n_0 ;
  wire \could_multi_bursts.araddr_buf_reg[24]_i_2_n_1 ;
  wire \could_multi_bursts.araddr_buf_reg[24]_i_2_n_2 ;
  wire \could_multi_bursts.araddr_buf_reg[24]_i_2_n_3 ;
  wire \could_multi_bursts.araddr_buf_reg[28]_i_2_n_0 ;
  wire \could_multi_bursts.araddr_buf_reg[28]_i_2_n_1 ;
  wire \could_multi_bursts.araddr_buf_reg[28]_i_2_n_2 ;
  wire \could_multi_bursts.araddr_buf_reg[28]_i_2_n_3 ;
  wire \could_multi_bursts.araddr_buf_reg[32]_i_2_n_0 ;
  wire \could_multi_bursts.araddr_buf_reg[32]_i_2_n_1 ;
  wire \could_multi_bursts.araddr_buf_reg[32]_i_2_n_2 ;
  wire \could_multi_bursts.araddr_buf_reg[32]_i_2_n_3 ;
  wire \could_multi_bursts.araddr_buf_reg[36]_i_2_n_0 ;
  wire \could_multi_bursts.araddr_buf_reg[36]_i_2_n_1 ;
  wire \could_multi_bursts.araddr_buf_reg[36]_i_2_n_2 ;
  wire \could_multi_bursts.araddr_buf_reg[36]_i_2_n_3 ;
  wire \could_multi_bursts.araddr_buf_reg[40]_i_2_n_0 ;
  wire \could_multi_bursts.araddr_buf_reg[40]_i_2_n_1 ;
  wire \could_multi_bursts.araddr_buf_reg[40]_i_2_n_2 ;
  wire \could_multi_bursts.araddr_buf_reg[40]_i_2_n_3 ;
  wire \could_multi_bursts.araddr_buf_reg[44]_i_2_n_0 ;
  wire \could_multi_bursts.araddr_buf_reg[44]_i_2_n_1 ;
  wire \could_multi_bursts.araddr_buf_reg[44]_i_2_n_2 ;
  wire \could_multi_bursts.araddr_buf_reg[44]_i_2_n_3 ;
  wire \could_multi_bursts.araddr_buf_reg[48]_i_2_n_0 ;
  wire \could_multi_bursts.araddr_buf_reg[48]_i_2_n_1 ;
  wire \could_multi_bursts.araddr_buf_reg[48]_i_2_n_2 ;
  wire \could_multi_bursts.araddr_buf_reg[48]_i_2_n_3 ;
  wire \could_multi_bursts.araddr_buf_reg[4]_i_2_n_0 ;
  wire \could_multi_bursts.araddr_buf_reg[4]_i_2_n_1 ;
  wire \could_multi_bursts.araddr_buf_reg[4]_i_2_n_2 ;
  wire \could_multi_bursts.araddr_buf_reg[4]_i_2_n_3 ;
  wire \could_multi_bursts.araddr_buf_reg[52]_i_2_n_0 ;
  wire \could_multi_bursts.araddr_buf_reg[52]_i_2_n_1 ;
  wire \could_multi_bursts.araddr_buf_reg[52]_i_2_n_2 ;
  wire \could_multi_bursts.araddr_buf_reg[52]_i_2_n_3 ;
  wire \could_multi_bursts.araddr_buf_reg[56]_i_2_n_0 ;
  wire \could_multi_bursts.araddr_buf_reg[56]_i_2_n_1 ;
  wire \could_multi_bursts.araddr_buf_reg[56]_i_2_n_2 ;
  wire \could_multi_bursts.araddr_buf_reg[56]_i_2_n_3 ;
  wire \could_multi_bursts.araddr_buf_reg[60]_i_2_n_0 ;
  wire \could_multi_bursts.araddr_buf_reg[60]_i_2_n_1 ;
  wire \could_multi_bursts.araddr_buf_reg[60]_i_2_n_2 ;
  wire \could_multi_bursts.araddr_buf_reg[60]_i_2_n_3 ;
  wire \could_multi_bursts.araddr_buf_reg[63]_i_5_n_2 ;
  wire \could_multi_bursts.araddr_buf_reg[63]_i_5_n_3 ;
  wire \could_multi_bursts.araddr_buf_reg[8]_i_2_n_0 ;
  wire \could_multi_bursts.araddr_buf_reg[8]_i_2_n_1 ;
  wire \could_multi_bursts.araddr_buf_reg[8]_i_2_n_2 ;
  wire \could_multi_bursts.araddr_buf_reg[8]_i_2_n_3 ;
  wire [3:0]\could_multi_bursts.arlen_buf_reg[3]_0 ;
  wire [5:0]\could_multi_bursts.loop_cnt_reg ;
  wire \could_multi_bursts.next_loop ;
  wire \could_multi_bursts.sect_handling_reg_n_0 ;
  wire [63:2]data1;
  wire [15:0]\data_p1_reg[15] ;
  wire [15:0]\data_p1_reg[79] ;
  wire [15:0]\data_p1_reg[79]_0 ;
  wire [62:0]\data_p2_reg[62] ;
  wire [62:0]\data_p2_reg[62]_0 ;
  wire [62:0]\data_p2_reg[62]_1 ;
  wire [11:0]\data_p2_reg[64] ;
  wire [0:0]\data_p2_reg[79] ;
  wire [34:34]data_pack;
  wire [63:1]end_addr;
  wire \end_addr_buf[12]_i_2_n_0 ;
  wire \end_addr_buf[12]_i_3_n_0 ;
  wire \end_addr_buf[12]_i_4_n_0 ;
  wire \end_addr_buf[12]_i_5_n_0 ;
  wire \end_addr_buf[16]_i_2_n_0 ;
  wire \end_addr_buf[16]_i_3_n_0 ;
  wire \end_addr_buf[16]_i_4_n_0 ;
  wire \end_addr_buf[16]_i_5_n_0 ;
  wire \end_addr_buf[20]_i_2_n_0 ;
  wire \end_addr_buf[20]_i_3_n_0 ;
  wire \end_addr_buf[20]_i_4_n_0 ;
  wire \end_addr_buf[20]_i_5_n_0 ;
  wire \end_addr_buf[24]_i_2_n_0 ;
  wire \end_addr_buf[24]_i_3_n_0 ;
  wire \end_addr_buf[24]_i_4_n_0 ;
  wire \end_addr_buf[24]_i_5_n_0 ;
  wire \end_addr_buf[28]_i_2_n_0 ;
  wire \end_addr_buf[28]_i_3_n_0 ;
  wire \end_addr_buf[28]_i_4_n_0 ;
  wire \end_addr_buf[28]_i_5_n_0 ;
  wire \end_addr_buf[32]_i_2_n_0 ;
  wire \end_addr_buf[32]_i_3_n_0 ;
  wire \end_addr_buf[32]_i_4_n_0 ;
  wire \end_addr_buf[4]_i_2_n_0 ;
  wire \end_addr_buf[4]_i_3_n_0 ;
  wire \end_addr_buf[4]_i_4_n_0 ;
  wire \end_addr_buf[4]_i_5_n_0 ;
  wire \end_addr_buf[8]_i_2_n_0 ;
  wire \end_addr_buf[8]_i_3_n_0 ;
  wire \end_addr_buf[8]_i_4_n_0 ;
  wire \end_addr_buf[8]_i_5_n_0 ;
  wire \end_addr_buf_reg[12]_i_1_n_0 ;
  wire \end_addr_buf_reg[12]_i_1_n_1 ;
  wire \end_addr_buf_reg[12]_i_1_n_2 ;
  wire \end_addr_buf_reg[12]_i_1_n_3 ;
  wire \end_addr_buf_reg[16]_i_1_n_0 ;
  wire \end_addr_buf_reg[16]_i_1_n_1 ;
  wire \end_addr_buf_reg[16]_i_1_n_2 ;
  wire \end_addr_buf_reg[16]_i_1_n_3 ;
  wire \end_addr_buf_reg[20]_i_1_n_0 ;
  wire \end_addr_buf_reg[20]_i_1_n_1 ;
  wire \end_addr_buf_reg[20]_i_1_n_2 ;
  wire \end_addr_buf_reg[20]_i_1_n_3 ;
  wire \end_addr_buf_reg[24]_i_1_n_0 ;
  wire \end_addr_buf_reg[24]_i_1_n_1 ;
  wire \end_addr_buf_reg[24]_i_1_n_2 ;
  wire \end_addr_buf_reg[24]_i_1_n_3 ;
  wire \end_addr_buf_reg[28]_i_1_n_0 ;
  wire \end_addr_buf_reg[28]_i_1_n_1 ;
  wire \end_addr_buf_reg[28]_i_1_n_2 ;
  wire \end_addr_buf_reg[28]_i_1_n_3 ;
  wire \end_addr_buf_reg[32]_i_1_n_0 ;
  wire \end_addr_buf_reg[32]_i_1_n_1 ;
  wire \end_addr_buf_reg[32]_i_1_n_2 ;
  wire \end_addr_buf_reg[32]_i_1_n_3 ;
  wire \end_addr_buf_reg[36]_i_1_n_0 ;
  wire \end_addr_buf_reg[36]_i_1_n_1 ;
  wire \end_addr_buf_reg[36]_i_1_n_2 ;
  wire \end_addr_buf_reg[36]_i_1_n_3 ;
  wire \end_addr_buf_reg[40]_i_1_n_0 ;
  wire \end_addr_buf_reg[40]_i_1_n_1 ;
  wire \end_addr_buf_reg[40]_i_1_n_2 ;
  wire \end_addr_buf_reg[40]_i_1_n_3 ;
  wire \end_addr_buf_reg[44]_i_1_n_0 ;
  wire \end_addr_buf_reg[44]_i_1_n_1 ;
  wire \end_addr_buf_reg[44]_i_1_n_2 ;
  wire \end_addr_buf_reg[44]_i_1_n_3 ;
  wire \end_addr_buf_reg[48]_i_1_n_0 ;
  wire \end_addr_buf_reg[48]_i_1_n_1 ;
  wire \end_addr_buf_reg[48]_i_1_n_2 ;
  wire \end_addr_buf_reg[48]_i_1_n_3 ;
  wire \end_addr_buf_reg[4]_i_1_n_0 ;
  wire \end_addr_buf_reg[4]_i_1_n_1 ;
  wire \end_addr_buf_reg[4]_i_1_n_2 ;
  wire \end_addr_buf_reg[4]_i_1_n_3 ;
  wire \end_addr_buf_reg[52]_i_1_n_0 ;
  wire \end_addr_buf_reg[52]_i_1_n_1 ;
  wire \end_addr_buf_reg[52]_i_1_n_2 ;
  wire \end_addr_buf_reg[52]_i_1_n_3 ;
  wire \end_addr_buf_reg[56]_i_1_n_0 ;
  wire \end_addr_buf_reg[56]_i_1_n_1 ;
  wire \end_addr_buf_reg[56]_i_1_n_2 ;
  wire \end_addr_buf_reg[56]_i_1_n_3 ;
  wire \end_addr_buf_reg[60]_i_1_n_0 ;
  wire \end_addr_buf_reg[60]_i_1_n_1 ;
  wire \end_addr_buf_reg[60]_i_1_n_2 ;
  wire \end_addr_buf_reg[60]_i_1_n_3 ;
  wire \end_addr_buf_reg[63]_i_1_n_2 ;
  wire \end_addr_buf_reg[63]_i_1_n_3 ;
  wire \end_addr_buf_reg[8]_i_1_n_0 ;
  wire \end_addr_buf_reg[8]_i_1_n_1 ;
  wire \end_addr_buf_reg[8]_i_1_n_2 ;
  wire \end_addr_buf_reg[8]_i_1_n_3 ;
  wire \end_addr_buf_reg_n_0_[10] ;
  wire \end_addr_buf_reg_n_0_[11] ;
  wire \end_addr_buf_reg_n_0_[1] ;
  wire \end_addr_buf_reg_n_0_[2] ;
  wire \end_addr_buf_reg_n_0_[3] ;
  wire \end_addr_buf_reg_n_0_[4] ;
  wire \end_addr_buf_reg_n_0_[5] ;
  wire \end_addr_buf_reg_n_0_[6] ;
  wire \end_addr_buf_reg_n_0_[7] ;
  wire \end_addr_buf_reg_n_0_[8] ;
  wire \end_addr_buf_reg_n_0_[9] ;
  wire fifo_burst_ready;
  wire fifo_rctl_ready;
  wire [79:64]fifo_rreq_data;
  wire fifo_rreq_n_10;
  wire fifo_rreq_n_100;
  wire fifo_rreq_n_101;
  wire fifo_rreq_n_102;
  wire fifo_rreq_n_103;
  wire fifo_rreq_n_104;
  wire fifo_rreq_n_105;
  wire fifo_rreq_n_106;
  wire fifo_rreq_n_107;
  wire fifo_rreq_n_108;
  wire fifo_rreq_n_109;
  wire fifo_rreq_n_11;
  wire fifo_rreq_n_110;
  wire fifo_rreq_n_111;
  wire fifo_rreq_n_112;
  wire fifo_rreq_n_113;
  wire fifo_rreq_n_114;
  wire fifo_rreq_n_115;
  wire fifo_rreq_n_116;
  wire fifo_rreq_n_117;
  wire fifo_rreq_n_118;
  wire fifo_rreq_n_119;
  wire fifo_rreq_n_12;
  wire fifo_rreq_n_120;
  wire fifo_rreq_n_121;
  wire fifo_rreq_n_122;
  wire fifo_rreq_n_123;
  wire fifo_rreq_n_124;
  wire fifo_rreq_n_125;
  wire fifo_rreq_n_126;
  wire fifo_rreq_n_127;
  wire fifo_rreq_n_128;
  wire fifo_rreq_n_129;
  wire fifo_rreq_n_13;
  wire fifo_rreq_n_130;
  wire fifo_rreq_n_131;
  wire fifo_rreq_n_132;
  wire fifo_rreq_n_133;
  wire fifo_rreq_n_134;
  wire fifo_rreq_n_135;
  wire fifo_rreq_n_136;
  wire fifo_rreq_n_137;
  wire fifo_rreq_n_138;
  wire fifo_rreq_n_139;
  wire fifo_rreq_n_14;
  wire fifo_rreq_n_140;
  wire fifo_rreq_n_141;
  wire fifo_rreq_n_142;
  wire fifo_rreq_n_143;
  wire fifo_rreq_n_144;
  wire fifo_rreq_n_145;
  wire fifo_rreq_n_146;
  wire fifo_rreq_n_147;
  wire fifo_rreq_n_148;
  wire fifo_rreq_n_149;
  wire fifo_rreq_n_15;
  wire fifo_rreq_n_150;
  wire fifo_rreq_n_151;
  wire fifo_rreq_n_152;
  wire fifo_rreq_n_16;
  wire fifo_rreq_n_17;
  wire fifo_rreq_n_18;
  wire fifo_rreq_n_19;
  wire fifo_rreq_n_20;
  wire fifo_rreq_n_21;
  wire fifo_rreq_n_22;
  wire fifo_rreq_n_23;
  wire fifo_rreq_n_24;
  wire fifo_rreq_n_25;
  wire fifo_rreq_n_26;
  wire fifo_rreq_n_27;
  wire fifo_rreq_n_28;
  wire fifo_rreq_n_29;
  wire fifo_rreq_n_3;
  wire fifo_rreq_n_30;
  wire fifo_rreq_n_31;
  wire fifo_rreq_n_32;
  wire fifo_rreq_n_33;
  wire fifo_rreq_n_34;
  wire fifo_rreq_n_35;
  wire fifo_rreq_n_36;
  wire fifo_rreq_n_37;
  wire fifo_rreq_n_38;
  wire fifo_rreq_n_39;
  wire fifo_rreq_n_4;
  wire fifo_rreq_n_40;
  wire fifo_rreq_n_41;
  wire fifo_rreq_n_42;
  wire fifo_rreq_n_43;
  wire fifo_rreq_n_44;
  wire fifo_rreq_n_45;
  wire fifo_rreq_n_46;
  wire fifo_rreq_n_47;
  wire fifo_rreq_n_48;
  wire fifo_rreq_n_49;
  wire fifo_rreq_n_5;
  wire fifo_rreq_n_50;
  wire fifo_rreq_n_51;
  wire fifo_rreq_n_52;
  wire fifo_rreq_n_53;
  wire fifo_rreq_n_54;
  wire fifo_rreq_n_55;
  wire fifo_rreq_n_56;
  wire fifo_rreq_n_57;
  wire fifo_rreq_n_58;
  wire fifo_rreq_n_59;
  wire fifo_rreq_n_6;
  wire fifo_rreq_n_7;
  wire fifo_rreq_n_76;
  wire fifo_rreq_n_77;
  wire fifo_rreq_n_78;
  wire fifo_rreq_n_79;
  wire fifo_rreq_n_8;
  wire fifo_rreq_n_80;
  wire fifo_rreq_n_81;
  wire fifo_rreq_n_82;
  wire fifo_rreq_n_83;
  wire fifo_rreq_n_84;
  wire fifo_rreq_n_85;
  wire fifo_rreq_n_86;
  wire fifo_rreq_n_87;
  wire fifo_rreq_n_88;
  wire fifo_rreq_n_89;
  wire fifo_rreq_n_9;
  wire fifo_rreq_n_90;
  wire fifo_rreq_n_91;
  wire fifo_rreq_n_92;
  wire fifo_rreq_n_93;
  wire fifo_rreq_n_94;
  wire fifo_rreq_n_95;
  wire fifo_rreq_n_96;
  wire fifo_rreq_n_97;
  wire fifo_rreq_n_98;
  wire fifo_rreq_n_99;
  wire first_sect;
  wire first_sect_carry__0_i_1_n_0;
  wire first_sect_carry__0_i_2_n_0;
  wire first_sect_carry__0_i_3_n_0;
  wire first_sect_carry__0_i_4_n_0;
  wire first_sect_carry__0_n_0;
  wire first_sect_carry__0_n_1;
  wire first_sect_carry__0_n_2;
  wire first_sect_carry__0_n_3;
  wire first_sect_carry__1_i_1_n_0;
  wire first_sect_carry__1_i_2_n_0;
  wire first_sect_carry__1_i_3_n_0;
  wire first_sect_carry__1_i_4_n_0;
  wire first_sect_carry__1_n_0;
  wire first_sect_carry__1_n_1;
  wire first_sect_carry__1_n_2;
  wire first_sect_carry__1_n_3;
  wire first_sect_carry__2_i_1_n_0;
  wire first_sect_carry__2_i_2_n_0;
  wire first_sect_carry__2_i_3_n_0;
  wire first_sect_carry__2_i_4_n_0;
  wire first_sect_carry__2_n_0;
  wire first_sect_carry__2_n_1;
  wire first_sect_carry__2_n_2;
  wire first_sect_carry__2_n_3;
  wire first_sect_carry__3_i_1_n_0;
  wire first_sect_carry__3_i_2_n_0;
  wire first_sect_carry__3_n_3;
  wire first_sect_carry_i_1_n_0;
  wire first_sect_carry_i_2_n_0;
  wire first_sect_carry_i_3_n_0;
  wire first_sect_carry_i_4_n_0;
  wire first_sect_carry_n_0;
  wire first_sect_carry_n_1;
  wire first_sect_carry_n_2;
  wire first_sect_carry_n_3;
  wire full_n_reg;
  wire gmem_ARVALID;
  wire gmem_RREADY;
  wire grp_runLayer_Pipeline_2_fu_201_ap_start_reg;
  wire invalid_len_event;
  wire invalid_len_event0;
  wire invalid_len_event_reg1;
  wire invalid_len_event_reg2;
  wire last_sect;
  wire last_sect_carry__0_i_1_n_0;
  wire last_sect_carry__0_i_2_n_0;
  wire last_sect_carry__0_i_3_n_0;
  wire last_sect_carry__0_i_4_n_0;
  wire last_sect_carry__0_n_0;
  wire last_sect_carry__0_n_1;
  wire last_sect_carry__0_n_2;
  wire last_sect_carry__0_n_3;
  wire last_sect_carry__1_i_1_n_0;
  wire last_sect_carry__1_i_2_n_0;
  wire last_sect_carry__1_i_3_n_0;
  wire last_sect_carry__1_i_4_n_0;
  wire last_sect_carry__1_n_0;
  wire last_sect_carry__1_n_1;
  wire last_sect_carry__1_n_2;
  wire last_sect_carry__1_n_3;
  wire last_sect_carry__2_i_1_n_0;
  wire last_sect_carry__2_i_2_n_0;
  wire last_sect_carry__2_i_3_n_0;
  wire last_sect_carry__2_i_4_n_0;
  wire last_sect_carry__2_n_0;
  wire last_sect_carry__2_n_1;
  wire last_sect_carry__2_n_2;
  wire last_sect_carry__2_n_3;
  wire last_sect_carry__3_n_3;
  wire last_sect_carry_i_1_n_0;
  wire last_sect_carry_i_2_n_0;
  wire last_sect_carry_i_3_n_0;
  wire last_sect_carry_i_4_n_0;
  wire last_sect_carry_n_0;
  wire last_sect_carry_n_1;
  wire last_sect_carry_n_2;
  wire last_sect_carry_n_3;
  wire [61:0]m_axi_gmem_ARADDR;
  wire m_axi_gmem_ARREADY;
  wire [1:0]m_axi_gmem_RRESP;
  wire m_axi_gmem_RVALID;
  wire next_rreq;
  wire [5:0]p_0_in;
  wire [51:0]p_0_in0_in;
  wire [51:0]p_0_in_0;
  wire [7:0]p_0_in__0;
  wire p_21_in;
  wire p_28_in;
  wire push;
  wire rdata_ack_t;
  wire readRequestFIFONotEmpty;
  wire readRequestFIFONotEmptyReg_reg_n_0;
  wire rreq_handling_reg_n_0;
  wire rs2f_rreq_ack;
  wire [79:0]rs2f_rreq_data;
  wire rs2f_rreq_valid;
  wire s_ready_t_reg;
  wire s_ready_t_reg_0;
  wire [63:1]sect_addr;
  wire \sect_addr_buf_reg_n_0_[10] ;
  wire \sect_addr_buf_reg_n_0_[11] ;
  wire \sect_addr_buf_reg_n_0_[12] ;
  wire \sect_addr_buf_reg_n_0_[13] ;
  wire \sect_addr_buf_reg_n_0_[14] ;
  wire \sect_addr_buf_reg_n_0_[15] ;
  wire \sect_addr_buf_reg_n_0_[16] ;
  wire \sect_addr_buf_reg_n_0_[17] ;
  wire \sect_addr_buf_reg_n_0_[18] ;
  wire \sect_addr_buf_reg_n_0_[19] ;
  wire \sect_addr_buf_reg_n_0_[1] ;
  wire \sect_addr_buf_reg_n_0_[20] ;
  wire \sect_addr_buf_reg_n_0_[21] ;
  wire \sect_addr_buf_reg_n_0_[22] ;
  wire \sect_addr_buf_reg_n_0_[23] ;
  wire \sect_addr_buf_reg_n_0_[24] ;
  wire \sect_addr_buf_reg_n_0_[25] ;
  wire \sect_addr_buf_reg_n_0_[26] ;
  wire \sect_addr_buf_reg_n_0_[27] ;
  wire \sect_addr_buf_reg_n_0_[28] ;
  wire \sect_addr_buf_reg_n_0_[29] ;
  wire \sect_addr_buf_reg_n_0_[2] ;
  wire \sect_addr_buf_reg_n_0_[30] ;
  wire \sect_addr_buf_reg_n_0_[31] ;
  wire \sect_addr_buf_reg_n_0_[32] ;
  wire \sect_addr_buf_reg_n_0_[33] ;
  wire \sect_addr_buf_reg_n_0_[34] ;
  wire \sect_addr_buf_reg_n_0_[35] ;
  wire \sect_addr_buf_reg_n_0_[36] ;
  wire \sect_addr_buf_reg_n_0_[37] ;
  wire \sect_addr_buf_reg_n_0_[38] ;
  wire \sect_addr_buf_reg_n_0_[39] ;
  wire \sect_addr_buf_reg_n_0_[3] ;
  wire \sect_addr_buf_reg_n_0_[40] ;
  wire \sect_addr_buf_reg_n_0_[41] ;
  wire \sect_addr_buf_reg_n_0_[42] ;
  wire \sect_addr_buf_reg_n_0_[43] ;
  wire \sect_addr_buf_reg_n_0_[44] ;
  wire \sect_addr_buf_reg_n_0_[45] ;
  wire \sect_addr_buf_reg_n_0_[46] ;
  wire \sect_addr_buf_reg_n_0_[47] ;
  wire \sect_addr_buf_reg_n_0_[48] ;
  wire \sect_addr_buf_reg_n_0_[49] ;
  wire \sect_addr_buf_reg_n_0_[4] ;
  wire \sect_addr_buf_reg_n_0_[50] ;
  wire \sect_addr_buf_reg_n_0_[51] ;
  wire \sect_addr_buf_reg_n_0_[52] ;
  wire \sect_addr_buf_reg_n_0_[53] ;
  wire \sect_addr_buf_reg_n_0_[54] ;
  wire \sect_addr_buf_reg_n_0_[55] ;
  wire \sect_addr_buf_reg_n_0_[56] ;
  wire \sect_addr_buf_reg_n_0_[57] ;
  wire \sect_addr_buf_reg_n_0_[58] ;
  wire \sect_addr_buf_reg_n_0_[59] ;
  wire \sect_addr_buf_reg_n_0_[5] ;
  wire \sect_addr_buf_reg_n_0_[60] ;
  wire \sect_addr_buf_reg_n_0_[61] ;
  wire \sect_addr_buf_reg_n_0_[62] ;
  wire \sect_addr_buf_reg_n_0_[63] ;
  wire \sect_addr_buf_reg_n_0_[6] ;
  wire \sect_addr_buf_reg_n_0_[7] ;
  wire \sect_addr_buf_reg_n_0_[8] ;
  wire \sect_addr_buf_reg_n_0_[9] ;
  wire [51:1]sect_cnt0;
  wire sect_cnt0_carry__0_n_0;
  wire sect_cnt0_carry__0_n_1;
  wire sect_cnt0_carry__0_n_2;
  wire sect_cnt0_carry__0_n_3;
  wire sect_cnt0_carry__10_n_0;
  wire sect_cnt0_carry__10_n_1;
  wire sect_cnt0_carry__10_n_2;
  wire sect_cnt0_carry__10_n_3;
  wire sect_cnt0_carry__11_n_2;
  wire sect_cnt0_carry__11_n_3;
  wire sect_cnt0_carry__1_n_0;
  wire sect_cnt0_carry__1_n_1;
  wire sect_cnt0_carry__1_n_2;
  wire sect_cnt0_carry__1_n_3;
  wire sect_cnt0_carry__2_n_0;
  wire sect_cnt0_carry__2_n_1;
  wire sect_cnt0_carry__2_n_2;
  wire sect_cnt0_carry__2_n_3;
  wire sect_cnt0_carry__3_n_0;
  wire sect_cnt0_carry__3_n_1;
  wire sect_cnt0_carry__3_n_2;
  wire sect_cnt0_carry__3_n_3;
  wire sect_cnt0_carry__4_n_0;
  wire sect_cnt0_carry__4_n_1;
  wire sect_cnt0_carry__4_n_2;
  wire sect_cnt0_carry__4_n_3;
  wire sect_cnt0_carry__5_n_0;
  wire sect_cnt0_carry__5_n_1;
  wire sect_cnt0_carry__5_n_2;
  wire sect_cnt0_carry__5_n_3;
  wire sect_cnt0_carry__6_n_0;
  wire sect_cnt0_carry__6_n_1;
  wire sect_cnt0_carry__6_n_2;
  wire sect_cnt0_carry__6_n_3;
  wire sect_cnt0_carry__7_n_0;
  wire sect_cnt0_carry__7_n_1;
  wire sect_cnt0_carry__7_n_2;
  wire sect_cnt0_carry__7_n_3;
  wire sect_cnt0_carry__8_n_0;
  wire sect_cnt0_carry__8_n_1;
  wire sect_cnt0_carry__8_n_2;
  wire sect_cnt0_carry__8_n_3;
  wire sect_cnt0_carry__9_n_0;
  wire sect_cnt0_carry__9_n_1;
  wire sect_cnt0_carry__9_n_2;
  wire sect_cnt0_carry__9_n_3;
  wire sect_cnt0_carry_n_0;
  wire sect_cnt0_carry_n_1;
  wire sect_cnt0_carry_n_2;
  wire sect_cnt0_carry_n_3;
  wire \sect_cnt_reg_n_0_[0] ;
  wire \sect_cnt_reg_n_0_[10] ;
  wire \sect_cnt_reg_n_0_[11] ;
  wire \sect_cnt_reg_n_0_[12] ;
  wire \sect_cnt_reg_n_0_[13] ;
  wire \sect_cnt_reg_n_0_[14] ;
  wire \sect_cnt_reg_n_0_[15] ;
  wire \sect_cnt_reg_n_0_[16] ;
  wire \sect_cnt_reg_n_0_[17] ;
  wire \sect_cnt_reg_n_0_[18] ;
  wire \sect_cnt_reg_n_0_[19] ;
  wire \sect_cnt_reg_n_0_[1] ;
  wire \sect_cnt_reg_n_0_[20] ;
  wire \sect_cnt_reg_n_0_[21] ;
  wire \sect_cnt_reg_n_0_[22] ;
  wire \sect_cnt_reg_n_0_[23] ;
  wire \sect_cnt_reg_n_0_[24] ;
  wire \sect_cnt_reg_n_0_[25] ;
  wire \sect_cnt_reg_n_0_[26] ;
  wire \sect_cnt_reg_n_0_[27] ;
  wire \sect_cnt_reg_n_0_[28] ;
  wire \sect_cnt_reg_n_0_[29] ;
  wire \sect_cnt_reg_n_0_[2] ;
  wire \sect_cnt_reg_n_0_[30] ;
  wire \sect_cnt_reg_n_0_[31] ;
  wire \sect_cnt_reg_n_0_[32] ;
  wire \sect_cnt_reg_n_0_[33] ;
  wire \sect_cnt_reg_n_0_[34] ;
  wire \sect_cnt_reg_n_0_[35] ;
  wire \sect_cnt_reg_n_0_[36] ;
  wire \sect_cnt_reg_n_0_[37] ;
  wire \sect_cnt_reg_n_0_[38] ;
  wire \sect_cnt_reg_n_0_[39] ;
  wire \sect_cnt_reg_n_0_[3] ;
  wire \sect_cnt_reg_n_0_[40] ;
  wire \sect_cnt_reg_n_0_[41] ;
  wire \sect_cnt_reg_n_0_[42] ;
  wire \sect_cnt_reg_n_0_[43] ;
  wire \sect_cnt_reg_n_0_[44] ;
  wire \sect_cnt_reg_n_0_[45] ;
  wire \sect_cnt_reg_n_0_[46] ;
  wire \sect_cnt_reg_n_0_[47] ;
  wire \sect_cnt_reg_n_0_[48] ;
  wire \sect_cnt_reg_n_0_[49] ;
  wire \sect_cnt_reg_n_0_[4] ;
  wire \sect_cnt_reg_n_0_[50] ;
  wire \sect_cnt_reg_n_0_[51] ;
  wire \sect_cnt_reg_n_0_[5] ;
  wire \sect_cnt_reg_n_0_[6] ;
  wire \sect_cnt_reg_n_0_[7] ;
  wire \sect_cnt_reg_n_0_[8] ;
  wire \sect_cnt_reg_n_0_[9] ;
  wire \sect_end_buf_reg_n_0_[1] ;
  wire \sect_len_buf[0]_i_1_n_0 ;
  wire \sect_len_buf[1]_i_1_n_0 ;
  wire \sect_len_buf[2]_i_1_n_0 ;
  wire \sect_len_buf[3]_i_1_n_0 ;
  wire \sect_len_buf[4]_i_1_n_0 ;
  wire \sect_len_buf[5]_i_1_n_0 ;
  wire \sect_len_buf[6]_i_1_n_0 ;
  wire \sect_len_buf[7]_i_1_n_0 ;
  wire \sect_len_buf[8]_i_1_n_0 ;
  wire \sect_len_buf[9]_i_2_n_0 ;
  wire \sect_len_buf_reg_n_0_[0] ;
  wire \sect_len_buf_reg_n_0_[1] ;
  wire \sect_len_buf_reg_n_0_[2] ;
  wire \sect_len_buf_reg_n_0_[3] ;
  wire \sect_len_buf_reg_n_0_[4] ;
  wire \sect_len_buf_reg_n_0_[5] ;
  wire \sect_len_buf_reg_n_0_[6] ;
  wire \sect_len_buf_reg_n_0_[7] ;
  wire \sect_len_buf_reg_n_0_[8] ;
  wire \sect_len_buf_reg_n_0_[9] ;
  wire \start_addr_buf_reg_n_0_[10] ;
  wire \start_addr_buf_reg_n_0_[11] ;
  wire \start_addr_buf_reg_n_0_[1] ;
  wire \start_addr_buf_reg_n_0_[2] ;
  wire \start_addr_buf_reg_n_0_[3] ;
  wire \start_addr_buf_reg_n_0_[4] ;
  wire \start_addr_buf_reg_n_0_[5] ;
  wire \start_addr_buf_reg_n_0_[6] ;
  wire \start_addr_buf_reg_n_0_[7] ;
  wire \start_addr_buf_reg_n_0_[8] ;
  wire \start_addr_buf_reg_n_0_[9] ;
  wire \start_addr_reg_n_0_[10] ;
  wire \start_addr_reg_n_0_[11] ;
  wire \start_addr_reg_n_0_[12] ;
  wire \start_addr_reg_n_0_[13] ;
  wire \start_addr_reg_n_0_[14] ;
  wire \start_addr_reg_n_0_[15] ;
  wire \start_addr_reg_n_0_[16] ;
  wire \start_addr_reg_n_0_[17] ;
  wire \start_addr_reg_n_0_[18] ;
  wire \start_addr_reg_n_0_[19] ;
  wire \start_addr_reg_n_0_[1] ;
  wire \start_addr_reg_n_0_[20] ;
  wire \start_addr_reg_n_0_[21] ;
  wire \start_addr_reg_n_0_[22] ;
  wire \start_addr_reg_n_0_[23] ;
  wire \start_addr_reg_n_0_[24] ;
  wire \start_addr_reg_n_0_[25] ;
  wire \start_addr_reg_n_0_[26] ;
  wire \start_addr_reg_n_0_[27] ;
  wire \start_addr_reg_n_0_[28] ;
  wire \start_addr_reg_n_0_[29] ;
  wire \start_addr_reg_n_0_[2] ;
  wire \start_addr_reg_n_0_[30] ;
  wire \start_addr_reg_n_0_[31] ;
  wire \start_addr_reg_n_0_[32] ;
  wire \start_addr_reg_n_0_[33] ;
  wire \start_addr_reg_n_0_[34] ;
  wire \start_addr_reg_n_0_[35] ;
  wire \start_addr_reg_n_0_[36] ;
  wire \start_addr_reg_n_0_[37] ;
  wire \start_addr_reg_n_0_[38] ;
  wire \start_addr_reg_n_0_[39] ;
  wire \start_addr_reg_n_0_[3] ;
  wire \start_addr_reg_n_0_[40] ;
  wire \start_addr_reg_n_0_[41] ;
  wire \start_addr_reg_n_0_[42] ;
  wire \start_addr_reg_n_0_[43] ;
  wire \start_addr_reg_n_0_[44] ;
  wire \start_addr_reg_n_0_[45] ;
  wire \start_addr_reg_n_0_[46] ;
  wire \start_addr_reg_n_0_[47] ;
  wire \start_addr_reg_n_0_[48] ;
  wire \start_addr_reg_n_0_[49] ;
  wire \start_addr_reg_n_0_[4] ;
  wire \start_addr_reg_n_0_[50] ;
  wire \start_addr_reg_n_0_[51] ;
  wire \start_addr_reg_n_0_[52] ;
  wire \start_addr_reg_n_0_[53] ;
  wire \start_addr_reg_n_0_[54] ;
  wire \start_addr_reg_n_0_[55] ;
  wire \start_addr_reg_n_0_[56] ;
  wire \start_addr_reg_n_0_[57] ;
  wire \start_addr_reg_n_0_[58] ;
  wire \start_addr_reg_n_0_[59] ;
  wire \start_addr_reg_n_0_[5] ;
  wire \start_addr_reg_n_0_[60] ;
  wire \start_addr_reg_n_0_[61] ;
  wire \start_addr_reg_n_0_[62] ;
  wire \start_addr_reg_n_0_[63] ;
  wire \start_addr_reg_n_0_[6] ;
  wire \start_addr_reg_n_0_[7] ;
  wire \start_addr_reg_n_0_[8] ;
  wire \start_addr_reg_n_0_[9] ;
  wire \state_reg[0] ;
  wire [0:0]NLW_align_len0_carry_O_UNCONNECTED;
  wire [3:1]NLW_align_len0_carry__3_CO_UNCONNECTED;
  wire [3:2]NLW_align_len0_carry__3_O_UNCONNECTED;
  wire [0:0]\NLW_beat_len_buf_reg[2]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_beat_len_buf_reg[9]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_beat_len_buf_reg[9]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_could_multi_bursts.araddr_buf_reg[4]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_could_multi_bursts.araddr_buf_reg[63]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_could_multi_bursts.araddr_buf_reg[63]_i_5_O_UNCONNECTED ;
  wire [3:2]\NLW_end_addr_buf_reg[63]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_end_addr_buf_reg[63]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_first_sect_carry_O_UNCONNECTED;
  wire [3:0]NLW_first_sect_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_first_sect_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_first_sect_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_first_sect_carry__3_CO_UNCONNECTED;
  wire [3:0]NLW_first_sect_carry__3_O_UNCONNECTED;
  wire [3:0]NLW_last_sect_carry_O_UNCONNECTED;
  wire [3:0]NLW_last_sect_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_last_sect_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_last_sect_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_last_sect_carry__3_CO_UNCONNECTED;
  wire [3:0]NLW_last_sect_carry__3_O_UNCONNECTED;
  wire [3:2]NLW_sect_cnt0_carry__11_CO_UNCONNECTED;
  wire [3:3]NLW_sect_cnt0_carry__11_O_UNCONNECTED;

  CARRY4 align_len0_carry
       (.CI(1'b0),
        .CO({align_len0_carry_n_0,align_len0_carry_n_1,align_len0_carry_n_2,align_len0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({fifo_rreq_data[66:64],1'b0}),
        .O({align_len0[3:1],NLW_align_len0_carry_O_UNCONNECTED[0]}),
        .S({fifo_rreq_n_147,fifo_rreq_n_148,fifo_rreq_n_149,1'b1}));
  CARRY4 align_len0_carry__0
       (.CI(align_len0_carry_n_0),
        .CO({align_len0_carry__0_n_0,align_len0_carry__0_n_1,align_len0_carry__0_n_2,align_len0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(fifo_rreq_data[70:67]),
        .O(align_len0[7:4]),
        .S({fifo_rreq_n_143,fifo_rreq_n_144,fifo_rreq_n_145,fifo_rreq_n_146}));
  CARRY4 align_len0_carry__1
       (.CI(align_len0_carry__0_n_0),
        .CO({align_len0_carry__1_n_0,align_len0_carry__1_n_1,align_len0_carry__1_n_2,align_len0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(fifo_rreq_data[74:71]),
        .O(align_len0[11:8]),
        .S({fifo_rreq_n_139,fifo_rreq_n_140,fifo_rreq_n_141,fifo_rreq_n_142}));
  CARRY4 align_len0_carry__2
       (.CI(align_len0_carry__1_n_0),
        .CO({align_len0_carry__2_n_0,align_len0_carry__2_n_1,align_len0_carry__2_n_2,align_len0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(fifo_rreq_data[78:75]),
        .O(align_len0[15:12]),
        .S({fifo_rreq_n_56,fifo_rreq_n_57,fifo_rreq_n_58,fifo_rreq_n_59}));
  CARRY4 align_len0_carry__3
       (.CI(align_len0_carry__2_n_0),
        .CO({NLW_align_len0_carry__3_CO_UNCONNECTED[3:1],align_len0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,fifo_rreq_data[79]}),
        .O({NLW_align_len0_carry__3_O_UNCONNECTED[3:2],align_len0[31],align_len0[16]}),
        .S({1'b0,1'b0,1'b1,fifo_rreq_n_150}));
  FDRE \align_len_reg[10] 
       (.C(ap_clk),
        .CE(align_len),
        .D(align_len0[10]),
        .Q(\align_len_reg_n_0_[10] ),
        .R(SR));
  FDRE \align_len_reg[11] 
       (.C(ap_clk),
        .CE(align_len),
        .D(align_len0[11]),
        .Q(\align_len_reg_n_0_[11] ),
        .R(SR));
  FDRE \align_len_reg[12] 
       (.C(ap_clk),
        .CE(align_len),
        .D(align_len0[12]),
        .Q(\align_len_reg_n_0_[12] ),
        .R(SR));
  FDRE \align_len_reg[13] 
       (.C(ap_clk),
        .CE(align_len),
        .D(align_len0[13]),
        .Q(\align_len_reg_n_0_[13] ),
        .R(SR));
  FDRE \align_len_reg[14] 
       (.C(ap_clk),
        .CE(align_len),
        .D(align_len0[14]),
        .Q(\align_len_reg_n_0_[14] ),
        .R(SR));
  FDRE \align_len_reg[15] 
       (.C(ap_clk),
        .CE(align_len),
        .D(align_len0[15]),
        .Q(\align_len_reg_n_0_[15] ),
        .R(SR));
  FDRE \align_len_reg[16] 
       (.C(ap_clk),
        .CE(align_len),
        .D(align_len0[16]),
        .Q(\align_len_reg_n_0_[16] ),
        .R(SR));
  FDRE \align_len_reg[1] 
       (.C(ap_clk),
        .CE(align_len),
        .D(align_len0[1]),
        .Q(\align_len_reg_n_0_[1] ),
        .R(SR));
  FDRE \align_len_reg[2] 
       (.C(ap_clk),
        .CE(align_len),
        .D(align_len0[2]),
        .Q(\align_len_reg_n_0_[2] ),
        .R(SR));
  FDRE \align_len_reg[31] 
       (.C(ap_clk),
        .CE(align_len),
        .D(align_len0[31]),
        .Q(\align_len_reg_n_0_[31] ),
        .R(SR));
  FDRE \align_len_reg[3] 
       (.C(ap_clk),
        .CE(align_len),
        .D(align_len0[3]),
        .Q(\align_len_reg_n_0_[3] ),
        .R(SR));
  FDRE \align_len_reg[4] 
       (.C(ap_clk),
        .CE(align_len),
        .D(align_len0[4]),
        .Q(\align_len_reg_n_0_[4] ),
        .R(SR));
  FDRE \align_len_reg[5] 
       (.C(ap_clk),
        .CE(align_len),
        .D(align_len0[5]),
        .Q(\align_len_reg_n_0_[5] ),
        .R(SR));
  FDRE \align_len_reg[6] 
       (.C(ap_clk),
        .CE(align_len),
        .D(align_len0[6]),
        .Q(\align_len_reg_n_0_[6] ),
        .R(SR));
  FDRE \align_len_reg[7] 
       (.C(ap_clk),
        .CE(align_len),
        .D(align_len0[7]),
        .Q(\align_len_reg_n_0_[7] ),
        .R(SR));
  FDRE \align_len_reg[8] 
       (.C(ap_clk),
        .CE(align_len),
        .D(align_len0[8]),
        .Q(\align_len_reg_n_0_[8] ),
        .R(SR));
  FDRE \align_len_reg[9] 
       (.C(ap_clk),
        .CE(align_len),
        .D(align_len0[9]),
        .Q(\align_len_reg_n_0_[9] ),
        .R(SR));
  LUT2 #(
    .INIT(4'h6)) 
    \beat_len_buf[2]_i_2 
       (.I0(\align_len_reg_n_0_[1] ),
        .I1(\start_addr_reg_n_0_[1] ),
        .O(\beat_len_buf[2]_i_2_n_0 ));
  FDRE \beat_len_buf_reg[0] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(beat_len_buf1[2]),
        .Q(beat_len_buf[0]),
        .R(SR));
  FDRE \beat_len_buf_reg[1] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(beat_len_buf1[3]),
        .Q(beat_len_buf[1]),
        .R(SR));
  FDRE \beat_len_buf_reg[2] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(beat_len_buf1[4]),
        .Q(beat_len_buf[2]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \beat_len_buf_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\beat_len_buf_reg[2]_i_1_n_0 ,\beat_len_buf_reg[2]_i_1_n_1 ,\beat_len_buf_reg[2]_i_1_n_2 ,\beat_len_buf_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\align_len_reg_n_0_[1] }),
        .O({beat_len_buf1[4:2],\NLW_beat_len_buf_reg[2]_i_1_O_UNCONNECTED [0]}),
        .S({\align_len_reg_n_0_[4] ,\align_len_reg_n_0_[3] ,\align_len_reg_n_0_[2] ,\beat_len_buf[2]_i_2_n_0 }));
  FDRE \beat_len_buf_reg[3] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(beat_len_buf1[5]),
        .Q(beat_len_buf[3]),
        .R(SR));
  FDRE \beat_len_buf_reg[4] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(beat_len_buf1[6]),
        .Q(beat_len_buf[4]),
        .R(SR));
  FDRE \beat_len_buf_reg[5] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(beat_len_buf1[7]),
        .Q(beat_len_buf[5]),
        .R(SR));
  FDRE \beat_len_buf_reg[6] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(beat_len_buf1[8]),
        .Q(beat_len_buf[6]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \beat_len_buf_reg[6]_i_1 
       (.CI(\beat_len_buf_reg[2]_i_1_n_0 ),
        .CO({\beat_len_buf_reg[6]_i_1_n_0 ,\beat_len_buf_reg[6]_i_1_n_1 ,\beat_len_buf_reg[6]_i_1_n_2 ,\beat_len_buf_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(beat_len_buf1[8:5]),
        .S({\align_len_reg_n_0_[8] ,\align_len_reg_n_0_[7] ,\align_len_reg_n_0_[6] ,\align_len_reg_n_0_[5] }));
  FDRE \beat_len_buf_reg[7] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(beat_len_buf1[9]),
        .Q(beat_len_buf[7]),
        .R(SR));
  FDRE \beat_len_buf_reg[8] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(beat_len_buf1[10]),
        .Q(beat_len_buf[8]),
        .R(SR));
  FDRE \beat_len_buf_reg[9] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(beat_len_buf1[11]),
        .Q(beat_len_buf[9]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \beat_len_buf_reg[9]_i_1 
       (.CI(\beat_len_buf_reg[6]_i_1_n_0 ),
        .CO({\NLW_beat_len_buf_reg[9]_i_1_CO_UNCONNECTED [3:2],\beat_len_buf_reg[9]_i_1_n_2 ,\beat_len_buf_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_beat_len_buf_reg[9]_i_1_O_UNCONNECTED [3],beat_len_buf1[11:9]}),
        .S({1'b0,\align_len_reg_n_0_[11] ,\align_len_reg_n_0_[10] ,\align_len_reg_n_0_[9] }));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_gmem_m_axi_buffer__parameterized0 buff_rdata
       (.D(D),
        .Q({data_pack,buff_rdata_n_5,buff_rdata_n_6,buff_rdata_n_7,buff_rdata_n_8,buff_rdata_n_9,buff_rdata_n_10,buff_rdata_n_11,buff_rdata_n_12,buff_rdata_n_13,buff_rdata_n_14,buff_rdata_n_15,buff_rdata_n_16,buff_rdata_n_17,buff_rdata_n_18,buff_rdata_n_19,buff_rdata_n_20,buff_rdata_n_21,buff_rdata_n_22,buff_rdata_n_23,buff_rdata_n_24,buff_rdata_n_25,buff_rdata_n_26,buff_rdata_n_27,buff_rdata_n_28,buff_rdata_n_29,buff_rdata_n_30,buff_rdata_n_31,buff_rdata_n_32,buff_rdata_n_33,buff_rdata_n_34,buff_rdata_n_35,buff_rdata_n_36}),
        .SR(SR),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .beat_valid(beat_valid),
        .\bus_wide_gen.data_buf_reg[16] (\bus_wide_gen.split_cnt_buf_reg_n_0_[0] ),
        .\bus_wide_gen.last_split (\bus_wide_gen.last_split ),
        .\bus_wide_gen.ready_for_data__0 (\bus_wide_gen.ready_for_data__0 ),
        .\bus_wide_gen.split_cnt__2 (\bus_wide_gen.split_cnt__2 ),
        .\dout_buf_reg[34]_0 (buff_rdata_n_3),
        .\dout_buf_reg[34]_1 (\bus_wide_gen.fifo_burst_n_6 ),
        .\dout_buf_reg[34]_2 (\bus_wide_gen.rdata_valid_t_reg_n_0 ),
        .dout_valid_reg_0(buff_rdata_n_37),
        .full_n_reg_0(full_n_reg),
        .m_axi_gmem_RRESP(m_axi_gmem_RRESP),
        .m_axi_gmem_RVALID(m_axi_gmem_RVALID),
        .p_28_in(p_28_in),
        .rdata_ack_t(rdata_ack_t));
  FDRE \bus_wide_gen.data_buf_reg[0] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(\bus_wide_gen.fifo_burst_n_22 ),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \bus_wide_gen.data_buf_reg[10] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(\bus_wide_gen.fifo_burst_n_12 ),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \bus_wide_gen.data_buf_reg[11] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(\bus_wide_gen.fifo_burst_n_11 ),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \bus_wide_gen.data_buf_reg[12] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(\bus_wide_gen.fifo_burst_n_10 ),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \bus_wide_gen.data_buf_reg[13] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(\bus_wide_gen.fifo_burst_n_9 ),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \bus_wide_gen.data_buf_reg[14] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(\bus_wide_gen.fifo_burst_n_8 ),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \bus_wide_gen.data_buf_reg[15] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(\bus_wide_gen.fifo_burst_n_7 ),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \bus_wide_gen.data_buf_reg[16] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(buff_rdata_n_20),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[16] ),
        .R(\bus_wide_gen.fifo_burst_n_37 ));
  FDRE \bus_wide_gen.data_buf_reg[17] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(buff_rdata_n_19),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[17] ),
        .R(\bus_wide_gen.fifo_burst_n_37 ));
  FDRE \bus_wide_gen.data_buf_reg[18] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(buff_rdata_n_18),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[18] ),
        .R(\bus_wide_gen.fifo_burst_n_37 ));
  FDRE \bus_wide_gen.data_buf_reg[19] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(buff_rdata_n_17),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[19] ),
        .R(\bus_wide_gen.fifo_burst_n_37 ));
  FDRE \bus_wide_gen.data_buf_reg[1] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(\bus_wide_gen.fifo_burst_n_21 ),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \bus_wide_gen.data_buf_reg[20] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(buff_rdata_n_16),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[20] ),
        .R(\bus_wide_gen.fifo_burst_n_37 ));
  FDRE \bus_wide_gen.data_buf_reg[21] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(buff_rdata_n_15),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[21] ),
        .R(\bus_wide_gen.fifo_burst_n_37 ));
  FDRE \bus_wide_gen.data_buf_reg[22] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(buff_rdata_n_14),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[22] ),
        .R(\bus_wide_gen.fifo_burst_n_37 ));
  FDRE \bus_wide_gen.data_buf_reg[23] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(buff_rdata_n_13),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[23] ),
        .R(\bus_wide_gen.fifo_burst_n_37 ));
  FDRE \bus_wide_gen.data_buf_reg[24] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(buff_rdata_n_12),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[24] ),
        .R(\bus_wide_gen.fifo_burst_n_37 ));
  FDRE \bus_wide_gen.data_buf_reg[25] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(buff_rdata_n_11),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[25] ),
        .R(\bus_wide_gen.fifo_burst_n_37 ));
  FDRE \bus_wide_gen.data_buf_reg[26] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(buff_rdata_n_10),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[26] ),
        .R(\bus_wide_gen.fifo_burst_n_37 ));
  FDRE \bus_wide_gen.data_buf_reg[27] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(buff_rdata_n_9),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[27] ),
        .R(\bus_wide_gen.fifo_burst_n_37 ));
  FDRE \bus_wide_gen.data_buf_reg[28] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(buff_rdata_n_8),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[28] ),
        .R(\bus_wide_gen.fifo_burst_n_37 ));
  FDRE \bus_wide_gen.data_buf_reg[29] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(buff_rdata_n_7),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[29] ),
        .R(\bus_wide_gen.fifo_burst_n_37 ));
  FDRE \bus_wide_gen.data_buf_reg[2] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(\bus_wide_gen.fifo_burst_n_20 ),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \bus_wide_gen.data_buf_reg[30] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(buff_rdata_n_6),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[30] ),
        .R(\bus_wide_gen.fifo_burst_n_37 ));
  FDRE \bus_wide_gen.data_buf_reg[31] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(buff_rdata_n_5),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[31] ),
        .R(\bus_wide_gen.fifo_burst_n_37 ));
  FDRE \bus_wide_gen.data_buf_reg[3] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(\bus_wide_gen.fifo_burst_n_19 ),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \bus_wide_gen.data_buf_reg[4] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(\bus_wide_gen.fifo_burst_n_18 ),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \bus_wide_gen.data_buf_reg[5] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(\bus_wide_gen.fifo_burst_n_17 ),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \bus_wide_gen.data_buf_reg[6] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(\bus_wide_gen.fifo_burst_n_16 ),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \bus_wide_gen.data_buf_reg[7] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(\bus_wide_gen.fifo_burst_n_15 ),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \bus_wide_gen.data_buf_reg[8] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(\bus_wide_gen.fifo_burst_n_14 ),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \bus_wide_gen.data_buf_reg[9] 
       (.C(ap_clk),
        .CE(buff_rdata_n_37),
        .D(\bus_wide_gen.fifo_burst_n_13 ),
        .Q(\bus_wide_gen.data_buf_reg_n_0_[9] ),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_gmem_m_axi_fifo \bus_wide_gen.fifo_burst 
       (.CO(last_sect),
        .D({\bus_wide_gen.fifo_burst_n_7 ,\bus_wide_gen.fifo_burst_n_8 ,\bus_wide_gen.fifo_burst_n_9 ,\bus_wide_gen.fifo_burst_n_10 ,\bus_wide_gen.fifo_burst_n_11 ,\bus_wide_gen.fifo_burst_n_12 ,\bus_wide_gen.fifo_burst_n_13 ,\bus_wide_gen.fifo_burst_n_14 ,\bus_wide_gen.fifo_burst_n_15 ,\bus_wide_gen.fifo_burst_n_16 ,\bus_wide_gen.fifo_burst_n_17 ,\bus_wide_gen.fifo_burst_n_18 ,\bus_wide_gen.fifo_burst_n_19 ,\bus_wide_gen.fifo_burst_n_20 ,\bus_wide_gen.fifo_burst_n_21 ,\bus_wide_gen.fifo_burst_n_22 }),
        .E(align_len),
        .Q(\bus_wide_gen.len_cnt_reg ),
        .SR(SR),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(\bus_wide_gen.fifo_burst_n_3 ),
        .ap_rst_n_1(\bus_wide_gen.fifo_burst_n_29 ),
        .ap_rst_n_2(\bus_wide_gen.fifo_burst_n_30 ),
        .beat_valid(beat_valid),
        .\bus_wide_gen.data_buf_reg[0] (\bus_wide_gen.data_buf_reg_n_0_[16] ),
        .\bus_wide_gen.data_buf_reg[10] (\bus_wide_gen.data_buf_reg_n_0_[26] ),
        .\bus_wide_gen.data_buf_reg[11] (\bus_wide_gen.data_buf_reg_n_0_[27] ),
        .\bus_wide_gen.data_buf_reg[12] (\bus_wide_gen.data_buf_reg_n_0_[28] ),
        .\bus_wide_gen.data_buf_reg[13] (\bus_wide_gen.data_buf_reg_n_0_[29] ),
        .\bus_wide_gen.data_buf_reg[14] (\bus_wide_gen.data_buf_reg_n_0_[30] ),
        .\bus_wide_gen.data_buf_reg[15] ({buff_rdata_n_5,buff_rdata_n_6,buff_rdata_n_7,buff_rdata_n_8,buff_rdata_n_9,buff_rdata_n_10,buff_rdata_n_11,buff_rdata_n_12,buff_rdata_n_13,buff_rdata_n_14,buff_rdata_n_15,buff_rdata_n_16,buff_rdata_n_17,buff_rdata_n_18,buff_rdata_n_19,buff_rdata_n_20,buff_rdata_n_21,buff_rdata_n_22,buff_rdata_n_23,buff_rdata_n_24,buff_rdata_n_25,buff_rdata_n_26,buff_rdata_n_27,buff_rdata_n_28,buff_rdata_n_29,buff_rdata_n_30,buff_rdata_n_31,buff_rdata_n_32,buff_rdata_n_33,buff_rdata_n_34,buff_rdata_n_35,buff_rdata_n_36}),
        .\bus_wide_gen.data_buf_reg[15]_0 (\bus_wide_gen.data_buf_reg_n_0_[31] ),
        .\bus_wide_gen.data_buf_reg[1] (\bus_wide_gen.data_buf_reg_n_0_[17] ),
        .\bus_wide_gen.data_buf_reg[2] (\bus_wide_gen.data_buf_reg_n_0_[18] ),
        .\bus_wide_gen.data_buf_reg[3] (\bus_wide_gen.data_buf_reg_n_0_[19] ),
        .\bus_wide_gen.data_buf_reg[4] (\bus_wide_gen.data_buf_reg_n_0_[20] ),
        .\bus_wide_gen.data_buf_reg[5] (\bus_wide_gen.data_buf_reg_n_0_[21] ),
        .\bus_wide_gen.data_buf_reg[6] (\bus_wide_gen.data_buf_reg_n_0_[22] ),
        .\bus_wide_gen.data_buf_reg[7] (\bus_wide_gen.data_buf_reg_n_0_[23] ),
        .\bus_wide_gen.data_buf_reg[8] (\bus_wide_gen.data_buf_reg_n_0_[24] ),
        .\bus_wide_gen.data_buf_reg[9] (\bus_wide_gen.data_buf_reg_n_0_[25] ),
        .\bus_wide_gen.last_split (\bus_wide_gen.last_split ),
        .\bus_wide_gen.rdata_valid_t_reg (\bus_wide_gen.fifo_burst_n_28 ),
        .\bus_wide_gen.rdata_valid_t_reg_0 (\bus_wide_gen.rdata_valid_t_reg_n_0 ),
        .\bus_wide_gen.split_cnt__2 (\bus_wide_gen.split_cnt__2 ),
        .\bus_wide_gen.split_cnt_buf_reg[0] (\bus_wide_gen.split_cnt_buf_reg_n_0_[0] ),
        .\could_multi_bursts.ARVALID_Dummy_reg (\bus_wide_gen.fifo_burst_n_1 ),
        .\could_multi_bursts.ARVALID_Dummy_reg_0 (\could_multi_bursts.ARVALID_Dummy_reg_0 ),
        .\could_multi_bursts.loop_cnt_reg[2] (\bus_wide_gen.fifo_burst_n_26 ),
        .\could_multi_bursts.next_loop (\could_multi_bursts.next_loop ),
        .\could_multi_bursts.sect_handling_reg (\bus_wide_gen.fifo_burst_n_36 ),
        .\could_multi_bursts.sect_handling_reg_0 ({\sect_len_buf_reg_n_0_[9] ,\sect_len_buf_reg_n_0_[8] ,\sect_len_buf_reg_n_0_[7] ,\sect_len_buf_reg_n_0_[6] ,\sect_len_buf_reg_n_0_[5] ,\sect_len_buf_reg_n_0_[4] ,\sect_len_buf_reg_n_0_[3] ,\sect_len_buf_reg_n_0_[2] ,\sect_len_buf_reg_n_0_[1] ,\sect_len_buf_reg_n_0_[0] }),
        .\could_multi_bursts.sect_handling_reg_1 (\could_multi_bursts.loop_cnt_reg ),
        .dout_valid_reg(\bus_wide_gen.fifo_burst_n_37 ),
        .\end_addr_buf_reg[1] (\bus_wide_gen.fifo_burst_n_38 ),
        .fifo_burst_ready(fifo_burst_ready),
        .fifo_rctl_ready(fifo_rctl_ready),
        .in(arlen_tmp),
        .invalid_len_event(invalid_len_event),
        .invalid_len_event_reg2(invalid_len_event_reg2),
        .m_axi_gmem_ARREADY(m_axi_gmem_ARREADY),
        .p_21_in(p_21_in),
        .p_28_in(p_28_in),
        .push(push),
        .\q_reg[8]_0 (\bus_wide_gen.fifo_burst_n_6 ),
        .\q_reg[8]_1 (\bus_wide_gen.fifo_burst_n_31 ),
        .\q_reg[9]_0 (\sect_addr_buf_reg_n_0_[1] ),
        .rdata_ack_t(rdata_ack_t),
        .readRequestFIFONotEmpty(readRequestFIFONotEmpty),
        .rreq_handling_reg(\bus_wide_gen.fifo_burst_n_27 ),
        .rreq_handling_reg_0(rreq_handling_reg_n_0),
        .rreq_handling_reg_1(readRequestFIFONotEmptyReg_reg_n_0),
        .\sect_addr_buf_reg[1] (first_sect),
        .\sect_end_buf_reg[1] (\sect_end_buf_reg_n_0_[1] ),
        .\sect_end_buf_reg[1]_0 (\end_addr_buf_reg_n_0_[1] ),
        .\sect_len_buf_reg[3] (\could_multi_bursts.sect_handling_reg_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bus_wide_gen.len_cnt[0]_i_1 
       (.I0(\bus_wide_gen.len_cnt_reg [0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair249" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bus_wide_gen.len_cnt[1]_i_1 
       (.I0(\bus_wide_gen.len_cnt_reg [0]),
        .I1(\bus_wide_gen.len_cnt_reg [1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair249" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bus_wide_gen.len_cnt[2]_i_1 
       (.I0(\bus_wide_gen.len_cnt_reg [0]),
        .I1(\bus_wide_gen.len_cnt_reg [1]),
        .I2(\bus_wide_gen.len_cnt_reg [2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \bus_wide_gen.len_cnt[3]_i_1 
       (.I0(\bus_wide_gen.len_cnt_reg [1]),
        .I1(\bus_wide_gen.len_cnt_reg [0]),
        .I2(\bus_wide_gen.len_cnt_reg [2]),
        .I3(\bus_wide_gen.len_cnt_reg [3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \bus_wide_gen.len_cnt[4]_i_1 
       (.I0(\bus_wide_gen.len_cnt_reg [2]),
        .I1(\bus_wide_gen.len_cnt_reg [0]),
        .I2(\bus_wide_gen.len_cnt_reg [1]),
        .I3(\bus_wide_gen.len_cnt_reg [3]),
        .I4(\bus_wide_gen.len_cnt_reg [4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \bus_wide_gen.len_cnt[5]_i_1 
       (.I0(\bus_wide_gen.len_cnt_reg [3]),
        .I1(\bus_wide_gen.len_cnt_reg [1]),
        .I2(\bus_wide_gen.len_cnt_reg [0]),
        .I3(\bus_wide_gen.len_cnt_reg [2]),
        .I4(\bus_wide_gen.len_cnt_reg [4]),
        .I5(\bus_wide_gen.len_cnt_reg [5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair247" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bus_wide_gen.len_cnt[6]_i_1 
       (.I0(\bus_wide_gen.len_cnt[7]_i_4_n_0 ),
        .I1(\bus_wide_gen.len_cnt_reg [6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair247" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bus_wide_gen.len_cnt[7]_i_3 
       (.I0(\bus_wide_gen.len_cnt[7]_i_4_n_0 ),
        .I1(\bus_wide_gen.len_cnt_reg [6]),
        .I2(\bus_wide_gen.len_cnt_reg [7]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \bus_wide_gen.len_cnt[7]_i_4 
       (.I0(\bus_wide_gen.len_cnt_reg [5]),
        .I1(\bus_wide_gen.len_cnt_reg [3]),
        .I2(\bus_wide_gen.len_cnt_reg [1]),
        .I3(\bus_wide_gen.len_cnt_reg [0]),
        .I4(\bus_wide_gen.len_cnt_reg [2]),
        .I5(\bus_wide_gen.len_cnt_reg [4]),
        .O(\bus_wide_gen.len_cnt[7]_i_4_n_0 ));
  FDRE \bus_wide_gen.len_cnt_reg[0] 
       (.C(ap_clk),
        .CE(\bus_wide_gen.last_split ),
        .D(p_0_in__0[0]),
        .Q(\bus_wide_gen.len_cnt_reg [0]),
        .R(\bus_wide_gen.fifo_burst_n_31 ));
  FDRE \bus_wide_gen.len_cnt_reg[1] 
       (.C(ap_clk),
        .CE(\bus_wide_gen.last_split ),
        .D(p_0_in__0[1]),
        .Q(\bus_wide_gen.len_cnt_reg [1]),
        .R(\bus_wide_gen.fifo_burst_n_31 ));
  FDRE \bus_wide_gen.len_cnt_reg[2] 
       (.C(ap_clk),
        .CE(\bus_wide_gen.last_split ),
        .D(p_0_in__0[2]),
        .Q(\bus_wide_gen.len_cnt_reg [2]),
        .R(\bus_wide_gen.fifo_burst_n_31 ));
  FDRE \bus_wide_gen.len_cnt_reg[3] 
       (.C(ap_clk),
        .CE(\bus_wide_gen.last_split ),
        .D(p_0_in__0[3]),
        .Q(\bus_wide_gen.len_cnt_reg [3]),
        .R(\bus_wide_gen.fifo_burst_n_31 ));
  FDRE \bus_wide_gen.len_cnt_reg[4] 
       (.C(ap_clk),
        .CE(\bus_wide_gen.last_split ),
        .D(p_0_in__0[4]),
        .Q(\bus_wide_gen.len_cnt_reg [4]),
        .R(\bus_wide_gen.fifo_burst_n_31 ));
  FDRE \bus_wide_gen.len_cnt_reg[5] 
       (.C(ap_clk),
        .CE(\bus_wide_gen.last_split ),
        .D(p_0_in__0[5]),
        .Q(\bus_wide_gen.len_cnt_reg [5]),
        .R(\bus_wide_gen.fifo_burst_n_31 ));
  FDRE \bus_wide_gen.len_cnt_reg[6] 
       (.C(ap_clk),
        .CE(\bus_wide_gen.last_split ),
        .D(p_0_in__0[6]),
        .Q(\bus_wide_gen.len_cnt_reg [6]),
        .R(\bus_wide_gen.fifo_burst_n_31 ));
  FDRE \bus_wide_gen.len_cnt_reg[7] 
       (.C(ap_clk),
        .CE(\bus_wide_gen.last_split ),
        .D(p_0_in__0[7]),
        .Q(\bus_wide_gen.len_cnt_reg [7]),
        .R(\bus_wide_gen.fifo_burst_n_31 ));
  FDRE \bus_wide_gen.rdata_valid_t_reg 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\bus_wide_gen.fifo_burst_n_28 ),
        .Q(\bus_wide_gen.rdata_valid_t_reg_n_0 ),
        .R(SR));
  FDRE \bus_wide_gen.split_cnt_buf_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\bus_wide_gen.fifo_burst_n_3 ),
        .Q(\bus_wide_gen.split_cnt_buf_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \could_multi_bursts.ARVALID_Dummy_reg 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\bus_wide_gen.fifo_burst_n_1 ),
        .Q(\could_multi_bursts.ARVALID_Dummy_reg_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair241" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[10]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[10] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[10]),
        .O(araddr_tmp[10]));
  (* SOFT_HLUTNM = "soft_lutpair242" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[11]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[11] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[11]),
        .O(araddr_tmp[11]));
  (* SOFT_HLUTNM = "soft_lutpair242" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[12]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[12] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[12]),
        .O(araddr_tmp[12]));
  (* SOFT_HLUTNM = "soft_lutpair241" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[13]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[13] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[13]),
        .O(araddr_tmp[13]));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[14]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[14] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[14]),
        .O(araddr_tmp[14]));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[15]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[15] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[15]),
        .O(araddr_tmp[15]));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[16]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[16] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[16]),
        .O(araddr_tmp[16]));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[17]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[17] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[17]),
        .O(araddr_tmp[17]));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[18]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[18] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[18]),
        .O(araddr_tmp[18]));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[19]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[19] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[19]),
        .O(araddr_tmp[19]));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[20]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[20] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[20]),
        .O(araddr_tmp[20]));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[21]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[21] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[21]),
        .O(araddr_tmp[21]));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[22]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[22] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[22]),
        .O(araddr_tmp[22]));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[23]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[23] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[23]),
        .O(araddr_tmp[23]));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[24]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[24] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[24]),
        .O(araddr_tmp[24]));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[25]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[25] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[25]),
        .O(araddr_tmp[25]));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[26]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[26] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[26]),
        .O(araddr_tmp[26]));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[27]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[27] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[27]),
        .O(araddr_tmp[27]));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[28]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[28] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[28]),
        .O(araddr_tmp[28]));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[29]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[29] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[29]),
        .O(araddr_tmp[29]));
  (* SOFT_HLUTNM = "soft_lutpair246" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[2]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[2] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[2]),
        .O(araddr_tmp[2]));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[30]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[30] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[30]),
        .O(araddr_tmp[30]));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[31]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[31] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[31]),
        .O(araddr_tmp[31]));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[32]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[32] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[32]),
        .O(araddr_tmp[32]));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[33]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[33] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[33]),
        .O(araddr_tmp[33]));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[34]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[34] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[34]),
        .O(araddr_tmp[34]));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[35]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[35] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[35]),
        .O(araddr_tmp[35]));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[36]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[36] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[36]),
        .O(araddr_tmp[36]));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[37]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[37] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[37]),
        .O(araddr_tmp[37]));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[38]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[38] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[38]),
        .O(araddr_tmp[38]));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[39]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[39] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[39]),
        .O(araddr_tmp[39]));
  (* SOFT_HLUTNM = "soft_lutpair246" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[3]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[3] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[3]),
        .O(araddr_tmp[3]));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[40]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[40] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[40]),
        .O(araddr_tmp[40]));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[41]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[41] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[41]),
        .O(araddr_tmp[41]));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[42]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[42] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[42]),
        .O(araddr_tmp[42]));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[43]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[43] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[43]),
        .O(araddr_tmp[43]));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[44]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[44] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[44]),
        .O(araddr_tmp[44]));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[45]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[45] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[45]),
        .O(araddr_tmp[45]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[46]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[46] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[46]),
        .O(araddr_tmp[46]));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[47]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[47] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[47]),
        .O(araddr_tmp[47]));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[48]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[48] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[48]),
        .O(araddr_tmp[48]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[49]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[49] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[49]),
        .O(araddr_tmp[49]));
  (* SOFT_HLUTNM = "soft_lutpair245" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[4]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[4] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[4]),
        .O(araddr_tmp[4]));
  LUT4 #(
    .INIT(16'h9666)) 
    \could_multi_bursts.araddr_buf[4]_i_3 
       (.I0(m_axi_gmem_ARADDR[2]),
        .I1(\could_multi_bursts.arlen_buf_reg[3]_0 [2]),
        .I2(\could_multi_bursts.arlen_buf_reg[3]_0 [1]),
        .I3(\could_multi_bursts.arlen_buf_reg[3]_0 [0]),
        .O(\could_multi_bursts.araddr_buf[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \could_multi_bursts.araddr_buf[4]_i_4 
       (.I0(m_axi_gmem_ARADDR[1]),
        .I1(\could_multi_bursts.arlen_buf_reg[3]_0 [1]),
        .I2(\could_multi_bursts.arlen_buf_reg[3]_0 [0]),
        .O(\could_multi_bursts.araddr_buf[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \could_multi_bursts.araddr_buf[4]_i_5 
       (.I0(m_axi_gmem_ARADDR[0]),
        .I1(\could_multi_bursts.arlen_buf_reg[3]_0 [0]),
        .O(\could_multi_bursts.araddr_buf[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[50]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[50] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[50]),
        .O(araddr_tmp[50]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[51]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[51] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[51]),
        .O(araddr_tmp[51]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[52]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[52] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[52]),
        .O(araddr_tmp[52]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[53]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[53] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[53]),
        .O(araddr_tmp[53]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[54]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[54] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[54]),
        .O(araddr_tmp[54]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[55]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[55] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[55]),
        .O(araddr_tmp[55]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[56]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[56] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[56]),
        .O(araddr_tmp[56]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[57]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[57] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[57]),
        .O(araddr_tmp[57]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[58]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[58] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[58]),
        .O(araddr_tmp[58]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[59]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[59] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[59]),
        .O(araddr_tmp[59]));
  (* SOFT_HLUTNM = "soft_lutpair245" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[5]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[5] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[5]),
        .O(araddr_tmp[5]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[60]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[60] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[60]),
        .O(araddr_tmp[60]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[61]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[61] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[61]),
        .O(araddr_tmp[61]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[62]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[62] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[62]),
        .O(araddr_tmp[62]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[63]_i_3 
       (.I0(\sect_addr_buf_reg_n_0_[63] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[63]),
        .O(araddr_tmp[63]));
  (* SOFT_HLUTNM = "soft_lutpair243" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[6]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[6] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[6]),
        .O(araddr_tmp[6]));
  (* SOFT_HLUTNM = "soft_lutpair244" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[7]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[7] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[7]),
        .O(araddr_tmp[7]));
  (* SOFT_HLUTNM = "soft_lutpair244" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[8]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[8] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[8]),
        .O(araddr_tmp[8]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \could_multi_bursts.araddr_buf[8]_i_3 
       (.I0(m_axi_gmem_ARADDR[4]),
        .I1(\could_multi_bursts.arlen_buf_reg[3]_0 [2]),
        .I2(\could_multi_bursts.arlen_buf_reg[3]_0 [0]),
        .I3(\could_multi_bursts.arlen_buf_reg[3]_0 [1]),
        .I4(\could_multi_bursts.arlen_buf_reg[3]_0 [3]),
        .O(\could_multi_bursts.araddr_buf[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h96666666)) 
    \could_multi_bursts.araddr_buf[8]_i_4 
       (.I0(m_axi_gmem_ARADDR[3]),
        .I1(\could_multi_bursts.arlen_buf_reg[3]_0 [3]),
        .I2(\could_multi_bursts.arlen_buf_reg[3]_0 [2]),
        .I3(\could_multi_bursts.arlen_buf_reg[3]_0 [0]),
        .I4(\could_multi_bursts.arlen_buf_reg[3]_0 [1]),
        .O(\could_multi_bursts.araddr_buf[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair243" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \could_multi_bursts.araddr_buf[9]_i_1 
       (.I0(\sect_addr_buf_reg_n_0_[9] ),
        .I1(\bus_wide_gen.fifo_burst_n_26 ),
        .I2(data1[9]),
        .O(araddr_tmp[9]));
  FDRE \could_multi_bursts.araddr_buf_reg[10] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[10]),
        .Q(m_axi_gmem_ARADDR[8]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[11] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[11]),
        .Q(m_axi_gmem_ARADDR[9]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[12] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[12]),
        .Q(m_axi_gmem_ARADDR[10]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \could_multi_bursts.araddr_buf_reg[12]_i_2 
       (.CI(\could_multi_bursts.araddr_buf_reg[8]_i_2_n_0 ),
        .CO({\could_multi_bursts.araddr_buf_reg[12]_i_2_n_0 ,\could_multi_bursts.araddr_buf_reg[12]_i_2_n_1 ,\could_multi_bursts.araddr_buf_reg[12]_i_2_n_2 ,\could_multi_bursts.araddr_buf_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,m_axi_gmem_ARADDR[8:7]}),
        .O(data1[12:9]),
        .S(m_axi_gmem_ARADDR[10:7]));
  FDRE \could_multi_bursts.araddr_buf_reg[13] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[13]),
        .Q(m_axi_gmem_ARADDR[11]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[14] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[14]),
        .Q(m_axi_gmem_ARADDR[12]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[15] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[15]),
        .Q(m_axi_gmem_ARADDR[13]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[16] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[16]),
        .Q(m_axi_gmem_ARADDR[14]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \could_multi_bursts.araddr_buf_reg[16]_i_2 
       (.CI(\could_multi_bursts.araddr_buf_reg[12]_i_2_n_0 ),
        .CO({\could_multi_bursts.araddr_buf_reg[16]_i_2_n_0 ,\could_multi_bursts.araddr_buf_reg[16]_i_2_n_1 ,\could_multi_bursts.araddr_buf_reg[16]_i_2_n_2 ,\could_multi_bursts.araddr_buf_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data1[16:13]),
        .S(m_axi_gmem_ARADDR[14:11]));
  FDRE \could_multi_bursts.araddr_buf_reg[17] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[17]),
        .Q(m_axi_gmem_ARADDR[15]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[18] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[18]),
        .Q(m_axi_gmem_ARADDR[16]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[19] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[19]),
        .Q(m_axi_gmem_ARADDR[17]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[20] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[20]),
        .Q(m_axi_gmem_ARADDR[18]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \could_multi_bursts.araddr_buf_reg[20]_i_2 
       (.CI(\could_multi_bursts.araddr_buf_reg[16]_i_2_n_0 ),
        .CO({\could_multi_bursts.araddr_buf_reg[20]_i_2_n_0 ,\could_multi_bursts.araddr_buf_reg[20]_i_2_n_1 ,\could_multi_bursts.araddr_buf_reg[20]_i_2_n_2 ,\could_multi_bursts.araddr_buf_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data1[20:17]),
        .S(m_axi_gmem_ARADDR[18:15]));
  FDRE \could_multi_bursts.araddr_buf_reg[21] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[21]),
        .Q(m_axi_gmem_ARADDR[19]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[22] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[22]),
        .Q(m_axi_gmem_ARADDR[20]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[23] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[23]),
        .Q(m_axi_gmem_ARADDR[21]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[24] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[24]),
        .Q(m_axi_gmem_ARADDR[22]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \could_multi_bursts.araddr_buf_reg[24]_i_2 
       (.CI(\could_multi_bursts.araddr_buf_reg[20]_i_2_n_0 ),
        .CO({\could_multi_bursts.araddr_buf_reg[24]_i_2_n_0 ,\could_multi_bursts.araddr_buf_reg[24]_i_2_n_1 ,\could_multi_bursts.araddr_buf_reg[24]_i_2_n_2 ,\could_multi_bursts.araddr_buf_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data1[24:21]),
        .S(m_axi_gmem_ARADDR[22:19]));
  FDRE \could_multi_bursts.araddr_buf_reg[25] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[25]),
        .Q(m_axi_gmem_ARADDR[23]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[26] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[26]),
        .Q(m_axi_gmem_ARADDR[24]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[27] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[27]),
        .Q(m_axi_gmem_ARADDR[25]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[28] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[28]),
        .Q(m_axi_gmem_ARADDR[26]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \could_multi_bursts.araddr_buf_reg[28]_i_2 
       (.CI(\could_multi_bursts.araddr_buf_reg[24]_i_2_n_0 ),
        .CO({\could_multi_bursts.araddr_buf_reg[28]_i_2_n_0 ,\could_multi_bursts.araddr_buf_reg[28]_i_2_n_1 ,\could_multi_bursts.araddr_buf_reg[28]_i_2_n_2 ,\could_multi_bursts.araddr_buf_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data1[28:25]),
        .S(m_axi_gmem_ARADDR[26:23]));
  FDRE \could_multi_bursts.araddr_buf_reg[29] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[29]),
        .Q(m_axi_gmem_ARADDR[27]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[2] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[2]),
        .Q(m_axi_gmem_ARADDR[0]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[30] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[30]),
        .Q(m_axi_gmem_ARADDR[28]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[31] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[31]),
        .Q(m_axi_gmem_ARADDR[29]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[32] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[32]),
        .Q(m_axi_gmem_ARADDR[30]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \could_multi_bursts.araddr_buf_reg[32]_i_2 
       (.CI(\could_multi_bursts.araddr_buf_reg[28]_i_2_n_0 ),
        .CO({\could_multi_bursts.araddr_buf_reg[32]_i_2_n_0 ,\could_multi_bursts.araddr_buf_reg[32]_i_2_n_1 ,\could_multi_bursts.araddr_buf_reg[32]_i_2_n_2 ,\could_multi_bursts.araddr_buf_reg[32]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data1[32:29]),
        .S(m_axi_gmem_ARADDR[30:27]));
  FDRE \could_multi_bursts.araddr_buf_reg[33] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[33]),
        .Q(m_axi_gmem_ARADDR[31]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[34] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[34]),
        .Q(m_axi_gmem_ARADDR[32]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[35] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[35]),
        .Q(m_axi_gmem_ARADDR[33]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[36] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[36]),
        .Q(m_axi_gmem_ARADDR[34]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \could_multi_bursts.araddr_buf_reg[36]_i_2 
       (.CI(\could_multi_bursts.araddr_buf_reg[32]_i_2_n_0 ),
        .CO({\could_multi_bursts.araddr_buf_reg[36]_i_2_n_0 ,\could_multi_bursts.araddr_buf_reg[36]_i_2_n_1 ,\could_multi_bursts.araddr_buf_reg[36]_i_2_n_2 ,\could_multi_bursts.araddr_buf_reg[36]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data1[36:33]),
        .S(m_axi_gmem_ARADDR[34:31]));
  FDRE \could_multi_bursts.araddr_buf_reg[37] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[37]),
        .Q(m_axi_gmem_ARADDR[35]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[38] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[38]),
        .Q(m_axi_gmem_ARADDR[36]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[39] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[39]),
        .Q(m_axi_gmem_ARADDR[37]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[3] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[3]),
        .Q(m_axi_gmem_ARADDR[1]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[40] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[40]),
        .Q(m_axi_gmem_ARADDR[38]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \could_multi_bursts.araddr_buf_reg[40]_i_2 
       (.CI(\could_multi_bursts.araddr_buf_reg[36]_i_2_n_0 ),
        .CO({\could_multi_bursts.araddr_buf_reg[40]_i_2_n_0 ,\could_multi_bursts.araddr_buf_reg[40]_i_2_n_1 ,\could_multi_bursts.araddr_buf_reg[40]_i_2_n_2 ,\could_multi_bursts.araddr_buf_reg[40]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data1[40:37]),
        .S(m_axi_gmem_ARADDR[38:35]));
  FDRE \could_multi_bursts.araddr_buf_reg[41] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[41]),
        .Q(m_axi_gmem_ARADDR[39]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[42] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[42]),
        .Q(m_axi_gmem_ARADDR[40]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[43] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[43]),
        .Q(m_axi_gmem_ARADDR[41]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[44] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[44]),
        .Q(m_axi_gmem_ARADDR[42]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \could_multi_bursts.araddr_buf_reg[44]_i_2 
       (.CI(\could_multi_bursts.araddr_buf_reg[40]_i_2_n_0 ),
        .CO({\could_multi_bursts.araddr_buf_reg[44]_i_2_n_0 ,\could_multi_bursts.araddr_buf_reg[44]_i_2_n_1 ,\could_multi_bursts.araddr_buf_reg[44]_i_2_n_2 ,\could_multi_bursts.araddr_buf_reg[44]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data1[44:41]),
        .S(m_axi_gmem_ARADDR[42:39]));
  FDRE \could_multi_bursts.araddr_buf_reg[45] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[45]),
        .Q(m_axi_gmem_ARADDR[43]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[46] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[46]),
        .Q(m_axi_gmem_ARADDR[44]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[47] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[47]),
        .Q(m_axi_gmem_ARADDR[45]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[48] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[48]),
        .Q(m_axi_gmem_ARADDR[46]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \could_multi_bursts.araddr_buf_reg[48]_i_2 
       (.CI(\could_multi_bursts.araddr_buf_reg[44]_i_2_n_0 ),
        .CO({\could_multi_bursts.araddr_buf_reg[48]_i_2_n_0 ,\could_multi_bursts.araddr_buf_reg[48]_i_2_n_1 ,\could_multi_bursts.araddr_buf_reg[48]_i_2_n_2 ,\could_multi_bursts.araddr_buf_reg[48]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data1[48:45]),
        .S(m_axi_gmem_ARADDR[46:43]));
  FDRE \could_multi_bursts.araddr_buf_reg[49] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[49]),
        .Q(m_axi_gmem_ARADDR[47]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[4] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[4]),
        .Q(m_axi_gmem_ARADDR[2]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \could_multi_bursts.araddr_buf_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\could_multi_bursts.araddr_buf_reg[4]_i_2_n_0 ,\could_multi_bursts.araddr_buf_reg[4]_i_2_n_1 ,\could_multi_bursts.araddr_buf_reg[4]_i_2_n_2 ,\could_multi_bursts.araddr_buf_reg[4]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({m_axi_gmem_ARADDR[2:0],1'b0}),
        .O({data1[4:2],\NLW_could_multi_bursts.araddr_buf_reg[4]_i_2_O_UNCONNECTED [0]}),
        .S({\could_multi_bursts.araddr_buf[4]_i_3_n_0 ,\could_multi_bursts.araddr_buf[4]_i_4_n_0 ,\could_multi_bursts.araddr_buf[4]_i_5_n_0 ,1'b0}));
  FDRE \could_multi_bursts.araddr_buf_reg[50] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[50]),
        .Q(m_axi_gmem_ARADDR[48]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[51] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[51]),
        .Q(m_axi_gmem_ARADDR[49]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[52] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[52]),
        .Q(m_axi_gmem_ARADDR[50]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \could_multi_bursts.araddr_buf_reg[52]_i_2 
       (.CI(\could_multi_bursts.araddr_buf_reg[48]_i_2_n_0 ),
        .CO({\could_multi_bursts.araddr_buf_reg[52]_i_2_n_0 ,\could_multi_bursts.araddr_buf_reg[52]_i_2_n_1 ,\could_multi_bursts.araddr_buf_reg[52]_i_2_n_2 ,\could_multi_bursts.araddr_buf_reg[52]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data1[52:49]),
        .S(m_axi_gmem_ARADDR[50:47]));
  FDRE \could_multi_bursts.araddr_buf_reg[53] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[53]),
        .Q(m_axi_gmem_ARADDR[51]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[54] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[54]),
        .Q(m_axi_gmem_ARADDR[52]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[55] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[55]),
        .Q(m_axi_gmem_ARADDR[53]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[56] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[56]),
        .Q(m_axi_gmem_ARADDR[54]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \could_multi_bursts.araddr_buf_reg[56]_i_2 
       (.CI(\could_multi_bursts.araddr_buf_reg[52]_i_2_n_0 ),
        .CO({\could_multi_bursts.araddr_buf_reg[56]_i_2_n_0 ,\could_multi_bursts.araddr_buf_reg[56]_i_2_n_1 ,\could_multi_bursts.araddr_buf_reg[56]_i_2_n_2 ,\could_multi_bursts.araddr_buf_reg[56]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data1[56:53]),
        .S(m_axi_gmem_ARADDR[54:51]));
  FDRE \could_multi_bursts.araddr_buf_reg[57] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[57]),
        .Q(m_axi_gmem_ARADDR[55]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[58] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[58]),
        .Q(m_axi_gmem_ARADDR[56]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[59] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[59]),
        .Q(m_axi_gmem_ARADDR[57]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[5] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[5]),
        .Q(m_axi_gmem_ARADDR[3]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[60] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[60]),
        .Q(m_axi_gmem_ARADDR[58]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \could_multi_bursts.araddr_buf_reg[60]_i_2 
       (.CI(\could_multi_bursts.araddr_buf_reg[56]_i_2_n_0 ),
        .CO({\could_multi_bursts.araddr_buf_reg[60]_i_2_n_0 ,\could_multi_bursts.araddr_buf_reg[60]_i_2_n_1 ,\could_multi_bursts.araddr_buf_reg[60]_i_2_n_2 ,\could_multi_bursts.araddr_buf_reg[60]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data1[60:57]),
        .S(m_axi_gmem_ARADDR[58:55]));
  FDRE \could_multi_bursts.araddr_buf_reg[61] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[61]),
        .Q(m_axi_gmem_ARADDR[59]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[62] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[62]),
        .Q(m_axi_gmem_ARADDR[60]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[63] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[63]),
        .Q(m_axi_gmem_ARADDR[61]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \could_multi_bursts.araddr_buf_reg[63]_i_5 
       (.CI(\could_multi_bursts.araddr_buf_reg[60]_i_2_n_0 ),
        .CO({\NLW_could_multi_bursts.araddr_buf_reg[63]_i_5_CO_UNCONNECTED [3:2],\could_multi_bursts.araddr_buf_reg[63]_i_5_n_2 ,\could_multi_bursts.araddr_buf_reg[63]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_could_multi_bursts.araddr_buf_reg[63]_i_5_O_UNCONNECTED [3],data1[63:61]}),
        .S({1'b0,m_axi_gmem_ARADDR[61:59]}));
  FDRE \could_multi_bursts.araddr_buf_reg[6] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[6]),
        .Q(m_axi_gmem_ARADDR[4]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[7] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[7]),
        .Q(m_axi_gmem_ARADDR[5]),
        .R(SR));
  FDRE \could_multi_bursts.araddr_buf_reg[8] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[8]),
        .Q(m_axi_gmem_ARADDR[6]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \could_multi_bursts.araddr_buf_reg[8]_i_2 
       (.CI(\could_multi_bursts.araddr_buf_reg[4]_i_2_n_0 ),
        .CO({\could_multi_bursts.araddr_buf_reg[8]_i_2_n_0 ,\could_multi_bursts.araddr_buf_reg[8]_i_2_n_1 ,\could_multi_bursts.araddr_buf_reg[8]_i_2_n_2 ,\could_multi_bursts.araddr_buf_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(m_axi_gmem_ARADDR[6:3]),
        .O(data1[8:5]),
        .S({m_axi_gmem_ARADDR[6:5],\could_multi_bursts.araddr_buf[8]_i_3_n_0 ,\could_multi_bursts.araddr_buf[8]_i_4_n_0 }));
  FDRE \could_multi_bursts.araddr_buf_reg[9] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(araddr_tmp[9]),
        .Q(m_axi_gmem_ARADDR[7]),
        .R(SR));
  FDRE \could_multi_bursts.arlen_buf_reg[0] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(arlen_tmp[0]),
        .Q(\could_multi_bursts.arlen_buf_reg[3]_0 [0]),
        .R(SR));
  FDRE \could_multi_bursts.arlen_buf_reg[1] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(arlen_tmp[1]),
        .Q(\could_multi_bursts.arlen_buf_reg[3]_0 [1]),
        .R(SR));
  FDRE \could_multi_bursts.arlen_buf_reg[2] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(arlen_tmp[2]),
        .Q(\could_multi_bursts.arlen_buf_reg[3]_0 [2]),
        .R(SR));
  FDRE \could_multi_bursts.arlen_buf_reg[3] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(arlen_tmp[3]),
        .Q(\could_multi_bursts.arlen_buf_reg[3]_0 [3]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \could_multi_bursts.loop_cnt[0]_i_1 
       (.I0(\could_multi_bursts.loop_cnt_reg [0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair248" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \could_multi_bursts.loop_cnt[1]_i_1 
       (.I0(\could_multi_bursts.loop_cnt_reg [0]),
        .I1(\could_multi_bursts.loop_cnt_reg [1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair248" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \could_multi_bursts.loop_cnt[2]_i_1 
       (.I0(\could_multi_bursts.loop_cnt_reg [0]),
        .I1(\could_multi_bursts.loop_cnt_reg [1]),
        .I2(\could_multi_bursts.loop_cnt_reg [2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \could_multi_bursts.loop_cnt[3]_i_1 
       (.I0(\could_multi_bursts.loop_cnt_reg [1]),
        .I1(\could_multi_bursts.loop_cnt_reg [0]),
        .I2(\could_multi_bursts.loop_cnt_reg [2]),
        .I3(\could_multi_bursts.loop_cnt_reg [3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \could_multi_bursts.loop_cnt[4]_i_1 
       (.I0(\could_multi_bursts.loop_cnt_reg [2]),
        .I1(\could_multi_bursts.loop_cnt_reg [0]),
        .I2(\could_multi_bursts.loop_cnt_reg [1]),
        .I3(\could_multi_bursts.loop_cnt_reg [3]),
        .I4(\could_multi_bursts.loop_cnt_reg [4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \could_multi_bursts.loop_cnt[5]_i_2 
       (.I0(\could_multi_bursts.loop_cnt_reg [3]),
        .I1(\could_multi_bursts.loop_cnt_reg [1]),
        .I2(\could_multi_bursts.loop_cnt_reg [0]),
        .I3(\could_multi_bursts.loop_cnt_reg [2]),
        .I4(\could_multi_bursts.loop_cnt_reg [4]),
        .I5(\could_multi_bursts.loop_cnt_reg [5]),
        .O(p_0_in[5]));
  FDRE \could_multi_bursts.loop_cnt_reg[0] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(p_0_in[0]),
        .Q(\could_multi_bursts.loop_cnt_reg [0]),
        .R(\bus_wide_gen.fifo_burst_n_29 ));
  FDRE \could_multi_bursts.loop_cnt_reg[1] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(p_0_in[1]),
        .Q(\could_multi_bursts.loop_cnt_reg [1]),
        .R(\bus_wide_gen.fifo_burst_n_29 ));
  FDRE \could_multi_bursts.loop_cnt_reg[2] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(p_0_in[2]),
        .Q(\could_multi_bursts.loop_cnt_reg [2]),
        .R(\bus_wide_gen.fifo_burst_n_29 ));
  FDRE \could_multi_bursts.loop_cnt_reg[3] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(p_0_in[3]),
        .Q(\could_multi_bursts.loop_cnt_reg [3]),
        .R(\bus_wide_gen.fifo_burst_n_29 ));
  FDRE \could_multi_bursts.loop_cnt_reg[4] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(p_0_in[4]),
        .Q(\could_multi_bursts.loop_cnt_reg [4]),
        .R(\bus_wide_gen.fifo_burst_n_29 ));
  FDRE \could_multi_bursts.loop_cnt_reg[5] 
       (.C(ap_clk),
        .CE(\could_multi_bursts.next_loop ),
        .D(p_0_in[5]),
        .Q(\could_multi_bursts.loop_cnt_reg [5]),
        .R(\bus_wide_gen.fifo_burst_n_29 ));
  FDRE \could_multi_bursts.sect_handling_reg 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\bus_wide_gen.fifo_burst_n_36 ),
        .Q(\could_multi_bursts.sect_handling_reg_n_0 ),
        .R(SR));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[12]_i_2 
       (.I0(\start_addr_reg_n_0_[12] ),
        .I1(\align_len_reg_n_0_[12] ),
        .O(\end_addr_buf[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[12]_i_3 
       (.I0(\start_addr_reg_n_0_[11] ),
        .I1(\align_len_reg_n_0_[11] ),
        .O(\end_addr_buf[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[12]_i_4 
       (.I0(\start_addr_reg_n_0_[10] ),
        .I1(\align_len_reg_n_0_[10] ),
        .O(\end_addr_buf[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[12]_i_5 
       (.I0(\start_addr_reg_n_0_[9] ),
        .I1(\align_len_reg_n_0_[9] ),
        .O(\end_addr_buf[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[16]_i_2 
       (.I0(\start_addr_reg_n_0_[16] ),
        .I1(\align_len_reg_n_0_[16] ),
        .O(\end_addr_buf[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[16]_i_3 
       (.I0(\start_addr_reg_n_0_[15] ),
        .I1(\align_len_reg_n_0_[15] ),
        .O(\end_addr_buf[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[16]_i_4 
       (.I0(\start_addr_reg_n_0_[14] ),
        .I1(\align_len_reg_n_0_[14] ),
        .O(\end_addr_buf[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[16]_i_5 
       (.I0(\start_addr_reg_n_0_[13] ),
        .I1(\align_len_reg_n_0_[13] ),
        .O(\end_addr_buf[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[20]_i_2 
       (.I0(\start_addr_reg_n_0_[20] ),
        .I1(\align_len_reg_n_0_[31] ),
        .O(\end_addr_buf[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[20]_i_3 
       (.I0(\start_addr_reg_n_0_[19] ),
        .I1(\align_len_reg_n_0_[31] ),
        .O(\end_addr_buf[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[20]_i_4 
       (.I0(\start_addr_reg_n_0_[18] ),
        .I1(\align_len_reg_n_0_[31] ),
        .O(\end_addr_buf[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[20]_i_5 
       (.I0(\start_addr_reg_n_0_[17] ),
        .I1(\align_len_reg_n_0_[31] ),
        .O(\end_addr_buf[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[24]_i_2 
       (.I0(\start_addr_reg_n_0_[24] ),
        .I1(\align_len_reg_n_0_[31] ),
        .O(\end_addr_buf[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[24]_i_3 
       (.I0(\start_addr_reg_n_0_[23] ),
        .I1(\align_len_reg_n_0_[31] ),
        .O(\end_addr_buf[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[24]_i_4 
       (.I0(\start_addr_reg_n_0_[22] ),
        .I1(\align_len_reg_n_0_[31] ),
        .O(\end_addr_buf[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[24]_i_5 
       (.I0(\start_addr_reg_n_0_[21] ),
        .I1(\align_len_reg_n_0_[31] ),
        .O(\end_addr_buf[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[28]_i_2 
       (.I0(\start_addr_reg_n_0_[28] ),
        .I1(\align_len_reg_n_0_[31] ),
        .O(\end_addr_buf[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[28]_i_3 
       (.I0(\start_addr_reg_n_0_[27] ),
        .I1(\align_len_reg_n_0_[31] ),
        .O(\end_addr_buf[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[28]_i_4 
       (.I0(\start_addr_reg_n_0_[26] ),
        .I1(\align_len_reg_n_0_[31] ),
        .O(\end_addr_buf[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[28]_i_5 
       (.I0(\start_addr_reg_n_0_[25] ),
        .I1(\align_len_reg_n_0_[31] ),
        .O(\end_addr_buf[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[32]_i_2 
       (.I0(\start_addr_reg_n_0_[31] ),
        .I1(\align_len_reg_n_0_[31] ),
        .O(\end_addr_buf[32]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[32]_i_3 
       (.I0(\start_addr_reg_n_0_[30] ),
        .I1(\align_len_reg_n_0_[31] ),
        .O(\end_addr_buf[32]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[32]_i_4 
       (.I0(\start_addr_reg_n_0_[29] ),
        .I1(\align_len_reg_n_0_[31] ),
        .O(\end_addr_buf[32]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[4]_i_2 
       (.I0(\start_addr_reg_n_0_[4] ),
        .I1(\align_len_reg_n_0_[4] ),
        .O(\end_addr_buf[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[4]_i_3 
       (.I0(\start_addr_reg_n_0_[3] ),
        .I1(\align_len_reg_n_0_[3] ),
        .O(\end_addr_buf[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[4]_i_4 
       (.I0(\start_addr_reg_n_0_[2] ),
        .I1(\align_len_reg_n_0_[2] ),
        .O(\end_addr_buf[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[4]_i_5 
       (.I0(\start_addr_reg_n_0_[1] ),
        .I1(\align_len_reg_n_0_[1] ),
        .O(\end_addr_buf[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[8]_i_2 
       (.I0(\start_addr_reg_n_0_[8] ),
        .I1(\align_len_reg_n_0_[8] ),
        .O(\end_addr_buf[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[8]_i_3 
       (.I0(\start_addr_reg_n_0_[7] ),
        .I1(\align_len_reg_n_0_[7] ),
        .O(\end_addr_buf[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[8]_i_4 
       (.I0(\start_addr_reg_n_0_[6] ),
        .I1(\align_len_reg_n_0_[6] ),
        .O(\end_addr_buf[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \end_addr_buf[8]_i_5 
       (.I0(\start_addr_reg_n_0_[5] ),
        .I1(\align_len_reg_n_0_[5] ),
        .O(\end_addr_buf[8]_i_5_n_0 ));
  FDRE \end_addr_buf_reg[10] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[10]),
        .Q(\end_addr_buf_reg_n_0_[10] ),
        .R(SR));
  FDRE \end_addr_buf_reg[11] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[11]),
        .Q(\end_addr_buf_reg_n_0_[11] ),
        .R(SR));
  FDRE \end_addr_buf_reg[12] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[12]),
        .Q(p_0_in0_in[0]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \end_addr_buf_reg[12]_i_1 
       (.CI(\end_addr_buf_reg[8]_i_1_n_0 ),
        .CO({\end_addr_buf_reg[12]_i_1_n_0 ,\end_addr_buf_reg[12]_i_1_n_1 ,\end_addr_buf_reg[12]_i_1_n_2 ,\end_addr_buf_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\start_addr_reg_n_0_[12] ,\start_addr_reg_n_0_[11] ,\start_addr_reg_n_0_[10] ,\start_addr_reg_n_0_[9] }),
        .O(end_addr[12:9]),
        .S({\end_addr_buf[12]_i_2_n_0 ,\end_addr_buf[12]_i_3_n_0 ,\end_addr_buf[12]_i_4_n_0 ,\end_addr_buf[12]_i_5_n_0 }));
  FDRE \end_addr_buf_reg[13] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[13]),
        .Q(p_0_in0_in[1]),
        .R(SR));
  FDRE \end_addr_buf_reg[14] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[14]),
        .Q(p_0_in0_in[2]),
        .R(SR));
  FDRE \end_addr_buf_reg[15] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[15]),
        .Q(p_0_in0_in[3]),
        .R(SR));
  FDRE \end_addr_buf_reg[16] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[16]),
        .Q(p_0_in0_in[4]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \end_addr_buf_reg[16]_i_1 
       (.CI(\end_addr_buf_reg[12]_i_1_n_0 ),
        .CO({\end_addr_buf_reg[16]_i_1_n_0 ,\end_addr_buf_reg[16]_i_1_n_1 ,\end_addr_buf_reg[16]_i_1_n_2 ,\end_addr_buf_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\start_addr_reg_n_0_[16] ,\start_addr_reg_n_0_[15] ,\start_addr_reg_n_0_[14] ,\start_addr_reg_n_0_[13] }),
        .O(end_addr[16:13]),
        .S({\end_addr_buf[16]_i_2_n_0 ,\end_addr_buf[16]_i_3_n_0 ,\end_addr_buf[16]_i_4_n_0 ,\end_addr_buf[16]_i_5_n_0 }));
  FDRE \end_addr_buf_reg[17] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[17]),
        .Q(p_0_in0_in[5]),
        .R(SR));
  FDRE \end_addr_buf_reg[18] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[18]),
        .Q(p_0_in0_in[6]),
        .R(SR));
  FDRE \end_addr_buf_reg[19] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[19]),
        .Q(p_0_in0_in[7]),
        .R(SR));
  FDRE \end_addr_buf_reg[1] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[1]),
        .Q(\end_addr_buf_reg_n_0_[1] ),
        .R(SR));
  FDRE \end_addr_buf_reg[20] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[20]),
        .Q(p_0_in0_in[8]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \end_addr_buf_reg[20]_i_1 
       (.CI(\end_addr_buf_reg[16]_i_1_n_0 ),
        .CO({\end_addr_buf_reg[20]_i_1_n_0 ,\end_addr_buf_reg[20]_i_1_n_1 ,\end_addr_buf_reg[20]_i_1_n_2 ,\end_addr_buf_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\start_addr_reg_n_0_[20] ,\start_addr_reg_n_0_[19] ,\start_addr_reg_n_0_[18] ,\start_addr_reg_n_0_[17] }),
        .O(end_addr[20:17]),
        .S({\end_addr_buf[20]_i_2_n_0 ,\end_addr_buf[20]_i_3_n_0 ,\end_addr_buf[20]_i_4_n_0 ,\end_addr_buf[20]_i_5_n_0 }));
  FDRE \end_addr_buf_reg[21] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[21]),
        .Q(p_0_in0_in[9]),
        .R(SR));
  FDRE \end_addr_buf_reg[22] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[22]),
        .Q(p_0_in0_in[10]),
        .R(SR));
  FDRE \end_addr_buf_reg[23] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[23]),
        .Q(p_0_in0_in[11]),
        .R(SR));
  FDRE \end_addr_buf_reg[24] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[24]),
        .Q(p_0_in0_in[12]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \end_addr_buf_reg[24]_i_1 
       (.CI(\end_addr_buf_reg[20]_i_1_n_0 ),
        .CO({\end_addr_buf_reg[24]_i_1_n_0 ,\end_addr_buf_reg[24]_i_1_n_1 ,\end_addr_buf_reg[24]_i_1_n_2 ,\end_addr_buf_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\start_addr_reg_n_0_[24] ,\start_addr_reg_n_0_[23] ,\start_addr_reg_n_0_[22] ,\start_addr_reg_n_0_[21] }),
        .O(end_addr[24:21]),
        .S({\end_addr_buf[24]_i_2_n_0 ,\end_addr_buf[24]_i_3_n_0 ,\end_addr_buf[24]_i_4_n_0 ,\end_addr_buf[24]_i_5_n_0 }));
  FDRE \end_addr_buf_reg[25] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[25]),
        .Q(p_0_in0_in[13]),
        .R(SR));
  FDRE \end_addr_buf_reg[26] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[26]),
        .Q(p_0_in0_in[14]),
        .R(SR));
  FDRE \end_addr_buf_reg[27] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[27]),
        .Q(p_0_in0_in[15]),
        .R(SR));
  FDRE \end_addr_buf_reg[28] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[28]),
        .Q(p_0_in0_in[16]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \end_addr_buf_reg[28]_i_1 
       (.CI(\end_addr_buf_reg[24]_i_1_n_0 ),
        .CO({\end_addr_buf_reg[28]_i_1_n_0 ,\end_addr_buf_reg[28]_i_1_n_1 ,\end_addr_buf_reg[28]_i_1_n_2 ,\end_addr_buf_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\start_addr_reg_n_0_[28] ,\start_addr_reg_n_0_[27] ,\start_addr_reg_n_0_[26] ,\start_addr_reg_n_0_[25] }),
        .O(end_addr[28:25]),
        .S({\end_addr_buf[28]_i_2_n_0 ,\end_addr_buf[28]_i_3_n_0 ,\end_addr_buf[28]_i_4_n_0 ,\end_addr_buf[28]_i_5_n_0 }));
  FDRE \end_addr_buf_reg[29] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[29]),
        .Q(p_0_in0_in[17]),
        .R(SR));
  FDRE \end_addr_buf_reg[2] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[2]),
        .Q(\end_addr_buf_reg_n_0_[2] ),
        .R(SR));
  FDRE \end_addr_buf_reg[30] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[30]),
        .Q(p_0_in0_in[18]),
        .R(SR));
  FDRE \end_addr_buf_reg[31] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[31]),
        .Q(p_0_in0_in[19]),
        .R(SR));
  FDRE \end_addr_buf_reg[32] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[32]),
        .Q(p_0_in0_in[20]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \end_addr_buf_reg[32]_i_1 
       (.CI(\end_addr_buf_reg[28]_i_1_n_0 ),
        .CO({\end_addr_buf_reg[32]_i_1_n_0 ,\end_addr_buf_reg[32]_i_1_n_1 ,\end_addr_buf_reg[32]_i_1_n_2 ,\end_addr_buf_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\start_addr_reg_n_0_[31] ,\start_addr_reg_n_0_[30] ,\start_addr_reg_n_0_[29] }),
        .O(end_addr[32:29]),
        .S({\start_addr_reg_n_0_[32] ,\end_addr_buf[32]_i_2_n_0 ,\end_addr_buf[32]_i_3_n_0 ,\end_addr_buf[32]_i_4_n_0 }));
  FDRE \end_addr_buf_reg[33] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[33]),
        .Q(p_0_in0_in[21]),
        .R(SR));
  FDRE \end_addr_buf_reg[34] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[34]),
        .Q(p_0_in0_in[22]),
        .R(SR));
  FDRE \end_addr_buf_reg[35] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[35]),
        .Q(p_0_in0_in[23]),
        .R(SR));
  FDRE \end_addr_buf_reg[36] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[36]),
        .Q(p_0_in0_in[24]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \end_addr_buf_reg[36]_i_1 
       (.CI(\end_addr_buf_reg[32]_i_1_n_0 ),
        .CO({\end_addr_buf_reg[36]_i_1_n_0 ,\end_addr_buf_reg[36]_i_1_n_1 ,\end_addr_buf_reg[36]_i_1_n_2 ,\end_addr_buf_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(end_addr[36:33]),
        .S({\start_addr_reg_n_0_[36] ,\start_addr_reg_n_0_[35] ,\start_addr_reg_n_0_[34] ,\start_addr_reg_n_0_[33] }));
  FDRE \end_addr_buf_reg[37] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[37]),
        .Q(p_0_in0_in[25]),
        .R(SR));
  FDRE \end_addr_buf_reg[38] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[38]),
        .Q(p_0_in0_in[26]),
        .R(SR));
  FDRE \end_addr_buf_reg[39] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[39]),
        .Q(p_0_in0_in[27]),
        .R(SR));
  FDRE \end_addr_buf_reg[3] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[3]),
        .Q(\end_addr_buf_reg_n_0_[3] ),
        .R(SR));
  FDRE \end_addr_buf_reg[40] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[40]),
        .Q(p_0_in0_in[28]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \end_addr_buf_reg[40]_i_1 
       (.CI(\end_addr_buf_reg[36]_i_1_n_0 ),
        .CO({\end_addr_buf_reg[40]_i_1_n_0 ,\end_addr_buf_reg[40]_i_1_n_1 ,\end_addr_buf_reg[40]_i_1_n_2 ,\end_addr_buf_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(end_addr[40:37]),
        .S({\start_addr_reg_n_0_[40] ,\start_addr_reg_n_0_[39] ,\start_addr_reg_n_0_[38] ,\start_addr_reg_n_0_[37] }));
  FDRE \end_addr_buf_reg[41] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[41]),
        .Q(p_0_in0_in[29]),
        .R(SR));
  FDRE \end_addr_buf_reg[42] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[42]),
        .Q(p_0_in0_in[30]),
        .R(SR));
  FDRE \end_addr_buf_reg[43] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[43]),
        .Q(p_0_in0_in[31]),
        .R(SR));
  FDRE \end_addr_buf_reg[44] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[44]),
        .Q(p_0_in0_in[32]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \end_addr_buf_reg[44]_i_1 
       (.CI(\end_addr_buf_reg[40]_i_1_n_0 ),
        .CO({\end_addr_buf_reg[44]_i_1_n_0 ,\end_addr_buf_reg[44]_i_1_n_1 ,\end_addr_buf_reg[44]_i_1_n_2 ,\end_addr_buf_reg[44]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(end_addr[44:41]),
        .S({\start_addr_reg_n_0_[44] ,\start_addr_reg_n_0_[43] ,\start_addr_reg_n_0_[42] ,\start_addr_reg_n_0_[41] }));
  FDRE \end_addr_buf_reg[45] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[45]),
        .Q(p_0_in0_in[33]),
        .R(SR));
  FDRE \end_addr_buf_reg[46] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[46]),
        .Q(p_0_in0_in[34]),
        .R(SR));
  FDRE \end_addr_buf_reg[47] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[47]),
        .Q(p_0_in0_in[35]),
        .R(SR));
  FDRE \end_addr_buf_reg[48] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[48]),
        .Q(p_0_in0_in[36]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \end_addr_buf_reg[48]_i_1 
       (.CI(\end_addr_buf_reg[44]_i_1_n_0 ),
        .CO({\end_addr_buf_reg[48]_i_1_n_0 ,\end_addr_buf_reg[48]_i_1_n_1 ,\end_addr_buf_reg[48]_i_1_n_2 ,\end_addr_buf_reg[48]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(end_addr[48:45]),
        .S({\start_addr_reg_n_0_[48] ,\start_addr_reg_n_0_[47] ,\start_addr_reg_n_0_[46] ,\start_addr_reg_n_0_[45] }));
  FDRE \end_addr_buf_reg[49] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[49]),
        .Q(p_0_in0_in[37]),
        .R(SR));
  FDRE \end_addr_buf_reg[4] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[4]),
        .Q(\end_addr_buf_reg_n_0_[4] ),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \end_addr_buf_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\end_addr_buf_reg[4]_i_1_n_0 ,\end_addr_buf_reg[4]_i_1_n_1 ,\end_addr_buf_reg[4]_i_1_n_2 ,\end_addr_buf_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\start_addr_reg_n_0_[4] ,\start_addr_reg_n_0_[3] ,\start_addr_reg_n_0_[2] ,\start_addr_reg_n_0_[1] }),
        .O(end_addr[4:1]),
        .S({\end_addr_buf[4]_i_2_n_0 ,\end_addr_buf[4]_i_3_n_0 ,\end_addr_buf[4]_i_4_n_0 ,\end_addr_buf[4]_i_5_n_0 }));
  FDRE \end_addr_buf_reg[50] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[50]),
        .Q(p_0_in0_in[38]),
        .R(SR));
  FDRE \end_addr_buf_reg[51] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[51]),
        .Q(p_0_in0_in[39]),
        .R(SR));
  FDRE \end_addr_buf_reg[52] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[52]),
        .Q(p_0_in0_in[40]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \end_addr_buf_reg[52]_i_1 
       (.CI(\end_addr_buf_reg[48]_i_1_n_0 ),
        .CO({\end_addr_buf_reg[52]_i_1_n_0 ,\end_addr_buf_reg[52]_i_1_n_1 ,\end_addr_buf_reg[52]_i_1_n_2 ,\end_addr_buf_reg[52]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(end_addr[52:49]),
        .S({\start_addr_reg_n_0_[52] ,\start_addr_reg_n_0_[51] ,\start_addr_reg_n_0_[50] ,\start_addr_reg_n_0_[49] }));
  FDRE \end_addr_buf_reg[53] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[53]),
        .Q(p_0_in0_in[41]),
        .R(SR));
  FDRE \end_addr_buf_reg[54] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[54]),
        .Q(p_0_in0_in[42]),
        .R(SR));
  FDRE \end_addr_buf_reg[55] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[55]),
        .Q(p_0_in0_in[43]),
        .R(SR));
  FDRE \end_addr_buf_reg[56] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[56]),
        .Q(p_0_in0_in[44]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \end_addr_buf_reg[56]_i_1 
       (.CI(\end_addr_buf_reg[52]_i_1_n_0 ),
        .CO({\end_addr_buf_reg[56]_i_1_n_0 ,\end_addr_buf_reg[56]_i_1_n_1 ,\end_addr_buf_reg[56]_i_1_n_2 ,\end_addr_buf_reg[56]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(end_addr[56:53]),
        .S({\start_addr_reg_n_0_[56] ,\start_addr_reg_n_0_[55] ,\start_addr_reg_n_0_[54] ,\start_addr_reg_n_0_[53] }));
  FDRE \end_addr_buf_reg[57] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[57]),
        .Q(p_0_in0_in[45]),
        .R(SR));
  FDRE \end_addr_buf_reg[58] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[58]),
        .Q(p_0_in0_in[46]),
        .R(SR));
  FDRE \end_addr_buf_reg[59] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[59]),
        .Q(p_0_in0_in[47]),
        .R(SR));
  FDRE \end_addr_buf_reg[5] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[5]),
        .Q(\end_addr_buf_reg_n_0_[5] ),
        .R(SR));
  FDRE \end_addr_buf_reg[60] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[60]),
        .Q(p_0_in0_in[48]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \end_addr_buf_reg[60]_i_1 
       (.CI(\end_addr_buf_reg[56]_i_1_n_0 ),
        .CO({\end_addr_buf_reg[60]_i_1_n_0 ,\end_addr_buf_reg[60]_i_1_n_1 ,\end_addr_buf_reg[60]_i_1_n_2 ,\end_addr_buf_reg[60]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(end_addr[60:57]),
        .S({\start_addr_reg_n_0_[60] ,\start_addr_reg_n_0_[59] ,\start_addr_reg_n_0_[58] ,\start_addr_reg_n_0_[57] }));
  FDRE \end_addr_buf_reg[61] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[61]),
        .Q(p_0_in0_in[49]),
        .R(SR));
  FDRE \end_addr_buf_reg[62] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[62]),
        .Q(p_0_in0_in[50]),
        .R(SR));
  FDRE \end_addr_buf_reg[63] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[63]),
        .Q(p_0_in0_in[51]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \end_addr_buf_reg[63]_i_1 
       (.CI(\end_addr_buf_reg[60]_i_1_n_0 ),
        .CO({\NLW_end_addr_buf_reg[63]_i_1_CO_UNCONNECTED [3:2],\end_addr_buf_reg[63]_i_1_n_2 ,\end_addr_buf_reg[63]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_end_addr_buf_reg[63]_i_1_O_UNCONNECTED [3],end_addr[63:61]}),
        .S({1'b0,\start_addr_reg_n_0_[63] ,\start_addr_reg_n_0_[62] ,\start_addr_reg_n_0_[61] }));
  FDRE \end_addr_buf_reg[6] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[6]),
        .Q(\end_addr_buf_reg_n_0_[6] ),
        .R(SR));
  FDRE \end_addr_buf_reg[7] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[7]),
        .Q(\end_addr_buf_reg_n_0_[7] ),
        .R(SR));
  FDRE \end_addr_buf_reg[8] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[8]),
        .Q(\end_addr_buf_reg_n_0_[8] ),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \end_addr_buf_reg[8]_i_1 
       (.CI(\end_addr_buf_reg[4]_i_1_n_0 ),
        .CO({\end_addr_buf_reg[8]_i_1_n_0 ,\end_addr_buf_reg[8]_i_1_n_1 ,\end_addr_buf_reg[8]_i_1_n_2 ,\end_addr_buf_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\start_addr_reg_n_0_[8] ,\start_addr_reg_n_0_[7] ,\start_addr_reg_n_0_[6] ,\start_addr_reg_n_0_[5] }),
        .O(end_addr[8:5]),
        .S({\end_addr_buf[8]_i_2_n_0 ,\end_addr_buf[8]_i_3_n_0 ,\end_addr_buf[8]_i_4_n_0 ,\end_addr_buf[8]_i_5_n_0 }));
  FDRE \end_addr_buf_reg[9] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(end_addr[9]),
        .Q(\end_addr_buf_reg_n_0_[9] ),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_gmem_m_axi_fifo__parameterized1 fifo_rctl
       (.E(\bus_wide_gen.last_split ),
        .Q(data_pack),
        .SR(SR),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .beat_valid(beat_valid),
        .\bus_wide_gen.ready_for_data__0 (\bus_wide_gen.ready_for_data__0 ),
        .\bus_wide_gen.split_cnt__2 (\bus_wide_gen.split_cnt__2 ),
        .\could_multi_bursts.next_loop (\could_multi_bursts.next_loop ),
        .fifo_burst_ready(fifo_burst_ready),
        .fifo_rctl_ready(fifo_rctl_ready),
        .m_axi_gmem_ARREADY(m_axi_gmem_ARREADY),
        .\pout_reg[2]_0 (\could_multi_bursts.ARVALID_Dummy_reg_0 ),
        .\pout_reg[2]_1 (\could_multi_bursts.sect_handling_reg_n_0 ),
        .\pout_reg[3]_0 (buff_rdata_n_3),
        .\pout_reg[3]_1 (\bus_wide_gen.fifo_burst_n_6 ),
        .push(push));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_gmem_m_axi_fifo__parameterized0 fifo_rreq
       (.CO(last_sect),
        .D({fifo_rreq_n_4,fifo_rreq_n_5,fifo_rreq_n_6,fifo_rreq_n_7,fifo_rreq_n_8,fifo_rreq_n_9,fifo_rreq_n_10,fifo_rreq_n_11,fifo_rreq_n_12,fifo_rreq_n_13,fifo_rreq_n_14,fifo_rreq_n_15,fifo_rreq_n_16,fifo_rreq_n_17,fifo_rreq_n_18,fifo_rreq_n_19,fifo_rreq_n_20,fifo_rreq_n_21,fifo_rreq_n_22,fifo_rreq_n_23,fifo_rreq_n_24,fifo_rreq_n_25,fifo_rreq_n_26,fifo_rreq_n_27,fifo_rreq_n_28,fifo_rreq_n_29,fifo_rreq_n_30,fifo_rreq_n_31,fifo_rreq_n_32,fifo_rreq_n_33,fifo_rreq_n_34,fifo_rreq_n_35,fifo_rreq_n_36,fifo_rreq_n_37,fifo_rreq_n_38,fifo_rreq_n_39,fifo_rreq_n_40,fifo_rreq_n_41,fifo_rreq_n_42,fifo_rreq_n_43,fifo_rreq_n_44,fifo_rreq_n_45,fifo_rreq_n_46,fifo_rreq_n_47,fifo_rreq_n_48,fifo_rreq_n_49,fifo_rreq_n_50,fifo_rreq_n_51,fifo_rreq_n_52,fifo_rreq_n_53,fifo_rreq_n_54,fifo_rreq_n_55}),
        .E(fifo_rreq_n_3),
        .Q({\start_addr_reg_n_0_[63] ,\start_addr_reg_n_0_[62] ,\start_addr_reg_n_0_[61] ,\start_addr_reg_n_0_[60] ,\start_addr_reg_n_0_[59] ,\start_addr_reg_n_0_[58] ,\start_addr_reg_n_0_[57] ,\start_addr_reg_n_0_[56] ,\start_addr_reg_n_0_[55] ,\start_addr_reg_n_0_[54] ,\start_addr_reg_n_0_[53] ,\start_addr_reg_n_0_[52] ,\start_addr_reg_n_0_[51] ,\start_addr_reg_n_0_[50] ,\start_addr_reg_n_0_[49] ,\start_addr_reg_n_0_[48] ,\start_addr_reg_n_0_[47] ,\start_addr_reg_n_0_[46] ,\start_addr_reg_n_0_[45] ,\start_addr_reg_n_0_[44] ,\start_addr_reg_n_0_[43] ,\start_addr_reg_n_0_[42] ,\start_addr_reg_n_0_[41] ,\start_addr_reg_n_0_[40] ,\start_addr_reg_n_0_[39] ,\start_addr_reg_n_0_[38] ,\start_addr_reg_n_0_[37] ,\start_addr_reg_n_0_[36] ,\start_addr_reg_n_0_[35] ,\start_addr_reg_n_0_[34] ,\start_addr_reg_n_0_[33] ,\start_addr_reg_n_0_[32] ,\start_addr_reg_n_0_[31] ,\start_addr_reg_n_0_[30] ,\start_addr_reg_n_0_[29] ,\start_addr_reg_n_0_[28] ,\start_addr_reg_n_0_[27] ,\start_addr_reg_n_0_[26] ,\start_addr_reg_n_0_[25] ,\start_addr_reg_n_0_[24] ,\start_addr_reg_n_0_[23] ,\start_addr_reg_n_0_[22] ,\start_addr_reg_n_0_[21] ,\start_addr_reg_n_0_[20] ,\start_addr_reg_n_0_[19] ,\start_addr_reg_n_0_[18] ,\start_addr_reg_n_0_[17] ,\start_addr_reg_n_0_[16] ,\start_addr_reg_n_0_[15] ,\start_addr_reg_n_0_[14] ,\start_addr_reg_n_0_[13] ,\start_addr_reg_n_0_[12] }),
        .S({fifo_rreq_n_56,fifo_rreq_n_57,fifo_rreq_n_58,fifo_rreq_n_59}),
        .SR(SR),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\end_addr_buf_reg[63] ({fifo_rreq_n_151,fifo_rreq_n_152}),
        .full_n_reg_0(rs2f_rreq_valid),
        .invalid_len_event0(invalid_len_event0),
        .last_sect_carry__3({\sect_cnt_reg_n_0_[51] ,\sect_cnt_reg_n_0_[50] ,\sect_cnt_reg_n_0_[49] ,\sect_cnt_reg_n_0_[48] ,\sect_cnt_reg_n_0_[0] }),
        .last_sect_carry__3_0(p_0_in0_in[51:48]),
        .next_rreq(next_rreq),
        .p_21_in(p_21_in),
        .\q_reg[66]_0 ({fifo_rreq_n_147,fifo_rreq_n_148,fifo_rreq_n_149}),
        .\q_reg[70]_0 ({fifo_rreq_n_143,fifo_rreq_n_144,fifo_rreq_n_145,fifo_rreq_n_146}),
        .\q_reg[74]_0 ({fifo_rreq_n_139,fifo_rreq_n_140,fifo_rreq_n_141,fifo_rreq_n_142}),
        .\q_reg[79]_0 ({fifo_rreq_data,fifo_rreq_n_76,fifo_rreq_n_77,fifo_rreq_n_78,fifo_rreq_n_79,fifo_rreq_n_80,fifo_rreq_n_81,fifo_rreq_n_82,fifo_rreq_n_83,fifo_rreq_n_84,fifo_rreq_n_85,fifo_rreq_n_86,fifo_rreq_n_87,fifo_rreq_n_88,fifo_rreq_n_89,fifo_rreq_n_90,fifo_rreq_n_91,fifo_rreq_n_92,fifo_rreq_n_93,fifo_rreq_n_94,fifo_rreq_n_95,fifo_rreq_n_96,fifo_rreq_n_97,fifo_rreq_n_98,fifo_rreq_n_99,fifo_rreq_n_100,fifo_rreq_n_101,fifo_rreq_n_102,fifo_rreq_n_103,fifo_rreq_n_104,fifo_rreq_n_105,fifo_rreq_n_106,fifo_rreq_n_107,fifo_rreq_n_108,fifo_rreq_n_109,fifo_rreq_n_110,fifo_rreq_n_111,fifo_rreq_n_112,fifo_rreq_n_113,fifo_rreq_n_114,fifo_rreq_n_115,fifo_rreq_n_116,fifo_rreq_n_117,fifo_rreq_n_118,fifo_rreq_n_119,fifo_rreq_n_120,fifo_rreq_n_121,fifo_rreq_n_122,fifo_rreq_n_123,fifo_rreq_n_124,fifo_rreq_n_125,fifo_rreq_n_126,fifo_rreq_n_127,fifo_rreq_n_128,fifo_rreq_n_129,fifo_rreq_n_130,fifo_rreq_n_131,fifo_rreq_n_132,fifo_rreq_n_133,fifo_rreq_n_134,fifo_rreq_n_135,fifo_rreq_n_136,fifo_rreq_n_137,fifo_rreq_n_138}),
        .\q_reg[79]_1 (fifo_rreq_n_150),
        .\q_reg[79]_2 ({rs2f_rreq_data[79:64],rs2f_rreq_data[62:0]}),
        .readRequestFIFONotEmpty(readRequestFIFONotEmpty),
        .readRequestFIFONotEmptyReg_reg(readRequestFIFONotEmptyReg_reg_n_0),
        .readRequestFIFONotEmptyReg_reg_0(rreq_handling_reg_n_0),
        .rs2f_rreq_ack(rs2f_rreq_ack),
        .sect_cnt0(sect_cnt0));
  CARRY4 first_sect_carry
       (.CI(1'b0),
        .CO({first_sect_carry_n_0,first_sect_carry_n_1,first_sect_carry_n_2,first_sect_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_first_sect_carry_O_UNCONNECTED[3:0]),
        .S({first_sect_carry_i_1_n_0,first_sect_carry_i_2_n_0,first_sect_carry_i_3_n_0,first_sect_carry_i_4_n_0}));
  CARRY4 first_sect_carry__0
       (.CI(first_sect_carry_n_0),
        .CO({first_sect_carry__0_n_0,first_sect_carry__0_n_1,first_sect_carry__0_n_2,first_sect_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_first_sect_carry__0_O_UNCONNECTED[3:0]),
        .S({first_sect_carry__0_i_1_n_0,first_sect_carry__0_i_2_n_0,first_sect_carry__0_i_3_n_0,first_sect_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    first_sect_carry__0_i_1
       (.I0(\sect_cnt_reg_n_0_[22] ),
        .I1(p_0_in_0[22]),
        .I2(\sect_cnt_reg_n_0_[21] ),
        .I3(p_0_in_0[21]),
        .I4(\sect_cnt_reg_n_0_[23] ),
        .I5(p_0_in_0[23]),
        .O(first_sect_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    first_sect_carry__0_i_2
       (.I0(\sect_cnt_reg_n_0_[19] ),
        .I1(p_0_in_0[19]),
        .I2(\sect_cnt_reg_n_0_[18] ),
        .I3(p_0_in_0[18]),
        .I4(\sect_cnt_reg_n_0_[20] ),
        .I5(p_0_in_0[20]),
        .O(first_sect_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    first_sect_carry__0_i_3
       (.I0(\sect_cnt_reg_n_0_[16] ),
        .I1(p_0_in_0[16]),
        .I2(\sect_cnt_reg_n_0_[15] ),
        .I3(p_0_in_0[15]),
        .I4(\sect_cnt_reg_n_0_[17] ),
        .I5(p_0_in_0[17]),
        .O(first_sect_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    first_sect_carry__0_i_4
       (.I0(\sect_cnt_reg_n_0_[13] ),
        .I1(p_0_in_0[13]),
        .I2(\sect_cnt_reg_n_0_[12] ),
        .I3(p_0_in_0[12]),
        .I4(\sect_cnt_reg_n_0_[14] ),
        .I5(p_0_in_0[14]),
        .O(first_sect_carry__0_i_4_n_0));
  CARRY4 first_sect_carry__1
       (.CI(first_sect_carry__0_n_0),
        .CO({first_sect_carry__1_n_0,first_sect_carry__1_n_1,first_sect_carry__1_n_2,first_sect_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_first_sect_carry__1_O_UNCONNECTED[3:0]),
        .S({first_sect_carry__1_i_1_n_0,first_sect_carry__1_i_2_n_0,first_sect_carry__1_i_3_n_0,first_sect_carry__1_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    first_sect_carry__1_i_1
       (.I0(\sect_cnt_reg_n_0_[34] ),
        .I1(p_0_in_0[34]),
        .I2(\sect_cnt_reg_n_0_[33] ),
        .I3(p_0_in_0[33]),
        .I4(\sect_cnt_reg_n_0_[35] ),
        .I5(p_0_in_0[35]),
        .O(first_sect_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    first_sect_carry__1_i_2
       (.I0(\sect_cnt_reg_n_0_[31] ),
        .I1(p_0_in_0[31]),
        .I2(\sect_cnt_reg_n_0_[30] ),
        .I3(p_0_in_0[30]),
        .I4(\sect_cnt_reg_n_0_[32] ),
        .I5(p_0_in_0[32]),
        .O(first_sect_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    first_sect_carry__1_i_3
       (.I0(\sect_cnt_reg_n_0_[28] ),
        .I1(p_0_in_0[28]),
        .I2(\sect_cnt_reg_n_0_[27] ),
        .I3(p_0_in_0[27]),
        .I4(\sect_cnt_reg_n_0_[29] ),
        .I5(p_0_in_0[29]),
        .O(first_sect_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    first_sect_carry__1_i_4
       (.I0(\sect_cnt_reg_n_0_[25] ),
        .I1(p_0_in_0[25]),
        .I2(\sect_cnt_reg_n_0_[24] ),
        .I3(p_0_in_0[24]),
        .I4(\sect_cnt_reg_n_0_[26] ),
        .I5(p_0_in_0[26]),
        .O(first_sect_carry__1_i_4_n_0));
  CARRY4 first_sect_carry__2
       (.CI(first_sect_carry__1_n_0),
        .CO({first_sect_carry__2_n_0,first_sect_carry__2_n_1,first_sect_carry__2_n_2,first_sect_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_first_sect_carry__2_O_UNCONNECTED[3:0]),
        .S({first_sect_carry__2_i_1_n_0,first_sect_carry__2_i_2_n_0,first_sect_carry__2_i_3_n_0,first_sect_carry__2_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    first_sect_carry__2_i_1
       (.I0(\sect_cnt_reg_n_0_[46] ),
        .I1(p_0_in_0[46]),
        .I2(\sect_cnt_reg_n_0_[45] ),
        .I3(p_0_in_0[45]),
        .I4(\sect_cnt_reg_n_0_[47] ),
        .I5(p_0_in_0[47]),
        .O(first_sect_carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    first_sect_carry__2_i_2
       (.I0(\sect_cnt_reg_n_0_[43] ),
        .I1(p_0_in_0[43]),
        .I2(\sect_cnt_reg_n_0_[42] ),
        .I3(p_0_in_0[42]),
        .I4(\sect_cnt_reg_n_0_[44] ),
        .I5(p_0_in_0[44]),
        .O(first_sect_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    first_sect_carry__2_i_3
       (.I0(\sect_cnt_reg_n_0_[40] ),
        .I1(p_0_in_0[40]),
        .I2(\sect_cnt_reg_n_0_[39] ),
        .I3(p_0_in_0[39]),
        .I4(\sect_cnt_reg_n_0_[41] ),
        .I5(p_0_in_0[41]),
        .O(first_sect_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    first_sect_carry__2_i_4
       (.I0(\sect_cnt_reg_n_0_[37] ),
        .I1(p_0_in_0[37]),
        .I2(\sect_cnt_reg_n_0_[36] ),
        .I3(p_0_in_0[36]),
        .I4(\sect_cnt_reg_n_0_[38] ),
        .I5(p_0_in_0[38]),
        .O(first_sect_carry__2_i_4_n_0));
  CARRY4 first_sect_carry__3
       (.CI(first_sect_carry__2_n_0),
        .CO({NLW_first_sect_carry__3_CO_UNCONNECTED[3:2],first_sect,first_sect_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_first_sect_carry__3_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,first_sect_carry__3_i_1_n_0,first_sect_carry__3_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    first_sect_carry__3_i_1
       (.I0(p_0_in_0[51]),
        .I1(\sect_cnt_reg_n_0_[51] ),
        .O(first_sect_carry__3_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    first_sect_carry__3_i_2
       (.I0(\sect_cnt_reg_n_0_[49] ),
        .I1(p_0_in_0[49]),
        .I2(\sect_cnt_reg_n_0_[48] ),
        .I3(p_0_in_0[48]),
        .I4(\sect_cnt_reg_n_0_[50] ),
        .I5(p_0_in_0[50]),
        .O(first_sect_carry__3_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    first_sect_carry_i_1
       (.I0(\sect_cnt_reg_n_0_[10] ),
        .I1(p_0_in_0[10]),
        .I2(\sect_cnt_reg_n_0_[9] ),
        .I3(p_0_in_0[9]),
        .I4(\sect_cnt_reg_n_0_[11] ),
        .I5(p_0_in_0[11]),
        .O(first_sect_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    first_sect_carry_i_2
       (.I0(\sect_cnt_reg_n_0_[7] ),
        .I1(p_0_in_0[7]),
        .I2(\sect_cnt_reg_n_0_[6] ),
        .I3(p_0_in_0[6]),
        .I4(\sect_cnt_reg_n_0_[8] ),
        .I5(p_0_in_0[8]),
        .O(first_sect_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    first_sect_carry_i_3
       (.I0(\sect_cnt_reg_n_0_[4] ),
        .I1(p_0_in_0[4]),
        .I2(\sect_cnt_reg_n_0_[3] ),
        .I3(p_0_in_0[3]),
        .I4(\sect_cnt_reg_n_0_[5] ),
        .I5(p_0_in_0[5]),
        .O(first_sect_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    first_sect_carry_i_4
       (.I0(\sect_cnt_reg_n_0_[1] ),
        .I1(p_0_in_0[1]),
        .I2(\sect_cnt_reg_n_0_[0] ),
        .I3(p_0_in_0[0]),
        .I4(\sect_cnt_reg_n_0_[2] ),
        .I5(p_0_in_0[2]),
        .O(first_sect_carry_i_4_n_0));
  FDRE invalid_len_event_reg
       (.C(ap_clk),
        .CE(next_rreq),
        .D(invalid_len_event0),
        .Q(invalid_len_event),
        .R(SR));
  FDRE invalid_len_event_reg1_reg
       (.C(ap_clk),
        .CE(next_rreq),
        .D(invalid_len_event),
        .Q(invalid_len_event_reg1),
        .R(SR));
  FDRE invalid_len_event_reg2_reg
       (.C(ap_clk),
        .CE(p_21_in),
        .D(invalid_len_event_reg1),
        .Q(invalid_len_event_reg2),
        .R(SR));
  CARRY4 last_sect_carry
       (.CI(1'b0),
        .CO({last_sect_carry_n_0,last_sect_carry_n_1,last_sect_carry_n_2,last_sect_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_last_sect_carry_O_UNCONNECTED[3:0]),
        .S({last_sect_carry_i_1_n_0,last_sect_carry_i_2_n_0,last_sect_carry_i_3_n_0,last_sect_carry_i_4_n_0}));
  CARRY4 last_sect_carry__0
       (.CI(last_sect_carry_n_0),
        .CO({last_sect_carry__0_n_0,last_sect_carry__0_n_1,last_sect_carry__0_n_2,last_sect_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_last_sect_carry__0_O_UNCONNECTED[3:0]),
        .S({last_sect_carry__0_i_1_n_0,last_sect_carry__0_i_2_n_0,last_sect_carry__0_i_3_n_0,last_sect_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_sect_carry__0_i_1
       (.I0(\sect_cnt_reg_n_0_[22] ),
        .I1(p_0_in0_in[22]),
        .I2(\sect_cnt_reg_n_0_[21] ),
        .I3(p_0_in0_in[21]),
        .I4(p_0_in0_in[23]),
        .I5(\sect_cnt_reg_n_0_[23] ),
        .O(last_sect_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_sect_carry__0_i_2
       (.I0(\sect_cnt_reg_n_0_[19] ),
        .I1(p_0_in0_in[19]),
        .I2(\sect_cnt_reg_n_0_[18] ),
        .I3(p_0_in0_in[18]),
        .I4(p_0_in0_in[20]),
        .I5(\sect_cnt_reg_n_0_[20] ),
        .O(last_sect_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_sect_carry__0_i_3
       (.I0(\sect_cnt_reg_n_0_[16] ),
        .I1(p_0_in0_in[16]),
        .I2(\sect_cnt_reg_n_0_[15] ),
        .I3(p_0_in0_in[15]),
        .I4(p_0_in0_in[17]),
        .I5(\sect_cnt_reg_n_0_[17] ),
        .O(last_sect_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_sect_carry__0_i_4
       (.I0(\sect_cnt_reg_n_0_[13] ),
        .I1(p_0_in0_in[13]),
        .I2(\sect_cnt_reg_n_0_[12] ),
        .I3(p_0_in0_in[12]),
        .I4(p_0_in0_in[14]),
        .I5(\sect_cnt_reg_n_0_[14] ),
        .O(last_sect_carry__0_i_4_n_0));
  CARRY4 last_sect_carry__1
       (.CI(last_sect_carry__0_n_0),
        .CO({last_sect_carry__1_n_0,last_sect_carry__1_n_1,last_sect_carry__1_n_2,last_sect_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_last_sect_carry__1_O_UNCONNECTED[3:0]),
        .S({last_sect_carry__1_i_1_n_0,last_sect_carry__1_i_2_n_0,last_sect_carry__1_i_3_n_0,last_sect_carry__1_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_sect_carry__1_i_1
       (.I0(\sect_cnt_reg_n_0_[34] ),
        .I1(p_0_in0_in[34]),
        .I2(\sect_cnt_reg_n_0_[33] ),
        .I3(p_0_in0_in[33]),
        .I4(p_0_in0_in[35]),
        .I5(\sect_cnt_reg_n_0_[35] ),
        .O(last_sect_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_sect_carry__1_i_2
       (.I0(\sect_cnt_reg_n_0_[31] ),
        .I1(p_0_in0_in[31]),
        .I2(\sect_cnt_reg_n_0_[30] ),
        .I3(p_0_in0_in[30]),
        .I4(p_0_in0_in[32]),
        .I5(\sect_cnt_reg_n_0_[32] ),
        .O(last_sect_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_sect_carry__1_i_3
       (.I0(\sect_cnt_reg_n_0_[28] ),
        .I1(p_0_in0_in[28]),
        .I2(\sect_cnt_reg_n_0_[27] ),
        .I3(p_0_in0_in[27]),
        .I4(p_0_in0_in[29]),
        .I5(\sect_cnt_reg_n_0_[29] ),
        .O(last_sect_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_sect_carry__1_i_4
       (.I0(\sect_cnt_reg_n_0_[25] ),
        .I1(p_0_in0_in[25]),
        .I2(\sect_cnt_reg_n_0_[24] ),
        .I3(p_0_in0_in[24]),
        .I4(p_0_in0_in[26]),
        .I5(\sect_cnt_reg_n_0_[26] ),
        .O(last_sect_carry__1_i_4_n_0));
  CARRY4 last_sect_carry__2
       (.CI(last_sect_carry__1_n_0),
        .CO({last_sect_carry__2_n_0,last_sect_carry__2_n_1,last_sect_carry__2_n_2,last_sect_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_last_sect_carry__2_O_UNCONNECTED[3:0]),
        .S({last_sect_carry__2_i_1_n_0,last_sect_carry__2_i_2_n_0,last_sect_carry__2_i_3_n_0,last_sect_carry__2_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_sect_carry__2_i_1
       (.I0(\sect_cnt_reg_n_0_[46] ),
        .I1(p_0_in0_in[46]),
        .I2(\sect_cnt_reg_n_0_[45] ),
        .I3(p_0_in0_in[45]),
        .I4(p_0_in0_in[47]),
        .I5(\sect_cnt_reg_n_0_[47] ),
        .O(last_sect_carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_sect_carry__2_i_2
       (.I0(\sect_cnt_reg_n_0_[43] ),
        .I1(p_0_in0_in[43]),
        .I2(\sect_cnt_reg_n_0_[42] ),
        .I3(p_0_in0_in[42]),
        .I4(p_0_in0_in[44]),
        .I5(\sect_cnt_reg_n_0_[44] ),
        .O(last_sect_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_sect_carry__2_i_3
       (.I0(\sect_cnt_reg_n_0_[40] ),
        .I1(p_0_in0_in[40]),
        .I2(\sect_cnt_reg_n_0_[39] ),
        .I3(p_0_in0_in[39]),
        .I4(p_0_in0_in[41]),
        .I5(\sect_cnt_reg_n_0_[41] ),
        .O(last_sect_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_sect_carry__2_i_4
       (.I0(\sect_cnt_reg_n_0_[37] ),
        .I1(p_0_in0_in[37]),
        .I2(\sect_cnt_reg_n_0_[36] ),
        .I3(p_0_in0_in[36]),
        .I4(p_0_in0_in[38]),
        .I5(\sect_cnt_reg_n_0_[38] ),
        .O(last_sect_carry__2_i_4_n_0));
  CARRY4 last_sect_carry__3
       (.CI(last_sect_carry__2_n_0),
        .CO({NLW_last_sect_carry__3_CO_UNCONNECTED[3:2],last_sect,last_sect_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_last_sect_carry__3_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,fifo_rreq_n_151,fifo_rreq_n_152}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_sect_carry_i_1
       (.I0(\sect_cnt_reg_n_0_[10] ),
        .I1(p_0_in0_in[10]),
        .I2(\sect_cnt_reg_n_0_[9] ),
        .I3(p_0_in0_in[9]),
        .I4(p_0_in0_in[11]),
        .I5(\sect_cnt_reg_n_0_[11] ),
        .O(last_sect_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_sect_carry_i_2
       (.I0(\sect_cnt_reg_n_0_[7] ),
        .I1(p_0_in0_in[7]),
        .I2(\sect_cnt_reg_n_0_[6] ),
        .I3(p_0_in0_in[6]),
        .I4(p_0_in0_in[8]),
        .I5(\sect_cnt_reg_n_0_[8] ),
        .O(last_sect_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_sect_carry_i_3
       (.I0(\sect_cnt_reg_n_0_[4] ),
        .I1(p_0_in0_in[4]),
        .I2(\sect_cnt_reg_n_0_[3] ),
        .I3(p_0_in0_in[3]),
        .I4(p_0_in0_in[5]),
        .I5(\sect_cnt_reg_n_0_[5] ),
        .O(last_sect_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_sect_carry_i_4
       (.I0(\sect_cnt_reg_n_0_[1] ),
        .I1(p_0_in0_in[1]),
        .I2(\sect_cnt_reg_n_0_[0] ),
        .I3(p_0_in0_in[0]),
        .I4(p_0_in0_in[2]),
        .I5(\sect_cnt_reg_n_0_[2] ),
        .O(last_sect_carry_i_4_n_0));
  FDRE readRequestFIFONotEmptyReg_reg
       (.C(ap_clk),
        .CE(next_rreq),
        .D(readRequestFIFONotEmpty),
        .Q(readRequestFIFONotEmptyReg_reg_n_0),
        .R(SR));
  FDRE rreq_handling_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(\bus_wide_gen.fifo_burst_n_27 ),
        .Q(rreq_handling_reg_n_0),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_gmem_m_axi_reg_slice__parameterized0 rs_rdata
       (.CO(CO),
        .E(E),
        .\FSM_sequential_state[1]_i_3 (\data_p2_reg[64] [9:7]),
        .\FSM_sequential_state_reg[1]_0 (\bus_wide_gen.rdata_valid_t_reg_n_0 ),
        .Q(Q),
        .SR(SR),
        .\ap_CS_fsm_reg[19] (\ap_CS_fsm_reg[19] ),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter1_0(ap_enable_reg_pp0_iter1_0),
        .\bus_wide_gen.ready_for_data__0 (\bus_wide_gen.ready_for_data__0 ),
        .\data_p1_reg[15]_0 (\data_p1_reg[15] ),
        .\data_p2_reg[15]_0 ({\bus_wide_gen.data_buf_reg_n_0_[15] ,\bus_wide_gen.data_buf_reg_n_0_[14] ,\bus_wide_gen.data_buf_reg_n_0_[13] ,\bus_wide_gen.data_buf_reg_n_0_[12] ,\bus_wide_gen.data_buf_reg_n_0_[11] ,\bus_wide_gen.data_buf_reg_n_0_[10] ,\bus_wide_gen.data_buf_reg_n_0_[9] ,\bus_wide_gen.data_buf_reg_n_0_[8] ,\bus_wide_gen.data_buf_reg_n_0_[7] ,\bus_wide_gen.data_buf_reg_n_0_[6] ,\bus_wide_gen.data_buf_reg_n_0_[5] ,\bus_wide_gen.data_buf_reg_n_0_[4] ,\bus_wide_gen.data_buf_reg_n_0_[3] ,\bus_wide_gen.data_buf_reg_n_0_[2] ,\bus_wide_gen.data_buf_reg_n_0_[1] ,\bus_wide_gen.data_buf_reg_n_0_[0] }),
        .gmem_RREADY(gmem_RREADY),
        .grp_runLayer_Pipeline_2_fu_201_ap_start_reg(grp_runLayer_Pipeline_2_fu_201_ap_start_reg),
        .rdata_ack_t(rdata_ack_t),
        .\state_reg[0]_0 (\state_reg[0] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_gmem_m_axi_reg_slice rs_rreq
       (.Q(rs2f_rreq_valid),
        .SR(SR),
        .\ap_CS_fsm_reg[11] (\ap_CS_fsm_reg[11] ),
        .\ap_CS_fsm_reg[11]_0 (\ap_CS_fsm_reg[11]_0 ),
        .\ap_CS_fsm_reg[1] (\ap_CS_fsm_reg[1] ),
        .\ap_CS_fsm_reg[20] (\ap_CS_fsm_reg[20] ),
        .\ap_CS_fsm_reg[5] (\ap_CS_fsm_reg[5] ),
        .ap_NS_fsm__0(ap_NS_fsm__0),
        .ap_clk(ap_clk),
        .\data_p1_reg[79]_0 ({rs2f_rreq_data[79:64],rs2f_rreq_data[62:0]}),
        .\data_p1_reg[79]_1 (\data_p1_reg[79] ),
        .\data_p1_reg[79]_2 (\data_p1_reg[79]_0 ),
        .\data_p2_reg[62]_0 (\data_p2_reg[62] ),
        .\data_p2_reg[62]_1 (\data_p2_reg[62]_0 ),
        .\data_p2_reg[62]_2 (\data_p2_reg[62]_1 ),
        .\data_p2_reg[64]_0 ({\data_p2_reg[64] [11:10],\data_p2_reg[64] [6:0]}),
        .\data_p2_reg[79]_0 (\data_p2_reg[79] ),
        .gmem_ARVALID(gmem_ARVALID),
        .rs2f_rreq_ack(rs2f_rreq_ack),
        .s_ready_t_reg_0(s_ready_t_reg),
        .s_ready_t_reg_1(s_ready_t_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair250" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sect_addr_buf[10]_i_1 
       (.I0(first_sect),
        .I1(\start_addr_buf_reg_n_0_[10] ),
        .O(sect_addr[10]));
  (* SOFT_HLUTNM = "soft_lutpair250" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sect_addr_buf[11]_i_2 
       (.I0(first_sect),
        .I1(\start_addr_buf_reg_n_0_[11] ),
        .O(sect_addr[11]));
  (* SOFT_HLUTNM = "soft_lutpair240" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[12]_i_1 
       (.I0(p_0_in_0[0]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[0] ),
        .O(sect_addr[12]));
  (* SOFT_HLUTNM = "soft_lutpair240" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[13]_i_1 
       (.I0(p_0_in_0[1]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[1] ),
        .O(sect_addr[13]));
  (* SOFT_HLUTNM = "soft_lutpair239" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[14]_i_1 
       (.I0(p_0_in_0[2]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[2] ),
        .O(sect_addr[14]));
  (* SOFT_HLUTNM = "soft_lutpair239" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[15]_i_1 
       (.I0(p_0_in_0[3]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[3] ),
        .O(sect_addr[15]));
  (* SOFT_HLUTNM = "soft_lutpair238" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[16]_i_1 
       (.I0(p_0_in_0[4]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[4] ),
        .O(sect_addr[16]));
  (* SOFT_HLUTNM = "soft_lutpair238" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[17]_i_1 
       (.I0(p_0_in_0[5]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[5] ),
        .O(sect_addr[17]));
  (* SOFT_HLUTNM = "soft_lutpair237" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[18]_i_1 
       (.I0(p_0_in_0[6]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[6] ),
        .O(sect_addr[18]));
  (* SOFT_HLUTNM = "soft_lutpair237" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[19]_i_1 
       (.I0(p_0_in_0[7]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[7] ),
        .O(sect_addr[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \sect_addr_buf[1]_i_1 
       (.I0(first_sect),
        .I1(\start_addr_buf_reg_n_0_[1] ),
        .O(sect_addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[20]_i_1 
       (.I0(p_0_in_0[8]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[8] ),
        .O(sect_addr[20]));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[21]_i_1 
       (.I0(p_0_in_0[9]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[9] ),
        .O(sect_addr[21]));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[22]_i_1 
       (.I0(p_0_in_0[10]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[10] ),
        .O(sect_addr[22]));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[23]_i_1 
       (.I0(p_0_in_0[11]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[11] ),
        .O(sect_addr[23]));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[24]_i_1 
       (.I0(p_0_in_0[12]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[12] ),
        .O(sect_addr[24]));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[25]_i_1 
       (.I0(p_0_in_0[13]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[13] ),
        .O(sect_addr[25]));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[26]_i_1 
       (.I0(p_0_in_0[14]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[14] ),
        .O(sect_addr[26]));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[27]_i_1 
       (.I0(p_0_in_0[15]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[15] ),
        .O(sect_addr[27]));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[28]_i_1 
       (.I0(p_0_in_0[16]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[16] ),
        .O(sect_addr[28]));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[29]_i_1 
       (.I0(p_0_in_0[17]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[17] ),
        .O(sect_addr[29]));
  (* SOFT_HLUTNM = "soft_lutpair254" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sect_addr_buf[2]_i_1 
       (.I0(first_sect),
        .I1(\start_addr_buf_reg_n_0_[2] ),
        .O(sect_addr[2]));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[30]_i_1 
       (.I0(p_0_in_0[18]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[18] ),
        .O(sect_addr[30]));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[31]_i_1 
       (.I0(p_0_in_0[19]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[19] ),
        .O(sect_addr[31]));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[32]_i_1 
       (.I0(p_0_in_0[20]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[20] ),
        .O(sect_addr[32]));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[33]_i_1 
       (.I0(p_0_in_0[21]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[21] ),
        .O(sect_addr[33]));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[34]_i_1 
       (.I0(p_0_in_0[22]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[22] ),
        .O(sect_addr[34]));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[35]_i_1 
       (.I0(p_0_in_0[23]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[23] ),
        .O(sect_addr[35]));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[36]_i_1 
       (.I0(p_0_in_0[24]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[24] ),
        .O(sect_addr[36]));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[37]_i_1 
       (.I0(p_0_in_0[25]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[25] ),
        .O(sect_addr[37]));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[38]_i_1 
       (.I0(p_0_in_0[26]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[26] ),
        .O(sect_addr[38]));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[39]_i_1 
       (.I0(p_0_in_0[27]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[27] ),
        .O(sect_addr[39]));
  (* SOFT_HLUTNM = "soft_lutpair254" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sect_addr_buf[3]_i_1 
       (.I0(first_sect),
        .I1(\start_addr_buf_reg_n_0_[3] ),
        .O(sect_addr[3]));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[40]_i_1 
       (.I0(p_0_in_0[28]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[28] ),
        .O(sect_addr[40]));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[41]_i_1 
       (.I0(p_0_in_0[29]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[29] ),
        .O(sect_addr[41]));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[42]_i_1 
       (.I0(p_0_in_0[30]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[30] ),
        .O(sect_addr[42]));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[43]_i_1 
       (.I0(p_0_in_0[31]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[31] ),
        .O(sect_addr[43]));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[44]_i_1 
       (.I0(p_0_in_0[32]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[32] ),
        .O(sect_addr[44]));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[45]_i_1 
       (.I0(p_0_in_0[33]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[33] ),
        .O(sect_addr[45]));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[46]_i_1 
       (.I0(p_0_in_0[34]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[34] ),
        .O(sect_addr[46]));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[47]_i_1 
       (.I0(p_0_in_0[35]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[35] ),
        .O(sect_addr[47]));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[48]_i_1 
       (.I0(p_0_in_0[36]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[36] ),
        .O(sect_addr[48]));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[49]_i_1 
       (.I0(p_0_in_0[37]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[37] ),
        .O(sect_addr[49]));
  (* SOFT_HLUTNM = "soft_lutpair253" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sect_addr_buf[4]_i_1 
       (.I0(first_sect),
        .I1(\start_addr_buf_reg_n_0_[4] ),
        .O(sect_addr[4]));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[50]_i_1 
       (.I0(p_0_in_0[38]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[38] ),
        .O(sect_addr[50]));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[51]_i_1 
       (.I0(p_0_in_0[39]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[39] ),
        .O(sect_addr[51]));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[52]_i_1 
       (.I0(p_0_in_0[40]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[40] ),
        .O(sect_addr[52]));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[53]_i_1 
       (.I0(p_0_in_0[41]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[41] ),
        .O(sect_addr[53]));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[54]_i_1 
       (.I0(p_0_in_0[42]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[42] ),
        .O(sect_addr[54]));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[55]_i_1 
       (.I0(p_0_in_0[43]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[43] ),
        .O(sect_addr[55]));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[56]_i_1 
       (.I0(p_0_in_0[44]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[44] ),
        .O(sect_addr[56]));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[57]_i_1 
       (.I0(p_0_in_0[45]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[45] ),
        .O(sect_addr[57]));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[58]_i_1 
       (.I0(p_0_in_0[46]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[46] ),
        .O(sect_addr[58]));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[59]_i_1 
       (.I0(p_0_in_0[47]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[47] ),
        .O(sect_addr[59]));
  (* SOFT_HLUTNM = "soft_lutpair253" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sect_addr_buf[5]_i_1 
       (.I0(first_sect),
        .I1(\start_addr_buf_reg_n_0_[5] ),
        .O(sect_addr[5]));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[60]_i_1 
       (.I0(p_0_in_0[48]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[48] ),
        .O(sect_addr[60]));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[61]_i_1 
       (.I0(p_0_in_0[49]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[49] ),
        .O(sect_addr[61]));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[62]_i_1 
       (.I0(p_0_in_0[50]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[50] ),
        .O(sect_addr[62]));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sect_addr_buf[63]_i_1 
       (.I0(p_0_in_0[51]),
        .I1(first_sect),
        .I2(\sect_cnt_reg_n_0_[51] ),
        .O(sect_addr[63]));
  (* SOFT_HLUTNM = "soft_lutpair252" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sect_addr_buf[6]_i_1 
       (.I0(first_sect),
        .I1(\start_addr_buf_reg_n_0_[6] ),
        .O(sect_addr[6]));
  (* SOFT_HLUTNM = "soft_lutpair252" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sect_addr_buf[7]_i_1 
       (.I0(first_sect),
        .I1(\start_addr_buf_reg_n_0_[7] ),
        .O(sect_addr[7]));
  (* SOFT_HLUTNM = "soft_lutpair251" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sect_addr_buf[8]_i_1 
       (.I0(first_sect),
        .I1(\start_addr_buf_reg_n_0_[8] ),
        .O(sect_addr[8]));
  (* SOFT_HLUTNM = "soft_lutpair251" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sect_addr_buf[9]_i_1 
       (.I0(first_sect),
        .I1(\start_addr_buf_reg_n_0_[9] ),
        .O(sect_addr[9]));
  FDRE \sect_addr_buf_reg[10] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[10]),
        .Q(\sect_addr_buf_reg_n_0_[10] ),
        .R(\bus_wide_gen.fifo_burst_n_30 ));
  FDRE \sect_addr_buf_reg[11] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[11]),
        .Q(\sect_addr_buf_reg_n_0_[11] ),
        .R(\bus_wide_gen.fifo_burst_n_30 ));
  FDRE \sect_addr_buf_reg[12] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[12]),
        .Q(\sect_addr_buf_reg_n_0_[12] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[13] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[13]),
        .Q(\sect_addr_buf_reg_n_0_[13] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[14] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[14]),
        .Q(\sect_addr_buf_reg_n_0_[14] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[15] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[15]),
        .Q(\sect_addr_buf_reg_n_0_[15] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[16] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[16]),
        .Q(\sect_addr_buf_reg_n_0_[16] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[17] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[17]),
        .Q(\sect_addr_buf_reg_n_0_[17] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[18] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[18]),
        .Q(\sect_addr_buf_reg_n_0_[18] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[19] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[19]),
        .Q(\sect_addr_buf_reg_n_0_[19] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[1] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[1]),
        .Q(\sect_addr_buf_reg_n_0_[1] ),
        .R(\bus_wide_gen.fifo_burst_n_30 ));
  FDRE \sect_addr_buf_reg[20] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[20]),
        .Q(\sect_addr_buf_reg_n_0_[20] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[21] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[21]),
        .Q(\sect_addr_buf_reg_n_0_[21] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[22] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[22]),
        .Q(\sect_addr_buf_reg_n_0_[22] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[23] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[23]),
        .Q(\sect_addr_buf_reg_n_0_[23] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[24] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[24]),
        .Q(\sect_addr_buf_reg_n_0_[24] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[25] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[25]),
        .Q(\sect_addr_buf_reg_n_0_[25] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[26] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[26]),
        .Q(\sect_addr_buf_reg_n_0_[26] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[27] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[27]),
        .Q(\sect_addr_buf_reg_n_0_[27] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[28] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[28]),
        .Q(\sect_addr_buf_reg_n_0_[28] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[29] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[29]),
        .Q(\sect_addr_buf_reg_n_0_[29] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[2] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[2]),
        .Q(\sect_addr_buf_reg_n_0_[2] ),
        .R(\bus_wide_gen.fifo_burst_n_30 ));
  FDRE \sect_addr_buf_reg[30] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[30]),
        .Q(\sect_addr_buf_reg_n_0_[30] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[31] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[31]),
        .Q(\sect_addr_buf_reg_n_0_[31] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[32] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[32]),
        .Q(\sect_addr_buf_reg_n_0_[32] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[33] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[33]),
        .Q(\sect_addr_buf_reg_n_0_[33] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[34] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[34]),
        .Q(\sect_addr_buf_reg_n_0_[34] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[35] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[35]),
        .Q(\sect_addr_buf_reg_n_0_[35] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[36] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[36]),
        .Q(\sect_addr_buf_reg_n_0_[36] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[37] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[37]),
        .Q(\sect_addr_buf_reg_n_0_[37] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[38] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[38]),
        .Q(\sect_addr_buf_reg_n_0_[38] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[39] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[39]),
        .Q(\sect_addr_buf_reg_n_0_[39] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[3] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[3]),
        .Q(\sect_addr_buf_reg_n_0_[3] ),
        .R(\bus_wide_gen.fifo_burst_n_30 ));
  FDRE \sect_addr_buf_reg[40] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[40]),
        .Q(\sect_addr_buf_reg_n_0_[40] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[41] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[41]),
        .Q(\sect_addr_buf_reg_n_0_[41] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[42] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[42]),
        .Q(\sect_addr_buf_reg_n_0_[42] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[43] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[43]),
        .Q(\sect_addr_buf_reg_n_0_[43] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[44] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[44]),
        .Q(\sect_addr_buf_reg_n_0_[44] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[45] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[45]),
        .Q(\sect_addr_buf_reg_n_0_[45] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[46] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[46]),
        .Q(\sect_addr_buf_reg_n_0_[46] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[47] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[47]),
        .Q(\sect_addr_buf_reg_n_0_[47] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[48] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[48]),
        .Q(\sect_addr_buf_reg_n_0_[48] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[49] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[49]),
        .Q(\sect_addr_buf_reg_n_0_[49] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[4] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[4]),
        .Q(\sect_addr_buf_reg_n_0_[4] ),
        .R(\bus_wide_gen.fifo_burst_n_30 ));
  FDRE \sect_addr_buf_reg[50] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[50]),
        .Q(\sect_addr_buf_reg_n_0_[50] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[51] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[51]),
        .Q(\sect_addr_buf_reg_n_0_[51] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[52] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[52]),
        .Q(\sect_addr_buf_reg_n_0_[52] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[53] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[53]),
        .Q(\sect_addr_buf_reg_n_0_[53] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[54] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[54]),
        .Q(\sect_addr_buf_reg_n_0_[54] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[55] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[55]),
        .Q(\sect_addr_buf_reg_n_0_[55] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[56] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[56]),
        .Q(\sect_addr_buf_reg_n_0_[56] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[57] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[57]),
        .Q(\sect_addr_buf_reg_n_0_[57] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[58] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[58]),
        .Q(\sect_addr_buf_reg_n_0_[58] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[59] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[59]),
        .Q(\sect_addr_buf_reg_n_0_[59] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[5] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[5]),
        .Q(\sect_addr_buf_reg_n_0_[5] ),
        .R(\bus_wide_gen.fifo_burst_n_30 ));
  FDRE \sect_addr_buf_reg[60] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[60]),
        .Q(\sect_addr_buf_reg_n_0_[60] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[61] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[61]),
        .Q(\sect_addr_buf_reg_n_0_[61] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[62] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[62]),
        .Q(\sect_addr_buf_reg_n_0_[62] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[63] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[63]),
        .Q(\sect_addr_buf_reg_n_0_[63] ),
        .R(SR));
  FDRE \sect_addr_buf_reg[6] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[6]),
        .Q(\sect_addr_buf_reg_n_0_[6] ),
        .R(\bus_wide_gen.fifo_burst_n_30 ));
  FDRE \sect_addr_buf_reg[7] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[7]),
        .Q(\sect_addr_buf_reg_n_0_[7] ),
        .R(\bus_wide_gen.fifo_burst_n_30 ));
  FDRE \sect_addr_buf_reg[8] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[8]),
        .Q(\sect_addr_buf_reg_n_0_[8] ),
        .R(\bus_wide_gen.fifo_burst_n_30 ));
  FDRE \sect_addr_buf_reg[9] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(sect_addr[9]),
        .Q(\sect_addr_buf_reg_n_0_[9] ),
        .R(\bus_wide_gen.fifo_burst_n_30 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sect_cnt0_carry
       (.CI(1'b0),
        .CO({sect_cnt0_carry_n_0,sect_cnt0_carry_n_1,sect_cnt0_carry_n_2,sect_cnt0_carry_n_3}),
        .CYINIT(\sect_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sect_cnt0[4:1]),
        .S({\sect_cnt_reg_n_0_[4] ,\sect_cnt_reg_n_0_[3] ,\sect_cnt_reg_n_0_[2] ,\sect_cnt_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sect_cnt0_carry__0
       (.CI(sect_cnt0_carry_n_0),
        .CO({sect_cnt0_carry__0_n_0,sect_cnt0_carry__0_n_1,sect_cnt0_carry__0_n_2,sect_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sect_cnt0[8:5]),
        .S({\sect_cnt_reg_n_0_[8] ,\sect_cnt_reg_n_0_[7] ,\sect_cnt_reg_n_0_[6] ,\sect_cnt_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sect_cnt0_carry__1
       (.CI(sect_cnt0_carry__0_n_0),
        .CO({sect_cnt0_carry__1_n_0,sect_cnt0_carry__1_n_1,sect_cnt0_carry__1_n_2,sect_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sect_cnt0[12:9]),
        .S({\sect_cnt_reg_n_0_[12] ,\sect_cnt_reg_n_0_[11] ,\sect_cnt_reg_n_0_[10] ,\sect_cnt_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sect_cnt0_carry__10
       (.CI(sect_cnt0_carry__9_n_0),
        .CO({sect_cnt0_carry__10_n_0,sect_cnt0_carry__10_n_1,sect_cnt0_carry__10_n_2,sect_cnt0_carry__10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sect_cnt0[48:45]),
        .S({\sect_cnt_reg_n_0_[48] ,\sect_cnt_reg_n_0_[47] ,\sect_cnt_reg_n_0_[46] ,\sect_cnt_reg_n_0_[45] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sect_cnt0_carry__11
       (.CI(sect_cnt0_carry__10_n_0),
        .CO({NLW_sect_cnt0_carry__11_CO_UNCONNECTED[3:2],sect_cnt0_carry__11_n_2,sect_cnt0_carry__11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sect_cnt0_carry__11_O_UNCONNECTED[3],sect_cnt0[51:49]}),
        .S({1'b0,\sect_cnt_reg_n_0_[51] ,\sect_cnt_reg_n_0_[50] ,\sect_cnt_reg_n_0_[49] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sect_cnt0_carry__2
       (.CI(sect_cnt0_carry__1_n_0),
        .CO({sect_cnt0_carry__2_n_0,sect_cnt0_carry__2_n_1,sect_cnt0_carry__2_n_2,sect_cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sect_cnt0[16:13]),
        .S({\sect_cnt_reg_n_0_[16] ,\sect_cnt_reg_n_0_[15] ,\sect_cnt_reg_n_0_[14] ,\sect_cnt_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sect_cnt0_carry__3
       (.CI(sect_cnt0_carry__2_n_0),
        .CO({sect_cnt0_carry__3_n_0,sect_cnt0_carry__3_n_1,sect_cnt0_carry__3_n_2,sect_cnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sect_cnt0[20:17]),
        .S({\sect_cnt_reg_n_0_[20] ,\sect_cnt_reg_n_0_[19] ,\sect_cnt_reg_n_0_[18] ,\sect_cnt_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sect_cnt0_carry__4
       (.CI(sect_cnt0_carry__3_n_0),
        .CO({sect_cnt0_carry__4_n_0,sect_cnt0_carry__4_n_1,sect_cnt0_carry__4_n_2,sect_cnt0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sect_cnt0[24:21]),
        .S({\sect_cnt_reg_n_0_[24] ,\sect_cnt_reg_n_0_[23] ,\sect_cnt_reg_n_0_[22] ,\sect_cnt_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sect_cnt0_carry__5
       (.CI(sect_cnt0_carry__4_n_0),
        .CO({sect_cnt0_carry__5_n_0,sect_cnt0_carry__5_n_1,sect_cnt0_carry__5_n_2,sect_cnt0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sect_cnt0[28:25]),
        .S({\sect_cnt_reg_n_0_[28] ,\sect_cnt_reg_n_0_[27] ,\sect_cnt_reg_n_0_[26] ,\sect_cnt_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sect_cnt0_carry__6
       (.CI(sect_cnt0_carry__5_n_0),
        .CO({sect_cnt0_carry__6_n_0,sect_cnt0_carry__6_n_1,sect_cnt0_carry__6_n_2,sect_cnt0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sect_cnt0[32:29]),
        .S({\sect_cnt_reg_n_0_[32] ,\sect_cnt_reg_n_0_[31] ,\sect_cnt_reg_n_0_[30] ,\sect_cnt_reg_n_0_[29] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sect_cnt0_carry__7
       (.CI(sect_cnt0_carry__6_n_0),
        .CO({sect_cnt0_carry__7_n_0,sect_cnt0_carry__7_n_1,sect_cnt0_carry__7_n_2,sect_cnt0_carry__7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sect_cnt0[36:33]),
        .S({\sect_cnt_reg_n_0_[36] ,\sect_cnt_reg_n_0_[35] ,\sect_cnt_reg_n_0_[34] ,\sect_cnt_reg_n_0_[33] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sect_cnt0_carry__8
       (.CI(sect_cnt0_carry__7_n_0),
        .CO({sect_cnt0_carry__8_n_0,sect_cnt0_carry__8_n_1,sect_cnt0_carry__8_n_2,sect_cnt0_carry__8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sect_cnt0[40:37]),
        .S({\sect_cnt_reg_n_0_[40] ,\sect_cnt_reg_n_0_[39] ,\sect_cnt_reg_n_0_[38] ,\sect_cnt_reg_n_0_[37] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sect_cnt0_carry__9
       (.CI(sect_cnt0_carry__8_n_0),
        .CO({sect_cnt0_carry__9_n_0,sect_cnt0_carry__9_n_1,sect_cnt0_carry__9_n_2,sect_cnt0_carry__9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sect_cnt0[44:41]),
        .S({\sect_cnt_reg_n_0_[44] ,\sect_cnt_reg_n_0_[43] ,\sect_cnt_reg_n_0_[42] ,\sect_cnt_reg_n_0_[41] }));
  FDRE \sect_cnt_reg[0] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_55),
        .Q(\sect_cnt_reg_n_0_[0] ),
        .R(SR));
  FDRE \sect_cnt_reg[10] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_45),
        .Q(\sect_cnt_reg_n_0_[10] ),
        .R(SR));
  FDRE \sect_cnt_reg[11] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_44),
        .Q(\sect_cnt_reg_n_0_[11] ),
        .R(SR));
  FDRE \sect_cnt_reg[12] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_43),
        .Q(\sect_cnt_reg_n_0_[12] ),
        .R(SR));
  FDRE \sect_cnt_reg[13] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_42),
        .Q(\sect_cnt_reg_n_0_[13] ),
        .R(SR));
  FDRE \sect_cnt_reg[14] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_41),
        .Q(\sect_cnt_reg_n_0_[14] ),
        .R(SR));
  FDRE \sect_cnt_reg[15] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_40),
        .Q(\sect_cnt_reg_n_0_[15] ),
        .R(SR));
  FDRE \sect_cnt_reg[16] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_39),
        .Q(\sect_cnt_reg_n_0_[16] ),
        .R(SR));
  FDRE \sect_cnt_reg[17] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_38),
        .Q(\sect_cnt_reg_n_0_[17] ),
        .R(SR));
  FDRE \sect_cnt_reg[18] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_37),
        .Q(\sect_cnt_reg_n_0_[18] ),
        .R(SR));
  FDRE \sect_cnt_reg[19] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_36),
        .Q(\sect_cnt_reg_n_0_[19] ),
        .R(SR));
  FDRE \sect_cnt_reg[1] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_54),
        .Q(\sect_cnt_reg_n_0_[1] ),
        .R(SR));
  FDRE \sect_cnt_reg[20] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_35),
        .Q(\sect_cnt_reg_n_0_[20] ),
        .R(SR));
  FDRE \sect_cnt_reg[21] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_34),
        .Q(\sect_cnt_reg_n_0_[21] ),
        .R(SR));
  FDRE \sect_cnt_reg[22] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_33),
        .Q(\sect_cnt_reg_n_0_[22] ),
        .R(SR));
  FDRE \sect_cnt_reg[23] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_32),
        .Q(\sect_cnt_reg_n_0_[23] ),
        .R(SR));
  FDRE \sect_cnt_reg[24] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_31),
        .Q(\sect_cnt_reg_n_0_[24] ),
        .R(SR));
  FDRE \sect_cnt_reg[25] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_30),
        .Q(\sect_cnt_reg_n_0_[25] ),
        .R(SR));
  FDRE \sect_cnt_reg[26] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_29),
        .Q(\sect_cnt_reg_n_0_[26] ),
        .R(SR));
  FDRE \sect_cnt_reg[27] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_28),
        .Q(\sect_cnt_reg_n_0_[27] ),
        .R(SR));
  FDRE \sect_cnt_reg[28] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_27),
        .Q(\sect_cnt_reg_n_0_[28] ),
        .R(SR));
  FDRE \sect_cnt_reg[29] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_26),
        .Q(\sect_cnt_reg_n_0_[29] ),
        .R(SR));
  FDRE \sect_cnt_reg[2] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_53),
        .Q(\sect_cnt_reg_n_0_[2] ),
        .R(SR));
  FDRE \sect_cnt_reg[30] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_25),
        .Q(\sect_cnt_reg_n_0_[30] ),
        .R(SR));
  FDRE \sect_cnt_reg[31] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_24),
        .Q(\sect_cnt_reg_n_0_[31] ),
        .R(SR));
  FDRE \sect_cnt_reg[32] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_23),
        .Q(\sect_cnt_reg_n_0_[32] ),
        .R(SR));
  FDRE \sect_cnt_reg[33] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_22),
        .Q(\sect_cnt_reg_n_0_[33] ),
        .R(SR));
  FDRE \sect_cnt_reg[34] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_21),
        .Q(\sect_cnt_reg_n_0_[34] ),
        .R(SR));
  FDRE \sect_cnt_reg[35] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_20),
        .Q(\sect_cnt_reg_n_0_[35] ),
        .R(SR));
  FDRE \sect_cnt_reg[36] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_19),
        .Q(\sect_cnt_reg_n_0_[36] ),
        .R(SR));
  FDRE \sect_cnt_reg[37] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_18),
        .Q(\sect_cnt_reg_n_0_[37] ),
        .R(SR));
  FDRE \sect_cnt_reg[38] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_17),
        .Q(\sect_cnt_reg_n_0_[38] ),
        .R(SR));
  FDRE \sect_cnt_reg[39] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_16),
        .Q(\sect_cnt_reg_n_0_[39] ),
        .R(SR));
  FDRE \sect_cnt_reg[3] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_52),
        .Q(\sect_cnt_reg_n_0_[3] ),
        .R(SR));
  FDRE \sect_cnt_reg[40] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_15),
        .Q(\sect_cnt_reg_n_0_[40] ),
        .R(SR));
  FDRE \sect_cnt_reg[41] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_14),
        .Q(\sect_cnt_reg_n_0_[41] ),
        .R(SR));
  FDRE \sect_cnt_reg[42] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_13),
        .Q(\sect_cnt_reg_n_0_[42] ),
        .R(SR));
  FDRE \sect_cnt_reg[43] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_12),
        .Q(\sect_cnt_reg_n_0_[43] ),
        .R(SR));
  FDRE \sect_cnt_reg[44] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_11),
        .Q(\sect_cnt_reg_n_0_[44] ),
        .R(SR));
  FDRE \sect_cnt_reg[45] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_10),
        .Q(\sect_cnt_reg_n_0_[45] ),
        .R(SR));
  FDRE \sect_cnt_reg[46] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_9),
        .Q(\sect_cnt_reg_n_0_[46] ),
        .R(SR));
  FDRE \sect_cnt_reg[47] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_8),
        .Q(\sect_cnt_reg_n_0_[47] ),
        .R(SR));
  FDRE \sect_cnt_reg[48] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_7),
        .Q(\sect_cnt_reg_n_0_[48] ),
        .R(SR));
  FDRE \sect_cnt_reg[49] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_6),
        .Q(\sect_cnt_reg_n_0_[49] ),
        .R(SR));
  FDRE \sect_cnt_reg[4] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_51),
        .Q(\sect_cnt_reg_n_0_[4] ),
        .R(SR));
  FDRE \sect_cnt_reg[50] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_5),
        .Q(\sect_cnt_reg_n_0_[50] ),
        .R(SR));
  FDRE \sect_cnt_reg[51] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_4),
        .Q(\sect_cnt_reg_n_0_[51] ),
        .R(SR));
  FDRE \sect_cnt_reg[5] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_50),
        .Q(\sect_cnt_reg_n_0_[5] ),
        .R(SR));
  FDRE \sect_cnt_reg[6] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_49),
        .Q(\sect_cnt_reg_n_0_[6] ),
        .R(SR));
  FDRE \sect_cnt_reg[7] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_48),
        .Q(\sect_cnt_reg_n_0_[7] ),
        .R(SR));
  FDRE \sect_cnt_reg[8] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_47),
        .Q(\sect_cnt_reg_n_0_[8] ),
        .R(SR));
  FDRE \sect_cnt_reg[9] 
       (.C(ap_clk),
        .CE(fifo_rreq_n_3),
        .D(fifo_rreq_n_46),
        .Q(\sect_cnt_reg_n_0_[9] ),
        .R(SR));
  FDRE \sect_end_buf_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\bus_wide_gen.fifo_burst_n_38 ),
        .Q(\sect_end_buf_reg_n_0_[1] ),
        .R(SR));
  LUT5 #(
    .INIT(32'hAAF033FF)) 
    \sect_len_buf[0]_i_1 
       (.I0(beat_len_buf[0]),
        .I1(\start_addr_buf_reg_n_0_[2] ),
        .I2(\end_addr_buf_reg_n_0_[2] ),
        .I3(first_sect),
        .I4(last_sect),
        .O(\sect_len_buf[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAF033FF)) 
    \sect_len_buf[1]_i_1 
       (.I0(beat_len_buf[1]),
        .I1(\start_addr_buf_reg_n_0_[3] ),
        .I2(\end_addr_buf_reg_n_0_[3] ),
        .I3(first_sect),
        .I4(last_sect),
        .O(\sect_len_buf[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAF033FF)) 
    \sect_len_buf[2]_i_1 
       (.I0(beat_len_buf[2]),
        .I1(\start_addr_buf_reg_n_0_[4] ),
        .I2(\end_addr_buf_reg_n_0_[4] ),
        .I3(first_sect),
        .I4(last_sect),
        .O(\sect_len_buf[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAF033FF)) 
    \sect_len_buf[3]_i_1 
       (.I0(beat_len_buf[3]),
        .I1(\start_addr_buf_reg_n_0_[5] ),
        .I2(\end_addr_buf_reg_n_0_[5] ),
        .I3(first_sect),
        .I4(last_sect),
        .O(\sect_len_buf[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAF033FF)) 
    \sect_len_buf[4]_i_1 
       (.I0(beat_len_buf[4]),
        .I1(\start_addr_buf_reg_n_0_[6] ),
        .I2(\end_addr_buf_reg_n_0_[6] ),
        .I3(first_sect),
        .I4(last_sect),
        .O(\sect_len_buf[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAF033FF)) 
    \sect_len_buf[5]_i_1 
       (.I0(beat_len_buf[5]),
        .I1(\start_addr_buf_reg_n_0_[7] ),
        .I2(\end_addr_buf_reg_n_0_[7] ),
        .I3(first_sect),
        .I4(last_sect),
        .O(\sect_len_buf[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAF033FF)) 
    \sect_len_buf[6]_i_1 
       (.I0(beat_len_buf[6]),
        .I1(\start_addr_buf_reg_n_0_[8] ),
        .I2(\end_addr_buf_reg_n_0_[8] ),
        .I3(first_sect),
        .I4(last_sect),
        .O(\sect_len_buf[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAF033FF)) 
    \sect_len_buf[7]_i_1 
       (.I0(beat_len_buf[7]),
        .I1(\start_addr_buf_reg_n_0_[9] ),
        .I2(\end_addr_buf_reg_n_0_[9] ),
        .I3(first_sect),
        .I4(last_sect),
        .O(\sect_len_buf[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAF033FF)) 
    \sect_len_buf[8]_i_1 
       (.I0(beat_len_buf[8]),
        .I1(\start_addr_buf_reg_n_0_[10] ),
        .I2(\end_addr_buf_reg_n_0_[10] ),
        .I3(first_sect),
        .I4(last_sect),
        .O(\sect_len_buf[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAF033FF)) 
    \sect_len_buf[9]_i_2 
       (.I0(beat_len_buf[9]),
        .I1(\start_addr_buf_reg_n_0_[11] ),
        .I2(\end_addr_buf_reg_n_0_[11] ),
        .I3(first_sect),
        .I4(last_sect),
        .O(\sect_len_buf[9]_i_2_n_0 ));
  FDRE \sect_len_buf_reg[0] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(\sect_len_buf[0]_i_1_n_0 ),
        .Q(\sect_len_buf_reg_n_0_[0] ),
        .R(SR));
  FDRE \sect_len_buf_reg[1] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(\sect_len_buf[1]_i_1_n_0 ),
        .Q(\sect_len_buf_reg_n_0_[1] ),
        .R(SR));
  FDRE \sect_len_buf_reg[2] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(\sect_len_buf[2]_i_1_n_0 ),
        .Q(\sect_len_buf_reg_n_0_[2] ),
        .R(SR));
  FDRE \sect_len_buf_reg[3] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(\sect_len_buf[3]_i_1_n_0 ),
        .Q(\sect_len_buf_reg_n_0_[3] ),
        .R(SR));
  FDRE \sect_len_buf_reg[4] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(\sect_len_buf[4]_i_1_n_0 ),
        .Q(\sect_len_buf_reg_n_0_[4] ),
        .R(SR));
  FDRE \sect_len_buf_reg[5] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(\sect_len_buf[5]_i_1_n_0 ),
        .Q(\sect_len_buf_reg_n_0_[5] ),
        .R(SR));
  FDRE \sect_len_buf_reg[6] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(\sect_len_buf[6]_i_1_n_0 ),
        .Q(\sect_len_buf_reg_n_0_[6] ),
        .R(SR));
  FDRE \sect_len_buf_reg[7] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(\sect_len_buf[7]_i_1_n_0 ),
        .Q(\sect_len_buf_reg_n_0_[7] ),
        .R(SR));
  FDRE \sect_len_buf_reg[8] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(\sect_len_buf[8]_i_1_n_0 ),
        .Q(\sect_len_buf_reg_n_0_[8] ),
        .R(SR));
  FDRE \sect_len_buf_reg[9] 
       (.C(ap_clk),
        .CE(p_21_in),
        .D(\sect_len_buf[9]_i_2_n_0 ),
        .Q(\sect_len_buf_reg_n_0_[9] ),
        .R(SR));
  FDRE \start_addr_buf_reg[10] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[10] ),
        .Q(\start_addr_buf_reg_n_0_[10] ),
        .R(SR));
  FDRE \start_addr_buf_reg[11] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[11] ),
        .Q(\start_addr_buf_reg_n_0_[11] ),
        .R(SR));
  FDRE \start_addr_buf_reg[12] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[12] ),
        .Q(p_0_in_0[0]),
        .R(SR));
  FDRE \start_addr_buf_reg[13] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[13] ),
        .Q(p_0_in_0[1]),
        .R(SR));
  FDRE \start_addr_buf_reg[14] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[14] ),
        .Q(p_0_in_0[2]),
        .R(SR));
  FDRE \start_addr_buf_reg[15] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[15] ),
        .Q(p_0_in_0[3]),
        .R(SR));
  FDRE \start_addr_buf_reg[16] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[16] ),
        .Q(p_0_in_0[4]),
        .R(SR));
  FDRE \start_addr_buf_reg[17] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[17] ),
        .Q(p_0_in_0[5]),
        .R(SR));
  FDRE \start_addr_buf_reg[18] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[18] ),
        .Q(p_0_in_0[6]),
        .R(SR));
  FDRE \start_addr_buf_reg[19] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[19] ),
        .Q(p_0_in_0[7]),
        .R(SR));
  FDRE \start_addr_buf_reg[1] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[1] ),
        .Q(\start_addr_buf_reg_n_0_[1] ),
        .R(SR));
  FDRE \start_addr_buf_reg[20] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[20] ),
        .Q(p_0_in_0[8]),
        .R(SR));
  FDRE \start_addr_buf_reg[21] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[21] ),
        .Q(p_0_in_0[9]),
        .R(SR));
  FDRE \start_addr_buf_reg[22] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[22] ),
        .Q(p_0_in_0[10]),
        .R(SR));
  FDRE \start_addr_buf_reg[23] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[23] ),
        .Q(p_0_in_0[11]),
        .R(SR));
  FDRE \start_addr_buf_reg[24] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[24] ),
        .Q(p_0_in_0[12]),
        .R(SR));
  FDRE \start_addr_buf_reg[25] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[25] ),
        .Q(p_0_in_0[13]),
        .R(SR));
  FDRE \start_addr_buf_reg[26] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[26] ),
        .Q(p_0_in_0[14]),
        .R(SR));
  FDRE \start_addr_buf_reg[27] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[27] ),
        .Q(p_0_in_0[15]),
        .R(SR));
  FDRE \start_addr_buf_reg[28] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[28] ),
        .Q(p_0_in_0[16]),
        .R(SR));
  FDRE \start_addr_buf_reg[29] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[29] ),
        .Q(p_0_in_0[17]),
        .R(SR));
  FDRE \start_addr_buf_reg[2] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[2] ),
        .Q(\start_addr_buf_reg_n_0_[2] ),
        .R(SR));
  FDRE \start_addr_buf_reg[30] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[30] ),
        .Q(p_0_in_0[18]),
        .R(SR));
  FDRE \start_addr_buf_reg[31] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[31] ),
        .Q(p_0_in_0[19]),
        .R(SR));
  FDRE \start_addr_buf_reg[32] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[32] ),
        .Q(p_0_in_0[20]),
        .R(SR));
  FDRE \start_addr_buf_reg[33] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[33] ),
        .Q(p_0_in_0[21]),
        .R(SR));
  FDRE \start_addr_buf_reg[34] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[34] ),
        .Q(p_0_in_0[22]),
        .R(SR));
  FDRE \start_addr_buf_reg[35] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[35] ),
        .Q(p_0_in_0[23]),
        .R(SR));
  FDRE \start_addr_buf_reg[36] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[36] ),
        .Q(p_0_in_0[24]),
        .R(SR));
  FDRE \start_addr_buf_reg[37] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[37] ),
        .Q(p_0_in_0[25]),
        .R(SR));
  FDRE \start_addr_buf_reg[38] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[38] ),
        .Q(p_0_in_0[26]),
        .R(SR));
  FDRE \start_addr_buf_reg[39] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[39] ),
        .Q(p_0_in_0[27]),
        .R(SR));
  FDRE \start_addr_buf_reg[3] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[3] ),
        .Q(\start_addr_buf_reg_n_0_[3] ),
        .R(SR));
  FDRE \start_addr_buf_reg[40] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[40] ),
        .Q(p_0_in_0[28]),
        .R(SR));
  FDRE \start_addr_buf_reg[41] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[41] ),
        .Q(p_0_in_0[29]),
        .R(SR));
  FDRE \start_addr_buf_reg[42] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[42] ),
        .Q(p_0_in_0[30]),
        .R(SR));
  FDRE \start_addr_buf_reg[43] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[43] ),
        .Q(p_0_in_0[31]),
        .R(SR));
  FDRE \start_addr_buf_reg[44] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[44] ),
        .Q(p_0_in_0[32]),
        .R(SR));
  FDRE \start_addr_buf_reg[45] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[45] ),
        .Q(p_0_in_0[33]),
        .R(SR));
  FDRE \start_addr_buf_reg[46] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[46] ),
        .Q(p_0_in_0[34]),
        .R(SR));
  FDRE \start_addr_buf_reg[47] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[47] ),
        .Q(p_0_in_0[35]),
        .R(SR));
  FDRE \start_addr_buf_reg[48] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[48] ),
        .Q(p_0_in_0[36]),
        .R(SR));
  FDRE \start_addr_buf_reg[49] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[49] ),
        .Q(p_0_in_0[37]),
        .R(SR));
  FDRE \start_addr_buf_reg[4] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[4] ),
        .Q(\start_addr_buf_reg_n_0_[4] ),
        .R(SR));
  FDRE \start_addr_buf_reg[50] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[50] ),
        .Q(p_0_in_0[38]),
        .R(SR));
  FDRE \start_addr_buf_reg[51] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[51] ),
        .Q(p_0_in_0[39]),
        .R(SR));
  FDRE \start_addr_buf_reg[52] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[52] ),
        .Q(p_0_in_0[40]),
        .R(SR));
  FDRE \start_addr_buf_reg[53] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[53] ),
        .Q(p_0_in_0[41]),
        .R(SR));
  FDRE \start_addr_buf_reg[54] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[54] ),
        .Q(p_0_in_0[42]),
        .R(SR));
  FDRE \start_addr_buf_reg[55] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[55] ),
        .Q(p_0_in_0[43]),
        .R(SR));
  FDRE \start_addr_buf_reg[56] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[56] ),
        .Q(p_0_in_0[44]),
        .R(SR));
  FDRE \start_addr_buf_reg[57] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[57] ),
        .Q(p_0_in_0[45]),
        .R(SR));
  FDRE \start_addr_buf_reg[58] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[58] ),
        .Q(p_0_in_0[46]),
        .R(SR));
  FDRE \start_addr_buf_reg[59] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[59] ),
        .Q(p_0_in_0[47]),
        .R(SR));
  FDRE \start_addr_buf_reg[5] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[5] ),
        .Q(\start_addr_buf_reg_n_0_[5] ),
        .R(SR));
  FDRE \start_addr_buf_reg[60] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[60] ),
        .Q(p_0_in_0[48]),
        .R(SR));
  FDRE \start_addr_buf_reg[61] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[61] ),
        .Q(p_0_in_0[49]),
        .R(SR));
  FDRE \start_addr_buf_reg[62] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[62] ),
        .Q(p_0_in_0[50]),
        .R(SR));
  FDRE \start_addr_buf_reg[63] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[63] ),
        .Q(p_0_in_0[51]),
        .R(SR));
  FDRE \start_addr_buf_reg[6] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[6] ),
        .Q(\start_addr_buf_reg_n_0_[6] ),
        .R(SR));
  FDRE \start_addr_buf_reg[7] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[7] ),
        .Q(\start_addr_buf_reg_n_0_[7] ),
        .R(SR));
  FDRE \start_addr_buf_reg[8] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[8] ),
        .Q(\start_addr_buf_reg_n_0_[8] ),
        .R(SR));
  FDRE \start_addr_buf_reg[9] 
       (.C(ap_clk),
        .CE(next_rreq),
        .D(\start_addr_reg_n_0_[9] ),
        .Q(\start_addr_buf_reg_n_0_[9] ),
        .R(SR));
  FDRE \start_addr_reg[10] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_129),
        .Q(\start_addr_reg_n_0_[10] ),
        .R(SR));
  FDRE \start_addr_reg[11] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_128),
        .Q(\start_addr_reg_n_0_[11] ),
        .R(SR));
  FDRE \start_addr_reg[12] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_127),
        .Q(\start_addr_reg_n_0_[12] ),
        .R(SR));
  FDRE \start_addr_reg[13] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_126),
        .Q(\start_addr_reg_n_0_[13] ),
        .R(SR));
  FDRE \start_addr_reg[14] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_125),
        .Q(\start_addr_reg_n_0_[14] ),
        .R(SR));
  FDRE \start_addr_reg[15] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_124),
        .Q(\start_addr_reg_n_0_[15] ),
        .R(SR));
  FDRE \start_addr_reg[16] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_123),
        .Q(\start_addr_reg_n_0_[16] ),
        .R(SR));
  FDRE \start_addr_reg[17] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_122),
        .Q(\start_addr_reg_n_0_[17] ),
        .R(SR));
  FDRE \start_addr_reg[18] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_121),
        .Q(\start_addr_reg_n_0_[18] ),
        .R(SR));
  FDRE \start_addr_reg[19] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_120),
        .Q(\start_addr_reg_n_0_[19] ),
        .R(SR));
  FDRE \start_addr_reg[1] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_138),
        .Q(\start_addr_reg_n_0_[1] ),
        .R(SR));
  FDRE \start_addr_reg[20] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_119),
        .Q(\start_addr_reg_n_0_[20] ),
        .R(SR));
  FDRE \start_addr_reg[21] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_118),
        .Q(\start_addr_reg_n_0_[21] ),
        .R(SR));
  FDRE \start_addr_reg[22] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_117),
        .Q(\start_addr_reg_n_0_[22] ),
        .R(SR));
  FDRE \start_addr_reg[23] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_116),
        .Q(\start_addr_reg_n_0_[23] ),
        .R(SR));
  FDRE \start_addr_reg[24] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_115),
        .Q(\start_addr_reg_n_0_[24] ),
        .R(SR));
  FDRE \start_addr_reg[25] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_114),
        .Q(\start_addr_reg_n_0_[25] ),
        .R(SR));
  FDRE \start_addr_reg[26] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_113),
        .Q(\start_addr_reg_n_0_[26] ),
        .R(SR));
  FDRE \start_addr_reg[27] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_112),
        .Q(\start_addr_reg_n_0_[27] ),
        .R(SR));
  FDRE \start_addr_reg[28] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_111),
        .Q(\start_addr_reg_n_0_[28] ),
        .R(SR));
  FDRE \start_addr_reg[29] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_110),
        .Q(\start_addr_reg_n_0_[29] ),
        .R(SR));
  FDRE \start_addr_reg[2] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_137),
        .Q(\start_addr_reg_n_0_[2] ),
        .R(SR));
  FDRE \start_addr_reg[30] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_109),
        .Q(\start_addr_reg_n_0_[30] ),
        .R(SR));
  FDRE \start_addr_reg[31] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_108),
        .Q(\start_addr_reg_n_0_[31] ),
        .R(SR));
  FDRE \start_addr_reg[32] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_107),
        .Q(\start_addr_reg_n_0_[32] ),
        .R(SR));
  FDRE \start_addr_reg[33] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_106),
        .Q(\start_addr_reg_n_0_[33] ),
        .R(SR));
  FDRE \start_addr_reg[34] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_105),
        .Q(\start_addr_reg_n_0_[34] ),
        .R(SR));
  FDRE \start_addr_reg[35] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_104),
        .Q(\start_addr_reg_n_0_[35] ),
        .R(SR));
  FDRE \start_addr_reg[36] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_103),
        .Q(\start_addr_reg_n_0_[36] ),
        .R(SR));
  FDRE \start_addr_reg[37] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_102),
        .Q(\start_addr_reg_n_0_[37] ),
        .R(SR));
  FDRE \start_addr_reg[38] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_101),
        .Q(\start_addr_reg_n_0_[38] ),
        .R(SR));
  FDRE \start_addr_reg[39] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_100),
        .Q(\start_addr_reg_n_0_[39] ),
        .R(SR));
  FDRE \start_addr_reg[3] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_136),
        .Q(\start_addr_reg_n_0_[3] ),
        .R(SR));
  FDRE \start_addr_reg[40] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_99),
        .Q(\start_addr_reg_n_0_[40] ),
        .R(SR));
  FDRE \start_addr_reg[41] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_98),
        .Q(\start_addr_reg_n_0_[41] ),
        .R(SR));
  FDRE \start_addr_reg[42] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_97),
        .Q(\start_addr_reg_n_0_[42] ),
        .R(SR));
  FDRE \start_addr_reg[43] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_96),
        .Q(\start_addr_reg_n_0_[43] ),
        .R(SR));
  FDRE \start_addr_reg[44] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_95),
        .Q(\start_addr_reg_n_0_[44] ),
        .R(SR));
  FDRE \start_addr_reg[45] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_94),
        .Q(\start_addr_reg_n_0_[45] ),
        .R(SR));
  FDRE \start_addr_reg[46] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_93),
        .Q(\start_addr_reg_n_0_[46] ),
        .R(SR));
  FDRE \start_addr_reg[47] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_92),
        .Q(\start_addr_reg_n_0_[47] ),
        .R(SR));
  FDRE \start_addr_reg[48] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_91),
        .Q(\start_addr_reg_n_0_[48] ),
        .R(SR));
  FDRE \start_addr_reg[49] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_90),
        .Q(\start_addr_reg_n_0_[49] ),
        .R(SR));
  FDRE \start_addr_reg[4] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_135),
        .Q(\start_addr_reg_n_0_[4] ),
        .R(SR));
  FDRE \start_addr_reg[50] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_89),
        .Q(\start_addr_reg_n_0_[50] ),
        .R(SR));
  FDRE \start_addr_reg[51] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_88),
        .Q(\start_addr_reg_n_0_[51] ),
        .R(SR));
  FDRE \start_addr_reg[52] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_87),
        .Q(\start_addr_reg_n_0_[52] ),
        .R(SR));
  FDRE \start_addr_reg[53] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_86),
        .Q(\start_addr_reg_n_0_[53] ),
        .R(SR));
  FDRE \start_addr_reg[54] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_85),
        .Q(\start_addr_reg_n_0_[54] ),
        .R(SR));
  FDRE \start_addr_reg[55] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_84),
        .Q(\start_addr_reg_n_0_[55] ),
        .R(SR));
  FDRE \start_addr_reg[56] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_83),
        .Q(\start_addr_reg_n_0_[56] ),
        .R(SR));
  FDRE \start_addr_reg[57] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_82),
        .Q(\start_addr_reg_n_0_[57] ),
        .R(SR));
  FDRE \start_addr_reg[58] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_81),
        .Q(\start_addr_reg_n_0_[58] ),
        .R(SR));
  FDRE \start_addr_reg[59] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_80),
        .Q(\start_addr_reg_n_0_[59] ),
        .R(SR));
  FDRE \start_addr_reg[5] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_134),
        .Q(\start_addr_reg_n_0_[5] ),
        .R(SR));
  FDRE \start_addr_reg[60] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_79),
        .Q(\start_addr_reg_n_0_[60] ),
        .R(SR));
  FDRE \start_addr_reg[61] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_78),
        .Q(\start_addr_reg_n_0_[61] ),
        .R(SR));
  FDRE \start_addr_reg[62] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_77),
        .Q(\start_addr_reg_n_0_[62] ),
        .R(SR));
  FDRE \start_addr_reg[63] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_76),
        .Q(\start_addr_reg_n_0_[63] ),
        .R(SR));
  FDRE \start_addr_reg[6] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_133),
        .Q(\start_addr_reg_n_0_[6] ),
        .R(SR));
  FDRE \start_addr_reg[7] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_132),
        .Q(\start_addr_reg_n_0_[7] ),
        .R(SR));
  FDRE \start_addr_reg[8] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_131),
        .Q(\start_addr_reg_n_0_[8] ),
        .R(SR));
  FDRE \start_addr_reg[9] 
       (.C(ap_clk),
        .CE(align_len),
        .D(fifo_rreq_n_130),
        .Q(\start_addr_reg_n_0_[9] ),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_gmem_m_axi_reg_slice
   (s_ready_t_reg_0,
    Q,
    s_ready_t_reg_1,
    ap_NS_fsm__0,
    \ap_CS_fsm_reg[5] ,
    \ap_CS_fsm_reg[20] ,
    \data_p1_reg[79]_0 ,
    SR,
    ap_clk,
    rs2f_rreq_ack,
    gmem_ARVALID,
    \data_p1_reg[79]_1 ,
    \data_p1_reg[79]_2 ,
    \ap_CS_fsm_reg[11] ,
    \data_p2_reg[64]_0 ,
    \ap_CS_fsm_reg[11]_0 ,
    \data_p2_reg[62]_0 ,
    \data_p2_reg[62]_1 ,
    \data_p2_reg[62]_2 ,
    \ap_CS_fsm_reg[1] ,
    \data_p2_reg[79]_0 );
  output s_ready_t_reg_0;
  output [0:0]Q;
  output s_ready_t_reg_1;
  output [1:0]ap_NS_fsm__0;
  output \ap_CS_fsm_reg[5] ;
  output \ap_CS_fsm_reg[20] ;
  output [78:0]\data_p1_reg[79]_0 ;
  input [0:0]SR;
  input ap_clk;
  input rs2f_rreq_ack;
  input gmem_ARVALID;
  input [15:0]\data_p1_reg[79]_1 ;
  input [15:0]\data_p1_reg[79]_2 ;
  input [1:0]\ap_CS_fsm_reg[11] ;
  input [8:0]\data_p2_reg[64]_0 ;
  input \ap_CS_fsm_reg[11]_0 ;
  input [62:0]\data_p2_reg[62]_0 ;
  input [62:0]\data_p2_reg[62]_1 ;
  input [62:0]\data_p2_reg[62]_2 ;
  input \ap_CS_fsm_reg[1] ;
  input [0:0]\data_p2_reg[79]_0 ;

  wire [0:0]Q;
  wire [0:0]SR;
  wire [1:0]\ap_CS_fsm_reg[11] ;
  wire \ap_CS_fsm_reg[11]_0 ;
  wire \ap_CS_fsm_reg[1] ;
  wire \ap_CS_fsm_reg[20] ;
  wire \ap_CS_fsm_reg[5] ;
  wire [1:0]ap_NS_fsm__0;
  wire ap_clk;
  wire \data_p1[0]_i_1_n_0 ;
  wire \data_p1[10]_i_1_n_0 ;
  wire \data_p1[11]_i_1_n_0 ;
  wire \data_p1[12]_i_1_n_0 ;
  wire \data_p1[13]_i_1_n_0 ;
  wire \data_p1[14]_i_1_n_0 ;
  wire \data_p1[15]_i_1__0_n_0 ;
  wire \data_p1[16]_i_1_n_0 ;
  wire \data_p1[17]_i_1_n_0 ;
  wire \data_p1[18]_i_1_n_0 ;
  wire \data_p1[19]_i_1_n_0 ;
  wire \data_p1[1]_i_1_n_0 ;
  wire \data_p1[20]_i_1_n_0 ;
  wire \data_p1[21]_i_1_n_0 ;
  wire \data_p1[22]_i_1_n_0 ;
  wire \data_p1[23]_i_1_n_0 ;
  wire \data_p1[24]_i_1_n_0 ;
  wire \data_p1[25]_i_1_n_0 ;
  wire \data_p1[26]_i_1_n_0 ;
  wire \data_p1[27]_i_1_n_0 ;
  wire \data_p1[28]_i_1_n_0 ;
  wire \data_p1[29]_i_1_n_0 ;
  wire \data_p1[2]_i_1_n_0 ;
  wire \data_p1[30]_i_1_n_0 ;
  wire \data_p1[31]_i_1_n_0 ;
  wire \data_p1[32]_i_1_n_0 ;
  wire \data_p1[33]_i_1_n_0 ;
  wire \data_p1[34]_i_1_n_0 ;
  wire \data_p1[35]_i_1_n_0 ;
  wire \data_p1[36]_i_1_n_0 ;
  wire \data_p1[37]_i_1_n_0 ;
  wire \data_p1[38]_i_1_n_0 ;
  wire \data_p1[39]_i_1_n_0 ;
  wire \data_p1[3]_i_1_n_0 ;
  wire \data_p1[40]_i_1_n_0 ;
  wire \data_p1[41]_i_1_n_0 ;
  wire \data_p1[42]_i_1_n_0 ;
  wire \data_p1[43]_i_1_n_0 ;
  wire \data_p1[44]_i_1_n_0 ;
  wire \data_p1[45]_i_1_n_0 ;
  wire \data_p1[46]_i_1_n_0 ;
  wire \data_p1[47]_i_1_n_0 ;
  wire \data_p1[48]_i_1_n_0 ;
  wire \data_p1[49]_i_1_n_0 ;
  wire \data_p1[4]_i_1_n_0 ;
  wire \data_p1[50]_i_1_n_0 ;
  wire \data_p1[51]_i_1_n_0 ;
  wire \data_p1[52]_i_1_n_0 ;
  wire \data_p1[53]_i_1_n_0 ;
  wire \data_p1[54]_i_1_n_0 ;
  wire \data_p1[55]_i_1_n_0 ;
  wire \data_p1[56]_i_1_n_0 ;
  wire \data_p1[57]_i_1_n_0 ;
  wire \data_p1[58]_i_1_n_0 ;
  wire \data_p1[59]_i_1_n_0 ;
  wire \data_p1[5]_i_1_n_0 ;
  wire \data_p1[60]_i_1_n_0 ;
  wire \data_p1[61]_i_1_n_0 ;
  wire \data_p1[62]_i_1_n_0 ;
  wire \data_p1[64]_i_1_n_0 ;
  wire \data_p1[65]_i_1_n_0 ;
  wire \data_p1[66]_i_1_n_0 ;
  wire \data_p1[67]_i_1_n_0 ;
  wire \data_p1[68]_i_1_n_0 ;
  wire \data_p1[69]_i_1_n_0 ;
  wire \data_p1[6]_i_1_n_0 ;
  wire \data_p1[70]_i_1_n_0 ;
  wire \data_p1[71]_i_1_n_0 ;
  wire \data_p1[72]_i_1_n_0 ;
  wire \data_p1[73]_i_1_n_0 ;
  wire \data_p1[74]_i_1_n_0 ;
  wire \data_p1[75]_i_1_n_0 ;
  wire \data_p1[76]_i_1_n_0 ;
  wire \data_p1[77]_i_1_n_0 ;
  wire \data_p1[78]_i_1_n_0 ;
  wire \data_p1[79]_i_2_n_0 ;
  wire \data_p1[7]_i_1_n_0 ;
  wire \data_p1[8]_i_1_n_0 ;
  wire \data_p1[9]_i_1_n_0 ;
  wire [78:0]\data_p1_reg[79]_0 ;
  wire [15:0]\data_p1_reg[79]_1 ;
  wire [15:0]\data_p1_reg[79]_2 ;
  wire [79:0]data_p2;
  wire \data_p2[0]_i_1_n_0 ;
  wire \data_p2[10]_i_1_n_0 ;
  wire \data_p2[11]_i_1_n_0 ;
  wire \data_p2[12]_i_1_n_0 ;
  wire \data_p2[13]_i_1_n_0 ;
  wire \data_p2[14]_i_1_n_0 ;
  wire \data_p2[15]_i_1__0_n_0 ;
  wire \data_p2[16]_i_1_n_0 ;
  wire \data_p2[17]_i_1_n_0 ;
  wire \data_p2[18]_i_1_n_0 ;
  wire \data_p2[19]_i_1_n_0 ;
  wire \data_p2[1]_i_1_n_0 ;
  wire \data_p2[20]_i_1_n_0 ;
  wire \data_p2[21]_i_1_n_0 ;
  wire \data_p2[22]_i_1_n_0 ;
  wire \data_p2[23]_i_1_n_0 ;
  wire \data_p2[24]_i_1_n_0 ;
  wire \data_p2[25]_i_1_n_0 ;
  wire \data_p2[26]_i_1_n_0 ;
  wire \data_p2[27]_i_1_n_0 ;
  wire \data_p2[28]_i_1_n_0 ;
  wire \data_p2[29]_i_1_n_0 ;
  wire \data_p2[2]_i_1_n_0 ;
  wire \data_p2[30]_i_1_n_0 ;
  wire \data_p2[31]_i_1_n_0 ;
  wire \data_p2[32]_i_1_n_0 ;
  wire \data_p2[33]_i_1_n_0 ;
  wire \data_p2[34]_i_1_n_0 ;
  wire \data_p2[35]_i_1_n_0 ;
  wire \data_p2[36]_i_1_n_0 ;
  wire \data_p2[37]_i_1_n_0 ;
  wire \data_p2[38]_i_1_n_0 ;
  wire \data_p2[39]_i_1_n_0 ;
  wire \data_p2[3]_i_1_n_0 ;
  wire \data_p2[40]_i_1_n_0 ;
  wire \data_p2[41]_i_1_n_0 ;
  wire \data_p2[42]_i_1_n_0 ;
  wire \data_p2[43]_i_1_n_0 ;
  wire \data_p2[44]_i_1_n_0 ;
  wire \data_p2[45]_i_1_n_0 ;
  wire \data_p2[46]_i_1_n_0 ;
  wire \data_p2[47]_i_1_n_0 ;
  wire \data_p2[48]_i_1_n_0 ;
  wire \data_p2[49]_i_1_n_0 ;
  wire \data_p2[4]_i_1_n_0 ;
  wire \data_p2[50]_i_1_n_0 ;
  wire \data_p2[51]_i_1_n_0 ;
  wire \data_p2[52]_i_1_n_0 ;
  wire \data_p2[53]_i_1_n_0 ;
  wire \data_p2[54]_i_1_n_0 ;
  wire \data_p2[55]_i_1_n_0 ;
  wire \data_p2[56]_i_1_n_0 ;
  wire \data_p2[57]_i_1_n_0 ;
  wire \data_p2[58]_i_1_n_0 ;
  wire \data_p2[59]_i_1_n_0 ;
  wire \data_p2[5]_i_1_n_0 ;
  wire \data_p2[60]_i_1_n_0 ;
  wire \data_p2[61]_i_1_n_0 ;
  wire \data_p2[62]_i_1_n_0 ;
  wire \data_p2[62]_i_2_n_0 ;
  wire \data_p2[64]_i_1_n_0 ;
  wire \data_p2[65]_i_1_n_0 ;
  wire \data_p2[66]_i_1_n_0 ;
  wire \data_p2[67]_i_1_n_0 ;
  wire \data_p2[68]_i_1_n_0 ;
  wire \data_p2[69]_i_1_n_0 ;
  wire \data_p2[6]_i_1_n_0 ;
  wire \data_p2[70]_i_1_n_0 ;
  wire \data_p2[71]_i_1_n_0 ;
  wire \data_p2[72]_i_1_n_0 ;
  wire \data_p2[73]_i_1_n_0 ;
  wire \data_p2[74]_i_1_n_0 ;
  wire \data_p2[75]_i_1_n_0 ;
  wire \data_p2[76]_i_1_n_0 ;
  wire \data_p2[77]_i_1_n_0 ;
  wire \data_p2[78]_i_1_n_0 ;
  wire \data_p2[79]_i_2_n_0 ;
  wire \data_p2[79]_i_3_n_0 ;
  wire \data_p2[7]_i_1_n_0 ;
  wire \data_p2[8]_i_1_n_0 ;
  wire \data_p2[9]_i_1_n_0 ;
  wire [62:0]\data_p2_reg[62]_0 ;
  wire [62:0]\data_p2_reg[62]_1 ;
  wire [62:0]\data_p2_reg[62]_2 ;
  wire [8:0]\data_p2_reg[64]_0 ;
  wire [0:0]\data_p2_reg[79]_0 ;
  wire gmem_ARVALID;
  wire load_p1;
  wire load_p1_from_p2;
  wire [1:0]next__0;
  wire rs2f_rreq_ack;
  wire s_ready_t_i_1__0_n_0;
  wire s_ready_t_reg_0;
  wire s_ready_t_reg_1;
  wire [1:1]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1__0_n_0 ;
  wire [1:0]state__0;

  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT4 #(
    .INIT(16'h0230)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(gmem_ARVALID),
        .I1(rs2f_rreq_ack),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT5 #(
    .INIT(32'h3E02300C)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(s_ready_t_reg_0),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(rs2f_rreq_ack),
        .I4(gmem_ARVALID),
        .O(next__0[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[1]_i_3__0 
       (.I0(\data_p2_reg[64]_0 [7]),
        .I1(\data_p2_reg[64]_0 [8]),
        .O(\ap_CS_fsm_reg[20] ));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(SR));
  LUT6 #(
    .INIT(64'h70707070707F7070)) 
    \ap_CS_fsm[11]_i_1 
       (.I0(\ap_CS_fsm_reg[11] [1]),
        .I1(\ap_CS_fsm_reg[11] [0]),
        .I2(\data_p2_reg[64]_0 [4]),
        .I3(s_ready_t_reg_0),
        .I4(\data_p2_reg[64]_0 [5]),
        .I5(\ap_CS_fsm_reg[11]_0 ),
        .O(ap_NS_fsm__0[1]));
  LUT3 #(
    .INIT(8'h20)) 
    \ap_CS_fsm[12]_i_1 
       (.I0(s_ready_t_reg_0),
        .I1(\ap_CS_fsm_reg[11]_0 ),
        .I2(\data_p2_reg[64]_0 [5]),
        .O(s_ready_t_reg_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ap_CS_fsm[1]_i_3 
       (.I0(\data_p2_reg[64]_0 [2]),
        .I1(\data_p2_reg[64]_0 [6]),
        .I2(\data_p2_reg[64]_0 [0]),
        .I3(\data_p2_reg[64]_0 [3]),
        .I4(\ap_CS_fsm_reg[1] ),
        .I5(ap_NS_fsm__0[0]),
        .O(\ap_CS_fsm_reg[5] ));
  LUT2 #(
    .INIT(4'h8)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(s_ready_t_reg_0),
        .I1(\data_p2_reg[64]_0 [1]),
        .O(ap_NS_fsm__0[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[0]_i_1 
       (.I0(data_p2[0]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[0]_i_1_n_0 ),
        .O(\data_p1[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[10]_i_1 
       (.I0(data_p2[10]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[10]_i_1_n_0 ),
        .O(\data_p1[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[11]_i_1 
       (.I0(data_p2[11]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[11]_i_1_n_0 ),
        .O(\data_p1[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[12]_i_1 
       (.I0(data_p2[12]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[12]_i_1_n_0 ),
        .O(\data_p1[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[13]_i_1 
       (.I0(data_p2[13]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[13]_i_1_n_0 ),
        .O(\data_p1[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[14]_i_1 
       (.I0(data_p2[14]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[14]_i_1_n_0 ),
        .O(\data_p1[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[15]_i_1__0 
       (.I0(data_p2[15]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[15]_i_1__0_n_0 ),
        .O(\data_p1[15]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[16]_i_1 
       (.I0(data_p2[16]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[16]_i_1_n_0 ),
        .O(\data_p1[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[17]_i_1 
       (.I0(data_p2[17]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[17]_i_1_n_0 ),
        .O(\data_p1[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[18]_i_1 
       (.I0(data_p2[18]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[18]_i_1_n_0 ),
        .O(\data_p1[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[19]_i_1 
       (.I0(data_p2[19]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[19]_i_1_n_0 ),
        .O(\data_p1[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[1]_i_1 
       (.I0(data_p2[1]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[1]_i_1_n_0 ),
        .O(\data_p1[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[20]_i_1 
       (.I0(data_p2[20]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[20]_i_1_n_0 ),
        .O(\data_p1[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[21]_i_1 
       (.I0(data_p2[21]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[21]_i_1_n_0 ),
        .O(\data_p1[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[22]_i_1 
       (.I0(data_p2[22]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[22]_i_1_n_0 ),
        .O(\data_p1[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[23]_i_1 
       (.I0(data_p2[23]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[23]_i_1_n_0 ),
        .O(\data_p1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[24]_i_1 
       (.I0(data_p2[24]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[24]_i_1_n_0 ),
        .O(\data_p1[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[25]_i_1 
       (.I0(data_p2[25]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[25]_i_1_n_0 ),
        .O(\data_p1[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[26]_i_1 
       (.I0(data_p2[26]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[26]_i_1_n_0 ),
        .O(\data_p1[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[27]_i_1 
       (.I0(data_p2[27]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[27]_i_1_n_0 ),
        .O(\data_p1[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[28]_i_1 
       (.I0(data_p2[28]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[28]_i_1_n_0 ),
        .O(\data_p1[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[29]_i_1 
       (.I0(data_p2[29]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[29]_i_1_n_0 ),
        .O(\data_p1[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[2]_i_1 
       (.I0(data_p2[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[2]_i_1_n_0 ),
        .O(\data_p1[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[30]_i_1 
       (.I0(data_p2[30]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[30]_i_1_n_0 ),
        .O(\data_p1[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[31]_i_1 
       (.I0(data_p2[31]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[31]_i_1_n_0 ),
        .O(\data_p1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[32]_i_1 
       (.I0(data_p2[32]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[32]_i_1_n_0 ),
        .O(\data_p1[32]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[33]_i_1 
       (.I0(data_p2[33]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[33]_i_1_n_0 ),
        .O(\data_p1[33]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[34]_i_1 
       (.I0(data_p2[34]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[34]_i_1_n_0 ),
        .O(\data_p1[34]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[35]_i_1 
       (.I0(data_p2[35]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[35]_i_1_n_0 ),
        .O(\data_p1[35]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[36]_i_1 
       (.I0(data_p2[36]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[36]_i_1_n_0 ),
        .O(\data_p1[36]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[37]_i_1 
       (.I0(data_p2[37]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[37]_i_1_n_0 ),
        .O(\data_p1[37]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[38]_i_1 
       (.I0(data_p2[38]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[38]_i_1_n_0 ),
        .O(\data_p1[38]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[39]_i_1 
       (.I0(data_p2[39]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[39]_i_1_n_0 ),
        .O(\data_p1[39]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[3]_i_1 
       (.I0(data_p2[3]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[3]_i_1_n_0 ),
        .O(\data_p1[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[40]_i_1 
       (.I0(data_p2[40]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[40]_i_1_n_0 ),
        .O(\data_p1[40]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[41]_i_1 
       (.I0(data_p2[41]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[41]_i_1_n_0 ),
        .O(\data_p1[41]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[42]_i_1 
       (.I0(data_p2[42]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[42]_i_1_n_0 ),
        .O(\data_p1[42]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[43]_i_1 
       (.I0(data_p2[43]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[43]_i_1_n_0 ),
        .O(\data_p1[43]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[44]_i_1 
       (.I0(data_p2[44]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[44]_i_1_n_0 ),
        .O(\data_p1[44]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[45]_i_1 
       (.I0(data_p2[45]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[45]_i_1_n_0 ),
        .O(\data_p1[45]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[46]_i_1 
       (.I0(data_p2[46]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[46]_i_1_n_0 ),
        .O(\data_p1[46]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[47]_i_1 
       (.I0(data_p2[47]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[47]_i_1_n_0 ),
        .O(\data_p1[47]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[48]_i_1 
       (.I0(data_p2[48]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[48]_i_1_n_0 ),
        .O(\data_p1[48]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[49]_i_1 
       (.I0(data_p2[49]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[49]_i_1_n_0 ),
        .O(\data_p1[49]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[4]_i_1 
       (.I0(data_p2[4]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[4]_i_1_n_0 ),
        .O(\data_p1[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[50]_i_1 
       (.I0(data_p2[50]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[50]_i_1_n_0 ),
        .O(\data_p1[50]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[51]_i_1 
       (.I0(data_p2[51]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[51]_i_1_n_0 ),
        .O(\data_p1[51]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[52]_i_1 
       (.I0(data_p2[52]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[52]_i_1_n_0 ),
        .O(\data_p1[52]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[53]_i_1 
       (.I0(data_p2[53]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[53]_i_1_n_0 ),
        .O(\data_p1[53]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[54]_i_1 
       (.I0(data_p2[54]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[54]_i_1_n_0 ),
        .O(\data_p1[54]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[55]_i_1 
       (.I0(data_p2[55]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[55]_i_1_n_0 ),
        .O(\data_p1[55]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[56]_i_1 
       (.I0(data_p2[56]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[56]_i_1_n_0 ),
        .O(\data_p1[56]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[57]_i_1 
       (.I0(data_p2[57]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[57]_i_1_n_0 ),
        .O(\data_p1[57]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[58]_i_1 
       (.I0(data_p2[58]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[58]_i_1_n_0 ),
        .O(\data_p1[58]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[59]_i_1 
       (.I0(data_p2[59]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[59]_i_1_n_0 ),
        .O(\data_p1[59]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[5]_i_1 
       (.I0(data_p2[5]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[5]_i_1_n_0 ),
        .O(\data_p1[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[60]_i_1 
       (.I0(data_p2[60]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[60]_i_1_n_0 ),
        .O(\data_p1[60]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[61]_i_1 
       (.I0(data_p2[61]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[61]_i_1_n_0 ),
        .O(\data_p1[61]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[62]_i_1 
       (.I0(data_p2[62]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[62]_i_1_n_0 ),
        .O(\data_p1[62]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \data_p1[64]_i_1 
       (.I0(data_p2[64]),
        .I1(load_p1_from_p2),
        .I2(\data_p2[79]_i_3_n_0 ),
        .I3(\data_p1_reg[79]_1 [0]),
        .I4(s_ready_t_reg_1),
        .I5(\data_p1_reg[79]_2 [0]),
        .O(\data_p1[64]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \data_p1[65]_i_1 
       (.I0(data_p2[65]),
        .I1(load_p1_from_p2),
        .I2(\data_p2[79]_i_3_n_0 ),
        .I3(\data_p1_reg[79]_1 [1]),
        .I4(s_ready_t_reg_1),
        .I5(\data_p1_reg[79]_2 [1]),
        .O(\data_p1[65]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \data_p1[66]_i_1 
       (.I0(data_p2[66]),
        .I1(load_p1_from_p2),
        .I2(\data_p2[79]_i_3_n_0 ),
        .I3(\data_p1_reg[79]_1 [2]),
        .I4(s_ready_t_reg_1),
        .I5(\data_p1_reg[79]_2 [2]),
        .O(\data_p1[66]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \data_p1[67]_i_1 
       (.I0(data_p2[67]),
        .I1(load_p1_from_p2),
        .I2(\data_p2[79]_i_3_n_0 ),
        .I3(\data_p1_reg[79]_1 [3]),
        .I4(s_ready_t_reg_1),
        .I5(\data_p1_reg[79]_2 [3]),
        .O(\data_p1[67]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \data_p1[68]_i_1 
       (.I0(data_p2[68]),
        .I1(load_p1_from_p2),
        .I2(\data_p2[79]_i_3_n_0 ),
        .I3(\data_p1_reg[79]_1 [4]),
        .I4(s_ready_t_reg_1),
        .I5(\data_p1_reg[79]_2 [4]),
        .O(\data_p1[68]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \data_p1[69]_i_1 
       (.I0(data_p2[69]),
        .I1(load_p1_from_p2),
        .I2(\data_p2[79]_i_3_n_0 ),
        .I3(\data_p1_reg[79]_1 [5]),
        .I4(s_ready_t_reg_1),
        .I5(\data_p1_reg[79]_2 [5]),
        .O(\data_p1[69]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[6]_i_1 
       (.I0(data_p2[6]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[6]_i_1_n_0 ),
        .O(\data_p1[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \data_p1[70]_i_1 
       (.I0(data_p2[70]),
        .I1(load_p1_from_p2),
        .I2(\data_p2[79]_i_3_n_0 ),
        .I3(\data_p1_reg[79]_1 [6]),
        .I4(s_ready_t_reg_1),
        .I5(\data_p1_reg[79]_2 [6]),
        .O(\data_p1[70]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[71]_i_1 
       (.I0(data_p2[71]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[71]_i_1_n_0 ),
        .O(\data_p1[71]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \data_p1[72]_i_1 
       (.I0(data_p2[72]),
        .I1(load_p1_from_p2),
        .I2(\data_p2[79]_i_3_n_0 ),
        .I3(\data_p1_reg[79]_1 [8]),
        .I4(s_ready_t_reg_1),
        .I5(\data_p1_reg[79]_2 [8]),
        .O(\data_p1[72]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \data_p1[73]_i_1 
       (.I0(data_p2[73]),
        .I1(load_p1_from_p2),
        .I2(\data_p2[79]_i_3_n_0 ),
        .I3(\data_p1_reg[79]_1 [9]),
        .I4(s_ready_t_reg_1),
        .I5(\data_p1_reg[79]_2 [9]),
        .O(\data_p1[73]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \data_p1[74]_i_1 
       (.I0(data_p2[74]),
        .I1(load_p1_from_p2),
        .I2(\data_p2[79]_i_3_n_0 ),
        .I3(\data_p1_reg[79]_1 [10]),
        .I4(s_ready_t_reg_1),
        .I5(\data_p1_reg[79]_2 [10]),
        .O(\data_p1[74]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \data_p1[75]_i_1 
       (.I0(data_p2[75]),
        .I1(load_p1_from_p2),
        .I2(\data_p2[79]_i_3_n_0 ),
        .I3(\data_p1_reg[79]_1 [11]),
        .I4(s_ready_t_reg_1),
        .I5(\data_p1_reg[79]_2 [11]),
        .O(\data_p1[75]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \data_p1[76]_i_1 
       (.I0(data_p2[76]),
        .I1(load_p1_from_p2),
        .I2(\data_p2[79]_i_3_n_0 ),
        .I3(\data_p1_reg[79]_1 [12]),
        .I4(s_ready_t_reg_1),
        .I5(\data_p1_reg[79]_2 [12]),
        .O(\data_p1[76]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \data_p1[77]_i_1 
       (.I0(data_p2[77]),
        .I1(load_p1_from_p2),
        .I2(\data_p2[79]_i_3_n_0 ),
        .I3(\data_p1_reg[79]_1 [13]),
        .I4(s_ready_t_reg_1),
        .I5(\data_p1_reg[79]_2 [13]),
        .O(\data_p1[77]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \data_p1[78]_i_1 
       (.I0(data_p2[78]),
        .I1(load_p1_from_p2),
        .I2(\data_p2[79]_i_3_n_0 ),
        .I3(\data_p1_reg[79]_1 [14]),
        .I4(s_ready_t_reg_1),
        .I5(\data_p1_reg[79]_2 [14]),
        .O(\data_p1[78]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h08CA)) 
    \data_p1[79]_i_1 
       (.I0(gmem_ARVALID),
        .I1(rs2f_rreq_ack),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(load_p1));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \data_p1[79]_i_2 
       (.I0(data_p2[79]),
        .I1(load_p1_from_p2),
        .I2(\data_p2[79]_i_3_n_0 ),
        .I3(\data_p1_reg[79]_1 [15]),
        .I4(s_ready_t_reg_1),
        .I5(\data_p1_reg[79]_2 [15]),
        .O(\data_p1[79]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_p1[79]_i_3 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .O(load_p1_from_p2));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[7]_i_1 
       (.I0(data_p2[7]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[7]_i_1_n_0 ),
        .O(\data_p1[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[8]_i_1 
       (.I0(data_p2[8]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[8]_i_1_n_0 ),
        .O(\data_p1[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[9]_i_1 
       (.I0(data_p2[9]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2[9]_i_1_n_0 ),
        .O(\data_p1[9]_i_1_n_0 ));
  FDRE \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[0]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [0]),
        .R(1'b0));
  FDRE \data_p1_reg[10] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[10]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [10]),
        .R(1'b0));
  FDRE \data_p1_reg[11] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[11]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [11]),
        .R(1'b0));
  FDRE \data_p1_reg[12] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[12]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [12]),
        .R(1'b0));
  FDRE \data_p1_reg[13] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[13]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [13]),
        .R(1'b0));
  FDRE \data_p1_reg[14] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[14]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [14]),
        .R(1'b0));
  FDRE \data_p1_reg[15] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[15]_i_1__0_n_0 ),
        .Q(\data_p1_reg[79]_0 [15]),
        .R(1'b0));
  FDRE \data_p1_reg[16] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[16]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [16]),
        .R(1'b0));
  FDRE \data_p1_reg[17] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[17]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [17]),
        .R(1'b0));
  FDRE \data_p1_reg[18] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[18]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [18]),
        .R(1'b0));
  FDRE \data_p1_reg[19] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[19]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [19]),
        .R(1'b0));
  FDRE \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[1]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [1]),
        .R(1'b0));
  FDRE \data_p1_reg[20] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[20]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [20]),
        .R(1'b0));
  FDRE \data_p1_reg[21] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[21]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [21]),
        .R(1'b0));
  FDRE \data_p1_reg[22] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[22]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [22]),
        .R(1'b0));
  FDRE \data_p1_reg[23] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[23]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [23]),
        .R(1'b0));
  FDRE \data_p1_reg[24] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[24]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [24]),
        .R(1'b0));
  FDRE \data_p1_reg[25] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[25]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [25]),
        .R(1'b0));
  FDRE \data_p1_reg[26] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[26]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [26]),
        .R(1'b0));
  FDRE \data_p1_reg[27] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[27]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [27]),
        .R(1'b0));
  FDRE \data_p1_reg[28] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[28]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [28]),
        .R(1'b0));
  FDRE \data_p1_reg[29] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[29]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [29]),
        .R(1'b0));
  FDRE \data_p1_reg[2] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[2]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [2]),
        .R(1'b0));
  FDRE \data_p1_reg[30] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[30]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [30]),
        .R(1'b0));
  FDRE \data_p1_reg[31] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[31]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [31]),
        .R(1'b0));
  FDRE \data_p1_reg[32] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[32]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [32]),
        .R(1'b0));
  FDRE \data_p1_reg[33] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[33]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [33]),
        .R(1'b0));
  FDRE \data_p1_reg[34] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[34]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [34]),
        .R(1'b0));
  FDRE \data_p1_reg[35] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[35]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [35]),
        .R(1'b0));
  FDRE \data_p1_reg[36] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[36]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [36]),
        .R(1'b0));
  FDRE \data_p1_reg[37] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[37]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [37]),
        .R(1'b0));
  FDRE \data_p1_reg[38] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[38]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [38]),
        .R(1'b0));
  FDRE \data_p1_reg[39] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[39]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [39]),
        .R(1'b0));
  FDRE \data_p1_reg[3] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[3]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [3]),
        .R(1'b0));
  FDRE \data_p1_reg[40] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[40]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [40]),
        .R(1'b0));
  FDRE \data_p1_reg[41] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[41]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [41]),
        .R(1'b0));
  FDRE \data_p1_reg[42] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[42]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [42]),
        .R(1'b0));
  FDRE \data_p1_reg[43] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[43]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [43]),
        .R(1'b0));
  FDRE \data_p1_reg[44] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[44]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [44]),
        .R(1'b0));
  FDRE \data_p1_reg[45] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[45]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [45]),
        .R(1'b0));
  FDRE \data_p1_reg[46] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[46]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [46]),
        .R(1'b0));
  FDRE \data_p1_reg[47] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[47]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [47]),
        .R(1'b0));
  FDRE \data_p1_reg[48] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[48]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [48]),
        .R(1'b0));
  FDRE \data_p1_reg[49] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[49]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [49]),
        .R(1'b0));
  FDRE \data_p1_reg[4] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[4]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [4]),
        .R(1'b0));
  FDRE \data_p1_reg[50] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[50]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [50]),
        .R(1'b0));
  FDRE \data_p1_reg[51] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[51]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [51]),
        .R(1'b0));
  FDRE \data_p1_reg[52] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[52]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [52]),
        .R(1'b0));
  FDRE \data_p1_reg[53] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[53]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [53]),
        .R(1'b0));
  FDRE \data_p1_reg[54] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[54]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [54]),
        .R(1'b0));
  FDRE \data_p1_reg[55] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[55]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [55]),
        .R(1'b0));
  FDRE \data_p1_reg[56] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[56]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [56]),
        .R(1'b0));
  FDRE \data_p1_reg[57] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[57]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [57]),
        .R(1'b0));
  FDRE \data_p1_reg[58] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[58]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [58]),
        .R(1'b0));
  FDRE \data_p1_reg[59] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[59]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [59]),
        .R(1'b0));
  FDRE \data_p1_reg[5] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[5]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [5]),
        .R(1'b0));
  FDRE \data_p1_reg[60] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[60]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [60]),
        .R(1'b0));
  FDRE \data_p1_reg[61] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[61]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [61]),
        .R(1'b0));
  FDRE \data_p1_reg[62] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[62]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [62]),
        .R(1'b0));
  FDRE \data_p1_reg[64] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[64]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [63]),
        .R(1'b0));
  FDRE \data_p1_reg[65] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[65]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [64]),
        .R(1'b0));
  FDRE \data_p1_reg[66] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[66]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [65]),
        .R(1'b0));
  FDRE \data_p1_reg[67] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[67]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [66]),
        .R(1'b0));
  FDRE \data_p1_reg[68] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[68]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [67]),
        .R(1'b0));
  FDRE \data_p1_reg[69] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[69]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [68]),
        .R(1'b0));
  FDRE \data_p1_reg[6] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[6]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [6]),
        .R(1'b0));
  FDRE \data_p1_reg[70] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[70]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [69]),
        .R(1'b0));
  FDRE \data_p1_reg[71] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[71]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [70]),
        .R(1'b0));
  FDRE \data_p1_reg[72] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[72]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [71]),
        .R(1'b0));
  FDRE \data_p1_reg[73] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[73]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [72]),
        .R(1'b0));
  FDRE \data_p1_reg[74] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[74]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [73]),
        .R(1'b0));
  FDRE \data_p1_reg[75] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[75]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [74]),
        .R(1'b0));
  FDRE \data_p1_reg[76] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[76]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [75]),
        .R(1'b0));
  FDRE \data_p1_reg[77] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[77]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [76]),
        .R(1'b0));
  FDRE \data_p1_reg[78] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[78]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [77]),
        .R(1'b0));
  FDRE \data_p1_reg[79] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[79]_i_2_n_0 ),
        .Q(\data_p1_reg[79]_0 [78]),
        .R(1'b0));
  FDRE \data_p1_reg[7] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[7]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [7]),
        .R(1'b0));
  FDRE \data_p1_reg[8] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[8]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [8]),
        .R(1'b0));
  FDRE \data_p1_reg[9] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[9]_i_1_n_0 ),
        .Q(\data_p1_reg[79]_0 [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[0]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [0]),
        .I2(\data_p2_reg[62]_1 [0]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [0]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[10]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [10]),
        .I2(\data_p2_reg[62]_1 [10]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [10]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[11]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [11]),
        .I2(\data_p2_reg[62]_1 [11]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [11]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[12]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [12]),
        .I2(\data_p2_reg[62]_1 [12]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [12]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[13]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [13]),
        .I2(\data_p2_reg[62]_1 [13]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [13]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[14]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [14]),
        .I2(\data_p2_reg[62]_1 [14]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [14]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[15]_i_1__0 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [15]),
        .I2(\data_p2_reg[62]_1 [15]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [15]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[15]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[16]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [16]),
        .I2(\data_p2_reg[62]_1 [16]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [16]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[17]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [17]),
        .I2(\data_p2_reg[62]_1 [17]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [17]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[18]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [18]),
        .I2(\data_p2_reg[62]_1 [18]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [18]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[19]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [19]),
        .I2(\data_p2_reg[62]_1 [19]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [19]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[1]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [1]),
        .I2(\data_p2_reg[62]_1 [1]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [1]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[20]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [20]),
        .I2(\data_p2_reg[62]_1 [20]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [20]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[21]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [21]),
        .I2(\data_p2_reg[62]_1 [21]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [21]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[22]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [22]),
        .I2(\data_p2_reg[62]_1 [22]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [22]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[23]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [23]),
        .I2(\data_p2_reg[62]_1 [23]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [23]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[24]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [24]),
        .I2(\data_p2_reg[62]_1 [24]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [24]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[25]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [25]),
        .I2(\data_p2_reg[62]_1 [25]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [25]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[26]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [26]),
        .I2(\data_p2_reg[62]_1 [26]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [26]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[27]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [27]),
        .I2(\data_p2_reg[62]_1 [27]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [27]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[28]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [28]),
        .I2(\data_p2_reg[62]_1 [28]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [28]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[29]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [29]),
        .I2(\data_p2_reg[62]_1 [29]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [29]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[2]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [2]),
        .I2(\data_p2_reg[62]_1 [2]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [2]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[30]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [30]),
        .I2(\data_p2_reg[62]_1 [30]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [30]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[31]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [31]),
        .I2(\data_p2_reg[62]_1 [31]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [31]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[32]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [32]),
        .I2(\data_p2_reg[62]_1 [32]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [32]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[33]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [33]),
        .I2(\data_p2_reg[62]_1 [33]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [33]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[34]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [34]),
        .I2(\data_p2_reg[62]_1 [34]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [34]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[35]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [35]),
        .I2(\data_p2_reg[62]_1 [35]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [35]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[35]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[36]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [36]),
        .I2(\data_p2_reg[62]_1 [36]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [36]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[36]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[37]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [37]),
        .I2(\data_p2_reg[62]_1 [37]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [37]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[37]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[38]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [38]),
        .I2(\data_p2_reg[62]_1 [38]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [38]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[38]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[39]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [39]),
        .I2(\data_p2_reg[62]_1 [39]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [39]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[39]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[3]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [3]),
        .I2(\data_p2_reg[62]_1 [3]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [3]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[40]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [40]),
        .I2(\data_p2_reg[62]_1 [40]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [40]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[40]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[41]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [41]),
        .I2(\data_p2_reg[62]_1 [41]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [41]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[41]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[42]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [42]),
        .I2(\data_p2_reg[62]_1 [42]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [42]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[42]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[43]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [43]),
        .I2(\data_p2_reg[62]_1 [43]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [43]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[43]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[44]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [44]),
        .I2(\data_p2_reg[62]_1 [44]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [44]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[44]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[45]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [45]),
        .I2(\data_p2_reg[62]_1 [45]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [45]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[45]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[46]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [46]),
        .I2(\data_p2_reg[62]_1 [46]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [46]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[46]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[47]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [47]),
        .I2(\data_p2_reg[62]_1 [47]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [47]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[47]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[48]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [48]),
        .I2(\data_p2_reg[62]_1 [48]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [48]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[48]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[49]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [49]),
        .I2(\data_p2_reg[62]_1 [49]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [49]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[49]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[4]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [4]),
        .I2(\data_p2_reg[62]_1 [4]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [4]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[50]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [50]),
        .I2(\data_p2_reg[62]_1 [50]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [50]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[50]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[51]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [51]),
        .I2(\data_p2_reg[62]_1 [51]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [51]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[51]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[52]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [52]),
        .I2(\data_p2_reg[62]_1 [52]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [52]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[52]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[53]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [53]),
        .I2(\data_p2_reg[62]_1 [53]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [53]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[53]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[54]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [54]),
        .I2(\data_p2_reg[62]_1 [54]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [54]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[54]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[55]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [55]),
        .I2(\data_p2_reg[62]_1 [55]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [55]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[55]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[56]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [56]),
        .I2(\data_p2_reg[62]_1 [56]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [56]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[56]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[57]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [57]),
        .I2(\data_p2_reg[62]_1 [57]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [57]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[57]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[58]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [58]),
        .I2(\data_p2_reg[62]_1 [58]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [58]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[58]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[59]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [59]),
        .I2(\data_p2_reg[62]_1 [59]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [59]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[59]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[5]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [5]),
        .I2(\data_p2_reg[62]_1 [5]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [5]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[60]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [60]),
        .I2(\data_p2_reg[62]_1 [60]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [60]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[60]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[61]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [61]),
        .I2(\data_p2_reg[62]_1 [61]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [61]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[61]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[62]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [62]),
        .I2(\data_p2_reg[62]_1 [62]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [62]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[62]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4FFF)) 
    \data_p2[62]_i_2 
       (.I0(\ap_CS_fsm_reg[11]_0 ),
        .I1(\data_p2_reg[64]_0 [5]),
        .I2(\data_p2_reg[64]_0 [1]),
        .I3(s_ready_t_reg_0),
        .O(\data_p2[62]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \data_p2[64]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p1_reg[79]_1 [0]),
        .I2(\ap_CS_fsm_reg[11]_0 ),
        .I3(\data_p2_reg[64]_0 [5]),
        .I4(\data_p1_reg[79]_2 [0]),
        .O(\data_p2[64]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \data_p2[65]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p1_reg[79]_1 [1]),
        .I2(\ap_CS_fsm_reg[11]_0 ),
        .I3(\data_p2_reg[64]_0 [5]),
        .I4(\data_p1_reg[79]_2 [1]),
        .O(\data_p2[65]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \data_p2[66]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p1_reg[79]_1 [2]),
        .I2(\ap_CS_fsm_reg[11]_0 ),
        .I3(\data_p2_reg[64]_0 [5]),
        .I4(\data_p1_reg[79]_2 [2]),
        .O(\data_p2[66]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \data_p2[67]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p1_reg[79]_1 [3]),
        .I2(\ap_CS_fsm_reg[11]_0 ),
        .I3(\data_p2_reg[64]_0 [5]),
        .I4(\data_p1_reg[79]_2 [3]),
        .O(\data_p2[67]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \data_p2[68]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p1_reg[79]_1 [4]),
        .I2(\ap_CS_fsm_reg[11]_0 ),
        .I3(\data_p2_reg[64]_0 [5]),
        .I4(\data_p1_reg[79]_2 [4]),
        .O(\data_p2[68]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \data_p2[69]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p1_reg[79]_1 [5]),
        .I2(\ap_CS_fsm_reg[11]_0 ),
        .I3(\data_p2_reg[64]_0 [5]),
        .I4(\data_p1_reg[79]_2 [5]),
        .O(\data_p2[69]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[6]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [6]),
        .I2(\data_p2_reg[62]_1 [6]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [6]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \data_p2[70]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p1_reg[79]_1 [6]),
        .I2(\ap_CS_fsm_reg[11]_0 ),
        .I3(\data_p2_reg[64]_0 [5]),
        .I4(\data_p1_reg[79]_2 [6]),
        .O(\data_p2[70]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF4444444F444)) 
    \data_p2[71]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p1_reg[79]_1 [7]),
        .I2(\data_p2_reg[64]_0 [1]),
        .I3(s_ready_t_reg_0),
        .I4(s_ready_t_reg_1),
        .I5(\data_p1_reg[79]_2 [7]),
        .O(\data_p2[71]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \data_p2[72]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p1_reg[79]_1 [8]),
        .I2(\ap_CS_fsm_reg[11]_0 ),
        .I3(\data_p2_reg[64]_0 [5]),
        .I4(\data_p1_reg[79]_2 [8]),
        .O(\data_p2[72]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \data_p2[73]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p1_reg[79]_1 [9]),
        .I2(\ap_CS_fsm_reg[11]_0 ),
        .I3(\data_p2_reg[64]_0 [5]),
        .I4(\data_p1_reg[79]_2 [9]),
        .O(\data_p2[73]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \data_p2[74]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p1_reg[79]_1 [10]),
        .I2(\ap_CS_fsm_reg[11]_0 ),
        .I3(\data_p2_reg[64]_0 [5]),
        .I4(\data_p1_reg[79]_2 [10]),
        .O(\data_p2[74]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \data_p2[75]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p1_reg[79]_1 [11]),
        .I2(\ap_CS_fsm_reg[11]_0 ),
        .I3(\data_p2_reg[64]_0 [5]),
        .I4(\data_p1_reg[79]_2 [11]),
        .O(\data_p2[75]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \data_p2[76]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p1_reg[79]_1 [12]),
        .I2(\ap_CS_fsm_reg[11]_0 ),
        .I3(\data_p2_reg[64]_0 [5]),
        .I4(\data_p1_reg[79]_2 [12]),
        .O(\data_p2[76]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \data_p2[77]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p1_reg[79]_1 [13]),
        .I2(\ap_CS_fsm_reg[11]_0 ),
        .I3(\data_p2_reg[64]_0 [5]),
        .I4(\data_p1_reg[79]_2 [13]),
        .O(\data_p2[77]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \data_p2[78]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p1_reg[79]_1 [14]),
        .I2(\ap_CS_fsm_reg[11]_0 ),
        .I3(\data_p2_reg[64]_0 [5]),
        .I4(\data_p1_reg[79]_2 [14]),
        .O(\data_p2[78]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \data_p2[79]_i_2 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p1_reg[79]_1 [15]),
        .I2(\ap_CS_fsm_reg[11]_0 ),
        .I3(\data_p2_reg[64]_0 [5]),
        .I4(\data_p1_reg[79]_2 [15]),
        .O(\data_p2[79]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA20AA20AA20FFFF)) 
    \data_p2[79]_i_3 
       (.I0(s_ready_t_reg_0),
        .I1(\ap_CS_fsm_reg[11]_0 ),
        .I2(\data_p2_reg[64]_0 [5]),
        .I3(\data_p2_reg[64]_0 [1]),
        .I4(\data_p2_reg[64]_0 [8]),
        .I5(\data_p2_reg[64]_0 [7]),
        .O(\data_p2[79]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[7]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [7]),
        .I2(\data_p2_reg[62]_1 [7]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [7]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[8]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [8]),
        .I2(\data_p2_reg[62]_1 [8]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [8]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \data_p2[9]_i_1 
       (.I0(\data_p2[79]_i_3_n_0 ),
        .I1(\data_p2_reg[62]_0 [9]),
        .I2(\data_p2_reg[62]_1 [9]),
        .I3(s_ready_t_reg_1),
        .I4(\data_p2_reg[62]_2 [9]),
        .I5(\data_p2[62]_i_2_n_0 ),
        .O(\data_p2[9]_i_1_n_0 ));
  FDRE \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[0]_i_1_n_0 ),
        .Q(data_p2[0]),
        .R(1'b0));
  FDRE \data_p2_reg[10] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[10]_i_1_n_0 ),
        .Q(data_p2[10]),
        .R(1'b0));
  FDRE \data_p2_reg[11] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[11]_i_1_n_0 ),
        .Q(data_p2[11]),
        .R(1'b0));
  FDRE \data_p2_reg[12] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[12]_i_1_n_0 ),
        .Q(data_p2[12]),
        .R(1'b0));
  FDRE \data_p2_reg[13] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[13]_i_1_n_0 ),
        .Q(data_p2[13]),
        .R(1'b0));
  FDRE \data_p2_reg[14] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[14]_i_1_n_0 ),
        .Q(data_p2[14]),
        .R(1'b0));
  FDRE \data_p2_reg[15] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[15]_i_1__0_n_0 ),
        .Q(data_p2[15]),
        .R(1'b0));
  FDRE \data_p2_reg[16] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[16]_i_1_n_0 ),
        .Q(data_p2[16]),
        .R(1'b0));
  FDRE \data_p2_reg[17] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[17]_i_1_n_0 ),
        .Q(data_p2[17]),
        .R(1'b0));
  FDRE \data_p2_reg[18] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[18]_i_1_n_0 ),
        .Q(data_p2[18]),
        .R(1'b0));
  FDRE \data_p2_reg[19] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[19]_i_1_n_0 ),
        .Q(data_p2[19]),
        .R(1'b0));
  FDRE \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[1]_i_1_n_0 ),
        .Q(data_p2[1]),
        .R(1'b0));
  FDRE \data_p2_reg[20] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[20]_i_1_n_0 ),
        .Q(data_p2[20]),
        .R(1'b0));
  FDRE \data_p2_reg[21] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[21]_i_1_n_0 ),
        .Q(data_p2[21]),
        .R(1'b0));
  FDRE \data_p2_reg[22] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[22]_i_1_n_0 ),
        .Q(data_p2[22]),
        .R(1'b0));
  FDRE \data_p2_reg[23] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[23]_i_1_n_0 ),
        .Q(data_p2[23]),
        .R(1'b0));
  FDRE \data_p2_reg[24] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[24]_i_1_n_0 ),
        .Q(data_p2[24]),
        .R(1'b0));
  FDRE \data_p2_reg[25] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[25]_i_1_n_0 ),
        .Q(data_p2[25]),
        .R(1'b0));
  FDRE \data_p2_reg[26] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[26]_i_1_n_0 ),
        .Q(data_p2[26]),
        .R(1'b0));
  FDRE \data_p2_reg[27] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[27]_i_1_n_0 ),
        .Q(data_p2[27]),
        .R(1'b0));
  FDRE \data_p2_reg[28] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[28]_i_1_n_0 ),
        .Q(data_p2[28]),
        .R(1'b0));
  FDRE \data_p2_reg[29] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[29]_i_1_n_0 ),
        .Q(data_p2[29]),
        .R(1'b0));
  FDRE \data_p2_reg[2] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[2]_i_1_n_0 ),
        .Q(data_p2[2]),
        .R(1'b0));
  FDRE \data_p2_reg[30] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[30]_i_1_n_0 ),
        .Q(data_p2[30]),
        .R(1'b0));
  FDRE \data_p2_reg[31] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[31]_i_1_n_0 ),
        .Q(data_p2[31]),
        .R(1'b0));
  FDRE \data_p2_reg[32] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[32]_i_1_n_0 ),
        .Q(data_p2[32]),
        .R(1'b0));
  FDRE \data_p2_reg[33] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[33]_i_1_n_0 ),
        .Q(data_p2[33]),
        .R(1'b0));
  FDRE \data_p2_reg[34] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[34]_i_1_n_0 ),
        .Q(data_p2[34]),
        .R(1'b0));
  FDRE \data_p2_reg[35] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[35]_i_1_n_0 ),
        .Q(data_p2[35]),
        .R(1'b0));
  FDRE \data_p2_reg[36] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[36]_i_1_n_0 ),
        .Q(data_p2[36]),
        .R(1'b0));
  FDRE \data_p2_reg[37] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[37]_i_1_n_0 ),
        .Q(data_p2[37]),
        .R(1'b0));
  FDRE \data_p2_reg[38] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[38]_i_1_n_0 ),
        .Q(data_p2[38]),
        .R(1'b0));
  FDRE \data_p2_reg[39] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[39]_i_1_n_0 ),
        .Q(data_p2[39]),
        .R(1'b0));
  FDRE \data_p2_reg[3] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[3]_i_1_n_0 ),
        .Q(data_p2[3]),
        .R(1'b0));
  FDRE \data_p2_reg[40] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[40]_i_1_n_0 ),
        .Q(data_p2[40]),
        .R(1'b0));
  FDRE \data_p2_reg[41] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[41]_i_1_n_0 ),
        .Q(data_p2[41]),
        .R(1'b0));
  FDRE \data_p2_reg[42] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[42]_i_1_n_0 ),
        .Q(data_p2[42]),
        .R(1'b0));
  FDRE \data_p2_reg[43] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[43]_i_1_n_0 ),
        .Q(data_p2[43]),
        .R(1'b0));
  FDRE \data_p2_reg[44] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[44]_i_1_n_0 ),
        .Q(data_p2[44]),
        .R(1'b0));
  FDRE \data_p2_reg[45] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[45]_i_1_n_0 ),
        .Q(data_p2[45]),
        .R(1'b0));
  FDRE \data_p2_reg[46] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[46]_i_1_n_0 ),
        .Q(data_p2[46]),
        .R(1'b0));
  FDRE \data_p2_reg[47] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[47]_i_1_n_0 ),
        .Q(data_p2[47]),
        .R(1'b0));
  FDRE \data_p2_reg[48] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[48]_i_1_n_0 ),
        .Q(data_p2[48]),
        .R(1'b0));
  FDRE \data_p2_reg[49] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[49]_i_1_n_0 ),
        .Q(data_p2[49]),
        .R(1'b0));
  FDRE \data_p2_reg[4] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[4]_i_1_n_0 ),
        .Q(data_p2[4]),
        .R(1'b0));
  FDRE \data_p2_reg[50] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[50]_i_1_n_0 ),
        .Q(data_p2[50]),
        .R(1'b0));
  FDRE \data_p2_reg[51] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[51]_i_1_n_0 ),
        .Q(data_p2[51]),
        .R(1'b0));
  FDRE \data_p2_reg[52] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[52]_i_1_n_0 ),
        .Q(data_p2[52]),
        .R(1'b0));
  FDRE \data_p2_reg[53] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[53]_i_1_n_0 ),
        .Q(data_p2[53]),
        .R(1'b0));
  FDRE \data_p2_reg[54] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[54]_i_1_n_0 ),
        .Q(data_p2[54]),
        .R(1'b0));
  FDRE \data_p2_reg[55] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[55]_i_1_n_0 ),
        .Q(data_p2[55]),
        .R(1'b0));
  FDRE \data_p2_reg[56] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[56]_i_1_n_0 ),
        .Q(data_p2[56]),
        .R(1'b0));
  FDRE \data_p2_reg[57] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[57]_i_1_n_0 ),
        .Q(data_p2[57]),
        .R(1'b0));
  FDRE \data_p2_reg[58] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[58]_i_1_n_0 ),
        .Q(data_p2[58]),
        .R(1'b0));
  FDRE \data_p2_reg[59] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[59]_i_1_n_0 ),
        .Q(data_p2[59]),
        .R(1'b0));
  FDRE \data_p2_reg[5] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[5]_i_1_n_0 ),
        .Q(data_p2[5]),
        .R(1'b0));
  FDRE \data_p2_reg[60] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[60]_i_1_n_0 ),
        .Q(data_p2[60]),
        .R(1'b0));
  FDRE \data_p2_reg[61] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[61]_i_1_n_0 ),
        .Q(data_p2[61]),
        .R(1'b0));
  FDRE \data_p2_reg[62] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[62]_i_1_n_0 ),
        .Q(data_p2[62]),
        .R(1'b0));
  FDRE \data_p2_reg[64] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[64]_i_1_n_0 ),
        .Q(data_p2[64]),
        .R(1'b0));
  FDRE \data_p2_reg[65] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[65]_i_1_n_0 ),
        .Q(data_p2[65]),
        .R(1'b0));
  FDRE \data_p2_reg[66] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[66]_i_1_n_0 ),
        .Q(data_p2[66]),
        .R(1'b0));
  FDRE \data_p2_reg[67] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[67]_i_1_n_0 ),
        .Q(data_p2[67]),
        .R(1'b0));
  FDRE \data_p2_reg[68] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[68]_i_1_n_0 ),
        .Q(data_p2[68]),
        .R(1'b0));
  FDRE \data_p2_reg[69] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[69]_i_1_n_0 ),
        .Q(data_p2[69]),
        .R(1'b0));
  FDRE \data_p2_reg[6] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[6]_i_1_n_0 ),
        .Q(data_p2[6]),
        .R(1'b0));
  FDRE \data_p2_reg[70] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[70]_i_1_n_0 ),
        .Q(data_p2[70]),
        .R(1'b0));
  FDRE \data_p2_reg[71] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[71]_i_1_n_0 ),
        .Q(data_p2[71]),
        .R(1'b0));
  FDRE \data_p2_reg[72] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[72]_i_1_n_0 ),
        .Q(data_p2[72]),
        .R(1'b0));
  FDRE \data_p2_reg[73] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[73]_i_1_n_0 ),
        .Q(data_p2[73]),
        .R(1'b0));
  FDRE \data_p2_reg[74] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[74]_i_1_n_0 ),
        .Q(data_p2[74]),
        .R(1'b0));
  FDRE \data_p2_reg[75] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[75]_i_1_n_0 ),
        .Q(data_p2[75]),
        .R(1'b0));
  FDRE \data_p2_reg[76] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[76]_i_1_n_0 ),
        .Q(data_p2[76]),
        .R(1'b0));
  FDRE \data_p2_reg[77] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[77]_i_1_n_0 ),
        .Q(data_p2[77]),
        .R(1'b0));
  FDRE \data_p2_reg[78] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[78]_i_1_n_0 ),
        .Q(data_p2[78]),
        .R(1'b0));
  FDRE \data_p2_reg[79] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[79]_i_2_n_0 ),
        .Q(data_p2[79]),
        .R(1'b0));
  FDRE \data_p2_reg[7] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[7]_i_1_n_0 ),
        .Q(data_p2[7]),
        .R(1'b0));
  FDRE \data_p2_reg[8] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[8]_i_1_n_0 ),
        .Q(data_p2[8]),
        .R(1'b0));
  FDRE \data_p2_reg[9] 
       (.C(ap_clk),
        .CE(\data_p2_reg[79]_0 ),
        .D(\data_p2[9]_i_1_n_0 ),
        .Q(data_p2[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT5 #(
    .INIT(32'hF0FCD0FF)) 
    s_ready_t_i_1__0
       (.I0(gmem_ARVALID),
        .I1(rs2f_rreq_ack),
        .I2(s_ready_t_reg_0),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(s_ready_t_i_1__0_n_0));
  FDRE s_ready_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(s_ready_t_i_1__0_n_0),
        .Q(s_ready_t_reg_0),
        .R(SR));
  LUT5 #(
    .INIT(32'hFF5F8800)) 
    \state[0]_i_1 
       (.I0(state),
        .I1(s_ready_t_reg_0),
        .I2(rs2f_rreq_ack),
        .I3(gmem_ARVALID),
        .I4(Q),
        .O(\state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF5FD)) 
    \state[1]_i_1__0 
       (.I0(Q),
        .I1(state),
        .I2(rs2f_rreq_ack),
        .I3(gmem_ARVALID),
        .O(\state[1]_i_1__0_n_0 ));
  FDRE \state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(Q),
        .R(SR));
  FDSE \state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[1]_i_1__0_n_0 ),
        .Q(state),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "runLayer_gmem_m_axi_reg_slice" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_gmem_m_axi_reg_slice__parameterized0
   (rdata_ack_t,
    ap_block_pp0_stage0_subdone,
    Q,
    E,
    \bus_wide_gen.ready_for_data__0 ,
    \ap_CS_fsm_reg[19] ,
    \state_reg[0]_0 ,
    \data_p1_reg[15]_0 ,
    SR,
    ap_clk,
    ap_enable_reg_pp0_iter1,
    ap_enable_reg_pp0_iter1_0,
    gmem_RREADY,
    \FSM_sequential_state_reg[1]_0 ,
    \data_p2_reg[15]_0 ,
    \FSM_sequential_state[1]_i_3 ,
    CO,
    grp_runLayer_Pipeline_2_fu_201_ap_start_reg);
  output rdata_ack_t;
  output ap_block_pp0_stage0_subdone;
  output [0:0]Q;
  output [0:0]E;
  output \bus_wide_gen.ready_for_data__0 ;
  output \ap_CS_fsm_reg[19] ;
  output \state_reg[0]_0 ;
  output [15:0]\data_p1_reg[15]_0 ;
  input [0:0]SR;
  input ap_clk;
  input ap_enable_reg_pp0_iter1;
  input ap_enable_reg_pp0_iter1_0;
  input gmem_RREADY;
  input \FSM_sequential_state_reg[1]_0 ;
  input [15:0]\data_p2_reg[15]_0 ;
  input [2:0]\FSM_sequential_state[1]_i_3 ;
  input [0:0]CO;
  input grp_runLayer_Pipeline_2_fu_201_ap_start_reg;

  wire [0:0]CO;
  wire [0:0]E;
  wire [2:0]\FSM_sequential_state[1]_i_3 ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \ap_CS_fsm_reg[19] ;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_0;
  wire \bus_wide_gen.ready_for_data__0 ;
  wire \data_p1[0]_i_1__0_n_0 ;
  wire \data_p1[10]_i_1__0_n_0 ;
  wire \data_p1[11]_i_1__0_n_0 ;
  wire \data_p1[12]_i_1__0_n_0 ;
  wire \data_p1[13]_i_1__0_n_0 ;
  wire \data_p1[14]_i_1__0_n_0 ;
  wire \data_p1[15]_i_2_n_0 ;
  wire \data_p1[1]_i_1__0_n_0 ;
  wire \data_p1[2]_i_1__0_n_0 ;
  wire \data_p1[3]_i_1__0_n_0 ;
  wire \data_p1[4]_i_1__0_n_0 ;
  wire \data_p1[5]_i_1__0_n_0 ;
  wire \data_p1[6]_i_1__0_n_0 ;
  wire \data_p1[7]_i_1__0_n_0 ;
  wire \data_p1[8]_i_1__0_n_0 ;
  wire \data_p1[9]_i_1__0_n_0 ;
  wire [15:0]\data_p1_reg[15]_0 ;
  wire [15:0]\data_p2_reg[15]_0 ;
  wire \data_p2_reg_n_0_[0] ;
  wire \data_p2_reg_n_0_[10] ;
  wire \data_p2_reg_n_0_[11] ;
  wire \data_p2_reg_n_0_[12] ;
  wire \data_p2_reg_n_0_[13] ;
  wire \data_p2_reg_n_0_[14] ;
  wire \data_p2_reg_n_0_[15] ;
  wire \data_p2_reg_n_0_[1] ;
  wire \data_p2_reg_n_0_[2] ;
  wire \data_p2_reg_n_0_[3] ;
  wire \data_p2_reg_n_0_[4] ;
  wire \data_p2_reg_n_0_[5] ;
  wire \data_p2_reg_n_0_[6] ;
  wire \data_p2_reg_n_0_[7] ;
  wire \data_p2_reg_n_0_[8] ;
  wire \data_p2_reg_n_0_[9] ;
  wire gmem_RREADY;
  wire grp_runLayer_Pipeline_2_fu_201_ap_start_reg;
  wire load_p1;
  wire load_p2;
  wire [1:0]next__0;
  wire rdata_ack_t;
  wire s_ready_t_i_1_n_0;
  wire [1:1]state;
  wire \state[0]_i_1__0_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire [1:0]state__0;
  wire \state_reg[0]_0 ;

  LUT4 #(
    .INIT(16'h0230)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .I1(gmem_RREADY),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT5 #(
    .INIT(32'h3E02300C)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(rdata_ack_t),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(gmem_RREADY),
        .I4(\FSM_sequential_state_reg[1]_0 ),
        .O(next__0[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(\FSM_sequential_state[1]_i_3 [2]),
        .I1(\FSM_sequential_state[1]_i_3 [1]),
        .O(\ap_CS_fsm_reg[19] ));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \conv5_cast_reg_127[15]_i_1 
       (.I0(Q),
        .I1(ap_enable_reg_pp0_iter1_0),
        .O(E));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[0]_i_1__0 
       (.I0(\data_p2_reg_n_0_[0] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg[15]_0 [0]),
        .O(\data_p1[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[10]_i_1__0 
       (.I0(\data_p2_reg_n_0_[10] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg[15]_0 [10]),
        .O(\data_p1[10]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[11]_i_1__0 
       (.I0(\data_p2_reg_n_0_[11] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg[15]_0 [11]),
        .O(\data_p1[11]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[12]_i_1__0 
       (.I0(\data_p2_reg_n_0_[12] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg[15]_0 [12]),
        .O(\data_p1[12]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[13]_i_1__0 
       (.I0(\data_p2_reg_n_0_[13] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg[15]_0 [13]),
        .O(\data_p1[13]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[14]_i_1__0 
       (.I0(\data_p2_reg_n_0_[14] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg[15]_0 [14]),
        .O(\data_p1[14]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h08CA)) 
    \data_p1[15]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .I1(gmem_RREADY),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[15]_i_2 
       (.I0(\data_p2_reg_n_0_[15] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg[15]_0 [15]),
        .O(\data_p1[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[1]_i_1__0 
       (.I0(\data_p2_reg_n_0_[1] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg[15]_0 [1]),
        .O(\data_p1[1]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[2]_i_1__0 
       (.I0(\data_p2_reg_n_0_[2] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg[15]_0 [2]),
        .O(\data_p1[2]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[3]_i_1__0 
       (.I0(\data_p2_reg_n_0_[3] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg[15]_0 [3]),
        .O(\data_p1[3]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[4]_i_1__0 
       (.I0(\data_p2_reg_n_0_[4] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg[15]_0 [4]),
        .O(\data_p1[4]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[5]_i_1__0 
       (.I0(\data_p2_reg_n_0_[5] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg[15]_0 [5]),
        .O(\data_p1[5]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[6]_i_1__0 
       (.I0(\data_p2_reg_n_0_[6] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg[15]_0 [6]),
        .O(\data_p1[6]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[7]_i_1__0 
       (.I0(\data_p2_reg_n_0_[7] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg[15]_0 [7]),
        .O(\data_p1[7]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[8]_i_1__0 
       (.I0(\data_p2_reg_n_0_[8] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg[15]_0 [8]),
        .O(\data_p1[8]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[9]_i_1__0 
       (.I0(\data_p2_reg_n_0_[9] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg[15]_0 [9]),
        .O(\data_p1[9]_i_1__0_n_0 ));
  FDRE \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[0]_i_1__0_n_0 ),
        .Q(\data_p1_reg[15]_0 [0]),
        .R(1'b0));
  FDRE \data_p1_reg[10] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[10]_i_1__0_n_0 ),
        .Q(\data_p1_reg[15]_0 [10]),
        .R(1'b0));
  FDRE \data_p1_reg[11] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[11]_i_1__0_n_0 ),
        .Q(\data_p1_reg[15]_0 [11]),
        .R(1'b0));
  FDRE \data_p1_reg[12] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[12]_i_1__0_n_0 ),
        .Q(\data_p1_reg[15]_0 [12]),
        .R(1'b0));
  FDRE \data_p1_reg[13] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[13]_i_1__0_n_0 ),
        .Q(\data_p1_reg[15]_0 [13]),
        .R(1'b0));
  FDRE \data_p1_reg[14] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[14]_i_1__0_n_0 ),
        .Q(\data_p1_reg[15]_0 [14]),
        .R(1'b0));
  FDRE \data_p1_reg[15] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[15]_i_2_n_0 ),
        .Q(\data_p1_reg[15]_0 [15]),
        .R(1'b0));
  FDRE \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[1]_i_1__0_n_0 ),
        .Q(\data_p1_reg[15]_0 [1]),
        .R(1'b0));
  FDRE \data_p1_reg[2] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[2]_i_1__0_n_0 ),
        .Q(\data_p1_reg[15]_0 [2]),
        .R(1'b0));
  FDRE \data_p1_reg[3] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[3]_i_1__0_n_0 ),
        .Q(\data_p1_reg[15]_0 [3]),
        .R(1'b0));
  FDRE \data_p1_reg[4] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[4]_i_1__0_n_0 ),
        .Q(\data_p1_reg[15]_0 [4]),
        .R(1'b0));
  FDRE \data_p1_reg[5] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[5]_i_1__0_n_0 ),
        .Q(\data_p1_reg[15]_0 [5]),
        .R(1'b0));
  FDRE \data_p1_reg[6] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[6]_i_1__0_n_0 ),
        .Q(\data_p1_reg[15]_0 [6]),
        .R(1'b0));
  FDRE \data_p1_reg[7] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[7]_i_1__0_n_0 ),
        .Q(\data_p1_reg[15]_0 [7]),
        .R(1'b0));
  FDRE \data_p1_reg[8] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[8]_i_1__0_n_0 ),
        .Q(\data_p1_reg[15]_0 [8]),
        .R(1'b0));
  FDRE \data_p1_reg[9] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[9]_i_1__0_n_0 ),
        .Q(\data_p1_reg[15]_0 [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \data_p2[15]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .I1(rdata_ack_t),
        .O(load_p2));
  FDRE \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [0]),
        .Q(\data_p2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \data_p2_reg[10] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [10]),
        .Q(\data_p2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \data_p2_reg[11] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [11]),
        .Q(\data_p2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \data_p2_reg[12] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [12]),
        .Q(\data_p2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \data_p2_reg[13] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [13]),
        .Q(\data_p2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \data_p2_reg[14] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [14]),
        .Q(\data_p2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \data_p2_reg[15] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [15]),
        .Q(\data_p2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [1]),
        .Q(\data_p2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \data_p2_reg[2] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [2]),
        .Q(\data_p2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \data_p2_reg[3] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [3]),
        .Q(\data_p2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \data_p2_reg[4] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [4]),
        .Q(\data_p2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \data_p2_reg[5] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [5]),
        .Q(\data_p2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \data_p2_reg[6] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [6]),
        .Q(\data_p2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \data_p2_reg[7] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [7]),
        .Q(\data_p2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \data_p2_reg[8] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [8]),
        .Q(\data_p2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \data_p2_reg[9] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [9]),
        .Q(\data_p2_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT5 #(
    .INIT(32'hFF7FFF00)) 
    grp_runLayer_Pipeline_2_fu_201_ap_start_reg_i_1
       (.I0(CO),
        .I1(Q),
        .I2(ap_enable_reg_pp0_iter1_0),
        .I3(\FSM_sequential_state[1]_i_3 [0]),
        .I4(grp_runLayer_Pipeline_2_fu_201_ap_start_reg),
        .O(\state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \loop_index1_load_reg_122[6]_i_2 
       (.I0(Q),
        .I1(ap_enable_reg_pp0_iter1),
        .O(ap_block_pp0_stage0_subdone));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT2 #(
    .INIT(4'hB)) 
    mem_reg_i_14
       (.I0(rdata_ack_t),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\bus_wide_gen.ready_for_data__0 ));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT5 #(
    .INIT(32'hF0FCD0FF)) 
    s_ready_t_i_1
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .I1(gmem_RREADY),
        .I2(rdata_ack_t),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(s_ready_t_i_1_n_0));
  FDRE s_ready_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(s_ready_t_i_1_n_0),
        .Q(rdata_ack_t),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT5 #(
    .INIT(32'hDFDFC000)) 
    \state[0]_i_1__0 
       (.I0(gmem_RREADY),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(state),
        .I3(rdata_ack_t),
        .I4(Q),
        .O(\state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT4 #(
    .INIT(16'hF5FD)) 
    \state[1]_i_1 
       (.I0(Q),
        .I1(state),
        .I2(gmem_RREADY),
        .I3(\FSM_sequential_state_reg[1]_0 ),
        .O(\state[1]_i_1_n_0 ));
  FDRE \state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[0]_i_1__0_n_0 ),
        .Q(Q),
        .R(SR));
  FDSE \state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state),
        .S(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_mac_muladd_16s_16s_16ns_16_4_1
   (ap_block_pp0_stage0_subdone,
    \first_itr_reg_131_reg[0] ,
    D,
    ap_clk,
    p_reg_reg,
    DOADO,
    icmp_ln29_reg_248_pp0_iter7_reg,
    Q,
    ap_enable_reg_pp0_iter8,
    p_reg_reg_0,
    gmem_ARREADY,
    icmp_ln29_reg_248,
    ap_enable_reg_pp0_iter1,
    icmp_ln29_reg_248_pp0_iter11_reg,
    ap_enable_reg_pp0_iter12,
    p_reg_reg_1,
    \conv205_fu_72_reg[15] ,
    \conv205_fu_72_reg[15]_0 );
  output ap_block_pp0_stage0_subdone;
  output \first_itr_reg_131_reg[0] ;
  output [15:0]D;
  input ap_clk;
  input [15:0]p_reg_reg;
  input [15:0]DOADO;
  input icmp_ln29_reg_248_pp0_iter7_reg;
  input [0:0]Q;
  input ap_enable_reg_pp0_iter8;
  input p_reg_reg_0;
  input gmem_ARREADY;
  input icmp_ln29_reg_248;
  input ap_enable_reg_pp0_iter1;
  input icmp_ln29_reg_248_pp0_iter11_reg;
  input ap_enable_reg_pp0_iter12;
  input [15:0]p_reg_reg_1;
  input \conv205_fu_72_reg[15] ;
  input [15:0]\conv205_fu_72_reg[15]_0 ;

  wire [15:0]D;
  wire [15:0]DOADO;
  wire [0:0]Q;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter12;
  wire ap_enable_reg_pp0_iter8;
  wire \conv205_fu_72_reg[15] ;
  wire [15:0]\conv205_fu_72_reg[15]_0 ;
  wire \first_itr_reg_131_reg[0] ;
  wire gmem_ARREADY;
  wire icmp_ln29_reg_248;
  wire icmp_ln29_reg_248_pp0_iter11_reg;
  wire icmp_ln29_reg_248_pp0_iter7_reg;
  wire [15:0]p_reg_reg;
  wire p_reg_reg_0;
  wire [15:0]p_reg_reg_1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0 runLayer_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U
       (.D(D),
        .DOADO(DOADO),
        .Q(Q),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter12(ap_enable_reg_pp0_iter12),
        .ap_enable_reg_pp0_iter8(ap_enable_reg_pp0_iter8),
        .\conv205_fu_72_reg[15] (\conv205_fu_72_reg[15] ),
        .\conv205_fu_72_reg[15]_0 (\conv205_fu_72_reg[15]_0 ),
        .\first_itr_reg_131_reg[0] (\first_itr_reg_131_reg[0] ),
        .gmem_ARREADY(gmem_ARREADY),
        .icmp_ln29_reg_248(icmp_ln29_reg_248),
        .icmp_ln29_reg_248_pp0_iter11_reg(icmp_ln29_reg_248_pp0_iter11_reg),
        .icmp_ln29_reg_248_pp0_iter7_reg(icmp_ln29_reg_248_pp0_iter7_reg),
        .\icmp_ln29_reg_248_pp0_iter7_reg_reg[0]__0 (ap_block_pp0_stage0_subdone),
        .p_reg_reg_0(p_reg_reg),
        .p_reg_reg_1(p_reg_reg_0),
        .p_reg_reg_2(p_reg_reg_1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0
   (\icmp_ln29_reg_248_pp0_iter7_reg_reg[0]__0 ,
    \first_itr_reg_131_reg[0] ,
    D,
    ap_clk,
    p_reg_reg_0,
    DOADO,
    icmp_ln29_reg_248_pp0_iter7_reg,
    Q,
    ap_enable_reg_pp0_iter8,
    p_reg_reg_1,
    gmem_ARREADY,
    icmp_ln29_reg_248,
    ap_enable_reg_pp0_iter1,
    icmp_ln29_reg_248_pp0_iter11_reg,
    ap_enable_reg_pp0_iter12,
    p_reg_reg_2,
    \conv205_fu_72_reg[15] ,
    \conv205_fu_72_reg[15]_0 );
  output \icmp_ln29_reg_248_pp0_iter7_reg_reg[0]__0 ;
  output \first_itr_reg_131_reg[0] ;
  output [15:0]D;
  input ap_clk;
  input [15:0]p_reg_reg_0;
  input [15:0]DOADO;
  input icmp_ln29_reg_248_pp0_iter7_reg;
  input [0:0]Q;
  input ap_enable_reg_pp0_iter8;
  input p_reg_reg_1;
  input gmem_ARREADY;
  input icmp_ln29_reg_248;
  input ap_enable_reg_pp0_iter1;
  input icmp_ln29_reg_248_pp0_iter11_reg;
  input ap_enable_reg_pp0_iter12;
  input [15:0]p_reg_reg_2;
  input \conv205_fu_72_reg[15] ;
  input [15:0]\conv205_fu_72_reg[15]_0 ;

  wire [15:0]D;
  wire [15:0]DOADO;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter12;
  wire ap_enable_reg_pp0_iter8;
  wire [15:0]ap_sig_allocacmp_conv205_load;
  wire \conv205_fu_72_reg[15] ;
  wire [15:0]\conv205_fu_72_reg[15]_0 ;
  wire \first_itr_reg_131_reg[0] ;
  wire gmem_ARREADY;
  wire gmem_addr_read_reg_2630;
  wire icmp_ln29_reg_248;
  wire icmp_ln29_reg_248_pp0_iter11_reg;
  wire icmp_ln29_reg_248_pp0_iter7_reg;
  wire \icmp_ln29_reg_248_pp0_iter7_reg_reg[0]__0 ;
  wire [15:0]p_reg_reg_0;
  wire p_reg_reg_1;
  wire [15:0]p_reg_reg_2;
  wire p_reg_reg_n_100;
  wire p_reg_reg_n_101;
  wire p_reg_reg_n_102;
  wire p_reg_reg_n_103;
  wire p_reg_reg_n_104;
  wire p_reg_reg_n_105;
  wire p_reg_reg_n_90;
  wire p_reg_reg_n_91;
  wire p_reg_reg_n_92;
  wire p_reg_reg_n_93;
  wire p_reg_reg_n_94;
  wire p_reg_reg_n_95;
  wire p_reg_reg_n_96;
  wire p_reg_reg_n_97;
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
  wire [47:16]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \conv205_fu_72[0]_i_1 
       (.I0(icmp_ln29_reg_248_pp0_iter11_reg),
        .I1(ap_enable_reg_pp0_iter12),
        .I2(p_reg_reg_n_105),
        .I3(p_reg_reg_2[0]),
        .I4(\conv205_fu_72_reg[15] ),
        .I5(\conv205_fu_72_reg[15]_0 [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \conv205_fu_72[10]_i_1 
       (.I0(icmp_ln29_reg_248_pp0_iter11_reg),
        .I1(ap_enable_reg_pp0_iter12),
        .I2(p_reg_reg_n_95),
        .I3(p_reg_reg_2[10]),
        .I4(\conv205_fu_72_reg[15] ),
        .I5(\conv205_fu_72_reg[15]_0 [10]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \conv205_fu_72[11]_i_1 
       (.I0(icmp_ln29_reg_248_pp0_iter11_reg),
        .I1(ap_enable_reg_pp0_iter12),
        .I2(p_reg_reg_n_94),
        .I3(p_reg_reg_2[11]),
        .I4(\conv205_fu_72_reg[15] ),
        .I5(\conv205_fu_72_reg[15]_0 [11]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \conv205_fu_72[12]_i_1 
       (.I0(icmp_ln29_reg_248_pp0_iter11_reg),
        .I1(ap_enable_reg_pp0_iter12),
        .I2(p_reg_reg_n_93),
        .I3(p_reg_reg_2[12]),
        .I4(\conv205_fu_72_reg[15] ),
        .I5(\conv205_fu_72_reg[15]_0 [12]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \conv205_fu_72[13]_i_1 
       (.I0(icmp_ln29_reg_248_pp0_iter11_reg),
        .I1(ap_enable_reg_pp0_iter12),
        .I2(p_reg_reg_n_92),
        .I3(p_reg_reg_2[13]),
        .I4(\conv205_fu_72_reg[15] ),
        .I5(\conv205_fu_72_reg[15]_0 [13]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \conv205_fu_72[14]_i_1 
       (.I0(icmp_ln29_reg_248_pp0_iter11_reg),
        .I1(ap_enable_reg_pp0_iter12),
        .I2(p_reg_reg_n_91),
        .I3(p_reg_reg_2[14]),
        .I4(\conv205_fu_72_reg[15] ),
        .I5(\conv205_fu_72_reg[15]_0 [14]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \conv205_fu_72[15]_i_1 
       (.I0(icmp_ln29_reg_248_pp0_iter11_reg),
        .I1(ap_enable_reg_pp0_iter12),
        .I2(p_reg_reg_n_90),
        .I3(p_reg_reg_2[15]),
        .I4(\conv205_fu_72_reg[15] ),
        .I5(\conv205_fu_72_reg[15]_0 [15]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \conv205_fu_72[1]_i_1 
       (.I0(icmp_ln29_reg_248_pp0_iter11_reg),
        .I1(ap_enable_reg_pp0_iter12),
        .I2(p_reg_reg_n_104),
        .I3(p_reg_reg_2[1]),
        .I4(\conv205_fu_72_reg[15] ),
        .I5(\conv205_fu_72_reg[15]_0 [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \conv205_fu_72[2]_i_1 
       (.I0(icmp_ln29_reg_248_pp0_iter11_reg),
        .I1(ap_enable_reg_pp0_iter12),
        .I2(p_reg_reg_n_103),
        .I3(p_reg_reg_2[2]),
        .I4(\conv205_fu_72_reg[15] ),
        .I5(\conv205_fu_72_reg[15]_0 [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \conv205_fu_72[3]_i_1 
       (.I0(icmp_ln29_reg_248_pp0_iter11_reg),
        .I1(ap_enable_reg_pp0_iter12),
        .I2(p_reg_reg_n_102),
        .I3(p_reg_reg_2[3]),
        .I4(\conv205_fu_72_reg[15] ),
        .I5(\conv205_fu_72_reg[15]_0 [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \conv205_fu_72[4]_i_1 
       (.I0(icmp_ln29_reg_248_pp0_iter11_reg),
        .I1(ap_enable_reg_pp0_iter12),
        .I2(p_reg_reg_n_101),
        .I3(p_reg_reg_2[4]),
        .I4(\conv205_fu_72_reg[15] ),
        .I5(\conv205_fu_72_reg[15]_0 [4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \conv205_fu_72[5]_i_1 
       (.I0(icmp_ln29_reg_248_pp0_iter11_reg),
        .I1(ap_enable_reg_pp0_iter12),
        .I2(p_reg_reg_n_100),
        .I3(p_reg_reg_2[5]),
        .I4(\conv205_fu_72_reg[15] ),
        .I5(\conv205_fu_72_reg[15]_0 [5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \conv205_fu_72[6]_i_1 
       (.I0(icmp_ln29_reg_248_pp0_iter11_reg),
        .I1(ap_enable_reg_pp0_iter12),
        .I2(p_reg_reg_n_99),
        .I3(p_reg_reg_2[6]),
        .I4(\conv205_fu_72_reg[15] ),
        .I5(\conv205_fu_72_reg[15]_0 [6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \conv205_fu_72[7]_i_1 
       (.I0(icmp_ln29_reg_248_pp0_iter11_reg),
        .I1(ap_enable_reg_pp0_iter12),
        .I2(p_reg_reg_n_98),
        .I3(p_reg_reg_2[7]),
        .I4(\conv205_fu_72_reg[15] ),
        .I5(\conv205_fu_72_reg[15]_0 [7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \conv205_fu_72[8]_i_1 
       (.I0(icmp_ln29_reg_248_pp0_iter11_reg),
        .I1(ap_enable_reg_pp0_iter12),
        .I2(p_reg_reg_n_97),
        .I3(p_reg_reg_2[8]),
        .I4(\conv205_fu_72_reg[15] ),
        .I5(\conv205_fu_72_reg[15]_0 [8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \conv205_fu_72[9]_i_1 
       (.I0(icmp_ln29_reg_248_pp0_iter11_reg),
        .I1(ap_enable_reg_pp0_iter12),
        .I2(p_reg_reg_n_96),
        .I3(p_reg_reg_2[9]),
        .I4(\conv205_fu_72_reg[15] ),
        .I5(\conv205_fu_72_reg[15]_0 [9]),
        .O(D[9]));
  LUT4 #(
    .INIT(16'hA2AA)) 
    \icmp_ln29_reg_248[0]_i_1 
       (.I0(\first_itr_reg_131_reg[0] ),
        .I1(icmp_ln29_reg_248_pp0_iter7_reg),
        .I2(Q),
        .I3(ap_enable_reg_pp0_iter8),
        .O(\icmp_ln29_reg_248_pp0_iter7_reg_reg[0]__0 ));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
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
       (.A({DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p_reg_reg_0[15],p_reg_reg_0[15],p_reg_reg_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ap_sig_allocacmp_conv205_load}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(\icmp_ln29_reg_248_pp0_iter7_reg_reg[0]__0 ),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(gmem_addr_read_reg_2630),
        .CEB2(\icmp_ln29_reg_248_pp0_iter7_reg_reg[0]__0 ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(\icmp_ln29_reg_248_pp0_iter7_reg_reg[0]__0 ),
        .CEP(\icmp_ln29_reg_248_pp0_iter7_reg_reg[0]__0 ),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:16],p_reg_reg_n_90,p_reg_reg_n_91,p_reg_reg_n_92,p_reg_reg_n_93,p_reg_reg_n_94,p_reg_reg_n_95,p_reg_reg_n_96,p_reg_reg_n_97,p_reg_reg_n_98,p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101,p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105}),
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
  LUT4 #(
    .INIT(16'h8A00)) 
    p_reg_reg_i_1
       (.I0(icmp_ln29_reg_248_pp0_iter7_reg),
        .I1(Q),
        .I2(ap_enable_reg_pp0_iter8),
        .I3(\first_itr_reg_131_reg[0] ),
        .O(gmem_addr_read_reg_2630));
  LUT4 #(
    .INIT(16'hEA2A)) 
    p_reg_reg_i_10
       (.I0(p_reg_reg_2[7]),
        .I1(icmp_ln29_reg_248_pp0_iter11_reg),
        .I2(ap_enable_reg_pp0_iter12),
        .I3(p_reg_reg_n_98),
        .O(ap_sig_allocacmp_conv205_load[7]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    p_reg_reg_i_11
       (.I0(p_reg_reg_2[6]),
        .I1(icmp_ln29_reg_248_pp0_iter11_reg),
        .I2(ap_enable_reg_pp0_iter12),
        .I3(p_reg_reg_n_99),
        .O(ap_sig_allocacmp_conv205_load[6]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    p_reg_reg_i_12
       (.I0(p_reg_reg_2[5]),
        .I1(icmp_ln29_reg_248_pp0_iter11_reg),
        .I2(ap_enable_reg_pp0_iter12),
        .I3(p_reg_reg_n_100),
        .O(ap_sig_allocacmp_conv205_load[5]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    p_reg_reg_i_13
       (.I0(p_reg_reg_2[4]),
        .I1(icmp_ln29_reg_248_pp0_iter11_reg),
        .I2(ap_enable_reg_pp0_iter12),
        .I3(p_reg_reg_n_101),
        .O(ap_sig_allocacmp_conv205_load[4]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    p_reg_reg_i_14
       (.I0(p_reg_reg_2[3]),
        .I1(icmp_ln29_reg_248_pp0_iter11_reg),
        .I2(ap_enable_reg_pp0_iter12),
        .I3(p_reg_reg_n_102),
        .O(ap_sig_allocacmp_conv205_load[3]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    p_reg_reg_i_15
       (.I0(p_reg_reg_2[2]),
        .I1(icmp_ln29_reg_248_pp0_iter11_reg),
        .I2(ap_enable_reg_pp0_iter12),
        .I3(p_reg_reg_n_103),
        .O(ap_sig_allocacmp_conv205_load[2]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    p_reg_reg_i_16
       (.I0(p_reg_reg_2[1]),
        .I1(icmp_ln29_reg_248_pp0_iter11_reg),
        .I2(ap_enable_reg_pp0_iter12),
        .I3(p_reg_reg_n_104),
        .O(ap_sig_allocacmp_conv205_load[1]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    p_reg_reg_i_17
       (.I0(p_reg_reg_2[0]),
        .I1(icmp_ln29_reg_248_pp0_iter11_reg),
        .I2(ap_enable_reg_pp0_iter12),
        .I3(p_reg_reg_n_105),
        .O(ap_sig_allocacmp_conv205_load[0]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    p_reg_reg_i_2
       (.I0(p_reg_reg_2[15]),
        .I1(icmp_ln29_reg_248_pp0_iter11_reg),
        .I2(ap_enable_reg_pp0_iter12),
        .I3(p_reg_reg_n_90),
        .O(ap_sig_allocacmp_conv205_load[15]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    p_reg_reg_i_3
       (.I0(p_reg_reg_2[14]),
        .I1(icmp_ln29_reg_248_pp0_iter11_reg),
        .I2(ap_enable_reg_pp0_iter12),
        .I3(p_reg_reg_n_91),
        .O(ap_sig_allocacmp_conv205_load[14]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    p_reg_reg_i_4
       (.I0(p_reg_reg_2[13]),
        .I1(icmp_ln29_reg_248_pp0_iter11_reg),
        .I2(ap_enable_reg_pp0_iter12),
        .I3(p_reg_reg_n_92),
        .O(ap_sig_allocacmp_conv205_load[13]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    p_reg_reg_i_5
       (.I0(p_reg_reg_2[12]),
        .I1(icmp_ln29_reg_248_pp0_iter11_reg),
        .I2(ap_enable_reg_pp0_iter12),
        .I3(p_reg_reg_n_93),
        .O(ap_sig_allocacmp_conv205_load[12]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    p_reg_reg_i_6
       (.I0(p_reg_reg_2[11]),
        .I1(icmp_ln29_reg_248_pp0_iter11_reg),
        .I2(ap_enable_reg_pp0_iter12),
        .I3(p_reg_reg_n_94),
        .O(ap_sig_allocacmp_conv205_load[11]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    p_reg_reg_i_7
       (.I0(p_reg_reg_2[10]),
        .I1(icmp_ln29_reg_248_pp0_iter11_reg),
        .I2(ap_enable_reg_pp0_iter12),
        .I3(p_reg_reg_n_95),
        .O(ap_sig_allocacmp_conv205_load[10]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    p_reg_reg_i_8
       (.I0(p_reg_reg_2[9]),
        .I1(icmp_ln29_reg_248_pp0_iter11_reg),
        .I2(ap_enable_reg_pp0_iter12),
        .I3(p_reg_reg_n_96),
        .O(ap_sig_allocacmp_conv205_load[9]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    p_reg_reg_i_9
       (.I0(p_reg_reg_2[8]),
        .I1(icmp_ln29_reg_248_pp0_iter11_reg),
        .I2(ap_enable_reg_pp0_iter12),
        .I3(p_reg_reg_n_97),
        .O(ap_sig_allocacmp_conv205_load[8]));
  LUT4 #(
    .INIT(16'hDFFF)) 
    ram_reg_i_10
       (.I0(p_reg_reg_1),
        .I1(gmem_ARREADY),
        .I2(icmp_ln29_reg_248),
        .I3(ap_enable_reg_pp0_iter1),
        .O(\first_itr_reg_131_reg[0] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_runLayer_Pipeline_1
   (ap_enable_reg_pp0_iter1,
    tmp_bias_ce0,
    WEA,
    D,
    ADDRARDADDR,
    grp_runLayer_Pipeline_1_fu_193_ap_start_reg_reg,
    \gmem_addr_read_reg_136_reg[15]_0 ,
    ap_block_pp0_stage0_subdone,
    ap_clk,
    ap_rst_n_inv,
    grp_runLayer_Pipeline_1_fu_193_ap_start_reg,
    Q,
    ap_rst_n,
    \ap_CS_fsm_reg[10] ,
    zext_ln25_reg_441,
    m_axi_gmem_RDATA);
  output ap_enable_reg_pp0_iter1;
  output tmp_bias_ce0;
  output [0:0]WEA;
  output [1:0]D;
  output [6:0]ADDRARDADDR;
  output grp_runLayer_Pipeline_1_fu_193_ap_start_reg_reg;
  output [15:0]\gmem_addr_read_reg_136_reg[15]_0 ;
  input ap_block_pp0_stage0_subdone;
  input ap_clk;
  input ap_rst_n_inv;
  input grp_runLayer_Pipeline_1_fu_193_ap_start_reg;
  input [0:0]Q;
  input ap_rst_n;
  input [3:0]\ap_CS_fsm_reg[10] ;
  input [1:0]zext_ln25_reg_441;
  input [15:0]m_axi_gmem_RDATA;

  wire [6:0]ADDRARDADDR;
  wire [1:0]D;
  wire [0:0]Q;
  wire [0:0]WEA;
  wire [3:0]\ap_CS_fsm_reg[10] ;
  wire ap_block_pp0_stage0_11001;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter2_i_1_n_0;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [7:0]empty_23_fu_100_p2;
  wire flow_control_loop_pipe_sequential_init_U_n_11;
  wire flow_control_loop_pipe_sequential_init_U_n_13;
  wire flow_control_loop_pipe_sequential_init_U_n_14;
  wire flow_control_loop_pipe_sequential_init_U_n_15;
  wire [15:0]\gmem_addr_read_reg_136_reg[15]_0 ;
  wire grp_runLayer_Pipeline_1_fu_193_ap_ready;
  wire grp_runLayer_Pipeline_1_fu_193_ap_start_reg;
  wire grp_runLayer_Pipeline_1_fu_193_ap_start_reg_reg;
  wire [6:0]grp_runLayer_Pipeline_1_fu_193_tmp_bias_address0;
  wire \loop_index1_fu_48_reg_n_0_[0] ;
  wire \loop_index1_fu_48_reg_n_0_[1] ;
  wire \loop_index1_fu_48_reg_n_0_[2] ;
  wire \loop_index1_fu_48_reg_n_0_[3] ;
  wire \loop_index1_fu_48_reg_n_0_[4] ;
  wire \loop_index1_fu_48_reg_n_0_[5] ;
  wire \loop_index1_fu_48_reg_n_0_[6] ;
  wire \loop_index1_fu_48_reg_n_0_[7] ;
  wire [6:0]loop_index1_load_reg_122;
  wire [15:0]m_axi_gmem_RDATA;
  wire tmp_bias_ce0;
  wire [1:0]zext_ln25_reg_441;

  (* SOFT_HLUTNM = "soft_lutpair260" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[10]_i_2 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(Q),
        .O(ap_block_pp0_stage0_11001));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_13),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair260" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    ap_enable_reg_pp0_iter2_i_1
       (.I0(Q),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_enable_reg_pp0_iter2),
        .O(ap_enable_reg_pp0_iter2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter2_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter2),
        .R(ap_rst_n_inv));
  FDRE ap_loop_exit_ready_pp0_iter1_reg_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(grp_runLayer_Pipeline_1_fu_193_ap_ready),
        .Q(ap_loop_exit_ready_pp0_iter1_reg),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_flow_control_loop_pipe_sequential_init_2 flow_control_loop_pipe_sequential_init_U
       (.D(empty_23_fu_100_p2),
        .E(flow_control_loop_pipe_sequential_init_U_n_15),
        .Q(Q),
        .SR(flow_control_loop_pipe_sequential_init_U_n_14),
        .\ap_CS_fsm_reg[10] ({\ap_CS_fsm_reg[10] [3],\ap_CS_fsm_reg[10] [1:0]}),
        .\ap_CS_fsm_reg[24] (D),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_loop_exit_ready_pp0_iter1_reg(ap_loop_exit_ready_pp0_iter1_reg),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_runLayer_Pipeline_1_fu_193_ap_ready(grp_runLayer_Pipeline_1_fu_193_ap_ready),
        .grp_runLayer_Pipeline_1_fu_193_ap_start_reg(grp_runLayer_Pipeline_1_fu_193_ap_start_reg),
        .grp_runLayer_Pipeline_1_fu_193_ap_start_reg_reg(flow_control_loop_pipe_sequential_init_U_n_11),
        .grp_runLayer_Pipeline_1_fu_193_ap_start_reg_reg_0(grp_runLayer_Pipeline_1_fu_193_ap_start_reg_reg),
        .grp_runLayer_Pipeline_1_fu_193_ap_start_reg_reg_1(flow_control_loop_pipe_sequential_init_U_n_13),
        .\loop_index1_fu_48_reg[7] (ap_enable_reg_pp0_iter1),
        .\loop_index1_fu_48_reg[7]_0 ({\loop_index1_fu_48_reg_n_0_[7] ,\loop_index1_fu_48_reg_n_0_[6] ,\loop_index1_fu_48_reg_n_0_[5] ,\loop_index1_fu_48_reg_n_0_[4] ,\loop_index1_fu_48_reg_n_0_[3] ,\loop_index1_fu_48_reg_n_0_[2] ,\loop_index1_fu_48_reg_n_0_[1] ,\loop_index1_fu_48_reg_n_0_[0] }));
  FDRE \gmem_addr_read_reg_136_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(m_axi_gmem_RDATA[0]),
        .Q(\gmem_addr_read_reg_136_reg[15]_0 [0]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_136_reg[10] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(m_axi_gmem_RDATA[10]),
        .Q(\gmem_addr_read_reg_136_reg[15]_0 [10]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_136_reg[11] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(m_axi_gmem_RDATA[11]),
        .Q(\gmem_addr_read_reg_136_reg[15]_0 [11]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_136_reg[12] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(m_axi_gmem_RDATA[12]),
        .Q(\gmem_addr_read_reg_136_reg[15]_0 [12]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_136_reg[13] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(m_axi_gmem_RDATA[13]),
        .Q(\gmem_addr_read_reg_136_reg[15]_0 [13]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_136_reg[14] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(m_axi_gmem_RDATA[14]),
        .Q(\gmem_addr_read_reg_136_reg[15]_0 [14]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_136_reg[15] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(m_axi_gmem_RDATA[15]),
        .Q(\gmem_addr_read_reg_136_reg[15]_0 [15]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_136_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(m_axi_gmem_RDATA[1]),
        .Q(\gmem_addr_read_reg_136_reg[15]_0 [1]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_136_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(m_axi_gmem_RDATA[2]),
        .Q(\gmem_addr_read_reg_136_reg[15]_0 [2]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_136_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(m_axi_gmem_RDATA[3]),
        .Q(\gmem_addr_read_reg_136_reg[15]_0 [3]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_136_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(m_axi_gmem_RDATA[4]),
        .Q(\gmem_addr_read_reg_136_reg[15]_0 [4]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_136_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(m_axi_gmem_RDATA[5]),
        .Q(\gmem_addr_read_reg_136_reg[15]_0 [5]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_136_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(m_axi_gmem_RDATA[6]),
        .Q(\gmem_addr_read_reg_136_reg[15]_0 [6]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_136_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(m_axi_gmem_RDATA[7]),
        .Q(\gmem_addr_read_reg_136_reg[15]_0 [7]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_136_reg[8] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(m_axi_gmem_RDATA[8]),
        .Q(\gmem_addr_read_reg_136_reg[15]_0 [8]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_136_reg[9] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(m_axi_gmem_RDATA[9]),
        .Q(\gmem_addr_read_reg_136_reg[15]_0 [9]),
        .R(1'b0));
  FDRE \loop_index1_fu_48_reg[0] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(empty_23_fu_100_p2[0]),
        .Q(\loop_index1_fu_48_reg_n_0_[0] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_14));
  FDRE \loop_index1_fu_48_reg[1] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(empty_23_fu_100_p2[1]),
        .Q(\loop_index1_fu_48_reg_n_0_[1] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_14));
  FDRE \loop_index1_fu_48_reg[2] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(empty_23_fu_100_p2[2]),
        .Q(\loop_index1_fu_48_reg_n_0_[2] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_14));
  FDRE \loop_index1_fu_48_reg[3] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(empty_23_fu_100_p2[3]),
        .Q(\loop_index1_fu_48_reg_n_0_[3] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_14));
  FDRE \loop_index1_fu_48_reg[4] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(empty_23_fu_100_p2[4]),
        .Q(\loop_index1_fu_48_reg_n_0_[4] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_14));
  FDRE \loop_index1_fu_48_reg[5] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(empty_23_fu_100_p2[5]),
        .Q(\loop_index1_fu_48_reg_n_0_[5] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_14));
  FDRE \loop_index1_fu_48_reg[6] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(empty_23_fu_100_p2[6]),
        .Q(\loop_index1_fu_48_reg_n_0_[6] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_14));
  FDRE \loop_index1_fu_48_reg[7] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(empty_23_fu_100_p2[7]),
        .Q(\loop_index1_fu_48_reg_n_0_[7] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_14));
  FDRE \loop_index1_load_reg_122_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(loop_index1_load_reg_122[0]),
        .Q(grp_runLayer_Pipeline_1_fu_193_tmp_bias_address0[0]),
        .R(1'b0));
  FDRE \loop_index1_load_reg_122_pp0_iter1_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(loop_index1_load_reg_122[1]),
        .Q(grp_runLayer_Pipeline_1_fu_193_tmp_bias_address0[1]),
        .R(1'b0));
  FDRE \loop_index1_load_reg_122_pp0_iter1_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(loop_index1_load_reg_122[2]),
        .Q(grp_runLayer_Pipeline_1_fu_193_tmp_bias_address0[2]),
        .R(1'b0));
  FDRE \loop_index1_load_reg_122_pp0_iter1_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(loop_index1_load_reg_122[3]),
        .Q(grp_runLayer_Pipeline_1_fu_193_tmp_bias_address0[3]),
        .R(1'b0));
  FDRE \loop_index1_load_reg_122_pp0_iter1_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(loop_index1_load_reg_122[4]),
        .Q(grp_runLayer_Pipeline_1_fu_193_tmp_bias_address0[4]),
        .R(1'b0));
  FDRE \loop_index1_load_reg_122_pp0_iter1_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(loop_index1_load_reg_122[5]),
        .Q(grp_runLayer_Pipeline_1_fu_193_tmp_bias_address0[5]),
        .R(1'b0));
  FDRE \loop_index1_load_reg_122_pp0_iter1_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(loop_index1_load_reg_122[6]),
        .Q(grp_runLayer_Pipeline_1_fu_193_tmp_bias_address0[6]),
        .R(1'b0));
  FDRE \loop_index1_load_reg_122_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\loop_index1_fu_48_reg_n_0_[0] ),
        .Q(loop_index1_load_reg_122[0]),
        .R(flow_control_loop_pipe_sequential_init_U_n_11));
  FDRE \loop_index1_load_reg_122_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\loop_index1_fu_48_reg_n_0_[1] ),
        .Q(loop_index1_load_reg_122[1]),
        .R(flow_control_loop_pipe_sequential_init_U_n_11));
  FDRE \loop_index1_load_reg_122_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\loop_index1_fu_48_reg_n_0_[2] ),
        .Q(loop_index1_load_reg_122[2]),
        .R(flow_control_loop_pipe_sequential_init_U_n_11));
  FDRE \loop_index1_load_reg_122_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\loop_index1_fu_48_reg_n_0_[3] ),
        .Q(loop_index1_load_reg_122[3]),
        .R(flow_control_loop_pipe_sequential_init_U_n_11));
  FDRE \loop_index1_load_reg_122_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\loop_index1_fu_48_reg_n_0_[4] ),
        .Q(loop_index1_load_reg_122[4]),
        .R(flow_control_loop_pipe_sequential_init_U_n_11));
  FDRE \loop_index1_load_reg_122_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\loop_index1_fu_48_reg_n_0_[5] ),
        .Q(loop_index1_load_reg_122[5]),
        .R(flow_control_loop_pipe_sequential_init_U_n_11));
  FDRE \loop_index1_load_reg_122_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\loop_index1_fu_48_reg_n_0_[6] ),
        .Q(loop_index1_load_reg_122[6]),
        .R(flow_control_loop_pipe_sequential_init_U_n_11));
  LUT5 #(
    .INIT(32'hEAAAEAEA)) 
    ram_reg_i_1
       (.I0(\ap_CS_fsm_reg[10] [2]),
        .I1(\ap_CS_fsm_reg[10] [1]),
        .I2(ap_enable_reg_pp0_iter2),
        .I3(Q),
        .I4(ap_enable_reg_pp0_iter1),
        .O(tmp_bias_ce0));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_i_2
       (.I0(grp_runLayer_Pipeline_1_fu_193_tmp_bias_address0[6]),
        .I1(\ap_CS_fsm_reg[10] [2]),
        .O(ADDRARDADDR[6]));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_i_3
       (.I0(grp_runLayer_Pipeline_1_fu_193_tmp_bias_address0[5]),
        .I1(\ap_CS_fsm_reg[10] [2]),
        .O(ADDRARDADDR[5]));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_i_4
       (.I0(grp_runLayer_Pipeline_1_fu_193_tmp_bias_address0[4]),
        .I1(\ap_CS_fsm_reg[10] [2]),
        .O(ADDRARDADDR[4]));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_i_5
       (.I0(grp_runLayer_Pipeline_1_fu_193_tmp_bias_address0[3]),
        .I1(\ap_CS_fsm_reg[10] [2]),
        .O(ADDRARDADDR[3]));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_i_6
       (.I0(grp_runLayer_Pipeline_1_fu_193_tmp_bias_address0[2]),
        .I1(\ap_CS_fsm_reg[10] [2]),
        .O(ADDRARDADDR[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_7
       (.I0(zext_ln25_reg_441[1]),
        .I1(\ap_CS_fsm_reg[10] [2]),
        .I2(grp_runLayer_Pipeline_1_fu_193_tmp_bias_address0[1]),
        .O(ADDRARDADDR[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_8
       (.I0(zext_ln25_reg_441[0]),
        .I1(\ap_CS_fsm_reg[10] [2]),
        .I2(grp_runLayer_Pipeline_1_fu_193_tmp_bias_address0[0]),
        .O(ADDRARDADDR[0]));
  LUT4 #(
    .INIT(16'hD000)) 
    ram_reg_i_9
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(Q),
        .I2(ap_enable_reg_pp0_iter2),
        .I3(\ap_CS_fsm_reg[10] [1]),
        .O(WEA));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_runLayer_Pipeline_2
   (ap_enable_reg_pp0_iter1,
    \loop_index_fu_48_reg[63]_0 ,
    CO,
    \ap_CS_fsm_reg[23] ,
    D,
    ap_enable_reg_pp0_iter1_reg_0,
    output_r_ce0,
    WEA,
    \loop_index_load_reg_137_reg[6]_0 ,
    \gmem_addr_read_reg_142_reg[15]_0 ,
    ap_rst_n_inv,
    ap_clk,
    S,
    \loop_index_fu_48_reg[0]_i_9_0 ,
    \loop_index_fu_48_reg[0]_i_6_0 ,
    \loop_index_fu_48_reg[0]_i_4_0 ,
    ap_enable_reg_pp0_iter1_reg_1,
    grp_runLayer_Pipeline_2_fu_201_ap_start_reg,
    ap_rst_n,
    Q,
    \int_output_r_shift0_reg[0] ,
    mem_reg,
    \int_output_r_shift0_reg[0]_0 ,
    \FSM_sequential_state[1]_i_2 ,
    ap_enable_reg_pp0_iter1_0,
    E,
    \conv5_cast_reg_127_reg[15]_0 ,
    \gmem_addr_read_reg_142_reg[15]_1 );
  output ap_enable_reg_pp0_iter1;
  output [45:0]\loop_index_fu_48_reg[63]_0 ;
  output [0:0]CO;
  output \ap_CS_fsm_reg[23] ;
  output [1:0]D;
  output ap_enable_reg_pp0_iter1_reg_0;
  output output_r_ce0;
  output [0:0]WEA;
  output [6:0]\loop_index_load_reg_137_reg[6]_0 ;
  output [15:0]\gmem_addr_read_reg_142_reg[15]_0 ;
  input ap_rst_n_inv;
  input ap_clk;
  input [1:0]S;
  input [3:0]\loop_index_fu_48_reg[0]_i_9_0 ;
  input [3:0]\loop_index_fu_48_reg[0]_i_6_0 ;
  input [3:0]\loop_index_fu_48_reg[0]_i_4_0 ;
  input [1:0]ap_enable_reg_pp0_iter1_reg_1;
  input grp_runLayer_Pipeline_2_fu_201_ap_start_reg;
  input ap_rst_n;
  input [0:0]Q;
  input [0:0]\int_output_r_shift0_reg[0] ;
  input [6:0]mem_reg;
  input \int_output_r_shift0_reg[0]_0 ;
  input \FSM_sequential_state[1]_i_2 ;
  input ap_enable_reg_pp0_iter1_0;
  input [0:0]E;
  input [15:0]\conv5_cast_reg_127_reg[15]_0 ;
  input [15:0]\gmem_addr_read_reg_142_reg[15]_1 ;

  wire [0:0]CO;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state[1]_i_2 ;
  wire [0:0]Q;
  wire [1:0]S;
  wire [0:0]WEA;
  wire \ap_CS_fsm_reg[23] ;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_0;
  wire ap_enable_reg_pp0_iter1_i_1_n_0;
  wire ap_enable_reg_pp0_iter1_reg_0;
  wire [1:0]ap_enable_reg_pp0_iter1_reg_1;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter2_i_1__0_n_0;
  wire ap_loop_exit_ready_pp0_iter2_reg;
  wire ap_loop_exit_ready_pp0_iter2_reg_i_1_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [15:0]conv5_cast_reg_127;
  wire [15:0]\conv5_cast_reg_127_reg[15]_0 ;
  wire [17:0]empty_fu_104_p2;
  wire flow_control_loop_pipe_sequential_init_U_n_4;
  wire [15:0]\gmem_addr_read_reg_142_reg[15]_0 ;
  wire [15:0]\gmem_addr_read_reg_142_reg[15]_1 ;
  wire grp_runLayer_Pipeline_2_fu_201_ap_start_reg;
  wire [0:0]\int_output_r_shift0_reg[0] ;
  wire \int_output_r_shift0_reg[0]_0 ;
  wire loop_index_fu_48;
  wire \loop_index_fu_48[0]_i_35_n_0 ;
  wire \loop_index_fu_48[0]_i_36_n_0 ;
  wire \loop_index_fu_48[0]_i_40_n_0 ;
  wire \loop_index_fu_48[0]_i_41_n_0 ;
  wire \loop_index_fu_48[0]_i_42_n_0 ;
  wire \loop_index_fu_48[0]_i_43_n_0 ;
  wire [6:0]loop_index_fu_48_reg;
  wire \loop_index_fu_48_reg[0]_i_14_n_2 ;
  wire \loop_index_fu_48_reg[0]_i_14_n_3 ;
  wire \loop_index_fu_48_reg[0]_i_15_n_0 ;
  wire \loop_index_fu_48_reg[0]_i_15_n_1 ;
  wire \loop_index_fu_48_reg[0]_i_15_n_2 ;
  wire \loop_index_fu_48_reg[0]_i_15_n_3 ;
  wire \loop_index_fu_48_reg[0]_i_16_n_0 ;
  wire \loop_index_fu_48_reg[0]_i_16_n_1 ;
  wire \loop_index_fu_48_reg[0]_i_16_n_2 ;
  wire \loop_index_fu_48_reg[0]_i_16_n_3 ;
  wire \loop_index_fu_48_reg[0]_i_21_n_0 ;
  wire \loop_index_fu_48_reg[0]_i_21_n_1 ;
  wire \loop_index_fu_48_reg[0]_i_21_n_2 ;
  wire \loop_index_fu_48_reg[0]_i_21_n_3 ;
  wire \loop_index_fu_48_reg[0]_i_22_n_0 ;
  wire \loop_index_fu_48_reg[0]_i_22_n_1 ;
  wire \loop_index_fu_48_reg[0]_i_22_n_2 ;
  wire \loop_index_fu_48_reg[0]_i_22_n_3 ;
  wire \loop_index_fu_48_reg[0]_i_23_n_0 ;
  wire \loop_index_fu_48_reg[0]_i_23_n_1 ;
  wire \loop_index_fu_48_reg[0]_i_23_n_2 ;
  wire \loop_index_fu_48_reg[0]_i_23_n_3 ;
  wire \loop_index_fu_48_reg[0]_i_24_n_0 ;
  wire \loop_index_fu_48_reg[0]_i_24_n_1 ;
  wire \loop_index_fu_48_reg[0]_i_24_n_2 ;
  wire \loop_index_fu_48_reg[0]_i_24_n_3 ;
  wire \loop_index_fu_48_reg[0]_i_29_n_0 ;
  wire \loop_index_fu_48_reg[0]_i_29_n_1 ;
  wire \loop_index_fu_48_reg[0]_i_29_n_2 ;
  wire \loop_index_fu_48_reg[0]_i_29_n_3 ;
  wire \loop_index_fu_48_reg[0]_i_30_n_0 ;
  wire \loop_index_fu_48_reg[0]_i_30_n_1 ;
  wire \loop_index_fu_48_reg[0]_i_30_n_2 ;
  wire \loop_index_fu_48_reg[0]_i_30_n_3 ;
  wire \loop_index_fu_48_reg[0]_i_31_n_0 ;
  wire \loop_index_fu_48_reg[0]_i_31_n_1 ;
  wire \loop_index_fu_48_reg[0]_i_31_n_2 ;
  wire \loop_index_fu_48_reg[0]_i_31_n_3 ;
  wire \loop_index_fu_48_reg[0]_i_32_n_0 ;
  wire \loop_index_fu_48_reg[0]_i_32_n_1 ;
  wire \loop_index_fu_48_reg[0]_i_32_n_2 ;
  wire \loop_index_fu_48_reg[0]_i_32_n_3 ;
  wire \loop_index_fu_48_reg[0]_i_37_n_0 ;
  wire \loop_index_fu_48_reg[0]_i_37_n_1 ;
  wire \loop_index_fu_48_reg[0]_i_37_n_2 ;
  wire \loop_index_fu_48_reg[0]_i_37_n_3 ;
  wire \loop_index_fu_48_reg[0]_i_38_n_0 ;
  wire \loop_index_fu_48_reg[0]_i_38_n_1 ;
  wire \loop_index_fu_48_reg[0]_i_38_n_2 ;
  wire \loop_index_fu_48_reg[0]_i_38_n_3 ;
  wire \loop_index_fu_48_reg[0]_i_39_n_0 ;
  wire \loop_index_fu_48_reg[0]_i_39_n_1 ;
  wire \loop_index_fu_48_reg[0]_i_39_n_2 ;
  wire \loop_index_fu_48_reg[0]_i_39_n_3 ;
  wire \loop_index_fu_48_reg[0]_i_3_n_0 ;
  wire \loop_index_fu_48_reg[0]_i_3_n_1 ;
  wire \loop_index_fu_48_reg[0]_i_3_n_2 ;
  wire \loop_index_fu_48_reg[0]_i_3_n_3 ;
  wire \loop_index_fu_48_reg[0]_i_3_n_4 ;
  wire \loop_index_fu_48_reg[0]_i_3_n_5 ;
  wire \loop_index_fu_48_reg[0]_i_3_n_6 ;
  wire \loop_index_fu_48_reg[0]_i_3_n_7 ;
  wire \loop_index_fu_48_reg[0]_i_44_n_0 ;
  wire \loop_index_fu_48_reg[0]_i_44_n_1 ;
  wire \loop_index_fu_48_reg[0]_i_44_n_2 ;
  wire \loop_index_fu_48_reg[0]_i_44_n_3 ;
  wire \loop_index_fu_48_reg[0]_i_45_n_0 ;
  wire \loop_index_fu_48_reg[0]_i_45_n_1 ;
  wire \loop_index_fu_48_reg[0]_i_45_n_2 ;
  wire \loop_index_fu_48_reg[0]_i_45_n_3 ;
  wire \loop_index_fu_48_reg[0]_i_46_n_0 ;
  wire \loop_index_fu_48_reg[0]_i_46_n_1 ;
  wire \loop_index_fu_48_reg[0]_i_46_n_2 ;
  wire \loop_index_fu_48_reg[0]_i_46_n_3 ;
  wire \loop_index_fu_48_reg[0]_i_47_n_0 ;
  wire \loop_index_fu_48_reg[0]_i_47_n_1 ;
  wire \loop_index_fu_48_reg[0]_i_47_n_2 ;
  wire \loop_index_fu_48_reg[0]_i_47_n_3 ;
  wire \loop_index_fu_48_reg[0]_i_48_n_0 ;
  wire \loop_index_fu_48_reg[0]_i_48_n_1 ;
  wire \loop_index_fu_48_reg[0]_i_48_n_2 ;
  wire \loop_index_fu_48_reg[0]_i_48_n_3 ;
  wire [3:0]\loop_index_fu_48_reg[0]_i_4_0 ;
  wire \loop_index_fu_48_reg[0]_i_4_n_3 ;
  wire [3:0]\loop_index_fu_48_reg[0]_i_6_0 ;
  wire \loop_index_fu_48_reg[0]_i_6_n_0 ;
  wire \loop_index_fu_48_reg[0]_i_6_n_1 ;
  wire \loop_index_fu_48_reg[0]_i_6_n_2 ;
  wire \loop_index_fu_48_reg[0]_i_6_n_3 ;
  wire [3:0]\loop_index_fu_48_reg[0]_i_9_0 ;
  wire \loop_index_fu_48_reg[0]_i_9_n_0 ;
  wire \loop_index_fu_48_reg[0]_i_9_n_1 ;
  wire \loop_index_fu_48_reg[0]_i_9_n_2 ;
  wire \loop_index_fu_48_reg[0]_i_9_n_3 ;
  wire \loop_index_fu_48_reg[12]_i_1_n_0 ;
  wire \loop_index_fu_48_reg[12]_i_1_n_1 ;
  wire \loop_index_fu_48_reg[12]_i_1_n_2 ;
  wire \loop_index_fu_48_reg[12]_i_1_n_3 ;
  wire \loop_index_fu_48_reg[12]_i_1_n_4 ;
  wire \loop_index_fu_48_reg[12]_i_1_n_5 ;
  wire \loop_index_fu_48_reg[12]_i_1_n_6 ;
  wire \loop_index_fu_48_reg[12]_i_1_n_7 ;
  wire \loop_index_fu_48_reg[16]_i_1_n_0 ;
  wire \loop_index_fu_48_reg[16]_i_1_n_1 ;
  wire \loop_index_fu_48_reg[16]_i_1_n_2 ;
  wire \loop_index_fu_48_reg[16]_i_1_n_3 ;
  wire \loop_index_fu_48_reg[16]_i_1_n_4 ;
  wire \loop_index_fu_48_reg[16]_i_1_n_5 ;
  wire \loop_index_fu_48_reg[16]_i_1_n_6 ;
  wire \loop_index_fu_48_reg[16]_i_1_n_7 ;
  wire \loop_index_fu_48_reg[20]_i_1_n_0 ;
  wire \loop_index_fu_48_reg[20]_i_1_n_1 ;
  wire \loop_index_fu_48_reg[20]_i_1_n_2 ;
  wire \loop_index_fu_48_reg[20]_i_1_n_3 ;
  wire \loop_index_fu_48_reg[20]_i_1_n_4 ;
  wire \loop_index_fu_48_reg[20]_i_1_n_5 ;
  wire \loop_index_fu_48_reg[20]_i_1_n_6 ;
  wire \loop_index_fu_48_reg[20]_i_1_n_7 ;
  wire \loop_index_fu_48_reg[24]_i_1_n_0 ;
  wire \loop_index_fu_48_reg[24]_i_1_n_1 ;
  wire \loop_index_fu_48_reg[24]_i_1_n_2 ;
  wire \loop_index_fu_48_reg[24]_i_1_n_3 ;
  wire \loop_index_fu_48_reg[24]_i_1_n_4 ;
  wire \loop_index_fu_48_reg[24]_i_1_n_5 ;
  wire \loop_index_fu_48_reg[24]_i_1_n_6 ;
  wire \loop_index_fu_48_reg[24]_i_1_n_7 ;
  wire \loop_index_fu_48_reg[28]_i_1_n_0 ;
  wire \loop_index_fu_48_reg[28]_i_1_n_1 ;
  wire \loop_index_fu_48_reg[28]_i_1_n_2 ;
  wire \loop_index_fu_48_reg[28]_i_1_n_3 ;
  wire \loop_index_fu_48_reg[28]_i_1_n_4 ;
  wire \loop_index_fu_48_reg[28]_i_1_n_5 ;
  wire \loop_index_fu_48_reg[28]_i_1_n_6 ;
  wire \loop_index_fu_48_reg[28]_i_1_n_7 ;
  wire \loop_index_fu_48_reg[32]_i_1_n_0 ;
  wire \loop_index_fu_48_reg[32]_i_1_n_1 ;
  wire \loop_index_fu_48_reg[32]_i_1_n_2 ;
  wire \loop_index_fu_48_reg[32]_i_1_n_3 ;
  wire \loop_index_fu_48_reg[32]_i_1_n_4 ;
  wire \loop_index_fu_48_reg[32]_i_1_n_5 ;
  wire \loop_index_fu_48_reg[32]_i_1_n_6 ;
  wire \loop_index_fu_48_reg[32]_i_1_n_7 ;
  wire \loop_index_fu_48_reg[36]_i_1_n_0 ;
  wire \loop_index_fu_48_reg[36]_i_1_n_1 ;
  wire \loop_index_fu_48_reg[36]_i_1_n_2 ;
  wire \loop_index_fu_48_reg[36]_i_1_n_3 ;
  wire \loop_index_fu_48_reg[36]_i_1_n_4 ;
  wire \loop_index_fu_48_reg[36]_i_1_n_5 ;
  wire \loop_index_fu_48_reg[36]_i_1_n_6 ;
  wire \loop_index_fu_48_reg[36]_i_1_n_7 ;
  wire \loop_index_fu_48_reg[40]_i_1_n_0 ;
  wire \loop_index_fu_48_reg[40]_i_1_n_1 ;
  wire \loop_index_fu_48_reg[40]_i_1_n_2 ;
  wire \loop_index_fu_48_reg[40]_i_1_n_3 ;
  wire \loop_index_fu_48_reg[40]_i_1_n_4 ;
  wire \loop_index_fu_48_reg[40]_i_1_n_5 ;
  wire \loop_index_fu_48_reg[40]_i_1_n_6 ;
  wire \loop_index_fu_48_reg[40]_i_1_n_7 ;
  wire \loop_index_fu_48_reg[44]_i_1_n_0 ;
  wire \loop_index_fu_48_reg[44]_i_1_n_1 ;
  wire \loop_index_fu_48_reg[44]_i_1_n_2 ;
  wire \loop_index_fu_48_reg[44]_i_1_n_3 ;
  wire \loop_index_fu_48_reg[44]_i_1_n_4 ;
  wire \loop_index_fu_48_reg[44]_i_1_n_5 ;
  wire \loop_index_fu_48_reg[44]_i_1_n_6 ;
  wire \loop_index_fu_48_reg[44]_i_1_n_7 ;
  wire \loop_index_fu_48_reg[48]_i_1_n_0 ;
  wire \loop_index_fu_48_reg[48]_i_1_n_1 ;
  wire \loop_index_fu_48_reg[48]_i_1_n_2 ;
  wire \loop_index_fu_48_reg[48]_i_1_n_3 ;
  wire \loop_index_fu_48_reg[48]_i_1_n_4 ;
  wire \loop_index_fu_48_reg[48]_i_1_n_5 ;
  wire \loop_index_fu_48_reg[48]_i_1_n_6 ;
  wire \loop_index_fu_48_reg[48]_i_1_n_7 ;
  wire \loop_index_fu_48_reg[4]_i_1_n_0 ;
  wire \loop_index_fu_48_reg[4]_i_1_n_1 ;
  wire \loop_index_fu_48_reg[4]_i_1_n_2 ;
  wire \loop_index_fu_48_reg[4]_i_1_n_3 ;
  wire \loop_index_fu_48_reg[4]_i_1_n_4 ;
  wire \loop_index_fu_48_reg[4]_i_1_n_5 ;
  wire \loop_index_fu_48_reg[4]_i_1_n_6 ;
  wire \loop_index_fu_48_reg[4]_i_1_n_7 ;
  wire \loop_index_fu_48_reg[52]_i_1_n_0 ;
  wire \loop_index_fu_48_reg[52]_i_1_n_1 ;
  wire \loop_index_fu_48_reg[52]_i_1_n_2 ;
  wire \loop_index_fu_48_reg[52]_i_1_n_3 ;
  wire \loop_index_fu_48_reg[52]_i_1_n_4 ;
  wire \loop_index_fu_48_reg[52]_i_1_n_5 ;
  wire \loop_index_fu_48_reg[52]_i_1_n_6 ;
  wire \loop_index_fu_48_reg[52]_i_1_n_7 ;
  wire \loop_index_fu_48_reg[56]_i_1_n_0 ;
  wire \loop_index_fu_48_reg[56]_i_1_n_1 ;
  wire \loop_index_fu_48_reg[56]_i_1_n_2 ;
  wire \loop_index_fu_48_reg[56]_i_1_n_3 ;
  wire \loop_index_fu_48_reg[56]_i_1_n_4 ;
  wire \loop_index_fu_48_reg[56]_i_1_n_5 ;
  wire \loop_index_fu_48_reg[56]_i_1_n_6 ;
  wire \loop_index_fu_48_reg[56]_i_1_n_7 ;
  wire \loop_index_fu_48_reg[60]_i_1_n_1 ;
  wire \loop_index_fu_48_reg[60]_i_1_n_2 ;
  wire \loop_index_fu_48_reg[60]_i_1_n_3 ;
  wire \loop_index_fu_48_reg[60]_i_1_n_4 ;
  wire \loop_index_fu_48_reg[60]_i_1_n_5 ;
  wire \loop_index_fu_48_reg[60]_i_1_n_6 ;
  wire \loop_index_fu_48_reg[60]_i_1_n_7 ;
  wire [45:0]\loop_index_fu_48_reg[63]_0 ;
  wire \loop_index_fu_48_reg[8]_i_1_n_0 ;
  wire \loop_index_fu_48_reg[8]_i_1_n_1 ;
  wire \loop_index_fu_48_reg[8]_i_1_n_2 ;
  wire \loop_index_fu_48_reg[8]_i_1_n_3 ;
  wire \loop_index_fu_48_reg[8]_i_1_n_4 ;
  wire \loop_index_fu_48_reg[8]_i_1_n_5 ;
  wire \loop_index_fu_48_reg[8]_i_1_n_6 ;
  wire \loop_index_fu_48_reg[8]_i_1_n_7 ;
  wire [63:7]loop_index_fu_48_reg__0;
  wire [6:0]\loop_index_load_reg_137_reg[6]_0 ;
  wire [6:0]mem_reg;
  wire output_r_ce0;
  wire [3:2]\NLW_loop_index_fu_48_reg[0]_i_14_CO_UNCONNECTED ;
  wire [3:3]\NLW_loop_index_fu_48_reg[0]_i_14_O_UNCONNECTED ;
  wire [3:0]\NLW_loop_index_fu_48_reg[0]_i_16_O_UNCONNECTED ;
  wire [3:0]\NLW_loop_index_fu_48_reg[0]_i_24_O_UNCONNECTED ;
  wire [3:0]\NLW_loop_index_fu_48_reg[0]_i_32_O_UNCONNECTED ;
  wire [3:2]\NLW_loop_index_fu_48_reg[0]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_loop_index_fu_48_reg[0]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_loop_index_fu_48_reg[0]_i_6_O_UNCONNECTED ;
  wire [3:0]\NLW_loop_index_fu_48_reg[0]_i_9_O_UNCONNECTED ;
  wire [3:3]\NLW_loop_index_fu_48_reg[60]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hB800B800B8008800)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(\FSM_sequential_state[1]_i_2 ),
        .I2(ap_enable_reg_pp0_iter1_0),
        .I3(Q),
        .I4(mem_reg[1]),
        .I5(mem_reg[0]),
        .O(ap_enable_reg_pp0_iter1_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair261" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[19]_i_2 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(Q),
        .O(ap_block_pp0_stage0_11001));
  (* SOFT_HLUTNM = "soft_lutpair261" *) 
  LUT5 #(
    .INIT(32'h08C888C8)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(grp_runLayer_Pipeline_2_fu_201_ap_start_reg),
        .I1(ap_rst_n),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q),
        .I4(CO),
        .O(ap_enable_reg_pp0_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hC8)) 
    ap_enable_reg_pp0_iter2_i_1__0
       (.I0(Q),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_enable_reg_pp0_iter2),
        .O(ap_enable_reg_pp0_iter2_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter2_i_1__0_n_0),
        .Q(ap_enable_reg_pp0_iter2),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hC808)) 
    ap_loop_exit_ready_pp0_iter2_reg_i_1
       (.I0(ap_loop_exit_ready_pp0_iter2_reg),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q),
        .I3(CO),
        .O(ap_loop_exit_ready_pp0_iter2_reg_i_1_n_0));
  FDRE ap_loop_exit_ready_pp0_iter2_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_exit_ready_pp0_iter2_reg_i_1_n_0),
        .Q(ap_loop_exit_ready_pp0_iter2_reg),
        .R(1'b0));
  FDRE \conv5_cast_reg_127_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\conv5_cast_reg_127_reg[15]_0 [0]),
        .Q(conv5_cast_reg_127[0]),
        .R(1'b0));
  FDRE \conv5_cast_reg_127_reg[10] 
       (.C(ap_clk),
        .CE(E),
        .D(\conv5_cast_reg_127_reg[15]_0 [10]),
        .Q(conv5_cast_reg_127[10]),
        .R(1'b0));
  FDRE \conv5_cast_reg_127_reg[11] 
       (.C(ap_clk),
        .CE(E),
        .D(\conv5_cast_reg_127_reg[15]_0 [11]),
        .Q(conv5_cast_reg_127[11]),
        .R(1'b0));
  FDRE \conv5_cast_reg_127_reg[12] 
       (.C(ap_clk),
        .CE(E),
        .D(\conv5_cast_reg_127_reg[15]_0 [12]),
        .Q(conv5_cast_reg_127[12]),
        .R(1'b0));
  FDRE \conv5_cast_reg_127_reg[13] 
       (.C(ap_clk),
        .CE(E),
        .D(\conv5_cast_reg_127_reg[15]_0 [13]),
        .Q(conv5_cast_reg_127[13]),
        .R(1'b0));
  FDRE \conv5_cast_reg_127_reg[14] 
       (.C(ap_clk),
        .CE(E),
        .D(\conv5_cast_reg_127_reg[15]_0 [14]),
        .Q(conv5_cast_reg_127[14]),
        .R(1'b0));
  FDRE \conv5_cast_reg_127_reg[15] 
       (.C(ap_clk),
        .CE(E),
        .D(\conv5_cast_reg_127_reg[15]_0 [15]),
        .Q(conv5_cast_reg_127[15]),
        .R(1'b0));
  FDRE \conv5_cast_reg_127_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\conv5_cast_reg_127_reg[15]_0 [1]),
        .Q(conv5_cast_reg_127[1]),
        .R(1'b0));
  FDRE \conv5_cast_reg_127_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\conv5_cast_reg_127_reg[15]_0 [2]),
        .Q(conv5_cast_reg_127[2]),
        .R(1'b0));
  FDRE \conv5_cast_reg_127_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\conv5_cast_reg_127_reg[15]_0 [3]),
        .Q(conv5_cast_reg_127[3]),
        .R(1'b0));
  FDRE \conv5_cast_reg_127_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\conv5_cast_reg_127_reg[15]_0 [4]),
        .Q(conv5_cast_reg_127[4]),
        .R(1'b0));
  FDRE \conv5_cast_reg_127_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(\conv5_cast_reg_127_reg[15]_0 [5]),
        .Q(conv5_cast_reg_127[5]),
        .R(1'b0));
  FDRE \conv5_cast_reg_127_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(\conv5_cast_reg_127_reg[15]_0 [6]),
        .Q(conv5_cast_reg_127[6]),
        .R(1'b0));
  FDRE \conv5_cast_reg_127_reg[7] 
       (.C(ap_clk),
        .CE(E),
        .D(\conv5_cast_reg_127_reg[15]_0 [7]),
        .Q(conv5_cast_reg_127[7]),
        .R(1'b0));
  FDRE \conv5_cast_reg_127_reg[8] 
       (.C(ap_clk),
        .CE(E),
        .D(\conv5_cast_reg_127_reg[15]_0 [8]),
        .Q(conv5_cast_reg_127[8]),
        .R(1'b0));
  FDRE \conv5_cast_reg_127_reg[9] 
       (.C(ap_clk),
        .CE(E),
        .D(\conv5_cast_reg_127_reg[15]_0 [9]),
        .Q(conv5_cast_reg_127[9]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_flow_control_loop_pipe_sequential_init_1 flow_control_loop_pipe_sequential_init_U
       (.D(D),
        .Q(Q),
        .\ap_CS_fsm_reg[20] (ap_enable_reg_pp0_iter1),
        .\ap_CS_fsm_reg[23] (\ap_CS_fsm_reg[23] ),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_loop_exit_ready_pp0_iter2_reg(ap_loop_exit_ready_pp0_iter2_reg),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .clear(flow_control_loop_pipe_sequential_init_U_n_4),
        .grp_runLayer_Pipeline_2_fu_201_ap_start_reg(grp_runLayer_Pipeline_2_fu_201_ap_start_reg),
        .\int_output_r_shift0_reg[0] (\int_output_r_shift0_reg[0] ),
        .\int_output_r_shift0_reg[0]_0 (\int_output_r_shift0_reg[0]_0 ),
        .mem_reg(mem_reg[6:2]),
        .output_r_ce0(output_r_ce0));
  FDRE \gmem_addr_read_reg_142_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\gmem_addr_read_reg_142_reg[15]_1 [0]),
        .Q(\gmem_addr_read_reg_142_reg[15]_0 [0]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_142_reg[10] 
       (.C(ap_clk),
        .CE(E),
        .D(\gmem_addr_read_reg_142_reg[15]_1 [10]),
        .Q(\gmem_addr_read_reg_142_reg[15]_0 [10]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_142_reg[11] 
       (.C(ap_clk),
        .CE(E),
        .D(\gmem_addr_read_reg_142_reg[15]_1 [11]),
        .Q(\gmem_addr_read_reg_142_reg[15]_0 [11]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_142_reg[12] 
       (.C(ap_clk),
        .CE(E),
        .D(\gmem_addr_read_reg_142_reg[15]_1 [12]),
        .Q(\gmem_addr_read_reg_142_reg[15]_0 [12]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_142_reg[13] 
       (.C(ap_clk),
        .CE(E),
        .D(\gmem_addr_read_reg_142_reg[15]_1 [13]),
        .Q(\gmem_addr_read_reg_142_reg[15]_0 [13]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_142_reg[14] 
       (.C(ap_clk),
        .CE(E),
        .D(\gmem_addr_read_reg_142_reg[15]_1 [14]),
        .Q(\gmem_addr_read_reg_142_reg[15]_0 [14]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_142_reg[15] 
       (.C(ap_clk),
        .CE(E),
        .D(\gmem_addr_read_reg_142_reg[15]_1 [15]),
        .Q(\gmem_addr_read_reg_142_reg[15]_0 [15]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_142_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\gmem_addr_read_reg_142_reg[15]_1 [1]),
        .Q(\gmem_addr_read_reg_142_reg[15]_0 [1]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_142_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\gmem_addr_read_reg_142_reg[15]_1 [2]),
        .Q(\gmem_addr_read_reg_142_reg[15]_0 [2]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_142_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\gmem_addr_read_reg_142_reg[15]_1 [3]),
        .Q(\gmem_addr_read_reg_142_reg[15]_0 [3]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_142_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\gmem_addr_read_reg_142_reg[15]_1 [4]),
        .Q(\gmem_addr_read_reg_142_reg[15]_0 [4]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_142_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(\gmem_addr_read_reg_142_reg[15]_1 [5]),
        .Q(\gmem_addr_read_reg_142_reg[15]_0 [5]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_142_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(\gmem_addr_read_reg_142_reg[15]_1 [6]),
        .Q(\gmem_addr_read_reg_142_reg[15]_0 [6]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_142_reg[7] 
       (.C(ap_clk),
        .CE(E),
        .D(\gmem_addr_read_reg_142_reg[15]_1 [7]),
        .Q(\gmem_addr_read_reg_142_reg[15]_0 [7]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_142_reg[8] 
       (.C(ap_clk),
        .CE(E),
        .D(\gmem_addr_read_reg_142_reg[15]_1 [8]),
        .Q(\gmem_addr_read_reg_142_reg[15]_0 [8]),
        .R(1'b0));
  FDRE \gmem_addr_read_reg_142_reg[9] 
       (.C(ap_clk),
        .CE(E),
        .D(\gmem_addr_read_reg_142_reg[15]_1 [9]),
        .Q(\gmem_addr_read_reg_142_reg[15]_0 [9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \loop_index_fu_48[0]_i_2 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(Q),
        .I2(CO),
        .O(loop_index_fu_48));
  LUT4 #(
    .INIT(16'h0009)) 
    \loop_index_fu_48[0]_i_35 
       (.I0(empty_fu_104_p2[15]),
        .I1(conv5_cast_reg_127[15]),
        .I2(empty_fu_104_p2[17]),
        .I3(empty_fu_104_p2[16]),
        .O(\loop_index_fu_48[0]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \loop_index_fu_48[0]_i_36 
       (.I0(empty_fu_104_p2[12]),
        .I1(conv5_cast_reg_127[12]),
        .I2(conv5_cast_reg_127[14]),
        .I3(empty_fu_104_p2[14]),
        .I4(conv5_cast_reg_127[13]),
        .I5(empty_fu_104_p2[13]),
        .O(\loop_index_fu_48[0]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \loop_index_fu_48[0]_i_40 
       (.I0(empty_fu_104_p2[9]),
        .I1(conv5_cast_reg_127[9]),
        .I2(conv5_cast_reg_127[11]),
        .I3(empty_fu_104_p2[11]),
        .I4(conv5_cast_reg_127[10]),
        .I5(empty_fu_104_p2[10]),
        .O(\loop_index_fu_48[0]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \loop_index_fu_48[0]_i_41 
       (.I0(empty_fu_104_p2[6]),
        .I1(conv5_cast_reg_127[6]),
        .I2(conv5_cast_reg_127[8]),
        .I3(empty_fu_104_p2[8]),
        .I4(conv5_cast_reg_127[7]),
        .I5(empty_fu_104_p2[7]),
        .O(\loop_index_fu_48[0]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \loop_index_fu_48[0]_i_42 
       (.I0(empty_fu_104_p2[3]),
        .I1(conv5_cast_reg_127[3]),
        .I2(conv5_cast_reg_127[5]),
        .I3(empty_fu_104_p2[5]),
        .I4(conv5_cast_reg_127[4]),
        .I5(empty_fu_104_p2[4]),
        .O(\loop_index_fu_48[0]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    \loop_index_fu_48[0]_i_43 
       (.I0(loop_index_fu_48_reg[0]),
        .I1(conv5_cast_reg_127[0]),
        .I2(conv5_cast_reg_127[2]),
        .I3(empty_fu_104_p2[2]),
        .I4(conv5_cast_reg_127[1]),
        .I5(empty_fu_104_p2[1]),
        .O(\loop_index_fu_48[0]_i_43_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \loop_index_fu_48[0]_i_5 
       (.I0(loop_index_fu_48_reg[0]),
        .O(empty_fu_104_p2[0]));
  FDRE \loop_index_fu_48_reg[0] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[0]_i_3_n_7 ),
        .Q(loop_index_fu_48_reg[0]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \loop_index_fu_48_reg[0]_i_14 
       (.CI(\loop_index_fu_48_reg[0]_i_15_n_0 ),
        .CO({\NLW_loop_index_fu_48_reg[0]_i_14_CO_UNCONNECTED [3:2],\loop_index_fu_48_reg[0]_i_14_n_2 ,\loop_index_fu_48_reg[0]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_loop_index_fu_48_reg[0]_i_14_O_UNCONNECTED [3],\loop_index_fu_48_reg[63]_0 [45:43]}),
        .S({1'b0,loop_index_fu_48_reg__0[63:61]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \loop_index_fu_48_reg[0]_i_15 
       (.CI(\loop_index_fu_48_reg[0]_i_21_n_0 ),
        .CO({\loop_index_fu_48_reg[0]_i_15_n_0 ,\loop_index_fu_48_reg[0]_i_15_n_1 ,\loop_index_fu_48_reg[0]_i_15_n_2 ,\loop_index_fu_48_reg[0]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\loop_index_fu_48_reg[63]_0 [42:39]),
        .S(loop_index_fu_48_reg__0[60:57]));
  CARRY4 \loop_index_fu_48_reg[0]_i_16 
       (.CI(\loop_index_fu_48_reg[0]_i_24_n_0 ),
        .CO({\loop_index_fu_48_reg[0]_i_16_n_0 ,\loop_index_fu_48_reg[0]_i_16_n_1 ,\loop_index_fu_48_reg[0]_i_16_n_2 ,\loop_index_fu_48_reg[0]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_loop_index_fu_48_reg[0]_i_16_O_UNCONNECTED [3:0]),
        .S(\loop_index_fu_48_reg[0]_i_9_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \loop_index_fu_48_reg[0]_i_21 
       (.CI(\loop_index_fu_48_reg[0]_i_22_n_0 ),
        .CO({\loop_index_fu_48_reg[0]_i_21_n_0 ,\loop_index_fu_48_reg[0]_i_21_n_1 ,\loop_index_fu_48_reg[0]_i_21_n_2 ,\loop_index_fu_48_reg[0]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\loop_index_fu_48_reg[63]_0 [38:35]),
        .S(loop_index_fu_48_reg__0[56:53]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \loop_index_fu_48_reg[0]_i_22 
       (.CI(\loop_index_fu_48_reg[0]_i_23_n_0 ),
        .CO({\loop_index_fu_48_reg[0]_i_22_n_0 ,\loop_index_fu_48_reg[0]_i_22_n_1 ,\loop_index_fu_48_reg[0]_i_22_n_2 ,\loop_index_fu_48_reg[0]_i_22_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\loop_index_fu_48_reg[63]_0 [34:31]),
        .S(loop_index_fu_48_reg__0[52:49]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \loop_index_fu_48_reg[0]_i_23 
       (.CI(\loop_index_fu_48_reg[0]_i_29_n_0 ),
        .CO({\loop_index_fu_48_reg[0]_i_23_n_0 ,\loop_index_fu_48_reg[0]_i_23_n_1 ,\loop_index_fu_48_reg[0]_i_23_n_2 ,\loop_index_fu_48_reg[0]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\loop_index_fu_48_reg[63]_0 [30:27]),
        .S(loop_index_fu_48_reg__0[48:45]));
  CARRY4 \loop_index_fu_48_reg[0]_i_24 
       (.CI(\loop_index_fu_48_reg[0]_i_32_n_0 ),
        .CO({\loop_index_fu_48_reg[0]_i_24_n_0 ,\loop_index_fu_48_reg[0]_i_24_n_1 ,\loop_index_fu_48_reg[0]_i_24_n_2 ,\loop_index_fu_48_reg[0]_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_loop_index_fu_48_reg[0]_i_24_O_UNCONNECTED [3:0]),
        .S({S,\loop_index_fu_48[0]_i_35_n_0 ,\loop_index_fu_48[0]_i_36_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \loop_index_fu_48_reg[0]_i_29 
       (.CI(\loop_index_fu_48_reg[0]_i_30_n_0 ),
        .CO({\loop_index_fu_48_reg[0]_i_29_n_0 ,\loop_index_fu_48_reg[0]_i_29_n_1 ,\loop_index_fu_48_reg[0]_i_29_n_2 ,\loop_index_fu_48_reg[0]_i_29_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\loop_index_fu_48_reg[63]_0 [26:23]),
        .S(loop_index_fu_48_reg__0[44:41]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \loop_index_fu_48_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\loop_index_fu_48_reg[0]_i_3_n_0 ,\loop_index_fu_48_reg[0]_i_3_n_1 ,\loop_index_fu_48_reg[0]_i_3_n_2 ,\loop_index_fu_48_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\loop_index_fu_48_reg[0]_i_3_n_4 ,\loop_index_fu_48_reg[0]_i_3_n_5 ,\loop_index_fu_48_reg[0]_i_3_n_6 ,\loop_index_fu_48_reg[0]_i_3_n_7 }),
        .S({loop_index_fu_48_reg[3:1],empty_fu_104_p2[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \loop_index_fu_48_reg[0]_i_30 
       (.CI(\loop_index_fu_48_reg[0]_i_31_n_0 ),
        .CO({\loop_index_fu_48_reg[0]_i_30_n_0 ,\loop_index_fu_48_reg[0]_i_30_n_1 ,\loop_index_fu_48_reg[0]_i_30_n_2 ,\loop_index_fu_48_reg[0]_i_30_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\loop_index_fu_48_reg[63]_0 [22:19]),
        .S(loop_index_fu_48_reg__0[40:37]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \loop_index_fu_48_reg[0]_i_31 
       (.CI(\loop_index_fu_48_reg[0]_i_37_n_0 ),
        .CO({\loop_index_fu_48_reg[0]_i_31_n_0 ,\loop_index_fu_48_reg[0]_i_31_n_1 ,\loop_index_fu_48_reg[0]_i_31_n_2 ,\loop_index_fu_48_reg[0]_i_31_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\loop_index_fu_48_reg[63]_0 [18:15]),
        .S(loop_index_fu_48_reg__0[36:33]));
  CARRY4 \loop_index_fu_48_reg[0]_i_32 
       (.CI(1'b0),
        .CO({\loop_index_fu_48_reg[0]_i_32_n_0 ,\loop_index_fu_48_reg[0]_i_32_n_1 ,\loop_index_fu_48_reg[0]_i_32_n_2 ,\loop_index_fu_48_reg[0]_i_32_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_loop_index_fu_48_reg[0]_i_32_O_UNCONNECTED [3:0]),
        .S({\loop_index_fu_48[0]_i_40_n_0 ,\loop_index_fu_48[0]_i_41_n_0 ,\loop_index_fu_48[0]_i_42_n_0 ,\loop_index_fu_48[0]_i_43_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \loop_index_fu_48_reg[0]_i_37 
       (.CI(\loop_index_fu_48_reg[0]_i_38_n_0 ),
        .CO({\loop_index_fu_48_reg[0]_i_37_n_0 ,\loop_index_fu_48_reg[0]_i_37_n_1 ,\loop_index_fu_48_reg[0]_i_37_n_2 ,\loop_index_fu_48_reg[0]_i_37_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\loop_index_fu_48_reg[63]_0 [14:11]),
        .S(loop_index_fu_48_reg__0[32:29]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \loop_index_fu_48_reg[0]_i_38 
       (.CI(\loop_index_fu_48_reg[0]_i_39_n_0 ),
        .CO({\loop_index_fu_48_reg[0]_i_38_n_0 ,\loop_index_fu_48_reg[0]_i_38_n_1 ,\loop_index_fu_48_reg[0]_i_38_n_2 ,\loop_index_fu_48_reg[0]_i_38_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\loop_index_fu_48_reg[63]_0 [10:7]),
        .S(loop_index_fu_48_reg__0[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \loop_index_fu_48_reg[0]_i_39 
       (.CI(\loop_index_fu_48_reg[0]_i_44_n_0 ),
        .CO({\loop_index_fu_48_reg[0]_i_39_n_0 ,\loop_index_fu_48_reg[0]_i_39_n_1 ,\loop_index_fu_48_reg[0]_i_39_n_2 ,\loop_index_fu_48_reg[0]_i_39_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\loop_index_fu_48_reg[63]_0 [6:3]),
        .S(loop_index_fu_48_reg__0[24:21]));
  CARRY4 \loop_index_fu_48_reg[0]_i_4 
       (.CI(\loop_index_fu_48_reg[0]_i_6_n_0 ),
        .CO({\NLW_loop_index_fu_48_reg[0]_i_4_CO_UNCONNECTED [3:2],CO,\loop_index_fu_48_reg[0]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_loop_index_fu_48_reg[0]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,ap_enable_reg_pp0_iter1_reg_1}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \loop_index_fu_48_reg[0]_i_44 
       (.CI(\loop_index_fu_48_reg[0]_i_45_n_0 ),
        .CO({\loop_index_fu_48_reg[0]_i_44_n_0 ,\loop_index_fu_48_reg[0]_i_44_n_1 ,\loop_index_fu_48_reg[0]_i_44_n_2 ,\loop_index_fu_48_reg[0]_i_44_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\loop_index_fu_48_reg[63]_0 [2:0],empty_fu_104_p2[17]}),
        .S(loop_index_fu_48_reg__0[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \loop_index_fu_48_reg[0]_i_45 
       (.CI(\loop_index_fu_48_reg[0]_i_46_n_0 ),
        .CO({\loop_index_fu_48_reg[0]_i_45_n_0 ,\loop_index_fu_48_reg[0]_i_45_n_1 ,\loop_index_fu_48_reg[0]_i_45_n_2 ,\loop_index_fu_48_reg[0]_i_45_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(empty_fu_104_p2[16:13]),
        .S(loop_index_fu_48_reg__0[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \loop_index_fu_48_reg[0]_i_46 
       (.CI(\loop_index_fu_48_reg[0]_i_47_n_0 ),
        .CO({\loop_index_fu_48_reg[0]_i_46_n_0 ,\loop_index_fu_48_reg[0]_i_46_n_1 ,\loop_index_fu_48_reg[0]_i_46_n_2 ,\loop_index_fu_48_reg[0]_i_46_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(empty_fu_104_p2[12:9]),
        .S(loop_index_fu_48_reg__0[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \loop_index_fu_48_reg[0]_i_47 
       (.CI(\loop_index_fu_48_reg[0]_i_48_n_0 ),
        .CO({\loop_index_fu_48_reg[0]_i_47_n_0 ,\loop_index_fu_48_reg[0]_i_47_n_1 ,\loop_index_fu_48_reg[0]_i_47_n_2 ,\loop_index_fu_48_reg[0]_i_47_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(empty_fu_104_p2[8:5]),
        .S({loop_index_fu_48_reg__0[8:7],loop_index_fu_48_reg[6:5]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \loop_index_fu_48_reg[0]_i_48 
       (.CI(1'b0),
        .CO({\loop_index_fu_48_reg[0]_i_48_n_0 ,\loop_index_fu_48_reg[0]_i_48_n_1 ,\loop_index_fu_48_reg[0]_i_48_n_2 ,\loop_index_fu_48_reg[0]_i_48_n_3 }),
        .CYINIT(loop_index_fu_48_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(empty_fu_104_p2[4:1]),
        .S(loop_index_fu_48_reg[4:1]));
  CARRY4 \loop_index_fu_48_reg[0]_i_6 
       (.CI(\loop_index_fu_48_reg[0]_i_9_n_0 ),
        .CO({\loop_index_fu_48_reg[0]_i_6_n_0 ,\loop_index_fu_48_reg[0]_i_6_n_1 ,\loop_index_fu_48_reg[0]_i_6_n_2 ,\loop_index_fu_48_reg[0]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_loop_index_fu_48_reg[0]_i_6_O_UNCONNECTED [3:0]),
        .S(\loop_index_fu_48_reg[0]_i_4_0 ));
  CARRY4 \loop_index_fu_48_reg[0]_i_9 
       (.CI(\loop_index_fu_48_reg[0]_i_16_n_0 ),
        .CO({\loop_index_fu_48_reg[0]_i_9_n_0 ,\loop_index_fu_48_reg[0]_i_9_n_1 ,\loop_index_fu_48_reg[0]_i_9_n_2 ,\loop_index_fu_48_reg[0]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_loop_index_fu_48_reg[0]_i_9_O_UNCONNECTED [3:0]),
        .S(\loop_index_fu_48_reg[0]_i_6_0 ));
  FDRE \loop_index_fu_48_reg[10] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[8]_i_1_n_5 ),
        .Q(loop_index_fu_48_reg__0[10]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[11] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[8]_i_1_n_4 ),
        .Q(loop_index_fu_48_reg__0[11]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[12] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[12]_i_1_n_7 ),
        .Q(loop_index_fu_48_reg__0[12]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \loop_index_fu_48_reg[12]_i_1 
       (.CI(\loop_index_fu_48_reg[8]_i_1_n_0 ),
        .CO({\loop_index_fu_48_reg[12]_i_1_n_0 ,\loop_index_fu_48_reg[12]_i_1_n_1 ,\loop_index_fu_48_reg[12]_i_1_n_2 ,\loop_index_fu_48_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\loop_index_fu_48_reg[12]_i_1_n_4 ,\loop_index_fu_48_reg[12]_i_1_n_5 ,\loop_index_fu_48_reg[12]_i_1_n_6 ,\loop_index_fu_48_reg[12]_i_1_n_7 }),
        .S(loop_index_fu_48_reg__0[15:12]));
  FDRE \loop_index_fu_48_reg[13] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[12]_i_1_n_6 ),
        .Q(loop_index_fu_48_reg__0[13]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[14] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[12]_i_1_n_5 ),
        .Q(loop_index_fu_48_reg__0[14]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[15] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[12]_i_1_n_4 ),
        .Q(loop_index_fu_48_reg__0[15]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[16] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[16]_i_1_n_7 ),
        .Q(loop_index_fu_48_reg__0[16]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \loop_index_fu_48_reg[16]_i_1 
       (.CI(\loop_index_fu_48_reg[12]_i_1_n_0 ),
        .CO({\loop_index_fu_48_reg[16]_i_1_n_0 ,\loop_index_fu_48_reg[16]_i_1_n_1 ,\loop_index_fu_48_reg[16]_i_1_n_2 ,\loop_index_fu_48_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\loop_index_fu_48_reg[16]_i_1_n_4 ,\loop_index_fu_48_reg[16]_i_1_n_5 ,\loop_index_fu_48_reg[16]_i_1_n_6 ,\loop_index_fu_48_reg[16]_i_1_n_7 }),
        .S(loop_index_fu_48_reg__0[19:16]));
  FDRE \loop_index_fu_48_reg[17] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[16]_i_1_n_6 ),
        .Q(loop_index_fu_48_reg__0[17]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[18] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[16]_i_1_n_5 ),
        .Q(loop_index_fu_48_reg__0[18]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[19] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[16]_i_1_n_4 ),
        .Q(loop_index_fu_48_reg__0[19]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[1] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[0]_i_3_n_6 ),
        .Q(loop_index_fu_48_reg[1]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[20] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[20]_i_1_n_7 ),
        .Q(loop_index_fu_48_reg__0[20]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \loop_index_fu_48_reg[20]_i_1 
       (.CI(\loop_index_fu_48_reg[16]_i_1_n_0 ),
        .CO({\loop_index_fu_48_reg[20]_i_1_n_0 ,\loop_index_fu_48_reg[20]_i_1_n_1 ,\loop_index_fu_48_reg[20]_i_1_n_2 ,\loop_index_fu_48_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\loop_index_fu_48_reg[20]_i_1_n_4 ,\loop_index_fu_48_reg[20]_i_1_n_5 ,\loop_index_fu_48_reg[20]_i_1_n_6 ,\loop_index_fu_48_reg[20]_i_1_n_7 }),
        .S(loop_index_fu_48_reg__0[23:20]));
  FDRE \loop_index_fu_48_reg[21] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[20]_i_1_n_6 ),
        .Q(loop_index_fu_48_reg__0[21]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[22] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[20]_i_1_n_5 ),
        .Q(loop_index_fu_48_reg__0[22]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[23] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[20]_i_1_n_4 ),
        .Q(loop_index_fu_48_reg__0[23]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[24] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[24]_i_1_n_7 ),
        .Q(loop_index_fu_48_reg__0[24]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \loop_index_fu_48_reg[24]_i_1 
       (.CI(\loop_index_fu_48_reg[20]_i_1_n_0 ),
        .CO({\loop_index_fu_48_reg[24]_i_1_n_0 ,\loop_index_fu_48_reg[24]_i_1_n_1 ,\loop_index_fu_48_reg[24]_i_1_n_2 ,\loop_index_fu_48_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\loop_index_fu_48_reg[24]_i_1_n_4 ,\loop_index_fu_48_reg[24]_i_1_n_5 ,\loop_index_fu_48_reg[24]_i_1_n_6 ,\loop_index_fu_48_reg[24]_i_1_n_7 }),
        .S(loop_index_fu_48_reg__0[27:24]));
  FDRE \loop_index_fu_48_reg[25] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[24]_i_1_n_6 ),
        .Q(loop_index_fu_48_reg__0[25]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[26] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[24]_i_1_n_5 ),
        .Q(loop_index_fu_48_reg__0[26]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[27] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[24]_i_1_n_4 ),
        .Q(loop_index_fu_48_reg__0[27]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[28] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[28]_i_1_n_7 ),
        .Q(loop_index_fu_48_reg__0[28]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \loop_index_fu_48_reg[28]_i_1 
       (.CI(\loop_index_fu_48_reg[24]_i_1_n_0 ),
        .CO({\loop_index_fu_48_reg[28]_i_1_n_0 ,\loop_index_fu_48_reg[28]_i_1_n_1 ,\loop_index_fu_48_reg[28]_i_1_n_2 ,\loop_index_fu_48_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\loop_index_fu_48_reg[28]_i_1_n_4 ,\loop_index_fu_48_reg[28]_i_1_n_5 ,\loop_index_fu_48_reg[28]_i_1_n_6 ,\loop_index_fu_48_reg[28]_i_1_n_7 }),
        .S(loop_index_fu_48_reg__0[31:28]));
  FDRE \loop_index_fu_48_reg[29] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[28]_i_1_n_6 ),
        .Q(loop_index_fu_48_reg__0[29]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[2] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[0]_i_3_n_5 ),
        .Q(loop_index_fu_48_reg[2]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[30] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[28]_i_1_n_5 ),
        .Q(loop_index_fu_48_reg__0[30]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[31] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[28]_i_1_n_4 ),
        .Q(loop_index_fu_48_reg__0[31]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[32] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[32]_i_1_n_7 ),
        .Q(loop_index_fu_48_reg__0[32]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \loop_index_fu_48_reg[32]_i_1 
       (.CI(\loop_index_fu_48_reg[28]_i_1_n_0 ),
        .CO({\loop_index_fu_48_reg[32]_i_1_n_0 ,\loop_index_fu_48_reg[32]_i_1_n_1 ,\loop_index_fu_48_reg[32]_i_1_n_2 ,\loop_index_fu_48_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\loop_index_fu_48_reg[32]_i_1_n_4 ,\loop_index_fu_48_reg[32]_i_1_n_5 ,\loop_index_fu_48_reg[32]_i_1_n_6 ,\loop_index_fu_48_reg[32]_i_1_n_7 }),
        .S(loop_index_fu_48_reg__0[35:32]));
  FDRE \loop_index_fu_48_reg[33] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[32]_i_1_n_6 ),
        .Q(loop_index_fu_48_reg__0[33]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[34] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[32]_i_1_n_5 ),
        .Q(loop_index_fu_48_reg__0[34]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[35] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[32]_i_1_n_4 ),
        .Q(loop_index_fu_48_reg__0[35]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[36] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[36]_i_1_n_7 ),
        .Q(loop_index_fu_48_reg__0[36]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \loop_index_fu_48_reg[36]_i_1 
       (.CI(\loop_index_fu_48_reg[32]_i_1_n_0 ),
        .CO({\loop_index_fu_48_reg[36]_i_1_n_0 ,\loop_index_fu_48_reg[36]_i_1_n_1 ,\loop_index_fu_48_reg[36]_i_1_n_2 ,\loop_index_fu_48_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\loop_index_fu_48_reg[36]_i_1_n_4 ,\loop_index_fu_48_reg[36]_i_1_n_5 ,\loop_index_fu_48_reg[36]_i_1_n_6 ,\loop_index_fu_48_reg[36]_i_1_n_7 }),
        .S(loop_index_fu_48_reg__0[39:36]));
  FDRE \loop_index_fu_48_reg[37] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[36]_i_1_n_6 ),
        .Q(loop_index_fu_48_reg__0[37]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[38] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[36]_i_1_n_5 ),
        .Q(loop_index_fu_48_reg__0[38]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[39] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[36]_i_1_n_4 ),
        .Q(loop_index_fu_48_reg__0[39]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[3] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[0]_i_3_n_4 ),
        .Q(loop_index_fu_48_reg[3]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[40] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[40]_i_1_n_7 ),
        .Q(loop_index_fu_48_reg__0[40]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \loop_index_fu_48_reg[40]_i_1 
       (.CI(\loop_index_fu_48_reg[36]_i_1_n_0 ),
        .CO({\loop_index_fu_48_reg[40]_i_1_n_0 ,\loop_index_fu_48_reg[40]_i_1_n_1 ,\loop_index_fu_48_reg[40]_i_1_n_2 ,\loop_index_fu_48_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\loop_index_fu_48_reg[40]_i_1_n_4 ,\loop_index_fu_48_reg[40]_i_1_n_5 ,\loop_index_fu_48_reg[40]_i_1_n_6 ,\loop_index_fu_48_reg[40]_i_1_n_7 }),
        .S(loop_index_fu_48_reg__0[43:40]));
  FDRE \loop_index_fu_48_reg[41] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[40]_i_1_n_6 ),
        .Q(loop_index_fu_48_reg__0[41]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[42] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[40]_i_1_n_5 ),
        .Q(loop_index_fu_48_reg__0[42]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[43] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[40]_i_1_n_4 ),
        .Q(loop_index_fu_48_reg__0[43]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[44] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[44]_i_1_n_7 ),
        .Q(loop_index_fu_48_reg__0[44]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \loop_index_fu_48_reg[44]_i_1 
       (.CI(\loop_index_fu_48_reg[40]_i_1_n_0 ),
        .CO({\loop_index_fu_48_reg[44]_i_1_n_0 ,\loop_index_fu_48_reg[44]_i_1_n_1 ,\loop_index_fu_48_reg[44]_i_1_n_2 ,\loop_index_fu_48_reg[44]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\loop_index_fu_48_reg[44]_i_1_n_4 ,\loop_index_fu_48_reg[44]_i_1_n_5 ,\loop_index_fu_48_reg[44]_i_1_n_6 ,\loop_index_fu_48_reg[44]_i_1_n_7 }),
        .S(loop_index_fu_48_reg__0[47:44]));
  FDRE \loop_index_fu_48_reg[45] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[44]_i_1_n_6 ),
        .Q(loop_index_fu_48_reg__0[45]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[46] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[44]_i_1_n_5 ),
        .Q(loop_index_fu_48_reg__0[46]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[47] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[44]_i_1_n_4 ),
        .Q(loop_index_fu_48_reg__0[47]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[48] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[48]_i_1_n_7 ),
        .Q(loop_index_fu_48_reg__0[48]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \loop_index_fu_48_reg[48]_i_1 
       (.CI(\loop_index_fu_48_reg[44]_i_1_n_0 ),
        .CO({\loop_index_fu_48_reg[48]_i_1_n_0 ,\loop_index_fu_48_reg[48]_i_1_n_1 ,\loop_index_fu_48_reg[48]_i_1_n_2 ,\loop_index_fu_48_reg[48]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\loop_index_fu_48_reg[48]_i_1_n_4 ,\loop_index_fu_48_reg[48]_i_1_n_5 ,\loop_index_fu_48_reg[48]_i_1_n_6 ,\loop_index_fu_48_reg[48]_i_1_n_7 }),
        .S(loop_index_fu_48_reg__0[51:48]));
  FDRE \loop_index_fu_48_reg[49] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[48]_i_1_n_6 ),
        .Q(loop_index_fu_48_reg__0[49]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[4] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[4]_i_1_n_7 ),
        .Q(loop_index_fu_48_reg[4]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \loop_index_fu_48_reg[4]_i_1 
       (.CI(\loop_index_fu_48_reg[0]_i_3_n_0 ),
        .CO({\loop_index_fu_48_reg[4]_i_1_n_0 ,\loop_index_fu_48_reg[4]_i_1_n_1 ,\loop_index_fu_48_reg[4]_i_1_n_2 ,\loop_index_fu_48_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\loop_index_fu_48_reg[4]_i_1_n_4 ,\loop_index_fu_48_reg[4]_i_1_n_5 ,\loop_index_fu_48_reg[4]_i_1_n_6 ,\loop_index_fu_48_reg[4]_i_1_n_7 }),
        .S({loop_index_fu_48_reg__0[7],loop_index_fu_48_reg[6:4]}));
  FDRE \loop_index_fu_48_reg[50] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[48]_i_1_n_5 ),
        .Q(loop_index_fu_48_reg__0[50]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[51] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[48]_i_1_n_4 ),
        .Q(loop_index_fu_48_reg__0[51]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[52] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[52]_i_1_n_7 ),
        .Q(loop_index_fu_48_reg__0[52]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \loop_index_fu_48_reg[52]_i_1 
       (.CI(\loop_index_fu_48_reg[48]_i_1_n_0 ),
        .CO({\loop_index_fu_48_reg[52]_i_1_n_0 ,\loop_index_fu_48_reg[52]_i_1_n_1 ,\loop_index_fu_48_reg[52]_i_1_n_2 ,\loop_index_fu_48_reg[52]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\loop_index_fu_48_reg[52]_i_1_n_4 ,\loop_index_fu_48_reg[52]_i_1_n_5 ,\loop_index_fu_48_reg[52]_i_1_n_6 ,\loop_index_fu_48_reg[52]_i_1_n_7 }),
        .S(loop_index_fu_48_reg__0[55:52]));
  FDRE \loop_index_fu_48_reg[53] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[52]_i_1_n_6 ),
        .Q(loop_index_fu_48_reg__0[53]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[54] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[52]_i_1_n_5 ),
        .Q(loop_index_fu_48_reg__0[54]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[55] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[52]_i_1_n_4 ),
        .Q(loop_index_fu_48_reg__0[55]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[56] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[56]_i_1_n_7 ),
        .Q(loop_index_fu_48_reg__0[56]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \loop_index_fu_48_reg[56]_i_1 
       (.CI(\loop_index_fu_48_reg[52]_i_1_n_0 ),
        .CO({\loop_index_fu_48_reg[56]_i_1_n_0 ,\loop_index_fu_48_reg[56]_i_1_n_1 ,\loop_index_fu_48_reg[56]_i_1_n_2 ,\loop_index_fu_48_reg[56]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\loop_index_fu_48_reg[56]_i_1_n_4 ,\loop_index_fu_48_reg[56]_i_1_n_5 ,\loop_index_fu_48_reg[56]_i_1_n_6 ,\loop_index_fu_48_reg[56]_i_1_n_7 }),
        .S(loop_index_fu_48_reg__0[59:56]));
  FDRE \loop_index_fu_48_reg[57] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[56]_i_1_n_6 ),
        .Q(loop_index_fu_48_reg__0[57]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[58] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[56]_i_1_n_5 ),
        .Q(loop_index_fu_48_reg__0[58]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[59] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[56]_i_1_n_4 ),
        .Q(loop_index_fu_48_reg__0[59]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[5] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[4]_i_1_n_6 ),
        .Q(loop_index_fu_48_reg[5]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[60] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[60]_i_1_n_7 ),
        .Q(loop_index_fu_48_reg__0[60]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \loop_index_fu_48_reg[60]_i_1 
       (.CI(\loop_index_fu_48_reg[56]_i_1_n_0 ),
        .CO({\NLW_loop_index_fu_48_reg[60]_i_1_CO_UNCONNECTED [3],\loop_index_fu_48_reg[60]_i_1_n_1 ,\loop_index_fu_48_reg[60]_i_1_n_2 ,\loop_index_fu_48_reg[60]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\loop_index_fu_48_reg[60]_i_1_n_4 ,\loop_index_fu_48_reg[60]_i_1_n_5 ,\loop_index_fu_48_reg[60]_i_1_n_6 ,\loop_index_fu_48_reg[60]_i_1_n_7 }),
        .S(loop_index_fu_48_reg__0[63:60]));
  FDRE \loop_index_fu_48_reg[61] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[60]_i_1_n_6 ),
        .Q(loop_index_fu_48_reg__0[61]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[62] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[60]_i_1_n_5 ),
        .Q(loop_index_fu_48_reg__0[62]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[63] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[60]_i_1_n_4 ),
        .Q(loop_index_fu_48_reg__0[63]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[6] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[4]_i_1_n_5 ),
        .Q(loop_index_fu_48_reg[6]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[7] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[4]_i_1_n_4 ),
        .Q(loop_index_fu_48_reg__0[7]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_fu_48_reg[8] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[8]_i_1_n_7 ),
        .Q(loop_index_fu_48_reg__0[8]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \loop_index_fu_48_reg[8]_i_1 
       (.CI(\loop_index_fu_48_reg[4]_i_1_n_0 ),
        .CO({\loop_index_fu_48_reg[8]_i_1_n_0 ,\loop_index_fu_48_reg[8]_i_1_n_1 ,\loop_index_fu_48_reg[8]_i_1_n_2 ,\loop_index_fu_48_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\loop_index_fu_48_reg[8]_i_1_n_4 ,\loop_index_fu_48_reg[8]_i_1_n_5 ,\loop_index_fu_48_reg[8]_i_1_n_6 ,\loop_index_fu_48_reg[8]_i_1_n_7 }),
        .S(loop_index_fu_48_reg__0[11:8]));
  FDRE \loop_index_fu_48_reg[9] 
       (.C(ap_clk),
        .CE(loop_index_fu_48),
        .D(\loop_index_fu_48_reg[8]_i_1_n_6 ),
        .Q(loop_index_fu_48_reg__0[9]),
        .R(flow_control_loop_pipe_sequential_init_U_n_4));
  FDRE \loop_index_load_reg_137_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(loop_index_fu_48_reg[0]),
        .Q(\loop_index_load_reg_137_reg[6]_0 [0]),
        .R(1'b0));
  FDRE \loop_index_load_reg_137_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(loop_index_fu_48_reg[1]),
        .Q(\loop_index_load_reg_137_reg[6]_0 [1]),
        .R(1'b0));
  FDRE \loop_index_load_reg_137_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(loop_index_fu_48_reg[2]),
        .Q(\loop_index_load_reg_137_reg[6]_0 [2]),
        .R(1'b0));
  FDRE \loop_index_load_reg_137_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(loop_index_fu_48_reg[3]),
        .Q(\loop_index_load_reg_137_reg[6]_0 [3]),
        .R(1'b0));
  FDRE \loop_index_load_reg_137_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(loop_index_fu_48_reg[4]),
        .Q(\loop_index_load_reg_137_reg[6]_0 [4]),
        .R(1'b0));
  FDRE \loop_index_load_reg_137_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(loop_index_fu_48_reg[5]),
        .Q(\loop_index_load_reg_137_reg[6]_0 [5]),
        .R(1'b0));
  FDRE \loop_index_load_reg_137_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(loop_index_fu_48_reg[6]),
        .Q(\loop_index_load_reg_137_reg[6]_0 [6]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hD000)) 
    ram_reg_i_9__0
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(Q),
        .I2(ap_enable_reg_pp0_iter2),
        .I3(mem_reg[3]),
        .O(WEA));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_runLayer_Pipeline_VITIS_LOOP_29_2
   (s_ready_t_reg,
    gmem_ARVALID,
    gmem_RREADY,
    tmp_weights_ce0,
    \empty_24_reg_416_reg[0] ,
    ADDRARDADDR,
    DIBDI,
    grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg_reg,
    m_axi_gmem_ARADDR,
    m_axi_gmem_ARLEN,
    ap_clk,
    ap_rst_n_inv,
    gmem_ARREADY,
    Q,
    \FSM_sequential_state_reg[1] ,
    \FSM_sequential_state_reg[1]_0 ,
    mem_reg,
    WEA,
    D,
    \ap_CS_fsm_reg[22] ,
    grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg,
    ram_reg,
    add_ln33_fu_349_p2,
    \sext_ln29_cast_reg_238_reg[62]_0 ,
    \conv4_cast_reg_233_reg[15]_0 ,
    p_reg_reg,
    DOADO,
    ap_rst_n,
    \conv205_fu_72_reg[15]_0 );
  output [0:0]s_ready_t_reg;
  output gmem_ARVALID;
  output gmem_RREADY;
  output tmp_weights_ce0;
  output [1:0]\empty_24_reg_416_reg[0] ;
  output [6:0]ADDRARDADDR;
  output [15:0]DIBDI;
  output grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg_reg;
  output [62:0]m_axi_gmem_ARADDR;
  output [15:0]m_axi_gmem_ARLEN;
  input ap_clk;
  input ap_rst_n_inv;
  input gmem_ARREADY;
  input [0:0]Q;
  input \FSM_sequential_state_reg[1] ;
  input \FSM_sequential_state_reg[1]_0 ;
  input [4:0]mem_reg;
  input [0:0]WEA;
  input [0:0]D;
  input \ap_CS_fsm_reg[22] ;
  input grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg;
  input [6:0]ram_reg;
  input [15:0]add_ln33_fu_349_p2;
  input [62:0]\sext_ln29_cast_reg_238_reg[62]_0 ;
  input [15:0]\conv4_cast_reg_233_reg[15]_0 ;
  input [15:0]p_reg_reg;
  input [15:0]DOADO;
  input ap_rst_n;
  input [15:0]\conv205_fu_72_reg[15]_0 ;

  wire [6:0]ADDRARDADDR;
  wire [0:0]D;
  wire [15:0]DIBDI;
  wire [15:0]DOADO;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire [0:0]Q;
  wire [0:0]WEA;
  wire [15:0]add_ln33_fu_349_p2;
  wire \ap_CS_fsm_reg[22] ;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter10_reg_srl2___grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_enable_reg_pp0_iter4_reg_r_n_0;
  wire ap_enable_reg_pp0_iter11_reg_gate_n_0;
  wire ap_enable_reg_pp0_iter11_reg_grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_enable_reg_pp0_iter5_reg_r_n_0;
  wire ap_enable_reg_pp0_iter12;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter2_i_1__1_n_0;
  wire ap_enable_reg_pp0_iter3_reg_r_n_0;
  wire ap_enable_reg_pp0_iter4_reg_r_n_0;
  wire ap_enable_reg_pp0_iter5_reg_r_n_0;
  wire ap_enable_reg_pp0_iter6_reg_r_n_0;
  wire ap_enable_reg_pp0_iter6_reg_srl4___grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_enable_reg_pp0_iter6_reg_r_n_0;
  wire ap_enable_reg_pp0_iter7_reg_gate_n_0;
  wire ap_enable_reg_pp0_iter7_reg_grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_enable_reg_pp0_iter7_reg_r_n_0;
  wire ap_enable_reg_pp0_iter7_reg_r_n_0;
  wire ap_enable_reg_pp0_iter8;
  wire ap_loop_exit_ready_pp0_iter10_reg_reg_srl10_n_0;
  wire ap_loop_exit_ready_pp0_iter11_reg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [6:0]ap_sig_allocacmp_inNeurons_1;
  wire [15:0]\conv205_fu_72_reg[15]_0 ;
  wire [15:0]\conv4_cast_reg_233_reg[15]_0 ;
  wire [1:0]\empty_24_reg_416_reg[0] ;
  wire \first_itr_reg_131[0]_i_2_n_0 ;
  wire \first_itr_reg_131_reg_n_0_[0] ;
  wire flow_control_loop_pipe_sequential_init_U_n_15;
  wire flow_control_loop_pipe_sequential_init_U_n_4;
  wire flow_control_loop_pipe_sequential_init_U_n_5;
  wire flow_control_loop_pipe_sequential_init_U_n_6;
  wire gmem_ARREADY;
  wire gmem_ARVALID;
  wire gmem_RREADY;
  wire grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_ready;
  wire grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg;
  wire grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg_reg;
  wire [15:0]grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out;
  wire [6:0]grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_tmp_weights_address0;
  wire icmp_ln29_fu_172_p2;
  wire icmp_ln29_reg_248;
  wire \icmp_ln29_reg_248_pp0_iter10_reg_reg[0]_srl3_n_0 ;
  wire icmp_ln29_reg_248_pp0_iter11_reg;
  wire \icmp_ln29_reg_248_pp0_iter6_reg_reg[0]_srl6_n_0 ;
  wire icmp_ln29_reg_248_pp0_iter7_reg;
  wire \inNeurons_1_reg_243_pp0_iter6_reg_reg[0]_srl7_n_0 ;
  wire \inNeurons_1_reg_243_pp0_iter6_reg_reg[1]_srl7_n_0 ;
  wire \inNeurons_1_reg_243_pp0_iter6_reg_reg[2]_srl7_n_0 ;
  wire \inNeurons_1_reg_243_pp0_iter6_reg_reg[3]_srl7_n_0 ;
  wire \inNeurons_1_reg_243_pp0_iter6_reg_reg[4]_srl7_n_0 ;
  wire \inNeurons_1_reg_243_pp0_iter6_reg_reg[5]_srl7_n_0 ;
  wire \inNeurons_1_reg_243_pp0_iter6_reg_reg[6]_srl7_n_0 ;
  wire [15:0]inNeurons_2_fu_178_p2;
  wire inNeurons_fu_68;
  wire \inNeurons_fu_68_reg_n_0_[0] ;
  wire \inNeurons_fu_68_reg_n_0_[10] ;
  wire \inNeurons_fu_68_reg_n_0_[11] ;
  wire \inNeurons_fu_68_reg_n_0_[12] ;
  wire \inNeurons_fu_68_reg_n_0_[13] ;
  wire \inNeurons_fu_68_reg_n_0_[14] ;
  wire \inNeurons_fu_68_reg_n_0_[15] ;
  wire \inNeurons_fu_68_reg_n_0_[1] ;
  wire \inNeurons_fu_68_reg_n_0_[2] ;
  wire \inNeurons_fu_68_reg_n_0_[3] ;
  wire \inNeurons_fu_68_reg_n_0_[4] ;
  wire \inNeurons_fu_68_reg_n_0_[5] ;
  wire \inNeurons_fu_68_reg_n_0_[6] ;
  wire \inNeurons_fu_68_reg_n_0_[7] ;
  wire \inNeurons_fu_68_reg_n_0_[8] ;
  wire \inNeurons_fu_68_reg_n_0_[9] ;
  wire [62:0]m_axi_gmem_ARADDR;
  wire [15:0]m_axi_gmem_ARLEN;
  wire mac_muladd_16s_16s_16ns_16_4_1_U8_n_1;
  wire [4:0]mem_reg;
  wire [15:0]p_1_in;
  wire [15:0]p_reg_reg;
  wire [6:0]ram_reg;
  wire [0:0]s_ready_t_reg;
  wire [62:0]\sext_ln29_cast_reg_238_reg[62]_0 ;
  wire tmp_weights_ce0;

  LUT6 #(
    .INIT(64'h8000FFFF80000000)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(Q),
        .I1(icmp_ln29_reg_248_pp0_iter7_reg),
        .I2(ap_enable_reg_pp0_iter8),
        .I3(mac_muladd_16s_16s_16ns_16_4_1_U8_n_1),
        .I4(\FSM_sequential_state_reg[1] ),
        .I5(\FSM_sequential_state_reg[1]_0 ),
        .O(gmem_RREADY));
  LUT6 #(
    .INIT(64'hFFFFFF00FF08FF00)) 
    \FSM_sequential_state[1]_i_2__0 
       (.I0(\FSM_sequential_state_reg[1] ),
        .I1(\first_itr_reg_131_reg_n_0_[0] ),
        .I2(\first_itr_reg_131[0]_i_2_n_0 ),
        .I3(D),
        .I4(gmem_ARREADY),
        .I5(mem_reg[0]),
        .O(gmem_ARVALID));
  (* srl_name = "inst/\grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210/ap_enable_reg_pp0_iter10_reg_srl2___grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_enable_reg_pp0_iter4_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    ap_enable_reg_pp0_iter10_reg_srl2___grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_enable_reg_pp0_iter4_reg_r
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(ap_enable_reg_pp0_iter8),
        .Q(ap_enable_reg_pp0_iter10_reg_srl2___grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_enable_reg_pp0_iter4_reg_r_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ap_enable_reg_pp0_iter11_reg_gate
       (.I0(ap_enable_reg_pp0_iter11_reg_grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_enable_reg_pp0_iter5_reg_r_n_0),
        .I1(ap_enable_reg_pp0_iter5_reg_r_n_0),
        .O(ap_enable_reg_pp0_iter11_reg_gate_n_0));
  FDRE ap_enable_reg_pp0_iter11_reg_grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_enable_reg_pp0_iter5_reg_r
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter10_reg_srl2___grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_enable_reg_pp0_iter4_reg_r_n_0),
        .Q(ap_enable_reg_pp0_iter11_reg_grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_enable_reg_pp0_iter5_reg_r_n_0),
        .R(1'b0));
  FDRE ap_enable_reg_pp0_iter12_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter11_reg_gate_n_0),
        .Q(ap_enable_reg_pp0_iter12),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .Q(ap_enable_reg_pp0_iter1),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hA8A800A820202020)) 
    ap_enable_reg_pp0_iter2_i_1__1
       (.I0(ap_rst_n),
        .I1(ap_block_pp0_stage0_subdone),
        .I2(ap_enable_reg_pp0_iter2),
        .I3(flow_control_loop_pipe_sequential_init_U_n_5),
        .I4(icmp_ln29_reg_248),
        .I5(ap_enable_reg_pp0_iter1),
        .O(ap_enable_reg_pp0_iter2_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter2_i_1__1_n_0),
        .Q(ap_enable_reg_pp0_iter2),
        .R(1'b0));
  FDRE ap_enable_reg_pp0_iter3_reg_r
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(1'b1),
        .Q(ap_enable_reg_pp0_iter3_reg_r_n_0),
        .R(ap_rst_n_inv));
  FDRE ap_enable_reg_pp0_iter4_reg_r
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter3_reg_r_n_0),
        .Q(ap_enable_reg_pp0_iter4_reg_r_n_0),
        .R(ap_rst_n_inv));
  FDRE ap_enable_reg_pp0_iter5_reg_r
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter4_reg_r_n_0),
        .Q(ap_enable_reg_pp0_iter5_reg_r_n_0),
        .R(ap_rst_n_inv));
  FDRE ap_enable_reg_pp0_iter6_reg_r
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter5_reg_r_n_0),
        .Q(ap_enable_reg_pp0_iter6_reg_r_n_0),
        .R(ap_rst_n_inv));
  (* srl_name = "inst/\grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210/ap_enable_reg_pp0_iter6_reg_srl4___grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_enable_reg_pp0_iter6_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    ap_enable_reg_pp0_iter6_reg_srl4___grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_enable_reg_pp0_iter6_reg_r
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(ap_enable_reg_pp0_iter2),
        .Q(ap_enable_reg_pp0_iter6_reg_srl4___grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_enable_reg_pp0_iter6_reg_r_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ap_enable_reg_pp0_iter7_reg_gate
       (.I0(ap_enable_reg_pp0_iter7_reg_grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_enable_reg_pp0_iter7_reg_r_n_0),
        .I1(ap_enable_reg_pp0_iter7_reg_r_n_0),
        .O(ap_enable_reg_pp0_iter7_reg_gate_n_0));
  FDRE ap_enable_reg_pp0_iter7_reg_grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_enable_reg_pp0_iter7_reg_r
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter6_reg_srl4___grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_enable_reg_pp0_iter6_reg_r_n_0),
        .Q(ap_enable_reg_pp0_iter7_reg_grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_enable_reg_pp0_iter7_reg_r_n_0),
        .R(1'b0));
  FDRE ap_enable_reg_pp0_iter7_reg_r
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter6_reg_r_n_0),
        .Q(ap_enable_reg_pp0_iter7_reg_r_n_0),
        .R(ap_rst_n_inv));
  FDRE ap_enable_reg_pp0_iter8_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter7_reg_gate_n_0),
        .Q(ap_enable_reg_pp0_iter8),
        .R(ap_rst_n_inv));
  (* srl_name = "inst/\grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210/ap_loop_exit_ready_pp0_iter10_reg_reg_srl10 " *) 
  SRL16E ap_loop_exit_ready_pp0_iter10_reg_reg_srl10
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_ready),
        .Q(ap_loop_exit_ready_pp0_iter10_reg_reg_srl10_n_0));
  LUT2 #(
    .INIT(4'h4)) 
    ap_loop_exit_ready_pp0_iter10_reg_reg_srl10_i_1
       (.I0(icmp_ln29_fu_172_p2),
        .I1(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .O(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_ready));
  FDRE ap_loop_exit_ready_pp0_iter11_reg_reg__0
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_loop_exit_ready_pp0_iter10_reg_reg_srl10_n_0),
        .Q(ap_loop_exit_ready_pp0_iter11_reg),
        .R(1'b0));
  FDRE \conv205_fu_72_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(p_1_in[0]),
        .Q(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[0]),
        .R(1'b0));
  FDRE \conv205_fu_72_reg[10] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(p_1_in[10]),
        .Q(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[10]),
        .R(1'b0));
  FDRE \conv205_fu_72_reg[11] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(p_1_in[11]),
        .Q(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[11]),
        .R(1'b0));
  FDRE \conv205_fu_72_reg[12] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(p_1_in[12]),
        .Q(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[12]),
        .R(1'b0));
  FDRE \conv205_fu_72_reg[13] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(p_1_in[13]),
        .Q(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[13]),
        .R(1'b0));
  FDRE \conv205_fu_72_reg[14] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(p_1_in[14]),
        .Q(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[14]),
        .R(1'b0));
  FDRE \conv205_fu_72_reg[15] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(p_1_in[15]),
        .Q(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[15]),
        .R(1'b0));
  FDRE \conv205_fu_72_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(p_1_in[1]),
        .Q(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[1]),
        .R(1'b0));
  FDRE \conv205_fu_72_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(p_1_in[2]),
        .Q(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[2]),
        .R(1'b0));
  FDRE \conv205_fu_72_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(p_1_in[3]),
        .Q(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[3]),
        .R(1'b0));
  FDRE \conv205_fu_72_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(p_1_in[4]),
        .Q(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[4]),
        .R(1'b0));
  FDRE \conv205_fu_72_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(p_1_in[5]),
        .Q(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[5]),
        .R(1'b0));
  FDRE \conv205_fu_72_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(p_1_in[6]),
        .Q(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[6]),
        .R(1'b0));
  FDRE \conv205_fu_72_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(p_1_in[7]),
        .Q(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[7]),
        .R(1'b0));
  FDRE \conv205_fu_72_reg[8] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(p_1_in[8]),
        .Q(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[8]),
        .R(1'b0));
  FDRE \conv205_fu_72_reg[9] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(p_1_in[9]),
        .Q(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[9]),
        .R(1'b0));
  FDRE \conv4_cast_reg_233_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\conv4_cast_reg_233_reg[15]_0 [0]),
        .Q(m_axi_gmem_ARLEN[0]),
        .R(1'b0));
  FDRE \conv4_cast_reg_233_reg[10] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\conv4_cast_reg_233_reg[15]_0 [10]),
        .Q(m_axi_gmem_ARLEN[10]),
        .R(1'b0));
  FDRE \conv4_cast_reg_233_reg[11] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\conv4_cast_reg_233_reg[15]_0 [11]),
        .Q(m_axi_gmem_ARLEN[11]),
        .R(1'b0));
  FDRE \conv4_cast_reg_233_reg[12] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\conv4_cast_reg_233_reg[15]_0 [12]),
        .Q(m_axi_gmem_ARLEN[12]),
        .R(1'b0));
  FDRE \conv4_cast_reg_233_reg[13] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\conv4_cast_reg_233_reg[15]_0 [13]),
        .Q(m_axi_gmem_ARLEN[13]),
        .R(1'b0));
  FDRE \conv4_cast_reg_233_reg[14] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\conv4_cast_reg_233_reg[15]_0 [14]),
        .Q(m_axi_gmem_ARLEN[14]),
        .R(1'b0));
  FDRE \conv4_cast_reg_233_reg[15] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\conv4_cast_reg_233_reg[15]_0 [15]),
        .Q(m_axi_gmem_ARLEN[15]),
        .R(1'b0));
  FDRE \conv4_cast_reg_233_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\conv4_cast_reg_233_reg[15]_0 [1]),
        .Q(m_axi_gmem_ARLEN[1]),
        .R(1'b0));
  FDRE \conv4_cast_reg_233_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\conv4_cast_reg_233_reg[15]_0 [2]),
        .Q(m_axi_gmem_ARLEN[2]),
        .R(1'b0));
  FDRE \conv4_cast_reg_233_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\conv4_cast_reg_233_reg[15]_0 [3]),
        .Q(m_axi_gmem_ARLEN[3]),
        .R(1'b0));
  FDRE \conv4_cast_reg_233_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\conv4_cast_reg_233_reg[15]_0 [4]),
        .Q(m_axi_gmem_ARLEN[4]),
        .R(1'b0));
  FDRE \conv4_cast_reg_233_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\conv4_cast_reg_233_reg[15]_0 [5]),
        .Q(m_axi_gmem_ARLEN[5]),
        .R(1'b0));
  FDRE \conv4_cast_reg_233_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\conv4_cast_reg_233_reg[15]_0 [6]),
        .Q(m_axi_gmem_ARLEN[6]),
        .R(1'b0));
  FDRE \conv4_cast_reg_233_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\conv4_cast_reg_233_reg[15]_0 [7]),
        .Q(m_axi_gmem_ARLEN[7]),
        .R(1'b0));
  FDRE \conv4_cast_reg_233_reg[8] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\conv4_cast_reg_233_reg[15]_0 [8]),
        .Q(m_axi_gmem_ARLEN[8]),
        .R(1'b0));
  FDRE \conv4_cast_reg_233_reg[9] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\conv4_cast_reg_233_reg[15]_0 [9]),
        .Q(m_axi_gmem_ARLEN[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \data_p2[79]_i_1 
       (.I0(gmem_ARVALID),
        .I1(gmem_ARREADY),
        .O(s_ready_t_reg));
  LUT5 #(
    .INIT(32'h77F77777)) 
    \first_itr_reg_131[0]_i_2 
       (.I0(icmp_ln29_reg_248),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(icmp_ln29_reg_248_pp0_iter7_reg),
        .I3(Q),
        .I4(ap_enable_reg_pp0_iter8),
        .O(\first_itr_reg_131[0]_i_2_n_0 ));
  FDRE \first_itr_reg_131_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_4),
        .Q(\first_itr_reg_131_reg_n_0_[0] ),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U
       (.CO(icmp_ln29_fu_172_p2),
        .D(inNeurons_2_fu_178_p2),
        .E(inNeurons_fu_68),
        .Q(Q),
        .SR(flow_control_loop_pipe_sequential_init_U_n_6),
        .\ap_CS_fsm_reg[21] (mem_reg[3:1]),
        .\ap_CS_fsm_reg[22] (\ap_CS_fsm_reg[22] ),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .ap_done_cache_reg_0(mac_muladd_16s_16s_16ns_16_4_1_U8_n_1),
        .ap_enable_reg_pp0_iter8(ap_enable_reg_pp0_iter8),
        .ap_enable_reg_pp0_iter8_reg(flow_control_loop_pipe_sequential_init_U_n_5),
        .ap_loop_exit_ready_pp0_iter11_reg(ap_loop_exit_ready_pp0_iter11_reg),
        .ap_loop_init_int_reg_0(flow_control_loop_pipe_sequential_init_U_n_15),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_sig_allocacmp_inNeurons_1(ap_sig_allocacmp_inNeurons_1),
        .\empty_24_reg_416_reg[0] (\empty_24_reg_416_reg[0] ),
        .\first_itr_reg_131_reg[0] (\first_itr_reg_131[0]_i_2_n_0 ),
        .\first_itr_reg_131_reg[0]_0 (\first_itr_reg_131_reg_n_0_[0] ),
        .gmem_ARREADY(gmem_ARREADY),
        .grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg),
        .grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg_reg(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_ap_start_reg_reg),
        .icmp_ln29_reg_248_pp0_iter7_reg(icmp_ln29_reg_248_pp0_iter7_reg),
        .\icmp_ln29_reg_248_reg[0] ({\inNeurons_fu_68_reg_n_0_[15] ,\inNeurons_fu_68_reg_n_0_[14] ,\inNeurons_fu_68_reg_n_0_[13] ,\inNeurons_fu_68_reg_n_0_[12] ,\inNeurons_fu_68_reg_n_0_[11] ,\inNeurons_fu_68_reg_n_0_[10] ,\inNeurons_fu_68_reg_n_0_[9] ,\inNeurons_fu_68_reg_n_0_[8] ,\inNeurons_fu_68_reg_n_0_[7] ,\inNeurons_fu_68_reg_n_0_[6] ,\inNeurons_fu_68_reg_n_0_[5] ,\inNeurons_fu_68_reg_n_0_[4] ,\inNeurons_fu_68_reg_n_0_[3] ,\inNeurons_fu_68_reg_n_0_[2] ,\inNeurons_fu_68_reg_n_0_[1] ,\inNeurons_fu_68_reg_n_0_[0] }),
        .\icmp_ln29_reg_248_reg[0]_i_3_0 (\conv4_cast_reg_233_reg[15]_0 ),
        .s_ready_t_reg(flow_control_loop_pipe_sequential_init_U_n_4));
  (* srl_bus_name = "inst/\grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210/icmp_ln29_reg_248_pp0_iter10_reg_reg " *) 
  (* srl_name = "inst/\grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210/icmp_ln29_reg_248_pp0_iter10_reg_reg[0]_srl3 " *) 
  SRL16E \icmp_ln29_reg_248_pp0_iter10_reg_reg[0]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(icmp_ln29_reg_248_pp0_iter7_reg),
        .Q(\icmp_ln29_reg_248_pp0_iter10_reg_reg[0]_srl3_n_0 ));
  FDRE \icmp_ln29_reg_248_pp0_iter11_reg_reg[0]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\icmp_ln29_reg_248_pp0_iter10_reg_reg[0]_srl3_n_0 ),
        .Q(icmp_ln29_reg_248_pp0_iter11_reg),
        .R(1'b0));
  (* srl_bus_name = "inst/\grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210/icmp_ln29_reg_248_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210/icmp_ln29_reg_248_pp0_iter6_reg_reg[0]_srl6 " *) 
  SRL16E \icmp_ln29_reg_248_pp0_iter6_reg_reg[0]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(icmp_ln29_reg_248),
        .Q(\icmp_ln29_reg_248_pp0_iter6_reg_reg[0]_srl6_n_0 ));
  FDRE \icmp_ln29_reg_248_pp0_iter7_reg_reg[0]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\icmp_ln29_reg_248_pp0_iter6_reg_reg[0]_srl6_n_0 ),
        .Q(icmp_ln29_reg_248_pp0_iter7_reg),
        .R(1'b0));
  FDRE \icmp_ln29_reg_248_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(icmp_ln29_fu_172_p2),
        .Q(icmp_ln29_reg_248),
        .R(1'b0));
  (* srl_bus_name = "inst/\grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210/inNeurons_1_reg_243_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210/inNeurons_1_reg_243_pp0_iter6_reg_reg[0]_srl7 " *) 
  SRL16E \inNeurons_1_reg_243_pp0_iter6_reg_reg[0]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(ap_sig_allocacmp_inNeurons_1[0]),
        .Q(\inNeurons_1_reg_243_pp0_iter6_reg_reg[0]_srl7_n_0 ));
  (* srl_bus_name = "inst/\grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210/inNeurons_1_reg_243_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210/inNeurons_1_reg_243_pp0_iter6_reg_reg[1]_srl7 " *) 
  SRL16E \inNeurons_1_reg_243_pp0_iter6_reg_reg[1]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(ap_sig_allocacmp_inNeurons_1[1]),
        .Q(\inNeurons_1_reg_243_pp0_iter6_reg_reg[1]_srl7_n_0 ));
  (* srl_bus_name = "inst/\grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210/inNeurons_1_reg_243_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210/inNeurons_1_reg_243_pp0_iter6_reg_reg[2]_srl7 " *) 
  SRL16E \inNeurons_1_reg_243_pp0_iter6_reg_reg[2]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(ap_sig_allocacmp_inNeurons_1[2]),
        .Q(\inNeurons_1_reg_243_pp0_iter6_reg_reg[2]_srl7_n_0 ));
  (* srl_bus_name = "inst/\grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210/inNeurons_1_reg_243_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210/inNeurons_1_reg_243_pp0_iter6_reg_reg[3]_srl7 " *) 
  SRL16E \inNeurons_1_reg_243_pp0_iter6_reg_reg[3]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(ap_sig_allocacmp_inNeurons_1[3]),
        .Q(\inNeurons_1_reg_243_pp0_iter6_reg_reg[3]_srl7_n_0 ));
  (* srl_bus_name = "inst/\grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210/inNeurons_1_reg_243_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210/inNeurons_1_reg_243_pp0_iter6_reg_reg[4]_srl7 " *) 
  SRL16E \inNeurons_1_reg_243_pp0_iter6_reg_reg[4]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(ap_sig_allocacmp_inNeurons_1[4]),
        .Q(\inNeurons_1_reg_243_pp0_iter6_reg_reg[4]_srl7_n_0 ));
  (* srl_bus_name = "inst/\grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210/inNeurons_1_reg_243_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210/inNeurons_1_reg_243_pp0_iter6_reg_reg[5]_srl7 " *) 
  SRL16E \inNeurons_1_reg_243_pp0_iter6_reg_reg[5]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(ap_sig_allocacmp_inNeurons_1[5]),
        .Q(\inNeurons_1_reg_243_pp0_iter6_reg_reg[5]_srl7_n_0 ));
  (* srl_bus_name = "inst/\grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210/inNeurons_1_reg_243_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210/inNeurons_1_reg_243_pp0_iter6_reg_reg[6]_srl7 " *) 
  SRL16E \inNeurons_1_reg_243_pp0_iter6_reg_reg[6]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(ap_sig_allocacmp_inNeurons_1[6]),
        .Q(\inNeurons_1_reg_243_pp0_iter6_reg_reg[6]_srl7_n_0 ));
  FDRE \inNeurons_1_reg_243_pp0_iter7_reg_reg[0]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\inNeurons_1_reg_243_pp0_iter6_reg_reg[0]_srl7_n_0 ),
        .Q(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_tmp_weights_address0[0]),
        .R(1'b0));
  FDRE \inNeurons_1_reg_243_pp0_iter7_reg_reg[1]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\inNeurons_1_reg_243_pp0_iter6_reg_reg[1]_srl7_n_0 ),
        .Q(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_tmp_weights_address0[1]),
        .R(1'b0));
  FDRE \inNeurons_1_reg_243_pp0_iter7_reg_reg[2]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\inNeurons_1_reg_243_pp0_iter6_reg_reg[2]_srl7_n_0 ),
        .Q(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_tmp_weights_address0[2]),
        .R(1'b0));
  FDRE \inNeurons_1_reg_243_pp0_iter7_reg_reg[3]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\inNeurons_1_reg_243_pp0_iter6_reg_reg[3]_srl7_n_0 ),
        .Q(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_tmp_weights_address0[3]),
        .R(1'b0));
  FDRE \inNeurons_1_reg_243_pp0_iter7_reg_reg[4]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\inNeurons_1_reg_243_pp0_iter6_reg_reg[4]_srl7_n_0 ),
        .Q(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_tmp_weights_address0[4]),
        .R(1'b0));
  FDRE \inNeurons_1_reg_243_pp0_iter7_reg_reg[5]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\inNeurons_1_reg_243_pp0_iter6_reg_reg[5]_srl7_n_0 ),
        .Q(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_tmp_weights_address0[5]),
        .R(1'b0));
  FDRE \inNeurons_1_reg_243_pp0_iter7_reg_reg[6]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\inNeurons_1_reg_243_pp0_iter6_reg_reg[6]_srl7_n_0 ),
        .Q(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_tmp_weights_address0[6]),
        .R(1'b0));
  FDRE \inNeurons_fu_68_reg[0] 
       (.C(ap_clk),
        .CE(inNeurons_fu_68),
        .D(inNeurons_2_fu_178_p2[0]),
        .Q(\inNeurons_fu_68_reg_n_0_[0] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE \inNeurons_fu_68_reg[10] 
       (.C(ap_clk),
        .CE(inNeurons_fu_68),
        .D(inNeurons_2_fu_178_p2[10]),
        .Q(\inNeurons_fu_68_reg_n_0_[10] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE \inNeurons_fu_68_reg[11] 
       (.C(ap_clk),
        .CE(inNeurons_fu_68),
        .D(inNeurons_2_fu_178_p2[11]),
        .Q(\inNeurons_fu_68_reg_n_0_[11] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE \inNeurons_fu_68_reg[12] 
       (.C(ap_clk),
        .CE(inNeurons_fu_68),
        .D(inNeurons_2_fu_178_p2[12]),
        .Q(\inNeurons_fu_68_reg_n_0_[12] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE \inNeurons_fu_68_reg[13] 
       (.C(ap_clk),
        .CE(inNeurons_fu_68),
        .D(inNeurons_2_fu_178_p2[13]),
        .Q(\inNeurons_fu_68_reg_n_0_[13] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE \inNeurons_fu_68_reg[14] 
       (.C(ap_clk),
        .CE(inNeurons_fu_68),
        .D(inNeurons_2_fu_178_p2[14]),
        .Q(\inNeurons_fu_68_reg_n_0_[14] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE \inNeurons_fu_68_reg[15] 
       (.C(ap_clk),
        .CE(inNeurons_fu_68),
        .D(inNeurons_2_fu_178_p2[15]),
        .Q(\inNeurons_fu_68_reg_n_0_[15] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE \inNeurons_fu_68_reg[1] 
       (.C(ap_clk),
        .CE(inNeurons_fu_68),
        .D(inNeurons_2_fu_178_p2[1]),
        .Q(\inNeurons_fu_68_reg_n_0_[1] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE \inNeurons_fu_68_reg[2] 
       (.C(ap_clk),
        .CE(inNeurons_fu_68),
        .D(inNeurons_2_fu_178_p2[2]),
        .Q(\inNeurons_fu_68_reg_n_0_[2] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE \inNeurons_fu_68_reg[3] 
       (.C(ap_clk),
        .CE(inNeurons_fu_68),
        .D(inNeurons_2_fu_178_p2[3]),
        .Q(\inNeurons_fu_68_reg_n_0_[3] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE \inNeurons_fu_68_reg[4] 
       (.C(ap_clk),
        .CE(inNeurons_fu_68),
        .D(inNeurons_2_fu_178_p2[4]),
        .Q(\inNeurons_fu_68_reg_n_0_[4] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE \inNeurons_fu_68_reg[5] 
       (.C(ap_clk),
        .CE(inNeurons_fu_68),
        .D(inNeurons_2_fu_178_p2[5]),
        .Q(\inNeurons_fu_68_reg_n_0_[5] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE \inNeurons_fu_68_reg[6] 
       (.C(ap_clk),
        .CE(inNeurons_fu_68),
        .D(inNeurons_2_fu_178_p2[6]),
        .Q(\inNeurons_fu_68_reg_n_0_[6] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE \inNeurons_fu_68_reg[7] 
       (.C(ap_clk),
        .CE(inNeurons_fu_68),
        .D(inNeurons_2_fu_178_p2[7]),
        .Q(\inNeurons_fu_68_reg_n_0_[7] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE \inNeurons_fu_68_reg[8] 
       (.C(ap_clk),
        .CE(inNeurons_fu_68),
        .D(inNeurons_2_fu_178_p2[8]),
        .Q(\inNeurons_fu_68_reg_n_0_[8] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE \inNeurons_fu_68_reg[9] 
       (.C(ap_clk),
        .CE(inNeurons_fu_68),
        .D(inNeurons_2_fu_178_p2[9]),
        .Q(\inNeurons_fu_68_reg_n_0_[9] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_mac_muladd_16s_16s_16ns_16_4_1 mac_muladd_16s_16s_16ns_16_4_1_U8
       (.D(p_1_in),
        .DOADO(DOADO),
        .Q(Q),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter12(ap_enable_reg_pp0_iter12),
        .ap_enable_reg_pp0_iter8(ap_enable_reg_pp0_iter8),
        .\conv205_fu_72_reg[15] (flow_control_loop_pipe_sequential_init_U_n_15),
        .\conv205_fu_72_reg[15]_0 (\conv205_fu_72_reg[15]_0 ),
        .\first_itr_reg_131_reg[0] (mac_muladd_16s_16s_16ns_16_4_1_U8_n_1),
        .gmem_ARREADY(gmem_ARREADY),
        .icmp_ln29_reg_248(icmp_ln29_reg_248),
        .icmp_ln29_reg_248_pp0_iter11_reg(icmp_ln29_reg_248_pp0_iter11_reg),
        .icmp_ln29_reg_248_pp0_iter7_reg(icmp_ln29_reg_248_pp0_iter7_reg),
        .p_reg_reg(p_reg_reg),
        .p_reg_reg_0(\first_itr_reg_131_reg_n_0_[0] ),
        .p_reg_reg_1(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_13__0
       (.I0(add_ln33_fu_349_p2[15]),
        .I1(mem_reg[4]),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[15]),
        .O(DIBDI[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_14__0
       (.I0(add_ln33_fu_349_p2[14]),
        .I1(mem_reg[4]),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[14]),
        .O(DIBDI[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_15__0
       (.I0(add_ln33_fu_349_p2[13]),
        .I1(mem_reg[4]),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[13]),
        .O(DIBDI[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_16
       (.I0(add_ln33_fu_349_p2[12]),
        .I1(mem_reg[4]),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[12]),
        .O(DIBDI[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_17
       (.I0(add_ln33_fu_349_p2[11]),
        .I1(mem_reg[4]),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[11]),
        .O(DIBDI[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_18
       (.I0(add_ln33_fu_349_p2[10]),
        .I1(mem_reg[4]),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[10]),
        .O(DIBDI[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_19
       (.I0(add_ln33_fu_349_p2[9]),
        .I1(mem_reg[4]),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[9]),
        .O(DIBDI[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_20
       (.I0(add_ln33_fu_349_p2[8]),
        .I1(mem_reg[4]),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[8]),
        .O(DIBDI[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_21
       (.I0(add_ln33_fu_349_p2[7]),
        .I1(mem_reg[4]),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[7]),
        .O(DIBDI[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_22
       (.I0(add_ln33_fu_349_p2[6]),
        .I1(mem_reg[4]),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[6]),
        .O(DIBDI[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_23
       (.I0(add_ln33_fu_349_p2[5]),
        .I1(mem_reg[4]),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[5]),
        .O(DIBDI[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_24
       (.I0(add_ln33_fu_349_p2[4]),
        .I1(mem_reg[4]),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[4]),
        .O(DIBDI[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_25
       (.I0(add_ln33_fu_349_p2[3]),
        .I1(mem_reg[4]),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[3]),
        .O(DIBDI[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_26
       (.I0(add_ln33_fu_349_p2[2]),
        .I1(mem_reg[4]),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[2]),
        .O(DIBDI[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_27
       (.I0(add_ln33_fu_349_p2[1]),
        .I1(mem_reg[4]),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[1]),
        .O(DIBDI[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_28
       (.I0(add_ln33_fu_349_p2[0]),
        .I1(mem_reg[4]),
        .I2(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_conv205_out[0]),
        .O(DIBDI[0]));
  LUT6 #(
    .INIT(64'h8A00FFFF8A000000)) 
    ram_reg_i_1__0
       (.I0(ap_enable_reg_pp0_iter8),
        .I1(Q),
        .I2(icmp_ln29_reg_248_pp0_iter7_reg),
        .I3(mac_muladd_16s_16s_16ns_16_4_1_U8_n_1),
        .I4(mem_reg[3]),
        .I5(WEA),
        .O(tmp_weights_ce0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_2__0
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_tmp_weights_address0[6]),
        .I1(mem_reg[3]),
        .I2(ram_reg[6]),
        .O(ADDRARDADDR[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_3__0
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_tmp_weights_address0[5]),
        .I1(mem_reg[3]),
        .I2(ram_reg[5]),
        .O(ADDRARDADDR[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_4__0
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_tmp_weights_address0[4]),
        .I1(mem_reg[3]),
        .I2(ram_reg[4]),
        .O(ADDRARDADDR[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_5__0
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_tmp_weights_address0[3]),
        .I1(mem_reg[3]),
        .I2(ram_reg[3]),
        .O(ADDRARDADDR[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_6__0
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_tmp_weights_address0[2]),
        .I1(mem_reg[3]),
        .I2(ram_reg[2]),
        .O(ADDRARDADDR[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_7__0
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_tmp_weights_address0[1]),
        .I1(mem_reg[3]),
        .I2(ram_reg[1]),
        .O(ADDRARDADDR[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_8__0
       (.I0(grp_runLayer_Pipeline_VITIS_LOOP_29_2_fu_210_tmp_weights_address0[0]),
        .I1(mem_reg[3]),
        .I2(ram_reg[0]),
        .O(ADDRARDADDR[0]));
  FDRE \sext_ln29_cast_reg_238_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [0]),
        .Q(m_axi_gmem_ARADDR[0]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[10] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [10]),
        .Q(m_axi_gmem_ARADDR[10]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[11] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [11]),
        .Q(m_axi_gmem_ARADDR[11]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[12] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [12]),
        .Q(m_axi_gmem_ARADDR[12]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[13] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [13]),
        .Q(m_axi_gmem_ARADDR[13]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[14] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [14]),
        .Q(m_axi_gmem_ARADDR[14]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[15] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [15]),
        .Q(m_axi_gmem_ARADDR[15]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[16] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [16]),
        .Q(m_axi_gmem_ARADDR[16]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[17] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [17]),
        .Q(m_axi_gmem_ARADDR[17]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[18] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [18]),
        .Q(m_axi_gmem_ARADDR[18]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[19] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [19]),
        .Q(m_axi_gmem_ARADDR[19]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [1]),
        .Q(m_axi_gmem_ARADDR[1]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[20] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [20]),
        .Q(m_axi_gmem_ARADDR[20]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[21] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [21]),
        .Q(m_axi_gmem_ARADDR[21]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[22] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [22]),
        .Q(m_axi_gmem_ARADDR[22]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[23] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [23]),
        .Q(m_axi_gmem_ARADDR[23]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[24] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [24]),
        .Q(m_axi_gmem_ARADDR[24]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[25] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [25]),
        .Q(m_axi_gmem_ARADDR[25]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[26] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [26]),
        .Q(m_axi_gmem_ARADDR[26]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[27] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [27]),
        .Q(m_axi_gmem_ARADDR[27]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[28] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [28]),
        .Q(m_axi_gmem_ARADDR[28]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[29] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [29]),
        .Q(m_axi_gmem_ARADDR[29]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [2]),
        .Q(m_axi_gmem_ARADDR[2]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[30] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [30]),
        .Q(m_axi_gmem_ARADDR[30]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[31] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [31]),
        .Q(m_axi_gmem_ARADDR[31]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[32] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [32]),
        .Q(m_axi_gmem_ARADDR[32]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[33] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [33]),
        .Q(m_axi_gmem_ARADDR[33]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[34] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [34]),
        .Q(m_axi_gmem_ARADDR[34]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[35] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [35]),
        .Q(m_axi_gmem_ARADDR[35]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[36] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [36]),
        .Q(m_axi_gmem_ARADDR[36]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[37] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [37]),
        .Q(m_axi_gmem_ARADDR[37]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[38] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [38]),
        .Q(m_axi_gmem_ARADDR[38]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[39] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [39]),
        .Q(m_axi_gmem_ARADDR[39]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [3]),
        .Q(m_axi_gmem_ARADDR[3]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[40] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [40]),
        .Q(m_axi_gmem_ARADDR[40]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[41] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [41]),
        .Q(m_axi_gmem_ARADDR[41]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[42] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [42]),
        .Q(m_axi_gmem_ARADDR[42]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[43] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [43]),
        .Q(m_axi_gmem_ARADDR[43]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[44] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [44]),
        .Q(m_axi_gmem_ARADDR[44]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[45] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [45]),
        .Q(m_axi_gmem_ARADDR[45]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[46] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [46]),
        .Q(m_axi_gmem_ARADDR[46]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[47] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [47]),
        .Q(m_axi_gmem_ARADDR[47]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[48] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [48]),
        .Q(m_axi_gmem_ARADDR[48]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[49] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [49]),
        .Q(m_axi_gmem_ARADDR[49]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [4]),
        .Q(m_axi_gmem_ARADDR[4]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[50] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [50]),
        .Q(m_axi_gmem_ARADDR[50]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[51] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [51]),
        .Q(m_axi_gmem_ARADDR[51]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[52] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [52]),
        .Q(m_axi_gmem_ARADDR[52]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[53] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [53]),
        .Q(m_axi_gmem_ARADDR[53]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[54] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [54]),
        .Q(m_axi_gmem_ARADDR[54]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[55] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [55]),
        .Q(m_axi_gmem_ARADDR[55]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[56] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [56]),
        .Q(m_axi_gmem_ARADDR[56]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[57] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [57]),
        .Q(m_axi_gmem_ARADDR[57]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[58] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [58]),
        .Q(m_axi_gmem_ARADDR[58]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[59] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [59]),
        .Q(m_axi_gmem_ARADDR[59]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [5]),
        .Q(m_axi_gmem_ARADDR[5]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[60] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [60]),
        .Q(m_axi_gmem_ARADDR[60]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[61] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [61]),
        .Q(m_axi_gmem_ARADDR[61]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[62] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [62]),
        .Q(m_axi_gmem_ARADDR[62]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [6]),
        .Q(m_axi_gmem_ARADDR[6]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [7]),
        .Q(m_axi_gmem_ARADDR[7]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[8] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [8]),
        .Q(m_axi_gmem_ARADDR[8]),
        .R(1'b0));
  FDRE \sext_ln29_cast_reg_238_reg[9] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\sext_ln29_cast_reg_238_reg[62]_0 [9]),
        .Q(m_axi_gmem_ARADDR[9]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_tmp_weights_RAM_AUTO_1R1W
   (DOADO,
    ap_clk,
    tmp_bias_ce0,
    Q,
    ADDRARDADDR,
    ram_reg_0,
    WEA);
  output [15:0]DOADO;
  input ap_clk;
  input tmp_bias_ce0;
  input [0:0]Q;
  input [6:0]ADDRARDADDR;
  input [15:0]ram_reg_0;
  input [0:0]WEA;

  wire [6:0]ADDRARDADDR;
  wire [15:0]DOADO;
  wire [0:0]Q;
  wire [0:0]WEA;
  wire ap_clk;
  wire [15:0]ram_reg_0;
  wire tmp_bias_ce0;
  wire [15:0]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "tmp_bias_U/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "896" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    ram_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DIADI(ram_reg_0),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(DOADO),
        .DOBDO(NLW_ram_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(tmp_bias_ce0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(Q),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "runLayer_tmp_weights_RAM_AUTO_1R1W" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_runLayer_tmp_weights_RAM_AUTO_1R1W_0
   (DOADO,
    ap_clk,
    tmp_weights_ce0,
    ADDRARDADDR,
    ram_reg_0,
    WEA);
  output [15:0]DOADO;
  input ap_clk;
  input tmp_weights_ce0;
  input [6:0]ADDRARDADDR;
  input [15:0]ram_reg_0;
  input [0:0]WEA;

  wire [6:0]ADDRARDADDR;
  wire [15:0]DOADO;
  wire [0:0]WEA;
  wire ap_clk;
  wire [15:0]ram_reg_0;
  wire tmp_weights_ce0;
  wire [15:0]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "tmp_weights_U/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "896" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    ram_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DIADI(ram_reg_0),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(DOADO),
        .DOBDO(NLW_ram_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(tmp_weights_ce0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
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
