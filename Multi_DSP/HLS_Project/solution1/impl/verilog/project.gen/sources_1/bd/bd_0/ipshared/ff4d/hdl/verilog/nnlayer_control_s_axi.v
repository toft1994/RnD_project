// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module nnlayer_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 10,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire [15:0]                   input_0,
    output wire [15:0]                   input_1,
    output wire [15:0]                   input_2,
    output wire [15:0]                   input_3,
    output wire [15:0]                   input_4,
    output wire [15:0]                   input_5,
    output wire [15:0]                   input_6,
    output wire [15:0]                   input_7,
    output wire [15:0]                   input_8,
    output wire [15:0]                   input_9,
    output wire [15:0]                   input_10,
    output wire [15:0]                   input_11,
    output wire [15:0]                   input_12,
    output wire [15:0]                   input_13,
    output wire [15:0]                   input_14,
    output wire [15:0]                   input_15,
    output wire [15:0]                   numOfInNeurons,
    output wire [15:0]                   numOfOutNeurons,
    input  wire [3:0]                    output_r_address0,
    input  wire                          output_r_ce0,
    input  wire                          output_r_we0,
    input  wire [15:0]                   output_r_d0,
    input  wire [3:0]                    bias_address0,
    input  wire                          bias_ce0,
    output wire [15:0]                   bias_q0,
    input  wire [3:0]                    weights_0_address0,
    input  wire                          weights_0_ce0,
    output wire [15:0]                   weights_0_q0,
    input  wire [3:0]                    weights_1_address0,
    input  wire                          weights_1_ce0,
    output wire [15:0]                   weights_1_q0,
    input  wire [3:0]                    weights_2_address0,
    input  wire                          weights_2_ce0,
    output wire [15:0]                   weights_2_q0,
    input  wire [3:0]                    weights_3_address0,
    input  wire                          weights_3_ce0,
    output wire [15:0]                   weights_3_q0,
    input  wire [3:0]                    weights_4_address0,
    input  wire                          weights_4_ce0,
    output wire [15:0]                   weights_4_q0,
    input  wire [3:0]                    weights_5_address0,
    input  wire                          weights_5_ce0,
    output wire [15:0]                   weights_5_q0,
    input  wire [3:0]                    weights_6_address0,
    input  wire                          weights_6_ce0,
    output wire [15:0]                   weights_6_q0,
    input  wire [3:0]                    weights_7_address0,
    input  wire                          weights_7_ce0,
    output wire [15:0]                   weights_7_q0,
    input  wire [3:0]                    weights_8_address0,
    input  wire                          weights_8_ce0,
    output wire [15:0]                   weights_8_q0,
    input  wire [3:0]                    weights_9_address0,
    input  wire                          weights_9_ce0,
    output wire [15:0]                   weights_9_q0,
    input  wire [3:0]                    weights_10_address0,
    input  wire                          weights_10_ce0,
    output wire [15:0]                   weights_10_q0,
    input  wire [3:0]                    weights_11_address0,
    input  wire                          weights_11_ce0,
    output wire [15:0]                   weights_11_q0,
    input  wire [3:0]                    weights_12_address0,
    input  wire                          weights_12_ce0,
    output wire [15:0]                   weights_12_q0,
    input  wire [3:0]                    weights_13_address0,
    input  wire                          weights_13_ce0,
    output wire [15:0]                   weights_13_q0,
    input  wire [3:0]                    weights_14_address0,
    input  wire                          weights_14_ce0,
    output wire [15:0]                   weights_14_q0,
    input  wire [3:0]                    weights_15_address0,
    input  wire                          weights_15_ce0,
    output wire [15:0]                   weights_15_q0,
    output wire [7:0]                    activation,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle,
    input  wire [0:0]                    ap_local_deadlock
);
//------------------------Address Info-------------------
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read/COR)
//         bit 7  - auto_restart (Read/Write)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0 - enable ap_done interrupt (Read/Write)
//         bit 1 - enable ap_ready interrupt (Read/Write)
//         bit 5 - enable ap_local_deadlock interrupt (Read/Write)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0 - ap_done (COR/TOW)
//         bit 1 - ap_ready (COR/TOW)
//         bit 5 - ap_local_deadlock (COR/TOW)
//         others - reserved
// 0x010 : Data signal of input_0
//         bit 15~0 - input_0[15:0] (Read/Write)
//         others   - reserved
// 0x014 : reserved
// 0x018 : Data signal of input_1
//         bit 15~0 - input_1[15:0] (Read/Write)
//         others   - reserved
// 0x01c : reserved
// 0x020 : Data signal of input_2
//         bit 15~0 - input_2[15:0] (Read/Write)
//         others   - reserved
// 0x024 : reserved
// 0x028 : Data signal of input_3
//         bit 15~0 - input_3[15:0] (Read/Write)
//         others   - reserved
// 0x02c : reserved
// 0x030 : Data signal of input_4
//         bit 15~0 - input_4[15:0] (Read/Write)
//         others   - reserved
// 0x034 : reserved
// 0x038 : Data signal of input_5
//         bit 15~0 - input_5[15:0] (Read/Write)
//         others   - reserved
// 0x03c : reserved
// 0x040 : Data signal of input_6
//         bit 15~0 - input_6[15:0] (Read/Write)
//         others   - reserved
// 0x044 : reserved
// 0x048 : Data signal of input_7
//         bit 15~0 - input_7[15:0] (Read/Write)
//         others   - reserved
// 0x04c : reserved
// 0x050 : Data signal of input_8
//         bit 15~0 - input_8[15:0] (Read/Write)
//         others   - reserved
// 0x054 : reserved
// 0x058 : Data signal of input_9
//         bit 15~0 - input_9[15:0] (Read/Write)
//         others   - reserved
// 0x05c : reserved
// 0x060 : Data signal of input_10
//         bit 15~0 - input_10[15:0] (Read/Write)
//         others   - reserved
// 0x064 : reserved
// 0x068 : Data signal of input_11
//         bit 15~0 - input_11[15:0] (Read/Write)
//         others   - reserved
// 0x06c : reserved
// 0x070 : Data signal of input_12
//         bit 15~0 - input_12[15:0] (Read/Write)
//         others   - reserved
// 0x074 : reserved
// 0x078 : Data signal of input_13
//         bit 15~0 - input_13[15:0] (Read/Write)
//         others   - reserved
// 0x07c : reserved
// 0x080 : Data signal of input_14
//         bit 15~0 - input_14[15:0] (Read/Write)
//         others   - reserved
// 0x084 : reserved
// 0x088 : Data signal of input_15
//         bit 15~0 - input_15[15:0] (Read/Write)
//         others   - reserved
// 0x08c : reserved
// 0x090 : Data signal of numOfInNeurons
//         bit 15~0 - numOfInNeurons[15:0] (Read/Write)
//         others   - reserved
// 0x094 : reserved
// 0x098 : Data signal of numOfOutNeurons
//         bit 15~0 - numOfOutNeurons[15:0] (Read/Write)
//         others   - reserved
// 0x09c : reserved
// 0x2e0 : Data signal of activation
//         bit 7~0 - activation[7:0] (Read/Write)
//         others  - reserved
// 0x2e4 : reserved
// 0x0a0 ~
// 0x0bf : Memory 'output_r' (16 * 16b)
//         Word n : bit [15: 0] - output_r[2n]
//                  bit [31:16] - output_r[2n+1]
// 0x0c0 ~
// 0x0df : Memory 'bias' (16 * 16b)
//         Word n : bit [15: 0] - bias[2n]
//                  bit [31:16] - bias[2n+1]
// 0x0e0 ~
// 0x0ff : Memory 'weights_0' (16 * 16b)
//         Word n : bit [15: 0] - weights_0[2n]
//                  bit [31:16] - weights_0[2n+1]
// 0x100 ~
// 0x11f : Memory 'weights_1' (16 * 16b)
//         Word n : bit [15: 0] - weights_1[2n]
//                  bit [31:16] - weights_1[2n+1]
// 0x120 ~
// 0x13f : Memory 'weights_2' (16 * 16b)
//         Word n : bit [15: 0] - weights_2[2n]
//                  bit [31:16] - weights_2[2n+1]
// 0x140 ~
// 0x15f : Memory 'weights_3' (16 * 16b)
//         Word n : bit [15: 0] - weights_3[2n]
//                  bit [31:16] - weights_3[2n+1]
// 0x160 ~
// 0x17f : Memory 'weights_4' (16 * 16b)
//         Word n : bit [15: 0] - weights_4[2n]
//                  bit [31:16] - weights_4[2n+1]
// 0x180 ~
// 0x19f : Memory 'weights_5' (16 * 16b)
//         Word n : bit [15: 0] - weights_5[2n]
//                  bit [31:16] - weights_5[2n+1]
// 0x1a0 ~
// 0x1bf : Memory 'weights_6' (16 * 16b)
//         Word n : bit [15: 0] - weights_6[2n]
//                  bit [31:16] - weights_6[2n+1]
// 0x1c0 ~
// 0x1df : Memory 'weights_7' (16 * 16b)
//         Word n : bit [15: 0] - weights_7[2n]
//                  bit [31:16] - weights_7[2n+1]
// 0x1e0 ~
// 0x1ff : Memory 'weights_8' (16 * 16b)
//         Word n : bit [15: 0] - weights_8[2n]
//                  bit [31:16] - weights_8[2n+1]
// 0x200 ~
// 0x21f : Memory 'weights_9' (16 * 16b)
//         Word n : bit [15: 0] - weights_9[2n]
//                  bit [31:16] - weights_9[2n+1]
// 0x220 ~
// 0x23f : Memory 'weights_10' (16 * 16b)
//         Word n : bit [15: 0] - weights_10[2n]
//                  bit [31:16] - weights_10[2n+1]
// 0x240 ~
// 0x25f : Memory 'weights_11' (16 * 16b)
//         Word n : bit [15: 0] - weights_11[2n]
//                  bit [31:16] - weights_11[2n+1]
// 0x260 ~
// 0x27f : Memory 'weights_12' (16 * 16b)
//         Word n : bit [15: 0] - weights_12[2n]
//                  bit [31:16] - weights_12[2n+1]
// 0x280 ~
// 0x29f : Memory 'weights_13' (16 * 16b)
//         Word n : bit [15: 0] - weights_13[2n]
//                  bit [31:16] - weights_13[2n+1]
// 0x2a0 ~
// 0x2bf : Memory 'weights_14' (16 * 16b)
//         Word n : bit [15: 0] - weights_14[2n]
//                  bit [31:16] - weights_14[2n+1]
// 0x2c0 ~
// 0x2df : Memory 'weights_15' (16 * 16b)
//         Word n : bit [15: 0] - weights_15[2n]
//                  bit [31:16] - weights_15[2n+1]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL                = 10'h000,
    ADDR_GIE                    = 10'h004,
    ADDR_IER                    = 10'h008,
    ADDR_ISR                    = 10'h00c,
    ADDR_INPUT_0_DATA_0         = 10'h010,
    ADDR_INPUT_0_CTRL           = 10'h014,
    ADDR_INPUT_1_DATA_0         = 10'h018,
    ADDR_INPUT_1_CTRL           = 10'h01c,
    ADDR_INPUT_2_DATA_0         = 10'h020,
    ADDR_INPUT_2_CTRL           = 10'h024,
    ADDR_INPUT_3_DATA_0         = 10'h028,
    ADDR_INPUT_3_CTRL           = 10'h02c,
    ADDR_INPUT_4_DATA_0         = 10'h030,
    ADDR_INPUT_4_CTRL           = 10'h034,
    ADDR_INPUT_5_DATA_0         = 10'h038,
    ADDR_INPUT_5_CTRL           = 10'h03c,
    ADDR_INPUT_6_DATA_0         = 10'h040,
    ADDR_INPUT_6_CTRL           = 10'h044,
    ADDR_INPUT_7_DATA_0         = 10'h048,
    ADDR_INPUT_7_CTRL           = 10'h04c,
    ADDR_INPUT_8_DATA_0         = 10'h050,
    ADDR_INPUT_8_CTRL           = 10'h054,
    ADDR_INPUT_9_DATA_0         = 10'h058,
    ADDR_INPUT_9_CTRL           = 10'h05c,
    ADDR_INPUT_10_DATA_0        = 10'h060,
    ADDR_INPUT_10_CTRL          = 10'h064,
    ADDR_INPUT_11_DATA_0        = 10'h068,
    ADDR_INPUT_11_CTRL          = 10'h06c,
    ADDR_INPUT_12_DATA_0        = 10'h070,
    ADDR_INPUT_12_CTRL          = 10'h074,
    ADDR_INPUT_13_DATA_0        = 10'h078,
    ADDR_INPUT_13_CTRL          = 10'h07c,
    ADDR_INPUT_14_DATA_0        = 10'h080,
    ADDR_INPUT_14_CTRL          = 10'h084,
    ADDR_INPUT_15_DATA_0        = 10'h088,
    ADDR_INPUT_15_CTRL          = 10'h08c,
    ADDR_NUMOFINNEURONS_DATA_0  = 10'h090,
    ADDR_NUMOFINNEURONS_CTRL    = 10'h094,
    ADDR_NUMOFOUTNEURONS_DATA_0 = 10'h098,
    ADDR_NUMOFOUTNEURONS_CTRL   = 10'h09c,
    ADDR_ACTIVATION_DATA_0      = 10'h2e0,
    ADDR_ACTIVATION_CTRL        = 10'h2e4,
    ADDR_OUTPUT_R_BASE          = 10'h0a0,
    ADDR_OUTPUT_R_HIGH          = 10'h0bf,
    ADDR_BIAS_BASE              = 10'h0c0,
    ADDR_BIAS_HIGH              = 10'h0df,
    ADDR_WEIGHTS_0_BASE         = 10'h0e0,
    ADDR_WEIGHTS_0_HIGH         = 10'h0ff,
    ADDR_WEIGHTS_1_BASE         = 10'h100,
    ADDR_WEIGHTS_1_HIGH         = 10'h11f,
    ADDR_WEIGHTS_2_BASE         = 10'h120,
    ADDR_WEIGHTS_2_HIGH         = 10'h13f,
    ADDR_WEIGHTS_3_BASE         = 10'h140,
    ADDR_WEIGHTS_3_HIGH         = 10'h15f,
    ADDR_WEIGHTS_4_BASE         = 10'h160,
    ADDR_WEIGHTS_4_HIGH         = 10'h17f,
    ADDR_WEIGHTS_5_BASE         = 10'h180,
    ADDR_WEIGHTS_5_HIGH         = 10'h19f,
    ADDR_WEIGHTS_6_BASE         = 10'h1a0,
    ADDR_WEIGHTS_6_HIGH         = 10'h1bf,
    ADDR_WEIGHTS_7_BASE         = 10'h1c0,
    ADDR_WEIGHTS_7_HIGH         = 10'h1df,
    ADDR_WEIGHTS_8_BASE         = 10'h1e0,
    ADDR_WEIGHTS_8_HIGH         = 10'h1ff,
    ADDR_WEIGHTS_9_BASE         = 10'h200,
    ADDR_WEIGHTS_9_HIGH         = 10'h21f,
    ADDR_WEIGHTS_10_BASE        = 10'h220,
    ADDR_WEIGHTS_10_HIGH        = 10'h23f,
    ADDR_WEIGHTS_11_BASE        = 10'h240,
    ADDR_WEIGHTS_11_HIGH        = 10'h25f,
    ADDR_WEIGHTS_12_BASE        = 10'h260,
    ADDR_WEIGHTS_12_HIGH        = 10'h27f,
    ADDR_WEIGHTS_13_BASE        = 10'h280,
    ADDR_WEIGHTS_13_HIGH        = 10'h29f,
    ADDR_WEIGHTS_14_BASE        = 10'h2a0,
    ADDR_WEIGHTS_14_HIGH        = 10'h2bf,
    ADDR_WEIGHTS_15_BASE        = 10'h2c0,
    ADDR_WEIGHTS_15_HIGH        = 10'h2df,
    WRIDLE                      = 2'd0,
    WRDATA                      = 2'd1,
    WRRESP                      = 2'd2,
    WRRESET                     = 2'd3,
    RDIDLE                      = 2'd0,
    RDDATA                      = 2'd1,
    RDRESET                     = 2'd2,
    ADDR_BITS                = 10;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle;
    reg                           int_ap_ready = 1'b0;
    wire                          task_ap_ready;
    reg                           int_ap_done = 1'b0;
    wire                          task_ap_done;
    reg                           int_task_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           auto_restart_status = 1'b0;
    wire                          auto_restart_done;
    reg                           int_gie = 1'b0;
    reg  [5:0]                    int_ier = 6'b0;
    reg  [5:0]                    int_isr = 6'b0;
    reg  [15:0]                   int_input_0 = 'b0;
    reg  [15:0]                   int_input_1 = 'b0;
    reg  [15:0]                   int_input_2 = 'b0;
    reg  [15:0]                   int_input_3 = 'b0;
    reg  [15:0]                   int_input_4 = 'b0;
    reg  [15:0]                   int_input_5 = 'b0;
    reg  [15:0]                   int_input_6 = 'b0;
    reg  [15:0]                   int_input_7 = 'b0;
    reg  [15:0]                   int_input_8 = 'b0;
    reg  [15:0]                   int_input_9 = 'b0;
    reg  [15:0]                   int_input_10 = 'b0;
    reg  [15:0]                   int_input_11 = 'b0;
    reg  [15:0]                   int_input_12 = 'b0;
    reg  [15:0]                   int_input_13 = 'b0;
    reg  [15:0]                   int_input_14 = 'b0;
    reg  [15:0]                   int_input_15 = 'b0;
    reg  [15:0]                   int_numOfInNeurons = 'b0;
    reg  [15:0]                   int_numOfOutNeurons = 'b0;
    reg  [7:0]                    int_activation = 'b0;
    // memory signals
    wire [2:0]                    int_output_r_address0;
    wire                          int_output_r_ce0;
    wire [3:0]                    int_output_r_be0;
    wire [31:0]                   int_output_r_d0;
    wire [2:0]                    int_output_r_address1;
    wire                          int_output_r_ce1;
    wire [31:0]                   int_output_r_q1;
    reg                           int_output_r_read;
    reg                           int_output_r_write;
    reg  [0:0]                    int_output_r_shift0;
    wire [2:0]                    int_bias_address0;
    wire                          int_bias_ce0;
    wire [31:0]                   int_bias_q0;
    wire [2:0]                    int_bias_address1;
    wire                          int_bias_ce1;
    wire                          int_bias_we1;
    wire [3:0]                    int_bias_be1;
    wire [31:0]                   int_bias_d1;
    wire [31:0]                   int_bias_q1;
    reg                           int_bias_read;
    reg                           int_bias_write;
    reg  [0:0]                    int_bias_shift0;
    wire [2:0]                    int_weights_0_address0;
    wire                          int_weights_0_ce0;
    wire [31:0]                   int_weights_0_q0;
    wire [2:0]                    int_weights_0_address1;
    wire                          int_weights_0_ce1;
    wire                          int_weights_0_we1;
    wire [3:0]                    int_weights_0_be1;
    wire [31:0]                   int_weights_0_d1;
    wire [31:0]                   int_weights_0_q1;
    reg                           int_weights_0_read;
    reg                           int_weights_0_write;
    reg  [0:0]                    int_weights_0_shift0;
    wire [2:0]                    int_weights_1_address0;
    wire                          int_weights_1_ce0;
    wire [31:0]                   int_weights_1_q0;
    wire [2:0]                    int_weights_1_address1;
    wire                          int_weights_1_ce1;
    wire                          int_weights_1_we1;
    wire [3:0]                    int_weights_1_be1;
    wire [31:0]                   int_weights_1_d1;
    wire [31:0]                   int_weights_1_q1;
    reg                           int_weights_1_read;
    reg                           int_weights_1_write;
    reg  [0:0]                    int_weights_1_shift0;
    wire [2:0]                    int_weights_2_address0;
    wire                          int_weights_2_ce0;
    wire [31:0]                   int_weights_2_q0;
    wire [2:0]                    int_weights_2_address1;
    wire                          int_weights_2_ce1;
    wire                          int_weights_2_we1;
    wire [3:0]                    int_weights_2_be1;
    wire [31:0]                   int_weights_2_d1;
    wire [31:0]                   int_weights_2_q1;
    reg                           int_weights_2_read;
    reg                           int_weights_2_write;
    reg  [0:0]                    int_weights_2_shift0;
    wire [2:0]                    int_weights_3_address0;
    wire                          int_weights_3_ce0;
    wire [31:0]                   int_weights_3_q0;
    wire [2:0]                    int_weights_3_address1;
    wire                          int_weights_3_ce1;
    wire                          int_weights_3_we1;
    wire [3:0]                    int_weights_3_be1;
    wire [31:0]                   int_weights_3_d1;
    wire [31:0]                   int_weights_3_q1;
    reg                           int_weights_3_read;
    reg                           int_weights_3_write;
    reg  [0:0]                    int_weights_3_shift0;
    wire [2:0]                    int_weights_4_address0;
    wire                          int_weights_4_ce0;
    wire [31:0]                   int_weights_4_q0;
    wire [2:0]                    int_weights_4_address1;
    wire                          int_weights_4_ce1;
    wire                          int_weights_4_we1;
    wire [3:0]                    int_weights_4_be1;
    wire [31:0]                   int_weights_4_d1;
    wire [31:0]                   int_weights_4_q1;
    reg                           int_weights_4_read;
    reg                           int_weights_4_write;
    reg  [0:0]                    int_weights_4_shift0;
    wire [2:0]                    int_weights_5_address0;
    wire                          int_weights_5_ce0;
    wire [31:0]                   int_weights_5_q0;
    wire [2:0]                    int_weights_5_address1;
    wire                          int_weights_5_ce1;
    wire                          int_weights_5_we1;
    wire [3:0]                    int_weights_5_be1;
    wire [31:0]                   int_weights_5_d1;
    wire [31:0]                   int_weights_5_q1;
    reg                           int_weights_5_read;
    reg                           int_weights_5_write;
    reg  [0:0]                    int_weights_5_shift0;
    wire [2:0]                    int_weights_6_address0;
    wire                          int_weights_6_ce0;
    wire [31:0]                   int_weights_6_q0;
    wire [2:0]                    int_weights_6_address1;
    wire                          int_weights_6_ce1;
    wire                          int_weights_6_we1;
    wire [3:0]                    int_weights_6_be1;
    wire [31:0]                   int_weights_6_d1;
    wire [31:0]                   int_weights_6_q1;
    reg                           int_weights_6_read;
    reg                           int_weights_6_write;
    reg  [0:0]                    int_weights_6_shift0;
    wire [2:0]                    int_weights_7_address0;
    wire                          int_weights_7_ce0;
    wire [31:0]                   int_weights_7_q0;
    wire [2:0]                    int_weights_7_address1;
    wire                          int_weights_7_ce1;
    wire                          int_weights_7_we1;
    wire [3:0]                    int_weights_7_be1;
    wire [31:0]                   int_weights_7_d1;
    wire [31:0]                   int_weights_7_q1;
    reg                           int_weights_7_read;
    reg                           int_weights_7_write;
    reg  [0:0]                    int_weights_7_shift0;
    wire [2:0]                    int_weights_8_address0;
    wire                          int_weights_8_ce0;
    wire [31:0]                   int_weights_8_q0;
    wire [2:0]                    int_weights_8_address1;
    wire                          int_weights_8_ce1;
    wire                          int_weights_8_we1;
    wire [3:0]                    int_weights_8_be1;
    wire [31:0]                   int_weights_8_d1;
    wire [31:0]                   int_weights_8_q1;
    reg                           int_weights_8_read;
    reg                           int_weights_8_write;
    reg  [0:0]                    int_weights_8_shift0;
    wire [2:0]                    int_weights_9_address0;
    wire                          int_weights_9_ce0;
    wire [31:0]                   int_weights_9_q0;
    wire [2:0]                    int_weights_9_address1;
    wire                          int_weights_9_ce1;
    wire                          int_weights_9_we1;
    wire [3:0]                    int_weights_9_be1;
    wire [31:0]                   int_weights_9_d1;
    wire [31:0]                   int_weights_9_q1;
    reg                           int_weights_9_read;
    reg                           int_weights_9_write;
    reg  [0:0]                    int_weights_9_shift0;
    wire [2:0]                    int_weights_10_address0;
    wire                          int_weights_10_ce0;
    wire [31:0]                   int_weights_10_q0;
    wire [2:0]                    int_weights_10_address1;
    wire                          int_weights_10_ce1;
    wire                          int_weights_10_we1;
    wire [3:0]                    int_weights_10_be1;
    wire [31:0]                   int_weights_10_d1;
    wire [31:0]                   int_weights_10_q1;
    reg                           int_weights_10_read;
    reg                           int_weights_10_write;
    reg  [0:0]                    int_weights_10_shift0;
    wire [2:0]                    int_weights_11_address0;
    wire                          int_weights_11_ce0;
    wire [31:0]                   int_weights_11_q0;
    wire [2:0]                    int_weights_11_address1;
    wire                          int_weights_11_ce1;
    wire                          int_weights_11_we1;
    wire [3:0]                    int_weights_11_be1;
    wire [31:0]                   int_weights_11_d1;
    wire [31:0]                   int_weights_11_q1;
    reg                           int_weights_11_read;
    reg                           int_weights_11_write;
    reg  [0:0]                    int_weights_11_shift0;
    wire [2:0]                    int_weights_12_address0;
    wire                          int_weights_12_ce0;
    wire [31:0]                   int_weights_12_q0;
    wire [2:0]                    int_weights_12_address1;
    wire                          int_weights_12_ce1;
    wire                          int_weights_12_we1;
    wire [3:0]                    int_weights_12_be1;
    wire [31:0]                   int_weights_12_d1;
    wire [31:0]                   int_weights_12_q1;
    reg                           int_weights_12_read;
    reg                           int_weights_12_write;
    reg  [0:0]                    int_weights_12_shift0;
    wire [2:0]                    int_weights_13_address0;
    wire                          int_weights_13_ce0;
    wire [31:0]                   int_weights_13_q0;
    wire [2:0]                    int_weights_13_address1;
    wire                          int_weights_13_ce1;
    wire                          int_weights_13_we1;
    wire [3:0]                    int_weights_13_be1;
    wire [31:0]                   int_weights_13_d1;
    wire [31:0]                   int_weights_13_q1;
    reg                           int_weights_13_read;
    reg                           int_weights_13_write;
    reg  [0:0]                    int_weights_13_shift0;
    wire [2:0]                    int_weights_14_address0;
    wire                          int_weights_14_ce0;
    wire [31:0]                   int_weights_14_q0;
    wire [2:0]                    int_weights_14_address1;
    wire                          int_weights_14_ce1;
    wire                          int_weights_14_we1;
    wire [3:0]                    int_weights_14_be1;
    wire [31:0]                   int_weights_14_d1;
    wire [31:0]                   int_weights_14_q1;
    reg                           int_weights_14_read;
    reg                           int_weights_14_write;
    reg  [0:0]                    int_weights_14_shift0;
    wire [2:0]                    int_weights_15_address0;
    wire                          int_weights_15_ce0;
    wire [31:0]                   int_weights_15_q0;
    wire [2:0]                    int_weights_15_address1;
    wire                          int_weights_15_ce1;
    wire                          int_weights_15_we1;
    wire [3:0]                    int_weights_15_be1;
    wire [31:0]                   int_weights_15_d1;
    wire [31:0]                   int_weights_15_q1;
    reg                           int_weights_15_read;
    reg                           int_weights_15_write;
    reg  [0:0]                    int_weights_15_shift0;

//------------------------Instantiation------------------
// int_output_r
nnlayer_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "S2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 8 )
) int_output_r (
    .clk0      ( ACLK ),
    .address0  ( int_output_r_address0 ),
    .ce0       ( int_output_r_ce0 ),
    .we0       ( int_output_r_be0 ),
    .d0        ( int_output_r_d0 ),
    .q0        (  ),
    .clk1      ( ACLK ),
    .address1  ( int_output_r_address1 ),
    .ce1       ( int_output_r_ce1 ),
    .we1       ( 'b0 ),
    .d1        ( 'b0 ),
    .q1        ( int_output_r_q1 )
);
// int_bias
nnlayer_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 8 )
) int_bias (
    .clk0      ( ACLK ),
    .address0  ( int_bias_address0 ),
    .ce0       ( int_bias_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_bias_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_bias_address1 ),
    .ce1       ( int_bias_ce1 ),
    .we1       ( int_bias_be1 ),
    .d1        ( int_bias_d1 ),
    .q1        ( int_bias_q1 )
);
// int_weights_0
nnlayer_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 8 )
) int_weights_0 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_0_address0 ),
    .ce0       ( int_weights_0_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_0_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_0_address1 ),
    .ce1       ( int_weights_0_ce1 ),
    .we1       ( int_weights_0_be1 ),
    .d1        ( int_weights_0_d1 ),
    .q1        ( int_weights_0_q1 )
);
// int_weights_1
nnlayer_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 8 )
) int_weights_1 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_1_address0 ),
    .ce0       ( int_weights_1_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_1_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_1_address1 ),
    .ce1       ( int_weights_1_ce1 ),
    .we1       ( int_weights_1_be1 ),
    .d1        ( int_weights_1_d1 ),
    .q1        ( int_weights_1_q1 )
);
// int_weights_2
nnlayer_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 8 )
) int_weights_2 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_2_address0 ),
    .ce0       ( int_weights_2_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_2_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_2_address1 ),
    .ce1       ( int_weights_2_ce1 ),
    .we1       ( int_weights_2_be1 ),
    .d1        ( int_weights_2_d1 ),
    .q1        ( int_weights_2_q1 )
);
// int_weights_3
nnlayer_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 8 )
) int_weights_3 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_3_address0 ),
    .ce0       ( int_weights_3_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_3_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_3_address1 ),
    .ce1       ( int_weights_3_ce1 ),
    .we1       ( int_weights_3_be1 ),
    .d1        ( int_weights_3_d1 ),
    .q1        ( int_weights_3_q1 )
);
// int_weights_4
nnlayer_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 8 )
) int_weights_4 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_4_address0 ),
    .ce0       ( int_weights_4_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_4_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_4_address1 ),
    .ce1       ( int_weights_4_ce1 ),
    .we1       ( int_weights_4_be1 ),
    .d1        ( int_weights_4_d1 ),
    .q1        ( int_weights_4_q1 )
);
// int_weights_5
nnlayer_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 8 )
) int_weights_5 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_5_address0 ),
    .ce0       ( int_weights_5_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_5_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_5_address1 ),
    .ce1       ( int_weights_5_ce1 ),
    .we1       ( int_weights_5_be1 ),
    .d1        ( int_weights_5_d1 ),
    .q1        ( int_weights_5_q1 )
);
// int_weights_6
nnlayer_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 8 )
) int_weights_6 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_6_address0 ),
    .ce0       ( int_weights_6_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_6_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_6_address1 ),
    .ce1       ( int_weights_6_ce1 ),
    .we1       ( int_weights_6_be1 ),
    .d1        ( int_weights_6_d1 ),
    .q1        ( int_weights_6_q1 )
);
// int_weights_7
nnlayer_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 8 )
) int_weights_7 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_7_address0 ),
    .ce0       ( int_weights_7_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_7_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_7_address1 ),
    .ce1       ( int_weights_7_ce1 ),
    .we1       ( int_weights_7_be1 ),
    .d1        ( int_weights_7_d1 ),
    .q1        ( int_weights_7_q1 )
);
// int_weights_8
nnlayer_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 8 )
) int_weights_8 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_8_address0 ),
    .ce0       ( int_weights_8_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_8_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_8_address1 ),
    .ce1       ( int_weights_8_ce1 ),
    .we1       ( int_weights_8_be1 ),
    .d1        ( int_weights_8_d1 ),
    .q1        ( int_weights_8_q1 )
);
// int_weights_9
nnlayer_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 8 )
) int_weights_9 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_9_address0 ),
    .ce0       ( int_weights_9_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_9_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_9_address1 ),
    .ce1       ( int_weights_9_ce1 ),
    .we1       ( int_weights_9_be1 ),
    .d1        ( int_weights_9_d1 ),
    .q1        ( int_weights_9_q1 )
);
// int_weights_10
nnlayer_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 8 )
) int_weights_10 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_10_address0 ),
    .ce0       ( int_weights_10_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_10_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_10_address1 ),
    .ce1       ( int_weights_10_ce1 ),
    .we1       ( int_weights_10_be1 ),
    .d1        ( int_weights_10_d1 ),
    .q1        ( int_weights_10_q1 )
);
// int_weights_11
nnlayer_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 8 )
) int_weights_11 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_11_address0 ),
    .ce0       ( int_weights_11_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_11_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_11_address1 ),
    .ce1       ( int_weights_11_ce1 ),
    .we1       ( int_weights_11_be1 ),
    .d1        ( int_weights_11_d1 ),
    .q1        ( int_weights_11_q1 )
);
// int_weights_12
nnlayer_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 8 )
) int_weights_12 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_12_address0 ),
    .ce0       ( int_weights_12_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_12_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_12_address1 ),
    .ce1       ( int_weights_12_ce1 ),
    .we1       ( int_weights_12_be1 ),
    .d1        ( int_weights_12_d1 ),
    .q1        ( int_weights_12_q1 )
);
// int_weights_13
nnlayer_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 8 )
) int_weights_13 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_13_address0 ),
    .ce0       ( int_weights_13_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_13_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_13_address1 ),
    .ce1       ( int_weights_13_ce1 ),
    .we1       ( int_weights_13_be1 ),
    .d1        ( int_weights_13_d1 ),
    .q1        ( int_weights_13_q1 )
);
// int_weights_14
nnlayer_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 8 )
) int_weights_14 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_14_address0 ),
    .ce0       ( int_weights_14_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_14_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_14_address1 ),
    .ce1       ( int_weights_14_ce1 ),
    .we1       ( int_weights_14_be1 ),
    .d1        ( int_weights_14_d1 ),
    .q1        ( int_weights_14_q1 )
);
// int_weights_15
nnlayer_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 8 )
) int_weights_15 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_15_address0 ),
    .ce0       ( int_weights_15_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_15_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_15_address1 ),
    .ce1       ( int_weights_15_ce1 ),
    .we1       ( int_weights_15_be1 ),
    .d1        ( int_weights_15_d1 ),
    .q1        ( int_weights_15_q1 )
);


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA) && (!ar_hs);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (w_hs)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA) & !int_output_r_read & !int_bias_read & !int_weights_0_read & !int_weights_1_read & !int_weights_2_read & !int_weights_3_read & !int_weights_4_read & !int_weights_5_read & !int_weights_6_read & !int_weights_7_read & !int_weights_8_read & !int_weights_9_read & !int_weights_10_read & !int_weights_11_read & !int_weights_12_read & !int_weights_13_read & !int_weights_14_read & !int_weights_15_read;
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_task_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_INPUT_0_DATA_0: begin
                    rdata <= int_input_0[15:0];
                end
                ADDR_INPUT_1_DATA_0: begin
                    rdata <= int_input_1[15:0];
                end
                ADDR_INPUT_2_DATA_0: begin
                    rdata <= int_input_2[15:0];
                end
                ADDR_INPUT_3_DATA_0: begin
                    rdata <= int_input_3[15:0];
                end
                ADDR_INPUT_4_DATA_0: begin
                    rdata <= int_input_4[15:0];
                end
                ADDR_INPUT_5_DATA_0: begin
                    rdata <= int_input_5[15:0];
                end
                ADDR_INPUT_6_DATA_0: begin
                    rdata <= int_input_6[15:0];
                end
                ADDR_INPUT_7_DATA_0: begin
                    rdata <= int_input_7[15:0];
                end
                ADDR_INPUT_8_DATA_0: begin
                    rdata <= int_input_8[15:0];
                end
                ADDR_INPUT_9_DATA_0: begin
                    rdata <= int_input_9[15:0];
                end
                ADDR_INPUT_10_DATA_0: begin
                    rdata <= int_input_10[15:0];
                end
                ADDR_INPUT_11_DATA_0: begin
                    rdata <= int_input_11[15:0];
                end
                ADDR_INPUT_12_DATA_0: begin
                    rdata <= int_input_12[15:0];
                end
                ADDR_INPUT_13_DATA_0: begin
                    rdata <= int_input_13[15:0];
                end
                ADDR_INPUT_14_DATA_0: begin
                    rdata <= int_input_14[15:0];
                end
                ADDR_INPUT_15_DATA_0: begin
                    rdata <= int_input_15[15:0];
                end
                ADDR_NUMOFINNEURONS_DATA_0: begin
                    rdata <= int_numOfInNeurons[15:0];
                end
                ADDR_NUMOFOUTNEURONS_DATA_0: begin
                    rdata <= int_numOfOutNeurons[15:0];
                end
                ADDR_ACTIVATION_DATA_0: begin
                    rdata <= int_activation[7:0];
                end
            endcase
        end
        else if (int_output_r_read) begin
            rdata <= int_output_r_q1;
        end
        else if (int_bias_read) begin
            rdata <= int_bias_q1;
        end
        else if (int_weights_0_read) begin
            rdata <= int_weights_0_q1;
        end
        else if (int_weights_1_read) begin
            rdata <= int_weights_1_q1;
        end
        else if (int_weights_2_read) begin
            rdata <= int_weights_2_q1;
        end
        else if (int_weights_3_read) begin
            rdata <= int_weights_3_q1;
        end
        else if (int_weights_4_read) begin
            rdata <= int_weights_4_q1;
        end
        else if (int_weights_5_read) begin
            rdata <= int_weights_5_q1;
        end
        else if (int_weights_6_read) begin
            rdata <= int_weights_6_q1;
        end
        else if (int_weights_7_read) begin
            rdata <= int_weights_7_q1;
        end
        else if (int_weights_8_read) begin
            rdata <= int_weights_8_q1;
        end
        else if (int_weights_9_read) begin
            rdata <= int_weights_9_q1;
        end
        else if (int_weights_10_read) begin
            rdata <= int_weights_10_q1;
        end
        else if (int_weights_11_read) begin
            rdata <= int_weights_11_q1;
        end
        else if (int_weights_12_read) begin
            rdata <= int_weights_12_q1;
        end
        else if (int_weights_13_read) begin
            rdata <= int_weights_13_q1;
        end
        else if (int_weights_14_read) begin
            rdata <= int_weights_14_q1;
        end
        else if (int_weights_15_read) begin
            rdata <= int_weights_15_q1;
        end
    end
end


//------------------------Register logic-----------------
assign interrupt         = int_gie & (|int_isr);
assign ap_start          = int_ap_start;
assign task_ap_done      = (ap_done && !auto_restart_status) || auto_restart_done;
assign task_ap_ready     = ap_ready && !int_auto_restart;
assign auto_restart_done = auto_restart_status && (ap_idle && !int_ap_idle);
assign input_0           = int_input_0;
assign input_1           = int_input_1;
assign input_2           = int_input_2;
assign input_3           = int_input_3;
assign input_4           = int_input_4;
assign input_5           = int_input_5;
assign input_6           = int_input_6;
assign input_7           = int_input_7;
assign input_8           = int_input_8;
assign input_9           = int_input_9;
assign input_10          = int_input_10;
assign input_11          = int_input_11;
assign input_12          = int_input_12;
assign input_13          = int_input_13;
assign input_14          = int_input_14;
assign input_15          = int_input_15;
assign numOfInNeurons    = int_numOfInNeurons;
assign numOfOutNeurons   = int_numOfOutNeurons;
assign activation        = int_activation;
// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_done <= ap_done;
    end
end

// int_task_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_task_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_done)
            int_task_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_task_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_ready)
            int_ap_ready <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_ready <= 1'b0;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// auto_restart_status
always @(posedge ACLK) begin
    if (ARESET)
        auto_restart_status <= 1'b0;
    else if (ACLK_EN) begin
        if (int_auto_restart)
            auto_restart_status <= 1'b1;
        else if (ap_idle)
            auto_restart_status <= 1'b0;
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[5:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_isr[5]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[5] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[5] & ap_local_deadlock)
            int_isr[5] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[5] <= int_isr[5] ^ WDATA[5]; // toggle on write
    end
end

// int_input_0[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_0[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_0_DATA_0)
            int_input_0[15:0] <= (WDATA[31:0] & wmask) | (int_input_0[15:0] & ~wmask);
    end
end

// int_input_1[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_1[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_1_DATA_0)
            int_input_1[15:0] <= (WDATA[31:0] & wmask) | (int_input_1[15:0] & ~wmask);
    end
end

// int_input_2[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_2[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_2_DATA_0)
            int_input_2[15:0] <= (WDATA[31:0] & wmask) | (int_input_2[15:0] & ~wmask);
    end
end

// int_input_3[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_3[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_3_DATA_0)
            int_input_3[15:0] <= (WDATA[31:0] & wmask) | (int_input_3[15:0] & ~wmask);
    end
end

// int_input_4[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_4[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_4_DATA_0)
            int_input_4[15:0] <= (WDATA[31:0] & wmask) | (int_input_4[15:0] & ~wmask);
    end
end

// int_input_5[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_5[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_5_DATA_0)
            int_input_5[15:0] <= (WDATA[31:0] & wmask) | (int_input_5[15:0] & ~wmask);
    end
end

// int_input_6[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_6[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_6_DATA_0)
            int_input_6[15:0] <= (WDATA[31:0] & wmask) | (int_input_6[15:0] & ~wmask);
    end
end

// int_input_7[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_7[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_7_DATA_0)
            int_input_7[15:0] <= (WDATA[31:0] & wmask) | (int_input_7[15:0] & ~wmask);
    end
end

// int_input_8[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_8[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_8_DATA_0)
            int_input_8[15:0] <= (WDATA[31:0] & wmask) | (int_input_8[15:0] & ~wmask);
    end
end

// int_input_9[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_9[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_9_DATA_0)
            int_input_9[15:0] <= (WDATA[31:0] & wmask) | (int_input_9[15:0] & ~wmask);
    end
end

// int_input_10[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_10[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_10_DATA_0)
            int_input_10[15:0] <= (WDATA[31:0] & wmask) | (int_input_10[15:0] & ~wmask);
    end
end

// int_input_11[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_11[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_11_DATA_0)
            int_input_11[15:0] <= (WDATA[31:0] & wmask) | (int_input_11[15:0] & ~wmask);
    end
end

// int_input_12[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_12[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_12_DATA_0)
            int_input_12[15:0] <= (WDATA[31:0] & wmask) | (int_input_12[15:0] & ~wmask);
    end
end

// int_input_13[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_13[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_13_DATA_0)
            int_input_13[15:0] <= (WDATA[31:0] & wmask) | (int_input_13[15:0] & ~wmask);
    end
end

// int_input_14[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_14[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_14_DATA_0)
            int_input_14[15:0] <= (WDATA[31:0] & wmask) | (int_input_14[15:0] & ~wmask);
    end
end

// int_input_15[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_15[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_15_DATA_0)
            int_input_15[15:0] <= (WDATA[31:0] & wmask) | (int_input_15[15:0] & ~wmask);
    end
end

// int_numOfInNeurons[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_numOfInNeurons[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_NUMOFINNEURONS_DATA_0)
            int_numOfInNeurons[15:0] <= (WDATA[31:0] & wmask) | (int_numOfInNeurons[15:0] & ~wmask);
    end
end

// int_numOfOutNeurons[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_numOfOutNeurons[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_NUMOFOUTNEURONS_DATA_0)
            int_numOfOutNeurons[15:0] <= (WDATA[31:0] & wmask) | (int_numOfOutNeurons[15:0] & ~wmask);
    end
end

// int_activation[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_activation[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_ACTIVATION_DATA_0)
            int_activation[7:0] <= (WDATA[31:0] & wmask) | (int_activation[7:0] & ~wmask);
    end
end


//------------------------Memory logic-------------------
// output_r
assign int_output_r_address0   = output_r_address0 >> 1;
assign int_output_r_ce0        = output_r_ce0;
assign int_output_r_be0        = {2{output_r_we0}} << (output_r_address0[0] * 2);
assign int_output_r_d0         = {2{output_r_d0}};
assign int_output_r_address1   = ar_hs? raddr[4:2] : waddr[4:2];
assign int_output_r_ce1        = ar_hs | (int_output_r_write & WVALID);
// bias
assign int_bias_address0       = bias_address0 >> 1;
assign int_bias_ce0            = bias_ce0;
assign bias_q0                 = int_bias_q0 >> (int_bias_shift0 * 16);
assign int_bias_address1       = ar_hs? raddr[4:2] : waddr[4:2];
assign int_bias_ce1            = ar_hs | (int_bias_write & WVALID);
assign int_bias_we1            = int_bias_write & w_hs;
assign int_bias_be1            = int_bias_we1 ? WSTRB : 'b0;
assign int_bias_d1             = WDATA;
// weights_0
assign int_weights_0_address0  = weights_0_address0 >> 1;
assign int_weights_0_ce0       = weights_0_ce0;
assign weights_0_q0            = int_weights_0_q0 >> (int_weights_0_shift0 * 16);
assign int_weights_0_address1  = ar_hs? raddr[4:2] : waddr[4:2];
assign int_weights_0_ce1       = ar_hs | (int_weights_0_write & WVALID);
assign int_weights_0_we1       = int_weights_0_write & w_hs;
assign int_weights_0_be1       = int_weights_0_we1 ? WSTRB : 'b0;
assign int_weights_0_d1        = WDATA;
// weights_1
assign int_weights_1_address0  = weights_1_address0 >> 1;
assign int_weights_1_ce0       = weights_1_ce0;
assign weights_1_q0            = int_weights_1_q0 >> (int_weights_1_shift0 * 16);
assign int_weights_1_address1  = ar_hs? raddr[4:2] : waddr[4:2];
assign int_weights_1_ce1       = ar_hs | (int_weights_1_write & WVALID);
assign int_weights_1_we1       = int_weights_1_write & w_hs;
assign int_weights_1_be1       = int_weights_1_we1 ? WSTRB : 'b0;
assign int_weights_1_d1        = WDATA;
// weights_2
assign int_weights_2_address0  = weights_2_address0 >> 1;
assign int_weights_2_ce0       = weights_2_ce0;
assign weights_2_q0            = int_weights_2_q0 >> (int_weights_2_shift0 * 16);
assign int_weights_2_address1  = ar_hs? raddr[4:2] : waddr[4:2];
assign int_weights_2_ce1       = ar_hs | (int_weights_2_write & WVALID);
assign int_weights_2_we1       = int_weights_2_write & w_hs;
assign int_weights_2_be1       = int_weights_2_we1 ? WSTRB : 'b0;
assign int_weights_2_d1        = WDATA;
// weights_3
assign int_weights_3_address0  = weights_3_address0 >> 1;
assign int_weights_3_ce0       = weights_3_ce0;
assign weights_3_q0            = int_weights_3_q0 >> (int_weights_3_shift0 * 16);
assign int_weights_3_address1  = ar_hs? raddr[4:2] : waddr[4:2];
assign int_weights_3_ce1       = ar_hs | (int_weights_3_write & WVALID);
assign int_weights_3_we1       = int_weights_3_write & w_hs;
assign int_weights_3_be1       = int_weights_3_we1 ? WSTRB : 'b0;
assign int_weights_3_d1        = WDATA;
// weights_4
assign int_weights_4_address0  = weights_4_address0 >> 1;
assign int_weights_4_ce0       = weights_4_ce0;
assign weights_4_q0            = int_weights_4_q0 >> (int_weights_4_shift0 * 16);
assign int_weights_4_address1  = ar_hs? raddr[4:2] : waddr[4:2];
assign int_weights_4_ce1       = ar_hs | (int_weights_4_write & WVALID);
assign int_weights_4_we1       = int_weights_4_write & w_hs;
assign int_weights_4_be1       = int_weights_4_we1 ? WSTRB : 'b0;
assign int_weights_4_d1        = WDATA;
// weights_5
assign int_weights_5_address0  = weights_5_address0 >> 1;
assign int_weights_5_ce0       = weights_5_ce0;
assign weights_5_q0            = int_weights_5_q0 >> (int_weights_5_shift0 * 16);
assign int_weights_5_address1  = ar_hs? raddr[4:2] : waddr[4:2];
assign int_weights_5_ce1       = ar_hs | (int_weights_5_write & WVALID);
assign int_weights_5_we1       = int_weights_5_write & w_hs;
assign int_weights_5_be1       = int_weights_5_we1 ? WSTRB : 'b0;
assign int_weights_5_d1        = WDATA;
// weights_6
assign int_weights_6_address0  = weights_6_address0 >> 1;
assign int_weights_6_ce0       = weights_6_ce0;
assign weights_6_q0            = int_weights_6_q0 >> (int_weights_6_shift0 * 16);
assign int_weights_6_address1  = ar_hs? raddr[4:2] : waddr[4:2];
assign int_weights_6_ce1       = ar_hs | (int_weights_6_write & WVALID);
assign int_weights_6_we1       = int_weights_6_write & w_hs;
assign int_weights_6_be1       = int_weights_6_we1 ? WSTRB : 'b0;
assign int_weights_6_d1        = WDATA;
// weights_7
assign int_weights_7_address0  = weights_7_address0 >> 1;
assign int_weights_7_ce0       = weights_7_ce0;
assign weights_7_q0            = int_weights_7_q0 >> (int_weights_7_shift0 * 16);
assign int_weights_7_address1  = ar_hs? raddr[4:2] : waddr[4:2];
assign int_weights_7_ce1       = ar_hs | (int_weights_7_write & WVALID);
assign int_weights_7_we1       = int_weights_7_write & w_hs;
assign int_weights_7_be1       = int_weights_7_we1 ? WSTRB : 'b0;
assign int_weights_7_d1        = WDATA;
// weights_8
assign int_weights_8_address0  = weights_8_address0 >> 1;
assign int_weights_8_ce0       = weights_8_ce0;
assign weights_8_q0            = int_weights_8_q0 >> (int_weights_8_shift0 * 16);
assign int_weights_8_address1  = ar_hs? raddr[4:2] : waddr[4:2];
assign int_weights_8_ce1       = ar_hs | (int_weights_8_write & WVALID);
assign int_weights_8_we1       = int_weights_8_write & w_hs;
assign int_weights_8_be1       = int_weights_8_we1 ? WSTRB : 'b0;
assign int_weights_8_d1        = WDATA;
// weights_9
assign int_weights_9_address0  = weights_9_address0 >> 1;
assign int_weights_9_ce0       = weights_9_ce0;
assign weights_9_q0            = int_weights_9_q0 >> (int_weights_9_shift0 * 16);
assign int_weights_9_address1  = ar_hs? raddr[4:2] : waddr[4:2];
assign int_weights_9_ce1       = ar_hs | (int_weights_9_write & WVALID);
assign int_weights_9_we1       = int_weights_9_write & w_hs;
assign int_weights_9_be1       = int_weights_9_we1 ? WSTRB : 'b0;
assign int_weights_9_d1        = WDATA;
// weights_10
assign int_weights_10_address0 = weights_10_address0 >> 1;
assign int_weights_10_ce0      = weights_10_ce0;
assign weights_10_q0           = int_weights_10_q0 >> (int_weights_10_shift0 * 16);
assign int_weights_10_address1 = ar_hs? raddr[4:2] : waddr[4:2];
assign int_weights_10_ce1      = ar_hs | (int_weights_10_write & WVALID);
assign int_weights_10_we1      = int_weights_10_write & w_hs;
assign int_weights_10_be1      = int_weights_10_we1 ? WSTRB : 'b0;
assign int_weights_10_d1       = WDATA;
// weights_11
assign int_weights_11_address0 = weights_11_address0 >> 1;
assign int_weights_11_ce0      = weights_11_ce0;
assign weights_11_q0           = int_weights_11_q0 >> (int_weights_11_shift0 * 16);
assign int_weights_11_address1 = ar_hs? raddr[4:2] : waddr[4:2];
assign int_weights_11_ce1      = ar_hs | (int_weights_11_write & WVALID);
assign int_weights_11_we1      = int_weights_11_write & w_hs;
assign int_weights_11_be1      = int_weights_11_we1 ? WSTRB : 'b0;
assign int_weights_11_d1       = WDATA;
// weights_12
assign int_weights_12_address0 = weights_12_address0 >> 1;
assign int_weights_12_ce0      = weights_12_ce0;
assign weights_12_q0           = int_weights_12_q0 >> (int_weights_12_shift0 * 16);
assign int_weights_12_address1 = ar_hs? raddr[4:2] : waddr[4:2];
assign int_weights_12_ce1      = ar_hs | (int_weights_12_write & WVALID);
assign int_weights_12_we1      = int_weights_12_write & w_hs;
assign int_weights_12_be1      = int_weights_12_we1 ? WSTRB : 'b0;
assign int_weights_12_d1       = WDATA;
// weights_13
assign int_weights_13_address0 = weights_13_address0 >> 1;
assign int_weights_13_ce0      = weights_13_ce0;
assign weights_13_q0           = int_weights_13_q0 >> (int_weights_13_shift0 * 16);
assign int_weights_13_address1 = ar_hs? raddr[4:2] : waddr[4:2];
assign int_weights_13_ce1      = ar_hs | (int_weights_13_write & WVALID);
assign int_weights_13_we1      = int_weights_13_write & w_hs;
assign int_weights_13_be1      = int_weights_13_we1 ? WSTRB : 'b0;
assign int_weights_13_d1       = WDATA;
// weights_14
assign int_weights_14_address0 = weights_14_address0 >> 1;
assign int_weights_14_ce0      = weights_14_ce0;
assign weights_14_q0           = int_weights_14_q0 >> (int_weights_14_shift0 * 16);
assign int_weights_14_address1 = ar_hs? raddr[4:2] : waddr[4:2];
assign int_weights_14_ce1      = ar_hs | (int_weights_14_write & WVALID);
assign int_weights_14_we1      = int_weights_14_write & w_hs;
assign int_weights_14_be1      = int_weights_14_we1 ? WSTRB : 'b0;
assign int_weights_14_d1       = WDATA;
// weights_15
assign int_weights_15_address0 = weights_15_address0 >> 1;
assign int_weights_15_ce0      = weights_15_ce0;
assign weights_15_q0           = int_weights_15_q0 >> (int_weights_15_shift0 * 16);
assign int_weights_15_address1 = ar_hs? raddr[4:2] : waddr[4:2];
assign int_weights_15_ce1      = ar_hs | (int_weights_15_write & WVALID);
assign int_weights_15_we1      = int_weights_15_write & w_hs;
assign int_weights_15_be1      = int_weights_15_we1 ? WSTRB : 'b0;
assign int_weights_15_d1       = WDATA;
// int_output_r_read
always @(posedge ACLK) begin
    if (ARESET)
        int_output_r_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_OUTPUT_R_BASE && raddr <= ADDR_OUTPUT_R_HIGH)
            int_output_r_read <= 1'b1;
        else
            int_output_r_read <= 1'b0;
    end
end

// int_output_r_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_output_r_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (output_r_ce0)
            int_output_r_shift0 <= output_r_address0[0];
    end
end

// int_bias_read
always @(posedge ACLK) begin
    if (ARESET)
        int_bias_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_BIAS_BASE && raddr <= ADDR_BIAS_HIGH)
            int_bias_read <= 1'b1;
        else
            int_bias_read <= 1'b0;
    end
end

// int_bias_write
always @(posedge ACLK) begin
    if (ARESET)
        int_bias_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_BIAS_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_BIAS_HIGH)
            int_bias_write <= 1'b1;
        else if (w_hs)
            int_bias_write <= 1'b0;
    end
end

// int_bias_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_bias_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (bias_ce0)
            int_bias_shift0 <= bias_address0[0];
    end
end

// int_weights_0_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_0_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_0_BASE && raddr <= ADDR_WEIGHTS_0_HIGH)
            int_weights_0_read <= 1'b1;
        else
            int_weights_0_read <= 1'b0;
    end
end

// int_weights_0_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_0_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_0_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_0_HIGH)
            int_weights_0_write <= 1'b1;
        else if (w_hs)
            int_weights_0_write <= 1'b0;
    end
end

// int_weights_0_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_0_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_0_ce0)
            int_weights_0_shift0 <= weights_0_address0[0];
    end
end

// int_weights_1_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_1_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_1_BASE && raddr <= ADDR_WEIGHTS_1_HIGH)
            int_weights_1_read <= 1'b1;
        else
            int_weights_1_read <= 1'b0;
    end
end

// int_weights_1_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_1_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_1_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_1_HIGH)
            int_weights_1_write <= 1'b1;
        else if (w_hs)
            int_weights_1_write <= 1'b0;
    end
end

// int_weights_1_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_1_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_1_ce0)
            int_weights_1_shift0 <= weights_1_address0[0];
    end
end

// int_weights_2_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_2_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_2_BASE && raddr <= ADDR_WEIGHTS_2_HIGH)
            int_weights_2_read <= 1'b1;
        else
            int_weights_2_read <= 1'b0;
    end
end

// int_weights_2_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_2_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_2_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_2_HIGH)
            int_weights_2_write <= 1'b1;
        else if (w_hs)
            int_weights_2_write <= 1'b0;
    end
end

// int_weights_2_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_2_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_2_ce0)
            int_weights_2_shift0 <= weights_2_address0[0];
    end
end

// int_weights_3_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_3_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_3_BASE && raddr <= ADDR_WEIGHTS_3_HIGH)
            int_weights_3_read <= 1'b1;
        else
            int_weights_3_read <= 1'b0;
    end
end

// int_weights_3_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_3_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_3_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_3_HIGH)
            int_weights_3_write <= 1'b1;
        else if (w_hs)
            int_weights_3_write <= 1'b0;
    end
end

// int_weights_3_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_3_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_3_ce0)
            int_weights_3_shift0 <= weights_3_address0[0];
    end
end

// int_weights_4_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_4_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_4_BASE && raddr <= ADDR_WEIGHTS_4_HIGH)
            int_weights_4_read <= 1'b1;
        else
            int_weights_4_read <= 1'b0;
    end
end

// int_weights_4_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_4_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_4_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_4_HIGH)
            int_weights_4_write <= 1'b1;
        else if (w_hs)
            int_weights_4_write <= 1'b0;
    end
end

// int_weights_4_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_4_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_4_ce0)
            int_weights_4_shift0 <= weights_4_address0[0];
    end
end

// int_weights_5_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_5_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_5_BASE && raddr <= ADDR_WEIGHTS_5_HIGH)
            int_weights_5_read <= 1'b1;
        else
            int_weights_5_read <= 1'b0;
    end
end

// int_weights_5_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_5_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_5_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_5_HIGH)
            int_weights_5_write <= 1'b1;
        else if (w_hs)
            int_weights_5_write <= 1'b0;
    end
end

// int_weights_5_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_5_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_5_ce0)
            int_weights_5_shift0 <= weights_5_address0[0];
    end
end

// int_weights_6_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_6_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_6_BASE && raddr <= ADDR_WEIGHTS_6_HIGH)
            int_weights_6_read <= 1'b1;
        else
            int_weights_6_read <= 1'b0;
    end
end

// int_weights_6_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_6_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_6_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_6_HIGH)
            int_weights_6_write <= 1'b1;
        else if (w_hs)
            int_weights_6_write <= 1'b0;
    end
end

// int_weights_6_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_6_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_6_ce0)
            int_weights_6_shift0 <= weights_6_address0[0];
    end
end

// int_weights_7_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_7_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_7_BASE && raddr <= ADDR_WEIGHTS_7_HIGH)
            int_weights_7_read <= 1'b1;
        else
            int_weights_7_read <= 1'b0;
    end
end

// int_weights_7_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_7_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_7_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_7_HIGH)
            int_weights_7_write <= 1'b1;
        else if (w_hs)
            int_weights_7_write <= 1'b0;
    end
end

// int_weights_7_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_7_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_7_ce0)
            int_weights_7_shift0 <= weights_7_address0[0];
    end
end

// int_weights_8_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_8_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_8_BASE && raddr <= ADDR_WEIGHTS_8_HIGH)
            int_weights_8_read <= 1'b1;
        else
            int_weights_8_read <= 1'b0;
    end
end

// int_weights_8_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_8_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_8_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_8_HIGH)
            int_weights_8_write <= 1'b1;
        else if (w_hs)
            int_weights_8_write <= 1'b0;
    end
end

// int_weights_8_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_8_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_8_ce0)
            int_weights_8_shift0 <= weights_8_address0[0];
    end
end

// int_weights_9_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_9_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_9_BASE && raddr <= ADDR_WEIGHTS_9_HIGH)
            int_weights_9_read <= 1'b1;
        else
            int_weights_9_read <= 1'b0;
    end
end

// int_weights_9_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_9_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_9_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_9_HIGH)
            int_weights_9_write <= 1'b1;
        else if (w_hs)
            int_weights_9_write <= 1'b0;
    end
end

// int_weights_9_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_9_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_9_ce0)
            int_weights_9_shift0 <= weights_9_address0[0];
    end
end

// int_weights_10_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_10_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_10_BASE && raddr <= ADDR_WEIGHTS_10_HIGH)
            int_weights_10_read <= 1'b1;
        else
            int_weights_10_read <= 1'b0;
    end
end

// int_weights_10_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_10_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_10_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_10_HIGH)
            int_weights_10_write <= 1'b1;
        else if (w_hs)
            int_weights_10_write <= 1'b0;
    end
end

// int_weights_10_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_10_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_10_ce0)
            int_weights_10_shift0 <= weights_10_address0[0];
    end
end

// int_weights_11_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_11_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_11_BASE && raddr <= ADDR_WEIGHTS_11_HIGH)
            int_weights_11_read <= 1'b1;
        else
            int_weights_11_read <= 1'b0;
    end
end

// int_weights_11_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_11_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_11_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_11_HIGH)
            int_weights_11_write <= 1'b1;
        else if (w_hs)
            int_weights_11_write <= 1'b0;
    end
end

// int_weights_11_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_11_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_11_ce0)
            int_weights_11_shift0 <= weights_11_address0[0];
    end
end

// int_weights_12_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_12_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_12_BASE && raddr <= ADDR_WEIGHTS_12_HIGH)
            int_weights_12_read <= 1'b1;
        else
            int_weights_12_read <= 1'b0;
    end
end

// int_weights_12_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_12_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_12_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_12_HIGH)
            int_weights_12_write <= 1'b1;
        else if (w_hs)
            int_weights_12_write <= 1'b0;
    end
end

// int_weights_12_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_12_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_12_ce0)
            int_weights_12_shift0 <= weights_12_address0[0];
    end
end

// int_weights_13_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_13_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_13_BASE && raddr <= ADDR_WEIGHTS_13_HIGH)
            int_weights_13_read <= 1'b1;
        else
            int_weights_13_read <= 1'b0;
    end
end

// int_weights_13_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_13_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_13_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_13_HIGH)
            int_weights_13_write <= 1'b1;
        else if (w_hs)
            int_weights_13_write <= 1'b0;
    end
end

// int_weights_13_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_13_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_13_ce0)
            int_weights_13_shift0 <= weights_13_address0[0];
    end
end

// int_weights_14_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_14_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_14_BASE && raddr <= ADDR_WEIGHTS_14_HIGH)
            int_weights_14_read <= 1'b1;
        else
            int_weights_14_read <= 1'b0;
    end
end

// int_weights_14_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_14_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_14_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_14_HIGH)
            int_weights_14_write <= 1'b1;
        else if (w_hs)
            int_weights_14_write <= 1'b0;
    end
end

// int_weights_14_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_14_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_14_ce0)
            int_weights_14_shift0 <= weights_14_address0[0];
    end
end

// int_weights_15_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_15_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_15_BASE && raddr <= ADDR_WEIGHTS_15_HIGH)
            int_weights_15_read <= 1'b1;
        else
            int_weights_15_read <= 1'b0;
    end
end

// int_weights_15_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_15_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_15_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_15_HIGH)
            int_weights_15_write <= 1'b1;
        else if (w_hs)
            int_weights_15_write <= 1'b0;
    end
end

// int_weights_15_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_15_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_15_ce0)
            int_weights_15_shift0 <= weights_15_address0[0];
    end
end


endmodule


`timescale 1ns/1ps

module nnlayer_control_s_axi_ram
#(parameter
    MEM_STYLE = "auto",
    MEM_TYPE  = "S2P",
    BYTES  = 4,
    DEPTH  = 256,
    AWIDTH = log2(DEPTH)
) (
    input  wire               clk0,
    input  wire [AWIDTH-1:0]  address0,
    input  wire               ce0,
    input  wire [BYTES-1:0]   we0,
    input  wire [BYTES*8-1:0] d0,
    output reg  [BYTES*8-1:0] q0,
    input  wire               clk1,
    input  wire [AWIDTH-1:0]  address1,
    input  wire               ce1,
    input  wire [BYTES-1:0]   we1,
    input  wire [BYTES*8-1:0] d1,
    output reg  [BYTES*8-1:0] q1
);
//------------------------ Parameters -------------------
localparam
    BYTE_WIDTH = 8,
    PORT0 = (MEM_TYPE == "S2P") ? "WO" : ((MEM_TYPE == "2P") ? "RO" : "RW"),
    PORT1 = (MEM_TYPE == "S2P") ? "RO" : "RW";
//------------------------Local signal-------------------
(* ram_style = MEM_STYLE*)
reg  [BYTES*8-1:0] mem[0:DEPTH-1];
wire re0, re1;
//------------------------Task and function--------------
function integer log2;
    input integer x;
    integer n, m;
begin
    n = 1;
    m = 2;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction
//------------------------Body---------------------------
generate
    if (MEM_STYLE == "hls_ultra" && PORT0 == "RW") begin
        assign re0 = ce0 & ~|we0;
    end else begin
        assign re0 = ce0;
    end
endgenerate

generate
    if (MEM_STYLE == "hls_ultra" && PORT1 == "RW") begin
        assign re1 = ce1 & ~|we1;
    end else begin
        assign re1 = ce1;
    end
endgenerate

// read port 0
generate if (PORT0 != "WO") begin
    always @(posedge clk0) begin
        if (re0) q0 <= mem[address0];
    end
end
endgenerate

// read port 1
generate if (PORT1 != "WO") begin
    always @(posedge clk1) begin
        if (re1) q1 <= mem[address1];
    end
end
endgenerate

integer i;
// write port 0
generate if (PORT0 != "RO") begin
    always @(posedge clk0) begin
        if (ce0)
        for (i = 0; i < BYTES; i = i + 1)
            if (we0[i])
                mem[address0][i*BYTE_WIDTH +: BYTE_WIDTH] <= d0[i*BYTE_WIDTH +: BYTE_WIDTH];
    end
end
endgenerate

// write port 1
generate if (PORT1 != "RO") begin
    always @(posedge clk1) begin
        if (ce1)
        for (i = 0; i < BYTES; i = i + 1)
            if (we1[i])
                mem[address1][i*BYTE_WIDTH +: BYTE_WIDTH] <= d1[i*BYTE_WIDTH +: BYTE_WIDTH];
    end
end
endgenerate

endmodule

