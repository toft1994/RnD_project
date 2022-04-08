// 0x0000 : Control signals
//          bit 0  - ap_start (Read/Write/COH)
//          bit 1  - ap_done (Read/COR)
//          bit 2  - ap_idle (Read)
//          bit 3  - ap_ready (Read/COR)
//          bit 7  - auto_restart (Read/Write)
//          others - reserved
// 0x0004 : Global Interrupt Enable Register
//          bit 0  - Global Interrupt Enable (Read/Write)
//          others - reserved
// 0x0008 : IP Interrupt Enable Register (Read/Write)
//          bit 0 - enable ap_done interrupt (Read/Write)
//          bit 1 - enable ap_ready interrupt (Read/Write)
//          bit 5 - enable ap_local_deadlock interrupt (Read/Write)
//          others - reserved
// 0x000c : IP Interrupt Status Register (Read/TOW)
//          bit 0 - ap_done (COR/TOW)
//          bit 1 - ap_ready (COR/TOW)
//          bit 5 - ap_local_deadlock (COR/TOW)
//          others - reserved
// 0x0010 : Data signal of input_0
//          bit 15~0 - input_0[15:0] (Read/Write)
//          others   - reserved
// 0x0014 : reserved
// 0x0018 : Data signal of input_1
//          bit 15~0 - input_1[15:0] (Read/Write)
//          others   - reserved
// 0x001c : reserved
// 0x0020 : Data signal of input_2
//          bit 15~0 - input_2[15:0] (Read/Write)
//          others   - reserved
// 0x0024 : reserved
// 0x0028 : Data signal of input_3
//          bit 15~0 - input_3[15:0] (Read/Write)
//          others   - reserved
// 0x002c : reserved
// 0x0030 : Data signal of input_4
//          bit 15~0 - input_4[15:0] (Read/Write)
//          others   - reserved
// 0x0034 : reserved
// 0x0038 : Data signal of input_5
//          bit 15~0 - input_5[15:0] (Read/Write)
//          others   - reserved
// 0x003c : reserved
// 0x0040 : Data signal of input_6
//          bit 15~0 - input_6[15:0] (Read/Write)
//          others   - reserved
// 0x0044 : reserved
// 0x0048 : Data signal of input_7
//          bit 15~0 - input_7[15:0] (Read/Write)
//          others   - reserved
// 0x004c : reserved
// 0x0050 : Data signal of input_8
//          bit 15~0 - input_8[15:0] (Read/Write)
//          others   - reserved
// 0x0054 : reserved
// 0x0058 : Data signal of input_9
//          bit 15~0 - input_9[15:0] (Read/Write)
//          others   - reserved
// 0x005c : reserved
// 0x0060 : Data signal of input_10
//          bit 15~0 - input_10[15:0] (Read/Write)
//          others   - reserved
// 0x0064 : reserved
// 0x0068 : Data signal of input_11
//          bit 15~0 - input_11[15:0] (Read/Write)
//          others   - reserved
// 0x006c : reserved
// 0x0070 : Data signal of input_12
//          bit 15~0 - input_12[15:0] (Read/Write)
//          others   - reserved
// 0x0074 : reserved
// 0x0078 : Data signal of input_13
//          bit 15~0 - input_13[15:0] (Read/Write)
//          others   - reserved
// 0x007c : reserved
// 0x0080 : Data signal of input_14
//          bit 15~0 - input_14[15:0] (Read/Write)
//          others   - reserved
// 0x0084 : reserved
// 0x0088 : Data signal of input_15
//          bit 15~0 - input_15[15:0] (Read/Write)
//          others   - reserved
// 0x008c : reserved
// 0x0090 : Data signal of input_16
//          bit 15~0 - input_16[15:0] (Read/Write)
//          others   - reserved
// 0x0094 : reserved
// 0x0098 : Data signal of input_17
//          bit 15~0 - input_17[15:0] (Read/Write)
//          others   - reserved
// 0x009c : reserved
// 0x00a0 : Data signal of input_18
//          bit 15~0 - input_18[15:0] (Read/Write)
//          others   - reserved
// 0x00a4 : reserved
// 0x00a8 : Data signal of input_19
//          bit 15~0 - input_19[15:0] (Read/Write)
//          others   - reserved
// 0x00ac : reserved
// 0x00b0 : Data signal of input_20
//          bit 15~0 - input_20[15:0] (Read/Write)
//          others   - reserved
// 0x00b4 : reserved
// 0x00b8 : Data signal of input_21
//          bit 15~0 - input_21[15:0] (Read/Write)
//          others   - reserved
// 0x00bc : reserved
// 0x00c0 : Data signal of input_22
//          bit 15~0 - input_22[15:0] (Read/Write)
//          others   - reserved
// 0x00c4 : reserved
// 0x00c8 : Data signal of input_23
//          bit 15~0 - input_23[15:0] (Read/Write)
//          others   - reserved
// 0x00cc : reserved
// 0x00d0 : Data signal of input_24
//          bit 15~0 - input_24[15:0] (Read/Write)
//          others   - reserved
// 0x00d4 : reserved
// 0x00d8 : Data signal of input_25
//          bit 15~0 - input_25[15:0] (Read/Write)
//          others   - reserved
// 0x00dc : reserved
// 0x00e0 : Data signal of input_26
//          bit 15~0 - input_26[15:0] (Read/Write)
//          others   - reserved
// 0x00e4 : reserved
// 0x00e8 : Data signal of input_27
//          bit 15~0 - input_27[15:0] (Read/Write)
//          others   - reserved
// 0x00ec : reserved
// 0x00f0 : Data signal of input_28
//          bit 15~0 - input_28[15:0] (Read/Write)
//          others   - reserved
// 0x00f4 : reserved
// 0x00f8 : Data signal of input_29
//          bit 15~0 - input_29[15:0] (Read/Write)
//          others   - reserved
// 0x00fc : reserved
// 0x0100 : Data signal of input_30
//          bit 15~0 - input_30[15:0] (Read/Write)
//          others   - reserved
// 0x0104 : reserved
// 0x0108 : Data signal of input_31
//          bit 15~0 - input_31[15:0] (Read/Write)
//          others   - reserved
// 0x010c : reserved
// 0x0110 : Data signal of input_32
//          bit 15~0 - input_32[15:0] (Read/Write)
//          others   - reserved
// 0x0114 : reserved
// 0x0118 : Data signal of input_33
//          bit 15~0 - input_33[15:0] (Read/Write)
//          others   - reserved
// 0x011c : reserved
// 0x0120 : Data signal of input_34
//          bit 15~0 - input_34[15:0] (Read/Write)
//          others   - reserved
// 0x0124 : reserved
// 0x0128 : Data signal of input_35
//          bit 15~0 - input_35[15:0] (Read/Write)
//          others   - reserved
// 0x012c : reserved
// 0x0130 : Data signal of input_36
//          bit 15~0 - input_36[15:0] (Read/Write)
//          others   - reserved
// 0x0134 : reserved
// 0x0138 : Data signal of input_37
//          bit 15~0 - input_37[15:0] (Read/Write)
//          others   - reserved
// 0x013c : reserved
// 0x0140 : Data signal of input_38
//          bit 15~0 - input_38[15:0] (Read/Write)
//          others   - reserved
// 0x0144 : reserved
// 0x0148 : Data signal of input_39
//          bit 15~0 - input_39[15:0] (Read/Write)
//          others   - reserved
// 0x014c : reserved
// 0x0150 : Data signal of input_40
//          bit 15~0 - input_40[15:0] (Read/Write)
//          others   - reserved
// 0x0154 : reserved
// 0x0158 : Data signal of input_41
//          bit 15~0 - input_41[15:0] (Read/Write)
//          others   - reserved
// 0x015c : reserved
// 0x0160 : Data signal of input_42
//          bit 15~0 - input_42[15:0] (Read/Write)
//          others   - reserved
// 0x0164 : reserved
// 0x0168 : Data signal of input_43
//          bit 15~0 - input_43[15:0] (Read/Write)
//          others   - reserved
// 0x016c : reserved
// 0x0170 : Data signal of input_44
//          bit 15~0 - input_44[15:0] (Read/Write)
//          others   - reserved
// 0x0174 : reserved
// 0x0178 : Data signal of input_45
//          bit 15~0 - input_45[15:0] (Read/Write)
//          others   - reserved
// 0x017c : reserved
// 0x0180 : Data signal of input_46
//          bit 15~0 - input_46[15:0] (Read/Write)
//          others   - reserved
// 0x0184 : reserved
// 0x0188 : Data signal of input_47
//          bit 15~0 - input_47[15:0] (Read/Write)
//          others   - reserved
// 0x018c : reserved
// 0x0190 : Data signal of input_48
//          bit 15~0 - input_48[15:0] (Read/Write)
//          others   - reserved
// 0x0194 : reserved
// 0x0198 : Data signal of input_49
//          bit 15~0 - input_49[15:0] (Read/Write)
//          others   - reserved
// 0x019c : reserved
// 0x01a0 : Data signal of input_50
//          bit 15~0 - input_50[15:0] (Read/Write)
//          others   - reserved
// 0x01a4 : reserved
// 0x01a8 : Data signal of input_51
//          bit 15~0 - input_51[15:0] (Read/Write)
//          others   - reserved
// 0x01ac : reserved
// 0x01b0 : Data signal of input_52
//          bit 15~0 - input_52[15:0] (Read/Write)
//          others   - reserved
// 0x01b4 : reserved
// 0x01b8 : Data signal of input_53
//          bit 15~0 - input_53[15:0] (Read/Write)
//          others   - reserved
// 0x01bc : reserved
// 0x01c0 : Data signal of input_54
//          bit 15~0 - input_54[15:0] (Read/Write)
//          others   - reserved
// 0x01c4 : reserved
// 0x01c8 : Data signal of input_55
//          bit 15~0 - input_55[15:0] (Read/Write)
//          others   - reserved
// 0x01cc : reserved
// 0x01d0 : Data signal of input_56
//          bit 15~0 - input_56[15:0] (Read/Write)
//          others   - reserved
// 0x01d4 : reserved
// 0x01d8 : Data signal of input_57
//          bit 15~0 - input_57[15:0] (Read/Write)
//          others   - reserved
// 0x01dc : reserved
// 0x01e0 : Data signal of input_58
//          bit 15~0 - input_58[15:0] (Read/Write)
//          others   - reserved
// 0x01e4 : reserved
// 0x01e8 : Data signal of input_59
//          bit 15~0 - input_59[15:0] (Read/Write)
//          others   - reserved
// 0x01ec : reserved
// 0x01f0 : Data signal of input_60
//          bit 15~0 - input_60[15:0] (Read/Write)
//          others   - reserved
// 0x01f4 : reserved
// 0x01f8 : Data signal of input_61
//          bit 15~0 - input_61[15:0] (Read/Write)
//          others   - reserved
// 0x01fc : reserved
// 0x0200 : Data signal of input_62
//          bit 15~0 - input_62[15:0] (Read/Write)
//          others   - reserved
// 0x0204 : reserved
// 0x0208 : Data signal of input_63
//          bit 15~0 - input_63[15:0] (Read/Write)
//          others   - reserved
// 0x020c : reserved
// 0x0210 : Data signal of input_64
//          bit 15~0 - input_64[15:0] (Read/Write)
//          others   - reserved
// 0x0214 : reserved
// 0x0218 : Data signal of input_65
//          bit 15~0 - input_65[15:0] (Read/Write)
//          others   - reserved
// 0x021c : reserved
// 0x0220 : Data signal of input_66
//          bit 15~0 - input_66[15:0] (Read/Write)
//          others   - reserved
// 0x0224 : reserved
// 0x0228 : Data signal of input_67
//          bit 15~0 - input_67[15:0] (Read/Write)
//          others   - reserved
// 0x022c : reserved
// 0x0230 : Data signal of input_68
//          bit 15~0 - input_68[15:0] (Read/Write)
//          others   - reserved
// 0x0234 : reserved
// 0x0238 : Data signal of input_69
//          bit 15~0 - input_69[15:0] (Read/Write)
//          others   - reserved
// 0x023c : reserved
// 0x0240 : Data signal of input_70
//          bit 15~0 - input_70[15:0] (Read/Write)
//          others   - reserved
// 0x0244 : reserved
// 0x0248 : Data signal of input_71
//          bit 15~0 - input_71[15:0] (Read/Write)
//          others   - reserved
// 0x024c : reserved
// 0x0250 : Data signal of input_72
//          bit 15~0 - input_72[15:0] (Read/Write)
//          others   - reserved
// 0x0254 : reserved
// 0x0258 : Data signal of input_73
//          bit 15~0 - input_73[15:0] (Read/Write)
//          others   - reserved
// 0x025c : reserved
// 0x0260 : Data signal of input_74
//          bit 15~0 - input_74[15:0] (Read/Write)
//          others   - reserved
// 0x0264 : reserved
// 0x0268 : Data signal of input_75
//          bit 15~0 - input_75[15:0] (Read/Write)
//          others   - reserved
// 0x026c : reserved
// 0x0270 : Data signal of input_76
//          bit 15~0 - input_76[15:0] (Read/Write)
//          others   - reserved
// 0x0274 : reserved
// 0x0278 : Data signal of input_77
//          bit 15~0 - input_77[15:0] (Read/Write)
//          others   - reserved
// 0x027c : reserved
// 0x0280 : Data signal of input_78
//          bit 15~0 - input_78[15:0] (Read/Write)
//          others   - reserved
// 0x0284 : reserved
// 0x0288 : Data signal of input_79
//          bit 15~0 - input_79[15:0] (Read/Write)
//          others   - reserved
// 0x028c : reserved
// 0x0290 : Data signal of input_80
//          bit 15~0 - input_80[15:0] (Read/Write)
//          others   - reserved
// 0x0294 : reserved
// 0x0298 : Data signal of input_81
//          bit 15~0 - input_81[15:0] (Read/Write)
//          others   - reserved
// 0x029c : reserved
// 0x02a0 : Data signal of input_82
//          bit 15~0 - input_82[15:0] (Read/Write)
//          others   - reserved
// 0x02a4 : reserved
// 0x02a8 : Data signal of input_83
//          bit 15~0 - input_83[15:0] (Read/Write)
//          others   - reserved
// 0x02ac : reserved
// 0x02b0 : Data signal of input_84
//          bit 15~0 - input_84[15:0] (Read/Write)
//          others   - reserved
// 0x02b4 : reserved
// 0x02b8 : Data signal of input_85
//          bit 15~0 - input_85[15:0] (Read/Write)
//          others   - reserved
// 0x02bc : reserved
// 0x02c0 : Data signal of input_86
//          bit 15~0 - input_86[15:0] (Read/Write)
//          others   - reserved
// 0x02c4 : reserved
// 0x02c8 : Data signal of input_87
//          bit 15~0 - input_87[15:0] (Read/Write)
//          others   - reserved
// 0x02cc : reserved
// 0x02d0 : Data signal of input_88
//          bit 15~0 - input_88[15:0] (Read/Write)
//          others   - reserved
// 0x02d4 : reserved
// 0x02d8 : Data signal of input_89
//          bit 15~0 - input_89[15:0] (Read/Write)
//          others   - reserved
// 0x02dc : reserved
// 0x02e0 : Data signal of input_90
//          bit 15~0 - input_90[15:0] (Read/Write)
//          others   - reserved
// 0x02e4 : reserved
// 0x02e8 : Data signal of input_91
//          bit 15~0 - input_91[15:0] (Read/Write)
//          others   - reserved
// 0x02ec : reserved
// 0x02f0 : Data signal of input_92
//          bit 15~0 - input_92[15:0] (Read/Write)
//          others   - reserved
// 0x02f4 : reserved
// 0x02f8 : Data signal of input_93
//          bit 15~0 - input_93[15:0] (Read/Write)
//          others   - reserved
// 0x02fc : reserved
// 0x0300 : Data signal of input_94
//          bit 15~0 - input_94[15:0] (Read/Write)
//          others   - reserved
// 0x0304 : reserved
// 0x0308 : Data signal of input_95
//          bit 15~0 - input_95[15:0] (Read/Write)
//          others   - reserved
// 0x030c : reserved
// 0x0310 : Data signal of input_96
//          bit 15~0 - input_96[15:0] (Read/Write)
//          others   - reserved
// 0x0314 : reserved
// 0x0318 : Data signal of input_97
//          bit 15~0 - input_97[15:0] (Read/Write)
//          others   - reserved
// 0x031c : reserved
// 0x0320 : Data signal of input_98
//          bit 15~0 - input_98[15:0] (Read/Write)
//          others   - reserved
// 0x0324 : reserved
// 0x0328 : Data signal of input_99
//          bit 15~0 - input_99[15:0] (Read/Write)
//          others   - reserved
// 0x032c : reserved
// 0x0330 : Data signal of input_100
//          bit 15~0 - input_100[15:0] (Read/Write)
//          others   - reserved
// 0x0334 : reserved
// 0x0338 : Data signal of input_101
//          bit 15~0 - input_101[15:0] (Read/Write)
//          others   - reserved
// 0x033c : reserved
// 0x0340 : Data signal of input_102
//          bit 15~0 - input_102[15:0] (Read/Write)
//          others   - reserved
// 0x0344 : reserved
// 0x0348 : Data signal of input_103
//          bit 15~0 - input_103[15:0] (Read/Write)
//          others   - reserved
// 0x034c : reserved
// 0x0350 : Data signal of input_104
//          bit 15~0 - input_104[15:0] (Read/Write)
//          others   - reserved
// 0x0354 : reserved
// 0x0358 : Data signal of input_105
//          bit 15~0 - input_105[15:0] (Read/Write)
//          others   - reserved
// 0x035c : reserved
// 0x0360 : Data signal of input_106
//          bit 15~0 - input_106[15:0] (Read/Write)
//          others   - reserved
// 0x0364 : reserved
// 0x0368 : Data signal of input_107
//          bit 15~0 - input_107[15:0] (Read/Write)
//          others   - reserved
// 0x036c : reserved
// 0x0370 : Data signal of input_108
//          bit 15~0 - input_108[15:0] (Read/Write)
//          others   - reserved
// 0x0374 : reserved
// 0x0378 : Data signal of input_109
//          bit 15~0 - input_109[15:0] (Read/Write)
//          others   - reserved
// 0x037c : reserved
// 0x0380 : Data signal of input_110
//          bit 15~0 - input_110[15:0] (Read/Write)
//          others   - reserved
// 0x0384 : reserved
// 0x0388 : Data signal of input_111
//          bit 15~0 - input_111[15:0] (Read/Write)
//          others   - reserved
// 0x038c : reserved
// 0x0390 : Data signal of input_112
//          bit 15~0 - input_112[15:0] (Read/Write)
//          others   - reserved
// 0x0394 : reserved
// 0x0398 : Data signal of input_113
//          bit 15~0 - input_113[15:0] (Read/Write)
//          others   - reserved
// 0x039c : reserved
// 0x03a0 : Data signal of input_114
//          bit 15~0 - input_114[15:0] (Read/Write)
//          others   - reserved
// 0x03a4 : reserved
// 0x03a8 : Data signal of input_115
//          bit 15~0 - input_115[15:0] (Read/Write)
//          others   - reserved
// 0x03ac : reserved
// 0x03b0 : Data signal of input_116
//          bit 15~0 - input_116[15:0] (Read/Write)
//          others   - reserved
// 0x03b4 : reserved
// 0x03b8 : Data signal of input_117
//          bit 15~0 - input_117[15:0] (Read/Write)
//          others   - reserved
// 0x03bc : reserved
// 0x03c0 : Data signal of input_118
//          bit 15~0 - input_118[15:0] (Read/Write)
//          others   - reserved
// 0x03c4 : reserved
// 0x03c8 : Data signal of input_119
//          bit 15~0 - input_119[15:0] (Read/Write)
//          others   - reserved
// 0x03cc : reserved
// 0x03d0 : Data signal of input_120
//          bit 15~0 - input_120[15:0] (Read/Write)
//          others   - reserved
// 0x03d4 : reserved
// 0x03d8 : Data signal of input_121
//          bit 15~0 - input_121[15:0] (Read/Write)
//          others   - reserved
// 0x03dc : reserved
// 0x03e0 : Data signal of input_122
//          bit 15~0 - input_122[15:0] (Read/Write)
//          others   - reserved
// 0x03e4 : reserved
// 0x03e8 : Data signal of input_123
//          bit 15~0 - input_123[15:0] (Read/Write)
//          others   - reserved
// 0x03ec : reserved
// 0x03f0 : Data signal of input_124
//          bit 15~0 - input_124[15:0] (Read/Write)
//          others   - reserved
// 0x03f4 : reserved
// 0x03f8 : Data signal of input_125
//          bit 15~0 - input_125[15:0] (Read/Write)
//          others   - reserved
// 0x03fc : reserved
// 0x0400 : Data signal of input_126
//          bit 15~0 - input_126[15:0] (Read/Write)
//          others   - reserved
// 0x0404 : reserved
// 0x0408 : Data signal of input_127
//          bit 15~0 - input_127[15:0] (Read/Write)
//          others   - reserved
// 0x040c : reserved
// 0x0410 : Data signal of output_0
//          bit 15~0 - output_0[15:0] (Read)
//          others   - reserved
// 0x0414 : Control signal of output_0
//          bit 0  - output_0_ap_vld (Read/COR)
//          others - reserved
// 0x0420 : Data signal of output_1
//          bit 15~0 - output_1[15:0] (Read)
//          others   - reserved
// 0x0424 : Control signal of output_1
//          bit 0  - output_1_ap_vld (Read/COR)
//          others - reserved
// 0x0430 : Data signal of output_2
//          bit 15~0 - output_2[15:0] (Read)
//          others   - reserved
// 0x0434 : Control signal of output_2
//          bit 0  - output_2_ap_vld (Read/COR)
//          others - reserved
// 0x0440 : Data signal of output_3
//          bit 15~0 - output_3[15:0] (Read)
//          others   - reserved
// 0x0444 : Control signal of output_3
//          bit 0  - output_3_ap_vld (Read/COR)
//          others - reserved
// 0x0450 : Data signal of output_4
//          bit 15~0 - output_4[15:0] (Read)
//          others   - reserved
// 0x0454 : Control signal of output_4
//          bit 0  - output_4_ap_vld (Read/COR)
//          others - reserved
// 0x0460 : Data signal of output_5
//          bit 15~0 - output_5[15:0] (Read)
//          others   - reserved
// 0x0464 : Control signal of output_5
//          bit 0  - output_5_ap_vld (Read/COR)
//          others - reserved
// 0x0470 : Data signal of output_6
//          bit 15~0 - output_6[15:0] (Read)
//          others   - reserved
// 0x0474 : Control signal of output_6
//          bit 0  - output_6_ap_vld (Read/COR)
//          others - reserved
// 0x0480 : Data signal of output_7
//          bit 15~0 - output_7[15:0] (Read)
//          others   - reserved
// 0x0484 : Control signal of output_7
//          bit 0  - output_7_ap_vld (Read/COR)
//          others - reserved
// 0x0490 : Data signal of output_8
//          bit 15~0 - output_8[15:0] (Read)
//          others   - reserved
// 0x0494 : Control signal of output_8
//          bit 0  - output_8_ap_vld (Read/COR)
//          others - reserved
// 0x04a0 : Data signal of output_9
//          bit 15~0 - output_9[15:0] (Read)
//          others   - reserved
// 0x04a4 : Control signal of output_9
//          bit 0  - output_9_ap_vld (Read/COR)
//          others - reserved
// 0x04b0 : Data signal of output_10
//          bit 15~0 - output_10[15:0] (Read)
//          others   - reserved
// 0x04b4 : Control signal of output_10
//          bit 0  - output_10_ap_vld (Read/COR)
//          others - reserved
// 0x04c0 : Data signal of output_11
//          bit 15~0 - output_11[15:0] (Read)
//          others   - reserved
// 0x04c4 : Control signal of output_11
//          bit 0  - output_11_ap_vld (Read/COR)
//          others - reserved
// 0x04d0 : Data signal of output_12
//          bit 15~0 - output_12[15:0] (Read)
//          others   - reserved
// 0x04d4 : Control signal of output_12
//          bit 0  - output_12_ap_vld (Read/COR)
//          others - reserved
// 0x04e0 : Data signal of output_13
//          bit 15~0 - output_13[15:0] (Read)
//          others   - reserved
// 0x04e4 : Control signal of output_13
//          bit 0  - output_13_ap_vld (Read/COR)
//          others - reserved
// 0x04f0 : Data signal of output_14
//          bit 15~0 - output_14[15:0] (Read)
//          others   - reserved
// 0x04f4 : Control signal of output_14
//          bit 0  - output_14_ap_vld (Read/COR)
//          others - reserved
// 0x0500 : Data signal of output_15
//          bit 15~0 - output_15[15:0] (Read)
//          others   - reserved
// 0x0504 : Control signal of output_15
//          bit 0  - output_15_ap_vld (Read/COR)
//          others - reserved
// 0x0510 : Data signal of output_16
//          bit 15~0 - output_16[15:0] (Read)
//          others   - reserved
// 0x0514 : Control signal of output_16
//          bit 0  - output_16_ap_vld (Read/COR)
//          others - reserved
// 0x0520 : Data signal of output_17
//          bit 15~0 - output_17[15:0] (Read)
//          others   - reserved
// 0x0524 : Control signal of output_17
//          bit 0  - output_17_ap_vld (Read/COR)
//          others - reserved
// 0x0530 : Data signal of output_18
//          bit 15~0 - output_18[15:0] (Read)
//          others   - reserved
// 0x0534 : Control signal of output_18
//          bit 0  - output_18_ap_vld (Read/COR)
//          others - reserved
// 0x0540 : Data signal of output_19
//          bit 15~0 - output_19[15:0] (Read)
//          others   - reserved
// 0x0544 : Control signal of output_19
//          bit 0  - output_19_ap_vld (Read/COR)
//          others - reserved
// 0x0550 : Data signal of output_20
//          bit 15~0 - output_20[15:0] (Read)
//          others   - reserved
// 0x0554 : Control signal of output_20
//          bit 0  - output_20_ap_vld (Read/COR)
//          others - reserved
// 0x0560 : Data signal of output_21
//          bit 15~0 - output_21[15:0] (Read)
//          others   - reserved
// 0x0564 : Control signal of output_21
//          bit 0  - output_21_ap_vld (Read/COR)
//          others - reserved
// 0x0570 : Data signal of output_22
//          bit 15~0 - output_22[15:0] (Read)
//          others   - reserved
// 0x0574 : Control signal of output_22
//          bit 0  - output_22_ap_vld (Read/COR)
//          others - reserved
// 0x0580 : Data signal of output_23
//          bit 15~0 - output_23[15:0] (Read)
//          others   - reserved
// 0x0584 : Control signal of output_23
//          bit 0  - output_23_ap_vld (Read/COR)
//          others - reserved
// 0x0590 : Data signal of output_24
//          bit 15~0 - output_24[15:0] (Read)
//          others   - reserved
// 0x0594 : Control signal of output_24
//          bit 0  - output_24_ap_vld (Read/COR)
//          others - reserved
// 0x05a0 : Data signal of output_25
//          bit 15~0 - output_25[15:0] (Read)
//          others   - reserved
// 0x05a4 : Control signal of output_25
//          bit 0  - output_25_ap_vld (Read/COR)
//          others - reserved
// 0x05b0 : Data signal of output_26
//          bit 15~0 - output_26[15:0] (Read)
//          others   - reserved
// 0x05b4 : Control signal of output_26
//          bit 0  - output_26_ap_vld (Read/COR)
//          others - reserved
// 0x05c0 : Data signal of output_27
//          bit 15~0 - output_27[15:0] (Read)
//          others   - reserved
// 0x05c4 : Control signal of output_27
//          bit 0  - output_27_ap_vld (Read/COR)
//          others - reserved
// 0x05d0 : Data signal of output_28
//          bit 15~0 - output_28[15:0] (Read)
//          others   - reserved
// 0x05d4 : Control signal of output_28
//          bit 0  - output_28_ap_vld (Read/COR)
//          others - reserved
// 0x05e0 : Data signal of output_29
//          bit 15~0 - output_29[15:0] (Read)
//          others   - reserved
// 0x05e4 : Control signal of output_29
//          bit 0  - output_29_ap_vld (Read/COR)
//          others - reserved
// 0x05f0 : Data signal of output_30
//          bit 15~0 - output_30[15:0] (Read)
//          others   - reserved
// 0x05f4 : Control signal of output_30
//          bit 0  - output_30_ap_vld (Read/COR)
//          others - reserved
// 0x0600 : Data signal of output_31
//          bit 15~0 - output_31[15:0] (Read)
//          others   - reserved
// 0x0604 : Control signal of output_31
//          bit 0  - output_31_ap_vld (Read/COR)
//          others - reserved
// 0x0610 : Data signal of output_32
//          bit 15~0 - output_32[15:0] (Read)
//          others   - reserved
// 0x0614 : Control signal of output_32
//          bit 0  - output_32_ap_vld (Read/COR)
//          others - reserved
// 0x0620 : Data signal of output_33
//          bit 15~0 - output_33[15:0] (Read)
//          others   - reserved
// 0x0624 : Control signal of output_33
//          bit 0  - output_33_ap_vld (Read/COR)
//          others - reserved
// 0x0630 : Data signal of output_34
//          bit 15~0 - output_34[15:0] (Read)
//          others   - reserved
// 0x0634 : Control signal of output_34
//          bit 0  - output_34_ap_vld (Read/COR)
//          others - reserved
// 0x0640 : Data signal of output_35
//          bit 15~0 - output_35[15:0] (Read)
//          others   - reserved
// 0x0644 : Control signal of output_35
//          bit 0  - output_35_ap_vld (Read/COR)
//          others - reserved
// 0x0650 : Data signal of output_36
//          bit 15~0 - output_36[15:0] (Read)
//          others   - reserved
// 0x0654 : Control signal of output_36
//          bit 0  - output_36_ap_vld (Read/COR)
//          others - reserved
// 0x0660 : Data signal of output_37
//          bit 15~0 - output_37[15:0] (Read)
//          others   - reserved
// 0x0664 : Control signal of output_37
//          bit 0  - output_37_ap_vld (Read/COR)
//          others - reserved
// 0x0670 : Data signal of output_38
//          bit 15~0 - output_38[15:0] (Read)
//          others   - reserved
// 0x0674 : Control signal of output_38
//          bit 0  - output_38_ap_vld (Read/COR)
//          others - reserved
// 0x0680 : Data signal of output_39
//          bit 15~0 - output_39[15:0] (Read)
//          others   - reserved
// 0x0684 : Control signal of output_39
//          bit 0  - output_39_ap_vld (Read/COR)
//          others - reserved
// 0x0690 : Data signal of output_40
//          bit 15~0 - output_40[15:0] (Read)
//          others   - reserved
// 0x0694 : Control signal of output_40
//          bit 0  - output_40_ap_vld (Read/COR)
//          others - reserved
// 0x06a0 : Data signal of output_41
//          bit 15~0 - output_41[15:0] (Read)
//          others   - reserved
// 0x06a4 : Control signal of output_41
//          bit 0  - output_41_ap_vld (Read/COR)
//          others - reserved
// 0x06b0 : Data signal of output_42
//          bit 15~0 - output_42[15:0] (Read)
//          others   - reserved
// 0x06b4 : Control signal of output_42
//          bit 0  - output_42_ap_vld (Read/COR)
//          others - reserved
// 0x06c0 : Data signal of output_43
//          bit 15~0 - output_43[15:0] (Read)
//          others   - reserved
// 0x06c4 : Control signal of output_43
//          bit 0  - output_43_ap_vld (Read/COR)
//          others - reserved
// 0x06d0 : Data signal of output_44
//          bit 15~0 - output_44[15:0] (Read)
//          others   - reserved
// 0x06d4 : Control signal of output_44
//          bit 0  - output_44_ap_vld (Read/COR)
//          others - reserved
// 0x06e0 : Data signal of output_45
//          bit 15~0 - output_45[15:0] (Read)
//          others   - reserved
// 0x06e4 : Control signal of output_45
//          bit 0  - output_45_ap_vld (Read/COR)
//          others - reserved
// 0x06f0 : Data signal of output_46
//          bit 15~0 - output_46[15:0] (Read)
//          others   - reserved
// 0x06f4 : Control signal of output_46
//          bit 0  - output_46_ap_vld (Read/COR)
//          others - reserved
// 0x0700 : Data signal of output_47
//          bit 15~0 - output_47[15:0] (Read)
//          others   - reserved
// 0x0704 : Control signal of output_47
//          bit 0  - output_47_ap_vld (Read/COR)
//          others - reserved
// 0x0710 : Data signal of output_48
//          bit 15~0 - output_48[15:0] (Read)
//          others   - reserved
// 0x0714 : Control signal of output_48
//          bit 0  - output_48_ap_vld (Read/COR)
//          others - reserved
// 0x0720 : Data signal of output_49
//          bit 15~0 - output_49[15:0] (Read)
//          others   - reserved
// 0x0724 : Control signal of output_49
//          bit 0  - output_49_ap_vld (Read/COR)
//          others - reserved
// 0x0730 : Data signal of output_50
//          bit 15~0 - output_50[15:0] (Read)
//          others   - reserved
// 0x0734 : Control signal of output_50
//          bit 0  - output_50_ap_vld (Read/COR)
//          others - reserved
// 0x0740 : Data signal of output_51
//          bit 15~0 - output_51[15:0] (Read)
//          others   - reserved
// 0x0744 : Control signal of output_51
//          bit 0  - output_51_ap_vld (Read/COR)
//          others - reserved
// 0x0750 : Data signal of output_52
//          bit 15~0 - output_52[15:0] (Read)
//          others   - reserved
// 0x0754 : Control signal of output_52
//          bit 0  - output_52_ap_vld (Read/COR)
//          others - reserved
// 0x0760 : Data signal of output_53
//          bit 15~0 - output_53[15:0] (Read)
//          others   - reserved
// 0x0764 : Control signal of output_53
//          bit 0  - output_53_ap_vld (Read/COR)
//          others - reserved
// 0x0770 : Data signal of output_54
//          bit 15~0 - output_54[15:0] (Read)
//          others   - reserved
// 0x0774 : Control signal of output_54
//          bit 0  - output_54_ap_vld (Read/COR)
//          others - reserved
// 0x0780 : Data signal of output_55
//          bit 15~0 - output_55[15:0] (Read)
//          others   - reserved
// 0x0784 : Control signal of output_55
//          bit 0  - output_55_ap_vld (Read/COR)
//          others - reserved
// 0x0790 : Data signal of output_56
//          bit 15~0 - output_56[15:0] (Read)
//          others   - reserved
// 0x0794 : Control signal of output_56
//          bit 0  - output_56_ap_vld (Read/COR)
//          others - reserved
// 0x07a0 : Data signal of output_57
//          bit 15~0 - output_57[15:0] (Read)
//          others   - reserved
// 0x07a4 : Control signal of output_57
//          bit 0  - output_57_ap_vld (Read/COR)
//          others - reserved
// 0x07b0 : Data signal of output_58
//          bit 15~0 - output_58[15:0] (Read)
//          others   - reserved
// 0x07b4 : Control signal of output_58
//          bit 0  - output_58_ap_vld (Read/COR)
//          others - reserved
// 0x07c0 : Data signal of output_59
//          bit 15~0 - output_59[15:0] (Read)
//          others   - reserved
// 0x07c4 : Control signal of output_59
//          bit 0  - output_59_ap_vld (Read/COR)
//          others - reserved
// 0x07d0 : Data signal of output_60
//          bit 15~0 - output_60[15:0] (Read)
//          others   - reserved
// 0x07d4 : Control signal of output_60
//          bit 0  - output_60_ap_vld (Read/COR)
//          others - reserved
// 0x07e0 : Data signal of output_61
//          bit 15~0 - output_61[15:0] (Read)
//          others   - reserved
// 0x07e4 : Control signal of output_61
//          bit 0  - output_61_ap_vld (Read/COR)
//          others - reserved
// 0x07f0 : Data signal of output_62
//          bit 15~0 - output_62[15:0] (Read)
//          others   - reserved
// 0x07f4 : Control signal of output_62
//          bit 0  - output_62_ap_vld (Read/COR)
//          others - reserved
// 0x0800 : Data signal of output_63
//          bit 15~0 - output_63[15:0] (Read)
//          others   - reserved
// 0x0804 : Control signal of output_63
//          bit 0  - output_63_ap_vld (Read/COR)
//          others - reserved
// 0x0810 : Data signal of output_64
//          bit 15~0 - output_64[15:0] (Read)
//          others   - reserved
// 0x0814 : Control signal of output_64
//          bit 0  - output_64_ap_vld (Read/COR)
//          others - reserved
// 0x0820 : Data signal of output_65
//          bit 15~0 - output_65[15:0] (Read)
//          others   - reserved
// 0x0824 : Control signal of output_65
//          bit 0  - output_65_ap_vld (Read/COR)
//          others - reserved
// 0x0830 : Data signal of output_66
//          bit 15~0 - output_66[15:0] (Read)
//          others   - reserved
// 0x0834 : Control signal of output_66
//          bit 0  - output_66_ap_vld (Read/COR)
//          others - reserved
// 0x0840 : Data signal of output_67
//          bit 15~0 - output_67[15:0] (Read)
//          others   - reserved
// 0x0844 : Control signal of output_67
//          bit 0  - output_67_ap_vld (Read/COR)
//          others - reserved
// 0x0850 : Data signal of output_68
//          bit 15~0 - output_68[15:0] (Read)
//          others   - reserved
// 0x0854 : Control signal of output_68
//          bit 0  - output_68_ap_vld (Read/COR)
//          others - reserved
// 0x0860 : Data signal of output_69
//          bit 15~0 - output_69[15:0] (Read)
//          others   - reserved
// 0x0864 : Control signal of output_69
//          bit 0  - output_69_ap_vld (Read/COR)
//          others - reserved
// 0x0870 : Data signal of output_70
//          bit 15~0 - output_70[15:0] (Read)
//          others   - reserved
// 0x0874 : Control signal of output_70
//          bit 0  - output_70_ap_vld (Read/COR)
//          others - reserved
// 0x0880 : Data signal of output_71
//          bit 15~0 - output_71[15:0] (Read)
//          others   - reserved
// 0x0884 : Control signal of output_71
//          bit 0  - output_71_ap_vld (Read/COR)
//          others - reserved
// 0x0890 : Data signal of output_72
//          bit 15~0 - output_72[15:0] (Read)
//          others   - reserved
// 0x0894 : Control signal of output_72
//          bit 0  - output_72_ap_vld (Read/COR)
//          others - reserved
// 0x08a0 : Data signal of output_73
//          bit 15~0 - output_73[15:0] (Read)
//          others   - reserved
// 0x08a4 : Control signal of output_73
//          bit 0  - output_73_ap_vld (Read/COR)
//          others - reserved
// 0x08b0 : Data signal of output_74
//          bit 15~0 - output_74[15:0] (Read)
//          others   - reserved
// 0x08b4 : Control signal of output_74
//          bit 0  - output_74_ap_vld (Read/COR)
//          others - reserved
// 0x08c0 : Data signal of output_75
//          bit 15~0 - output_75[15:0] (Read)
//          others   - reserved
// 0x08c4 : Control signal of output_75
//          bit 0  - output_75_ap_vld (Read/COR)
//          others - reserved
// 0x08d0 : Data signal of output_76
//          bit 15~0 - output_76[15:0] (Read)
//          others   - reserved
// 0x08d4 : Control signal of output_76
//          bit 0  - output_76_ap_vld (Read/COR)
//          others - reserved
// 0x08e0 : Data signal of output_77
//          bit 15~0 - output_77[15:0] (Read)
//          others   - reserved
// 0x08e4 : Control signal of output_77
//          bit 0  - output_77_ap_vld (Read/COR)
//          others - reserved
// 0x08f0 : Data signal of output_78
//          bit 15~0 - output_78[15:0] (Read)
//          others   - reserved
// 0x08f4 : Control signal of output_78
//          bit 0  - output_78_ap_vld (Read/COR)
//          others - reserved
// 0x0900 : Data signal of output_79
//          bit 15~0 - output_79[15:0] (Read)
//          others   - reserved
// 0x0904 : Control signal of output_79
//          bit 0  - output_79_ap_vld (Read/COR)
//          others - reserved
// 0x0910 : Data signal of output_80
//          bit 15~0 - output_80[15:0] (Read)
//          others   - reserved
// 0x0914 : Control signal of output_80
//          bit 0  - output_80_ap_vld (Read/COR)
//          others - reserved
// 0x0920 : Data signal of output_81
//          bit 15~0 - output_81[15:0] (Read)
//          others   - reserved
// 0x0924 : Control signal of output_81
//          bit 0  - output_81_ap_vld (Read/COR)
//          others - reserved
// 0x0930 : Data signal of output_82
//          bit 15~0 - output_82[15:0] (Read)
//          others   - reserved
// 0x0934 : Control signal of output_82
//          bit 0  - output_82_ap_vld (Read/COR)
//          others - reserved
// 0x0940 : Data signal of output_83
//          bit 15~0 - output_83[15:0] (Read)
//          others   - reserved
// 0x0944 : Control signal of output_83
//          bit 0  - output_83_ap_vld (Read/COR)
//          others - reserved
// 0x0950 : Data signal of output_84
//          bit 15~0 - output_84[15:0] (Read)
//          others   - reserved
// 0x0954 : Control signal of output_84
//          bit 0  - output_84_ap_vld (Read/COR)
//          others - reserved
// 0x0960 : Data signal of output_85
//          bit 15~0 - output_85[15:0] (Read)
//          others   - reserved
// 0x0964 : Control signal of output_85
//          bit 0  - output_85_ap_vld (Read/COR)
//          others - reserved
// 0x0970 : Data signal of output_86
//          bit 15~0 - output_86[15:0] (Read)
//          others   - reserved
// 0x0974 : Control signal of output_86
//          bit 0  - output_86_ap_vld (Read/COR)
//          others - reserved
// 0x0980 : Data signal of output_87
//          bit 15~0 - output_87[15:0] (Read)
//          others   - reserved
// 0x0984 : Control signal of output_87
//          bit 0  - output_87_ap_vld (Read/COR)
//          others - reserved
// 0x0990 : Data signal of output_88
//          bit 15~0 - output_88[15:0] (Read)
//          others   - reserved
// 0x0994 : Control signal of output_88
//          bit 0  - output_88_ap_vld (Read/COR)
//          others - reserved
// 0x09a0 : Data signal of output_89
//          bit 15~0 - output_89[15:0] (Read)
//          others   - reserved
// 0x09a4 : Control signal of output_89
//          bit 0  - output_89_ap_vld (Read/COR)
//          others - reserved
// 0x09b0 : Data signal of output_90
//          bit 15~0 - output_90[15:0] (Read)
//          others   - reserved
// 0x09b4 : Control signal of output_90
//          bit 0  - output_90_ap_vld (Read/COR)
//          others - reserved
// 0x09c0 : Data signal of output_91
//          bit 15~0 - output_91[15:0] (Read)
//          others   - reserved
// 0x09c4 : Control signal of output_91
//          bit 0  - output_91_ap_vld (Read/COR)
//          others - reserved
// 0x09d0 : Data signal of output_92
//          bit 15~0 - output_92[15:0] (Read)
//          others   - reserved
// 0x09d4 : Control signal of output_92
//          bit 0  - output_92_ap_vld (Read/COR)
//          others - reserved
// 0x09e0 : Data signal of output_93
//          bit 15~0 - output_93[15:0] (Read)
//          others   - reserved
// 0x09e4 : Control signal of output_93
//          bit 0  - output_93_ap_vld (Read/COR)
//          others - reserved
// 0x09f0 : Data signal of output_94
//          bit 15~0 - output_94[15:0] (Read)
//          others   - reserved
// 0x09f4 : Control signal of output_94
//          bit 0  - output_94_ap_vld (Read/COR)
//          others - reserved
// 0x0a00 : Data signal of output_95
//          bit 15~0 - output_95[15:0] (Read)
//          others   - reserved
// 0x0a04 : Control signal of output_95
//          bit 0  - output_95_ap_vld (Read/COR)
//          others - reserved
// 0x0a10 : Data signal of output_96
//          bit 15~0 - output_96[15:0] (Read)
//          others   - reserved
// 0x0a14 : Control signal of output_96
//          bit 0  - output_96_ap_vld (Read/COR)
//          others - reserved
// 0x0a20 : Data signal of output_97
//          bit 15~0 - output_97[15:0] (Read)
//          others   - reserved
// 0x0a24 : Control signal of output_97
//          bit 0  - output_97_ap_vld (Read/COR)
//          others - reserved
// 0x0a30 : Data signal of output_98
//          bit 15~0 - output_98[15:0] (Read)
//          others   - reserved
// 0x0a34 : Control signal of output_98
//          bit 0  - output_98_ap_vld (Read/COR)
//          others - reserved
// 0x0a40 : Data signal of output_99
//          bit 15~0 - output_99[15:0] (Read)
//          others   - reserved
// 0x0a44 : Control signal of output_99
//          bit 0  - output_99_ap_vld (Read/COR)
//          others - reserved
// 0x0a50 : Data signal of output_100
//          bit 15~0 - output_100[15:0] (Read)
//          others   - reserved
// 0x0a54 : Control signal of output_100
//          bit 0  - output_100_ap_vld (Read/COR)
//          others - reserved
// 0x0a60 : Data signal of output_101
//          bit 15~0 - output_101[15:0] (Read)
//          others   - reserved
// 0x0a64 : Control signal of output_101
//          bit 0  - output_101_ap_vld (Read/COR)
//          others - reserved
// 0x0a70 : Data signal of output_102
//          bit 15~0 - output_102[15:0] (Read)
//          others   - reserved
// 0x0a74 : Control signal of output_102
//          bit 0  - output_102_ap_vld (Read/COR)
//          others - reserved
// 0x0a80 : Data signal of output_103
//          bit 15~0 - output_103[15:0] (Read)
//          others   - reserved
// 0x0a84 : Control signal of output_103
//          bit 0  - output_103_ap_vld (Read/COR)
//          others - reserved
// 0x0a90 : Data signal of output_104
//          bit 15~0 - output_104[15:0] (Read)
//          others   - reserved
// 0x0a94 : Control signal of output_104
//          bit 0  - output_104_ap_vld (Read/COR)
//          others - reserved
// 0x0aa0 : Data signal of output_105
//          bit 15~0 - output_105[15:0] (Read)
//          others   - reserved
// 0x0aa4 : Control signal of output_105
//          bit 0  - output_105_ap_vld (Read/COR)
//          others - reserved
// 0x0ab0 : Data signal of output_106
//          bit 15~0 - output_106[15:0] (Read)
//          others   - reserved
// 0x0ab4 : Control signal of output_106
//          bit 0  - output_106_ap_vld (Read/COR)
//          others - reserved
// 0x0ac0 : Data signal of output_107
//          bit 15~0 - output_107[15:0] (Read)
//          others   - reserved
// 0x0ac4 : Control signal of output_107
//          bit 0  - output_107_ap_vld (Read/COR)
//          others - reserved
// 0x0ad0 : Data signal of output_108
//          bit 15~0 - output_108[15:0] (Read)
//          others   - reserved
// 0x0ad4 : Control signal of output_108
//          bit 0  - output_108_ap_vld (Read/COR)
//          others - reserved
// 0x0ae0 : Data signal of output_109
//          bit 15~0 - output_109[15:0] (Read)
//          others   - reserved
// 0x0ae4 : Control signal of output_109
//          bit 0  - output_109_ap_vld (Read/COR)
//          others - reserved
// 0x0af0 : Data signal of output_110
//          bit 15~0 - output_110[15:0] (Read)
//          others   - reserved
// 0x0af4 : Control signal of output_110
//          bit 0  - output_110_ap_vld (Read/COR)
//          others - reserved
// 0x0b00 : Data signal of output_111
//          bit 15~0 - output_111[15:0] (Read)
//          others   - reserved
// 0x0b04 : Control signal of output_111
//          bit 0  - output_111_ap_vld (Read/COR)
//          others - reserved
// 0x0b10 : Data signal of output_112
//          bit 15~0 - output_112[15:0] (Read)
//          others   - reserved
// 0x0b14 : Control signal of output_112
//          bit 0  - output_112_ap_vld (Read/COR)
//          others - reserved
// 0x0b20 : Data signal of output_113
//          bit 15~0 - output_113[15:0] (Read)
//          others   - reserved
// 0x0b24 : Control signal of output_113
//          bit 0  - output_113_ap_vld (Read/COR)
//          others - reserved
// 0x0b30 : Data signal of output_114
//          bit 15~0 - output_114[15:0] (Read)
//          others   - reserved
// 0x0b34 : Control signal of output_114
//          bit 0  - output_114_ap_vld (Read/COR)
//          others - reserved
// 0x0b40 : Data signal of output_115
//          bit 15~0 - output_115[15:0] (Read)
//          others   - reserved
// 0x0b44 : Control signal of output_115
//          bit 0  - output_115_ap_vld (Read/COR)
//          others - reserved
// 0x0b50 : Data signal of output_116
//          bit 15~0 - output_116[15:0] (Read)
//          others   - reserved
// 0x0b54 : Control signal of output_116
//          bit 0  - output_116_ap_vld (Read/COR)
//          others - reserved
// 0x0b60 : Data signal of output_117
//          bit 15~0 - output_117[15:0] (Read)
//          others   - reserved
// 0x0b64 : Control signal of output_117
//          bit 0  - output_117_ap_vld (Read/COR)
//          others - reserved
// 0x0b70 : Data signal of output_118
//          bit 15~0 - output_118[15:0] (Read)
//          others   - reserved
// 0x0b74 : Control signal of output_118
//          bit 0  - output_118_ap_vld (Read/COR)
//          others - reserved
// 0x0b80 : Data signal of output_119
//          bit 15~0 - output_119[15:0] (Read)
//          others   - reserved
// 0x0b84 : Control signal of output_119
//          bit 0  - output_119_ap_vld (Read/COR)
//          others - reserved
// 0x0b90 : Data signal of output_120
//          bit 15~0 - output_120[15:0] (Read)
//          others   - reserved
// 0x0b94 : Control signal of output_120
//          bit 0  - output_120_ap_vld (Read/COR)
//          others - reserved
// 0x0ba0 : Data signal of output_121
//          bit 15~0 - output_121[15:0] (Read)
//          others   - reserved
// 0x0ba4 : Control signal of output_121
//          bit 0  - output_121_ap_vld (Read/COR)
//          others - reserved
// 0x0bb0 : Data signal of output_122
//          bit 15~0 - output_122[15:0] (Read)
//          others   - reserved
// 0x0bb4 : Control signal of output_122
//          bit 0  - output_122_ap_vld (Read/COR)
//          others - reserved
// 0x0bc0 : Data signal of output_123
//          bit 15~0 - output_123[15:0] (Read)
//          others   - reserved
// 0x0bc4 : Control signal of output_123
//          bit 0  - output_123_ap_vld (Read/COR)
//          others - reserved
// 0x0bd0 : Data signal of output_124
//          bit 15~0 - output_124[15:0] (Read)
//          others   - reserved
// 0x0bd4 : Control signal of output_124
//          bit 0  - output_124_ap_vld (Read/COR)
//          others - reserved
// 0x0be0 : Data signal of output_125
//          bit 15~0 - output_125[15:0] (Read)
//          others   - reserved
// 0x0be4 : Control signal of output_125
//          bit 0  - output_125_ap_vld (Read/COR)
//          others - reserved
// 0x0bf0 : Data signal of output_126
//          bit 15~0 - output_126[15:0] (Read)
//          others   - reserved
// 0x0bf4 : Control signal of output_126
//          bit 0  - output_126_ap_vld (Read/COR)
//          others - reserved
// 0x0c00 : Data signal of output_127
//          bit 15~0 - output_127[15:0] (Read)
//          others   - reserved
// 0x0c04 : Control signal of output_127
//          bit 0  - output_127_ap_vld (Read/COR)
//          others - reserved
// 0x0c10 : Data signal of numOfOutputNeurons
//          bit 15~0 - numOfOutputNeurons[15:0] (Read/Write)
//          others   - reserved
// 0x0c14 : reserved
// 0x0c18 : Data signal of activation
//          bit 7~0 - activation[7:0] (Read/Write)
//          others  - reserved
// 0x0c1c : reserved
// 0x0d00 ~
// 0x0dff : Memory 'bias' (128 * 16b)
//          Word n : bit [15: 0] - bias[2n]
//                   bit [31:16] - bias[2n+1]
// 0x0e00 ~
// 0x0eff : Memory 'weights_0' (128 * 16b)
//          Word n : bit [15: 0] - weights_0[2n]
//                   bit [31:16] - weights_0[2n+1]
// 0x0f00 ~
// 0x0fff : Memory 'weights_1' (128 * 16b)
//          Word n : bit [15: 0] - weights_1[2n]
//                   bit [31:16] - weights_1[2n+1]
// 0x1000 ~
// 0x10ff : Memory 'weights_2' (128 * 16b)
//          Word n : bit [15: 0] - weights_2[2n]
//                   bit [31:16] - weights_2[2n+1]
// 0x1100 ~
// 0x11ff : Memory 'weights_3' (128 * 16b)
//          Word n : bit [15: 0] - weights_3[2n]
//                   bit [31:16] - weights_3[2n+1]
// 0x1200 ~
// 0x12ff : Memory 'weights_4' (128 * 16b)
//          Word n : bit [15: 0] - weights_4[2n]
//                   bit [31:16] - weights_4[2n+1]
// 0x1300 ~
// 0x13ff : Memory 'weights_5' (128 * 16b)
//          Word n : bit [15: 0] - weights_5[2n]
//                   bit [31:16] - weights_5[2n+1]
// 0x1400 ~
// 0x14ff : Memory 'weights_6' (128 * 16b)
//          Word n : bit [15: 0] - weights_6[2n]
//                   bit [31:16] - weights_6[2n+1]
// 0x1500 ~
// 0x15ff : Memory 'weights_7' (128 * 16b)
//          Word n : bit [15: 0] - weights_7[2n]
//                   bit [31:16] - weights_7[2n+1]
// 0x1600 ~
// 0x16ff : Memory 'weights_8' (128 * 16b)
//          Word n : bit [15: 0] - weights_8[2n]
//                   bit [31:16] - weights_8[2n+1]
// 0x1700 ~
// 0x17ff : Memory 'weights_9' (128 * 16b)
//          Word n : bit [15: 0] - weights_9[2n]
//                   bit [31:16] - weights_9[2n+1]
// 0x1800 ~
// 0x18ff : Memory 'weights_10' (128 * 16b)
//          Word n : bit [15: 0] - weights_10[2n]
//                   bit [31:16] - weights_10[2n+1]
// 0x1900 ~
// 0x19ff : Memory 'weights_11' (128 * 16b)
//          Word n : bit [15: 0] - weights_11[2n]
//                   bit [31:16] - weights_11[2n+1]
// 0x1a00 ~
// 0x1aff : Memory 'weights_12' (128 * 16b)
//          Word n : bit [15: 0] - weights_12[2n]
//                   bit [31:16] - weights_12[2n+1]
// 0x1b00 ~
// 0x1bff : Memory 'weights_13' (128 * 16b)
//          Word n : bit [15: 0] - weights_13[2n]
//                   bit [31:16] - weights_13[2n+1]
// 0x1c00 ~
// 0x1cff : Memory 'weights_14' (128 * 16b)
//          Word n : bit [15: 0] - weights_14[2n]
//                   bit [31:16] - weights_14[2n+1]
// 0x1d00 ~
// 0x1dff : Memory 'weights_15' (128 * 16b)
//          Word n : bit [15: 0] - weights_15[2n]
//                   bit [31:16] - weights_15[2n+1]
// 0x1e00 ~
// 0x1eff : Memory 'weights_16' (128 * 16b)
//          Word n : bit [15: 0] - weights_16[2n]
//                   bit [31:16] - weights_16[2n+1]
// 0x1f00 ~
// 0x1fff : Memory 'weights_17' (128 * 16b)
//          Word n : bit [15: 0] - weights_17[2n]
//                   bit [31:16] - weights_17[2n+1]
// 0x2000 ~
// 0x20ff : Memory 'weights_18' (128 * 16b)
//          Word n : bit [15: 0] - weights_18[2n]
//                   bit [31:16] - weights_18[2n+1]
// 0x2100 ~
// 0x21ff : Memory 'weights_19' (128 * 16b)
//          Word n : bit [15: 0] - weights_19[2n]
//                   bit [31:16] - weights_19[2n+1]
// 0x2200 ~
// 0x22ff : Memory 'weights_20' (128 * 16b)
//          Word n : bit [15: 0] - weights_20[2n]
//                   bit [31:16] - weights_20[2n+1]
// 0x2300 ~
// 0x23ff : Memory 'weights_21' (128 * 16b)
//          Word n : bit [15: 0] - weights_21[2n]
//                   bit [31:16] - weights_21[2n+1]
// 0x2400 ~
// 0x24ff : Memory 'weights_22' (128 * 16b)
//          Word n : bit [15: 0] - weights_22[2n]
//                   bit [31:16] - weights_22[2n+1]
// 0x2500 ~
// 0x25ff : Memory 'weights_23' (128 * 16b)
//          Word n : bit [15: 0] - weights_23[2n]
//                   bit [31:16] - weights_23[2n+1]
// 0x2600 ~
// 0x26ff : Memory 'weights_24' (128 * 16b)
//          Word n : bit [15: 0] - weights_24[2n]
//                   bit [31:16] - weights_24[2n+1]
// 0x2700 ~
// 0x27ff : Memory 'weights_25' (128 * 16b)
//          Word n : bit [15: 0] - weights_25[2n]
//                   bit [31:16] - weights_25[2n+1]
// 0x2800 ~
// 0x28ff : Memory 'weights_26' (128 * 16b)
//          Word n : bit [15: 0] - weights_26[2n]
//                   bit [31:16] - weights_26[2n+1]
// 0x2900 ~
// 0x29ff : Memory 'weights_27' (128 * 16b)
//          Word n : bit [15: 0] - weights_27[2n]
//                   bit [31:16] - weights_27[2n+1]
// 0x2a00 ~
// 0x2aff : Memory 'weights_28' (128 * 16b)
//          Word n : bit [15: 0] - weights_28[2n]
//                   bit [31:16] - weights_28[2n+1]
// 0x2b00 ~
// 0x2bff : Memory 'weights_29' (128 * 16b)
//          Word n : bit [15: 0] - weights_29[2n]
//                   bit [31:16] - weights_29[2n+1]
// 0x2c00 ~
// 0x2cff : Memory 'weights_30' (128 * 16b)
//          Word n : bit [15: 0] - weights_30[2n]
//                   bit [31:16] - weights_30[2n+1]
// 0x2d00 ~
// 0x2dff : Memory 'weights_31' (128 * 16b)
//          Word n : bit [15: 0] - weights_31[2n]
//                   bit [31:16] - weights_31[2n+1]
// 0x2e00 ~
// 0x2eff : Memory 'weights_32' (128 * 16b)
//          Word n : bit [15: 0] - weights_32[2n]
//                   bit [31:16] - weights_32[2n+1]
// 0x2f00 ~
// 0x2fff : Memory 'weights_33' (128 * 16b)
//          Word n : bit [15: 0] - weights_33[2n]
//                   bit [31:16] - weights_33[2n+1]
// 0x3000 ~
// 0x30ff : Memory 'weights_34' (128 * 16b)
//          Word n : bit [15: 0] - weights_34[2n]
//                   bit [31:16] - weights_34[2n+1]
// 0x3100 ~
// 0x31ff : Memory 'weights_35' (128 * 16b)
//          Word n : bit [15: 0] - weights_35[2n]
//                   bit [31:16] - weights_35[2n+1]
// 0x3200 ~
// 0x32ff : Memory 'weights_36' (128 * 16b)
//          Word n : bit [15: 0] - weights_36[2n]
//                   bit [31:16] - weights_36[2n+1]
// 0x3300 ~
// 0x33ff : Memory 'weights_37' (128 * 16b)
//          Word n : bit [15: 0] - weights_37[2n]
//                   bit [31:16] - weights_37[2n+1]
// 0x3400 ~
// 0x34ff : Memory 'weights_38' (128 * 16b)
//          Word n : bit [15: 0] - weights_38[2n]
//                   bit [31:16] - weights_38[2n+1]
// 0x3500 ~
// 0x35ff : Memory 'weights_39' (128 * 16b)
//          Word n : bit [15: 0] - weights_39[2n]
//                   bit [31:16] - weights_39[2n+1]
// 0x3600 ~
// 0x36ff : Memory 'weights_40' (128 * 16b)
//          Word n : bit [15: 0] - weights_40[2n]
//                   bit [31:16] - weights_40[2n+1]
// 0x3700 ~
// 0x37ff : Memory 'weights_41' (128 * 16b)
//          Word n : bit [15: 0] - weights_41[2n]
//                   bit [31:16] - weights_41[2n+1]
// 0x3800 ~
// 0x38ff : Memory 'weights_42' (128 * 16b)
//          Word n : bit [15: 0] - weights_42[2n]
//                   bit [31:16] - weights_42[2n+1]
// 0x3900 ~
// 0x39ff : Memory 'weights_43' (128 * 16b)
//          Word n : bit [15: 0] - weights_43[2n]
//                   bit [31:16] - weights_43[2n+1]
// 0x3a00 ~
// 0x3aff : Memory 'weights_44' (128 * 16b)
//          Word n : bit [15: 0] - weights_44[2n]
//                   bit [31:16] - weights_44[2n+1]
// 0x3b00 ~
// 0x3bff : Memory 'weights_45' (128 * 16b)
//          Word n : bit [15: 0] - weights_45[2n]
//                   bit [31:16] - weights_45[2n+1]
// 0x3c00 ~
// 0x3cff : Memory 'weights_46' (128 * 16b)
//          Word n : bit [15: 0] - weights_46[2n]
//                   bit [31:16] - weights_46[2n+1]
// 0x3d00 ~
// 0x3dff : Memory 'weights_47' (128 * 16b)
//          Word n : bit [15: 0] - weights_47[2n]
//                   bit [31:16] - weights_47[2n+1]
// 0x3e00 ~
// 0x3eff : Memory 'weights_48' (128 * 16b)
//          Word n : bit [15: 0] - weights_48[2n]
//                   bit [31:16] - weights_48[2n+1]
// 0x3f00 ~
// 0x3fff : Memory 'weights_49' (128 * 16b)
//          Word n : bit [15: 0] - weights_49[2n]
//                   bit [31:16] - weights_49[2n+1]
// 0x4000 ~
// 0x40ff : Memory 'weights_50' (128 * 16b)
//          Word n : bit [15: 0] - weights_50[2n]
//                   bit [31:16] - weights_50[2n+1]
// 0x4100 ~
// 0x41ff : Memory 'weights_51' (128 * 16b)
//          Word n : bit [15: 0] - weights_51[2n]
//                   bit [31:16] - weights_51[2n+1]
// 0x4200 ~
// 0x42ff : Memory 'weights_52' (128 * 16b)
//          Word n : bit [15: 0] - weights_52[2n]
//                   bit [31:16] - weights_52[2n+1]
// 0x4300 ~
// 0x43ff : Memory 'weights_53' (128 * 16b)
//          Word n : bit [15: 0] - weights_53[2n]
//                   bit [31:16] - weights_53[2n+1]
// 0x4400 ~
// 0x44ff : Memory 'weights_54' (128 * 16b)
//          Word n : bit [15: 0] - weights_54[2n]
//                   bit [31:16] - weights_54[2n+1]
// 0x4500 ~
// 0x45ff : Memory 'weights_55' (128 * 16b)
//          Word n : bit [15: 0] - weights_55[2n]
//                   bit [31:16] - weights_55[2n+1]
// 0x4600 ~
// 0x46ff : Memory 'weights_56' (128 * 16b)
//          Word n : bit [15: 0] - weights_56[2n]
//                   bit [31:16] - weights_56[2n+1]
// 0x4700 ~
// 0x47ff : Memory 'weights_57' (128 * 16b)
//          Word n : bit [15: 0] - weights_57[2n]
//                   bit [31:16] - weights_57[2n+1]
// 0x4800 ~
// 0x48ff : Memory 'weights_58' (128 * 16b)
//          Word n : bit [15: 0] - weights_58[2n]
//                   bit [31:16] - weights_58[2n+1]
// 0x4900 ~
// 0x49ff : Memory 'weights_59' (128 * 16b)
//          Word n : bit [15: 0] - weights_59[2n]
//                   bit [31:16] - weights_59[2n+1]
// 0x4a00 ~
// 0x4aff : Memory 'weights_60' (128 * 16b)
//          Word n : bit [15: 0] - weights_60[2n]
//                   bit [31:16] - weights_60[2n+1]
// 0x4b00 ~
// 0x4bff : Memory 'weights_61' (128 * 16b)
//          Word n : bit [15: 0] - weights_61[2n]
//                   bit [31:16] - weights_61[2n+1]
// 0x4c00 ~
// 0x4cff : Memory 'weights_62' (128 * 16b)
//          Word n : bit [15: 0] - weights_62[2n]
//                   bit [31:16] - weights_62[2n+1]
// 0x4d00 ~
// 0x4dff : Memory 'weights_63' (128 * 16b)
//          Word n : bit [15: 0] - weights_63[2n]
//                   bit [31:16] - weights_63[2n+1]
// 0x4e00 ~
// 0x4eff : Memory 'weights_64' (128 * 16b)
//          Word n : bit [15: 0] - weights_64[2n]
//                   bit [31:16] - weights_64[2n+1]
// 0x4f00 ~
// 0x4fff : Memory 'weights_65' (128 * 16b)
//          Word n : bit [15: 0] - weights_65[2n]
//                   bit [31:16] - weights_65[2n+1]
// 0x5000 ~
// 0x50ff : Memory 'weights_66' (128 * 16b)
//          Word n : bit [15: 0] - weights_66[2n]
//                   bit [31:16] - weights_66[2n+1]
// 0x5100 ~
// 0x51ff : Memory 'weights_67' (128 * 16b)
//          Word n : bit [15: 0] - weights_67[2n]
//                   bit [31:16] - weights_67[2n+1]
// 0x5200 ~
// 0x52ff : Memory 'weights_68' (128 * 16b)
//          Word n : bit [15: 0] - weights_68[2n]
//                   bit [31:16] - weights_68[2n+1]
// 0x5300 ~
// 0x53ff : Memory 'weights_69' (128 * 16b)
//          Word n : bit [15: 0] - weights_69[2n]
//                   bit [31:16] - weights_69[2n+1]
// 0x5400 ~
// 0x54ff : Memory 'weights_70' (128 * 16b)
//          Word n : bit [15: 0] - weights_70[2n]
//                   bit [31:16] - weights_70[2n+1]
// 0x5500 ~
// 0x55ff : Memory 'weights_71' (128 * 16b)
//          Word n : bit [15: 0] - weights_71[2n]
//                   bit [31:16] - weights_71[2n+1]
// 0x5600 ~
// 0x56ff : Memory 'weights_72' (128 * 16b)
//          Word n : bit [15: 0] - weights_72[2n]
//                   bit [31:16] - weights_72[2n+1]
// 0x5700 ~
// 0x57ff : Memory 'weights_73' (128 * 16b)
//          Word n : bit [15: 0] - weights_73[2n]
//                   bit [31:16] - weights_73[2n+1]
// 0x5800 ~
// 0x58ff : Memory 'weights_74' (128 * 16b)
//          Word n : bit [15: 0] - weights_74[2n]
//                   bit [31:16] - weights_74[2n+1]
// 0x5900 ~
// 0x59ff : Memory 'weights_75' (128 * 16b)
//          Word n : bit [15: 0] - weights_75[2n]
//                   bit [31:16] - weights_75[2n+1]
// 0x5a00 ~
// 0x5aff : Memory 'weights_76' (128 * 16b)
//          Word n : bit [15: 0] - weights_76[2n]
//                   bit [31:16] - weights_76[2n+1]
// 0x5b00 ~
// 0x5bff : Memory 'weights_77' (128 * 16b)
//          Word n : bit [15: 0] - weights_77[2n]
//                   bit [31:16] - weights_77[2n+1]
// 0x5c00 ~
// 0x5cff : Memory 'weights_78' (128 * 16b)
//          Word n : bit [15: 0] - weights_78[2n]
//                   bit [31:16] - weights_78[2n+1]
// 0x5d00 ~
// 0x5dff : Memory 'weights_79' (128 * 16b)
//          Word n : bit [15: 0] - weights_79[2n]
//                   bit [31:16] - weights_79[2n+1]
// 0x5e00 ~
// 0x5eff : Memory 'weights_80' (128 * 16b)
//          Word n : bit [15: 0] - weights_80[2n]
//                   bit [31:16] - weights_80[2n+1]
// 0x5f00 ~
// 0x5fff : Memory 'weights_81' (128 * 16b)
//          Word n : bit [15: 0] - weights_81[2n]
//                   bit [31:16] - weights_81[2n+1]
// 0x6000 ~
// 0x60ff : Memory 'weights_82' (128 * 16b)
//          Word n : bit [15: 0] - weights_82[2n]
//                   bit [31:16] - weights_82[2n+1]
// 0x6100 ~
// 0x61ff : Memory 'weights_83' (128 * 16b)
//          Word n : bit [15: 0] - weights_83[2n]
//                   bit [31:16] - weights_83[2n+1]
// 0x6200 ~
// 0x62ff : Memory 'weights_84' (128 * 16b)
//          Word n : bit [15: 0] - weights_84[2n]
//                   bit [31:16] - weights_84[2n+1]
// 0x6300 ~
// 0x63ff : Memory 'weights_85' (128 * 16b)
//          Word n : bit [15: 0] - weights_85[2n]
//                   bit [31:16] - weights_85[2n+1]
// 0x6400 ~
// 0x64ff : Memory 'weights_86' (128 * 16b)
//          Word n : bit [15: 0] - weights_86[2n]
//                   bit [31:16] - weights_86[2n+1]
// 0x6500 ~
// 0x65ff : Memory 'weights_87' (128 * 16b)
//          Word n : bit [15: 0] - weights_87[2n]
//                   bit [31:16] - weights_87[2n+1]
// 0x6600 ~
// 0x66ff : Memory 'weights_88' (128 * 16b)
//          Word n : bit [15: 0] - weights_88[2n]
//                   bit [31:16] - weights_88[2n+1]
// 0x6700 ~
// 0x67ff : Memory 'weights_89' (128 * 16b)
//          Word n : bit [15: 0] - weights_89[2n]
//                   bit [31:16] - weights_89[2n+1]
// 0x6800 ~
// 0x68ff : Memory 'weights_90' (128 * 16b)
//          Word n : bit [15: 0] - weights_90[2n]
//                   bit [31:16] - weights_90[2n+1]
// 0x6900 ~
// 0x69ff : Memory 'weights_91' (128 * 16b)
//          Word n : bit [15: 0] - weights_91[2n]
//                   bit [31:16] - weights_91[2n+1]
// 0x6a00 ~
// 0x6aff : Memory 'weights_92' (128 * 16b)
//          Word n : bit [15: 0] - weights_92[2n]
//                   bit [31:16] - weights_92[2n+1]
// 0x6b00 ~
// 0x6bff : Memory 'weights_93' (128 * 16b)
//          Word n : bit [15: 0] - weights_93[2n]
//                   bit [31:16] - weights_93[2n+1]
// 0x6c00 ~
// 0x6cff : Memory 'weights_94' (128 * 16b)
//          Word n : bit [15: 0] - weights_94[2n]
//                   bit [31:16] - weights_94[2n+1]
// 0x6d00 ~
// 0x6dff : Memory 'weights_95' (128 * 16b)
//          Word n : bit [15: 0] - weights_95[2n]
//                   bit [31:16] - weights_95[2n+1]
// 0x6e00 ~
// 0x6eff : Memory 'weights_96' (128 * 16b)
//          Word n : bit [15: 0] - weights_96[2n]
//                   bit [31:16] - weights_96[2n+1]
// 0x6f00 ~
// 0x6fff : Memory 'weights_97' (128 * 16b)
//          Word n : bit [15: 0] - weights_97[2n]
//                   bit [31:16] - weights_97[2n+1]
// 0x7000 ~
// 0x70ff : Memory 'weights_98' (128 * 16b)
//          Word n : bit [15: 0] - weights_98[2n]
//                   bit [31:16] - weights_98[2n+1]
// 0x7100 ~
// 0x71ff : Memory 'weights_99' (128 * 16b)
//          Word n : bit [15: 0] - weights_99[2n]
//                   bit [31:16] - weights_99[2n+1]
// 0x7200 ~
// 0x72ff : Memory 'weights_100' (128 * 16b)
//          Word n : bit [15: 0] - weights_100[2n]
//                   bit [31:16] - weights_100[2n+1]
// 0x7300 ~
// 0x73ff : Memory 'weights_101' (128 * 16b)
//          Word n : bit [15: 0] - weights_101[2n]
//                   bit [31:16] - weights_101[2n+1]
// 0x7400 ~
// 0x74ff : Memory 'weights_102' (128 * 16b)
//          Word n : bit [15: 0] - weights_102[2n]
//                   bit [31:16] - weights_102[2n+1]
// 0x7500 ~
// 0x75ff : Memory 'weights_103' (128 * 16b)
//          Word n : bit [15: 0] - weights_103[2n]
//                   bit [31:16] - weights_103[2n+1]
// 0x7600 ~
// 0x76ff : Memory 'weights_104' (128 * 16b)
//          Word n : bit [15: 0] - weights_104[2n]
//                   bit [31:16] - weights_104[2n+1]
// 0x7700 ~
// 0x77ff : Memory 'weights_105' (128 * 16b)
//          Word n : bit [15: 0] - weights_105[2n]
//                   bit [31:16] - weights_105[2n+1]
// 0x7800 ~
// 0x78ff : Memory 'weights_106' (128 * 16b)
//          Word n : bit [15: 0] - weights_106[2n]
//                   bit [31:16] - weights_106[2n+1]
// 0x7900 ~
// 0x79ff : Memory 'weights_107' (128 * 16b)
//          Word n : bit [15: 0] - weights_107[2n]
//                   bit [31:16] - weights_107[2n+1]
// 0x7a00 ~
// 0x7aff : Memory 'weights_108' (128 * 16b)
//          Word n : bit [15: 0] - weights_108[2n]
//                   bit [31:16] - weights_108[2n+1]
// 0x7b00 ~
// 0x7bff : Memory 'weights_109' (128 * 16b)
//          Word n : bit [15: 0] - weights_109[2n]
//                   bit [31:16] - weights_109[2n+1]
// 0x7c00 ~
// 0x7cff : Memory 'weights_110' (128 * 16b)
//          Word n : bit [15: 0] - weights_110[2n]
//                   bit [31:16] - weights_110[2n+1]
// 0x7d00 ~
// 0x7dff : Memory 'weights_111' (128 * 16b)
//          Word n : bit [15: 0] - weights_111[2n]
//                   bit [31:16] - weights_111[2n+1]
// 0x7e00 ~
// 0x7eff : Memory 'weights_112' (128 * 16b)
//          Word n : bit [15: 0] - weights_112[2n]
//                   bit [31:16] - weights_112[2n+1]
// 0x7f00 ~
// 0x7fff : Memory 'weights_113' (128 * 16b)
//          Word n : bit [15: 0] - weights_113[2n]
//                   bit [31:16] - weights_113[2n+1]
// 0x8000 ~
// 0x80ff : Memory 'weights_114' (128 * 16b)
//          Word n : bit [15: 0] - weights_114[2n]
//                   bit [31:16] - weights_114[2n+1]
// 0x8100 ~
// 0x81ff : Memory 'weights_115' (128 * 16b)
//          Word n : bit [15: 0] - weights_115[2n]
//                   bit [31:16] - weights_115[2n+1]
// 0x8200 ~
// 0x82ff : Memory 'weights_116' (128 * 16b)
//          Word n : bit [15: 0] - weights_116[2n]
//                   bit [31:16] - weights_116[2n+1]
// 0x8300 ~
// 0x83ff : Memory 'weights_117' (128 * 16b)
//          Word n : bit [15: 0] - weights_117[2n]
//                   bit [31:16] - weights_117[2n+1]
// 0x8400 ~
// 0x84ff : Memory 'weights_118' (128 * 16b)
//          Word n : bit [15: 0] - weights_118[2n]
//                   bit [31:16] - weights_118[2n+1]
// 0x8500 ~
// 0x85ff : Memory 'weights_119' (128 * 16b)
//          Word n : bit [15: 0] - weights_119[2n]
//                   bit [31:16] - weights_119[2n+1]
// 0x8600 ~
// 0x86ff : Memory 'weights_120' (128 * 16b)
//          Word n : bit [15: 0] - weights_120[2n]
//                   bit [31:16] - weights_120[2n+1]
// 0x8700 ~
// 0x87ff : Memory 'weights_121' (128 * 16b)
//          Word n : bit [15: 0] - weights_121[2n]
//                   bit [31:16] - weights_121[2n+1]
// 0x8800 ~
// 0x88ff : Memory 'weights_122' (128 * 16b)
//          Word n : bit [15: 0] - weights_122[2n]
//                   bit [31:16] - weights_122[2n+1]
// 0x8900 ~
// 0x89ff : Memory 'weights_123' (128 * 16b)
//          Word n : bit [15: 0] - weights_123[2n]
//                   bit [31:16] - weights_123[2n+1]
// 0x8a00 ~
// 0x8aff : Memory 'weights_124' (128 * 16b)
//          Word n : bit [15: 0] - weights_124[2n]
//                   bit [31:16] - weights_124[2n+1]
// 0x8b00 ~
// 0x8bff : Memory 'weights_125' (128 * 16b)
//          Word n : bit [15: 0] - weights_125[2n]
//                   bit [31:16] - weights_125[2n+1]
// 0x8c00 ~
// 0x8cff : Memory 'weights_126' (128 * 16b)
//          Word n : bit [15: 0] - weights_126[2n]
//                   bit [31:16] - weights_126[2n+1]
// 0x8d00 ~
// 0x8dff : Memory 'weights_127' (128 * 16b)
//          Word n : bit [15: 0] - weights_127[2n]
//                   bit [31:16] - weights_127[2n+1]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL                 0x0000
#define CONTROL_ADDR_GIE                     0x0004
#define CONTROL_ADDR_IER                     0x0008
#define CONTROL_ADDR_ISR                     0x000c
#define CONTROL_ADDR_INPUT_0_DATA            0x0010
#define CONTROL_BITS_INPUT_0_DATA            16
#define CONTROL_ADDR_INPUT_1_DATA            0x0018
#define CONTROL_BITS_INPUT_1_DATA            16
#define CONTROL_ADDR_INPUT_2_DATA            0x0020
#define CONTROL_BITS_INPUT_2_DATA            16
#define CONTROL_ADDR_INPUT_3_DATA            0x0028
#define CONTROL_BITS_INPUT_3_DATA            16
#define CONTROL_ADDR_INPUT_4_DATA            0x0030
#define CONTROL_BITS_INPUT_4_DATA            16
#define CONTROL_ADDR_INPUT_5_DATA            0x0038
#define CONTROL_BITS_INPUT_5_DATA            16
#define CONTROL_ADDR_INPUT_6_DATA            0x0040
#define CONTROL_BITS_INPUT_6_DATA            16
#define CONTROL_ADDR_INPUT_7_DATA            0x0048
#define CONTROL_BITS_INPUT_7_DATA            16
#define CONTROL_ADDR_INPUT_8_DATA            0x0050
#define CONTROL_BITS_INPUT_8_DATA            16
#define CONTROL_ADDR_INPUT_9_DATA            0x0058
#define CONTROL_BITS_INPUT_9_DATA            16
#define CONTROL_ADDR_INPUT_10_DATA           0x0060
#define CONTROL_BITS_INPUT_10_DATA           16
#define CONTROL_ADDR_INPUT_11_DATA           0x0068
#define CONTROL_BITS_INPUT_11_DATA           16
#define CONTROL_ADDR_INPUT_12_DATA           0x0070
#define CONTROL_BITS_INPUT_12_DATA           16
#define CONTROL_ADDR_INPUT_13_DATA           0x0078
#define CONTROL_BITS_INPUT_13_DATA           16
#define CONTROL_ADDR_INPUT_14_DATA           0x0080
#define CONTROL_BITS_INPUT_14_DATA           16
#define CONTROL_ADDR_INPUT_15_DATA           0x0088
#define CONTROL_BITS_INPUT_15_DATA           16
#define CONTROL_ADDR_INPUT_16_DATA           0x0090
#define CONTROL_BITS_INPUT_16_DATA           16
#define CONTROL_ADDR_INPUT_17_DATA           0x0098
#define CONTROL_BITS_INPUT_17_DATA           16
#define CONTROL_ADDR_INPUT_18_DATA           0x00a0
#define CONTROL_BITS_INPUT_18_DATA           16
#define CONTROL_ADDR_INPUT_19_DATA           0x00a8
#define CONTROL_BITS_INPUT_19_DATA           16
#define CONTROL_ADDR_INPUT_20_DATA           0x00b0
#define CONTROL_BITS_INPUT_20_DATA           16
#define CONTROL_ADDR_INPUT_21_DATA           0x00b8
#define CONTROL_BITS_INPUT_21_DATA           16
#define CONTROL_ADDR_INPUT_22_DATA           0x00c0
#define CONTROL_BITS_INPUT_22_DATA           16
#define CONTROL_ADDR_INPUT_23_DATA           0x00c8
#define CONTROL_BITS_INPUT_23_DATA           16
#define CONTROL_ADDR_INPUT_24_DATA           0x00d0
#define CONTROL_BITS_INPUT_24_DATA           16
#define CONTROL_ADDR_INPUT_25_DATA           0x00d8
#define CONTROL_BITS_INPUT_25_DATA           16
#define CONTROL_ADDR_INPUT_26_DATA           0x00e0
#define CONTROL_BITS_INPUT_26_DATA           16
#define CONTROL_ADDR_INPUT_27_DATA           0x00e8
#define CONTROL_BITS_INPUT_27_DATA           16
#define CONTROL_ADDR_INPUT_28_DATA           0x00f0
#define CONTROL_BITS_INPUT_28_DATA           16
#define CONTROL_ADDR_INPUT_29_DATA           0x00f8
#define CONTROL_BITS_INPUT_29_DATA           16
#define CONTROL_ADDR_INPUT_30_DATA           0x0100
#define CONTROL_BITS_INPUT_30_DATA           16
#define CONTROL_ADDR_INPUT_31_DATA           0x0108
#define CONTROL_BITS_INPUT_31_DATA           16
#define CONTROL_ADDR_INPUT_32_DATA           0x0110
#define CONTROL_BITS_INPUT_32_DATA           16
#define CONTROL_ADDR_INPUT_33_DATA           0x0118
#define CONTROL_BITS_INPUT_33_DATA           16
#define CONTROL_ADDR_INPUT_34_DATA           0x0120
#define CONTROL_BITS_INPUT_34_DATA           16
#define CONTROL_ADDR_INPUT_35_DATA           0x0128
#define CONTROL_BITS_INPUT_35_DATA           16
#define CONTROL_ADDR_INPUT_36_DATA           0x0130
#define CONTROL_BITS_INPUT_36_DATA           16
#define CONTROL_ADDR_INPUT_37_DATA           0x0138
#define CONTROL_BITS_INPUT_37_DATA           16
#define CONTROL_ADDR_INPUT_38_DATA           0x0140
#define CONTROL_BITS_INPUT_38_DATA           16
#define CONTROL_ADDR_INPUT_39_DATA           0x0148
#define CONTROL_BITS_INPUT_39_DATA           16
#define CONTROL_ADDR_INPUT_40_DATA           0x0150
#define CONTROL_BITS_INPUT_40_DATA           16
#define CONTROL_ADDR_INPUT_41_DATA           0x0158
#define CONTROL_BITS_INPUT_41_DATA           16
#define CONTROL_ADDR_INPUT_42_DATA           0x0160
#define CONTROL_BITS_INPUT_42_DATA           16
#define CONTROL_ADDR_INPUT_43_DATA           0x0168
#define CONTROL_BITS_INPUT_43_DATA           16
#define CONTROL_ADDR_INPUT_44_DATA           0x0170
#define CONTROL_BITS_INPUT_44_DATA           16
#define CONTROL_ADDR_INPUT_45_DATA           0x0178
#define CONTROL_BITS_INPUT_45_DATA           16
#define CONTROL_ADDR_INPUT_46_DATA           0x0180
#define CONTROL_BITS_INPUT_46_DATA           16
#define CONTROL_ADDR_INPUT_47_DATA           0x0188
#define CONTROL_BITS_INPUT_47_DATA           16
#define CONTROL_ADDR_INPUT_48_DATA           0x0190
#define CONTROL_BITS_INPUT_48_DATA           16
#define CONTROL_ADDR_INPUT_49_DATA           0x0198
#define CONTROL_BITS_INPUT_49_DATA           16
#define CONTROL_ADDR_INPUT_50_DATA           0x01a0
#define CONTROL_BITS_INPUT_50_DATA           16
#define CONTROL_ADDR_INPUT_51_DATA           0x01a8
#define CONTROL_BITS_INPUT_51_DATA           16
#define CONTROL_ADDR_INPUT_52_DATA           0x01b0
#define CONTROL_BITS_INPUT_52_DATA           16
#define CONTROL_ADDR_INPUT_53_DATA           0x01b8
#define CONTROL_BITS_INPUT_53_DATA           16
#define CONTROL_ADDR_INPUT_54_DATA           0x01c0
#define CONTROL_BITS_INPUT_54_DATA           16
#define CONTROL_ADDR_INPUT_55_DATA           0x01c8
#define CONTROL_BITS_INPUT_55_DATA           16
#define CONTROL_ADDR_INPUT_56_DATA           0x01d0
#define CONTROL_BITS_INPUT_56_DATA           16
#define CONTROL_ADDR_INPUT_57_DATA           0x01d8
#define CONTROL_BITS_INPUT_57_DATA           16
#define CONTROL_ADDR_INPUT_58_DATA           0x01e0
#define CONTROL_BITS_INPUT_58_DATA           16
#define CONTROL_ADDR_INPUT_59_DATA           0x01e8
#define CONTROL_BITS_INPUT_59_DATA           16
#define CONTROL_ADDR_INPUT_60_DATA           0x01f0
#define CONTROL_BITS_INPUT_60_DATA           16
#define CONTROL_ADDR_INPUT_61_DATA           0x01f8
#define CONTROL_BITS_INPUT_61_DATA           16
#define CONTROL_ADDR_INPUT_62_DATA           0x0200
#define CONTROL_BITS_INPUT_62_DATA           16
#define CONTROL_ADDR_INPUT_63_DATA           0x0208
#define CONTROL_BITS_INPUT_63_DATA           16
#define CONTROL_ADDR_INPUT_64_DATA           0x0210
#define CONTROL_BITS_INPUT_64_DATA           16
#define CONTROL_ADDR_INPUT_65_DATA           0x0218
#define CONTROL_BITS_INPUT_65_DATA           16
#define CONTROL_ADDR_INPUT_66_DATA           0x0220
#define CONTROL_BITS_INPUT_66_DATA           16
#define CONTROL_ADDR_INPUT_67_DATA           0x0228
#define CONTROL_BITS_INPUT_67_DATA           16
#define CONTROL_ADDR_INPUT_68_DATA           0x0230
#define CONTROL_BITS_INPUT_68_DATA           16
#define CONTROL_ADDR_INPUT_69_DATA           0x0238
#define CONTROL_BITS_INPUT_69_DATA           16
#define CONTROL_ADDR_INPUT_70_DATA           0x0240
#define CONTROL_BITS_INPUT_70_DATA           16
#define CONTROL_ADDR_INPUT_71_DATA           0x0248
#define CONTROL_BITS_INPUT_71_DATA           16
#define CONTROL_ADDR_INPUT_72_DATA           0x0250
#define CONTROL_BITS_INPUT_72_DATA           16
#define CONTROL_ADDR_INPUT_73_DATA           0x0258
#define CONTROL_BITS_INPUT_73_DATA           16
#define CONTROL_ADDR_INPUT_74_DATA           0x0260
#define CONTROL_BITS_INPUT_74_DATA           16
#define CONTROL_ADDR_INPUT_75_DATA           0x0268
#define CONTROL_BITS_INPUT_75_DATA           16
#define CONTROL_ADDR_INPUT_76_DATA           0x0270
#define CONTROL_BITS_INPUT_76_DATA           16
#define CONTROL_ADDR_INPUT_77_DATA           0x0278
#define CONTROL_BITS_INPUT_77_DATA           16
#define CONTROL_ADDR_INPUT_78_DATA           0x0280
#define CONTROL_BITS_INPUT_78_DATA           16
#define CONTROL_ADDR_INPUT_79_DATA           0x0288
#define CONTROL_BITS_INPUT_79_DATA           16
#define CONTROL_ADDR_INPUT_80_DATA           0x0290
#define CONTROL_BITS_INPUT_80_DATA           16
#define CONTROL_ADDR_INPUT_81_DATA           0x0298
#define CONTROL_BITS_INPUT_81_DATA           16
#define CONTROL_ADDR_INPUT_82_DATA           0x02a0
#define CONTROL_BITS_INPUT_82_DATA           16
#define CONTROL_ADDR_INPUT_83_DATA           0x02a8
#define CONTROL_BITS_INPUT_83_DATA           16
#define CONTROL_ADDR_INPUT_84_DATA           0x02b0
#define CONTROL_BITS_INPUT_84_DATA           16
#define CONTROL_ADDR_INPUT_85_DATA           0x02b8
#define CONTROL_BITS_INPUT_85_DATA           16
#define CONTROL_ADDR_INPUT_86_DATA           0x02c0
#define CONTROL_BITS_INPUT_86_DATA           16
#define CONTROL_ADDR_INPUT_87_DATA           0x02c8
#define CONTROL_BITS_INPUT_87_DATA           16
#define CONTROL_ADDR_INPUT_88_DATA           0x02d0
#define CONTROL_BITS_INPUT_88_DATA           16
#define CONTROL_ADDR_INPUT_89_DATA           0x02d8
#define CONTROL_BITS_INPUT_89_DATA           16
#define CONTROL_ADDR_INPUT_90_DATA           0x02e0
#define CONTROL_BITS_INPUT_90_DATA           16
#define CONTROL_ADDR_INPUT_91_DATA           0x02e8
#define CONTROL_BITS_INPUT_91_DATA           16
#define CONTROL_ADDR_INPUT_92_DATA           0x02f0
#define CONTROL_BITS_INPUT_92_DATA           16
#define CONTROL_ADDR_INPUT_93_DATA           0x02f8
#define CONTROL_BITS_INPUT_93_DATA           16
#define CONTROL_ADDR_INPUT_94_DATA           0x0300
#define CONTROL_BITS_INPUT_94_DATA           16
#define CONTROL_ADDR_INPUT_95_DATA           0x0308
#define CONTROL_BITS_INPUT_95_DATA           16
#define CONTROL_ADDR_INPUT_96_DATA           0x0310
#define CONTROL_BITS_INPUT_96_DATA           16
#define CONTROL_ADDR_INPUT_97_DATA           0x0318
#define CONTROL_BITS_INPUT_97_DATA           16
#define CONTROL_ADDR_INPUT_98_DATA           0x0320
#define CONTROL_BITS_INPUT_98_DATA           16
#define CONTROL_ADDR_INPUT_99_DATA           0x0328
#define CONTROL_BITS_INPUT_99_DATA           16
#define CONTROL_ADDR_INPUT_100_DATA          0x0330
#define CONTROL_BITS_INPUT_100_DATA          16
#define CONTROL_ADDR_INPUT_101_DATA          0x0338
#define CONTROL_BITS_INPUT_101_DATA          16
#define CONTROL_ADDR_INPUT_102_DATA          0x0340
#define CONTROL_BITS_INPUT_102_DATA          16
#define CONTROL_ADDR_INPUT_103_DATA          0x0348
#define CONTROL_BITS_INPUT_103_DATA          16
#define CONTROL_ADDR_INPUT_104_DATA          0x0350
#define CONTROL_BITS_INPUT_104_DATA          16
#define CONTROL_ADDR_INPUT_105_DATA          0x0358
#define CONTROL_BITS_INPUT_105_DATA          16
#define CONTROL_ADDR_INPUT_106_DATA          0x0360
#define CONTROL_BITS_INPUT_106_DATA          16
#define CONTROL_ADDR_INPUT_107_DATA          0x0368
#define CONTROL_BITS_INPUT_107_DATA          16
#define CONTROL_ADDR_INPUT_108_DATA          0x0370
#define CONTROL_BITS_INPUT_108_DATA          16
#define CONTROL_ADDR_INPUT_109_DATA          0x0378
#define CONTROL_BITS_INPUT_109_DATA          16
#define CONTROL_ADDR_INPUT_110_DATA          0x0380
#define CONTROL_BITS_INPUT_110_DATA          16
#define CONTROL_ADDR_INPUT_111_DATA          0x0388
#define CONTROL_BITS_INPUT_111_DATA          16
#define CONTROL_ADDR_INPUT_112_DATA          0x0390
#define CONTROL_BITS_INPUT_112_DATA          16
#define CONTROL_ADDR_INPUT_113_DATA          0x0398
#define CONTROL_BITS_INPUT_113_DATA          16
#define CONTROL_ADDR_INPUT_114_DATA          0x03a0
#define CONTROL_BITS_INPUT_114_DATA          16
#define CONTROL_ADDR_INPUT_115_DATA          0x03a8
#define CONTROL_BITS_INPUT_115_DATA          16
#define CONTROL_ADDR_INPUT_116_DATA          0x03b0
#define CONTROL_BITS_INPUT_116_DATA          16
#define CONTROL_ADDR_INPUT_117_DATA          0x03b8
#define CONTROL_BITS_INPUT_117_DATA          16
#define CONTROL_ADDR_INPUT_118_DATA          0x03c0
#define CONTROL_BITS_INPUT_118_DATA          16
#define CONTROL_ADDR_INPUT_119_DATA          0x03c8
#define CONTROL_BITS_INPUT_119_DATA          16
#define CONTROL_ADDR_INPUT_120_DATA          0x03d0
#define CONTROL_BITS_INPUT_120_DATA          16
#define CONTROL_ADDR_INPUT_121_DATA          0x03d8
#define CONTROL_BITS_INPUT_121_DATA          16
#define CONTROL_ADDR_INPUT_122_DATA          0x03e0
#define CONTROL_BITS_INPUT_122_DATA          16
#define CONTROL_ADDR_INPUT_123_DATA          0x03e8
#define CONTROL_BITS_INPUT_123_DATA          16
#define CONTROL_ADDR_INPUT_124_DATA          0x03f0
#define CONTROL_BITS_INPUT_124_DATA          16
#define CONTROL_ADDR_INPUT_125_DATA          0x03f8
#define CONTROL_BITS_INPUT_125_DATA          16
#define CONTROL_ADDR_INPUT_126_DATA          0x0400
#define CONTROL_BITS_INPUT_126_DATA          16
#define CONTROL_ADDR_INPUT_127_DATA          0x0408
#define CONTROL_BITS_INPUT_127_DATA          16
#define CONTROL_ADDR_OUTPUT_0_DATA           0x0410
#define CONTROL_BITS_OUTPUT_0_DATA           16
#define CONTROL_ADDR_OUTPUT_0_CTRL           0x0414
#define CONTROL_ADDR_OUTPUT_1_DATA           0x0420
#define CONTROL_BITS_OUTPUT_1_DATA           16
#define CONTROL_ADDR_OUTPUT_1_CTRL           0x0424
#define CONTROL_ADDR_OUTPUT_2_DATA           0x0430
#define CONTROL_BITS_OUTPUT_2_DATA           16
#define CONTROL_ADDR_OUTPUT_2_CTRL           0x0434
#define CONTROL_ADDR_OUTPUT_3_DATA           0x0440
#define CONTROL_BITS_OUTPUT_3_DATA           16
#define CONTROL_ADDR_OUTPUT_3_CTRL           0x0444
#define CONTROL_ADDR_OUTPUT_4_DATA           0x0450
#define CONTROL_BITS_OUTPUT_4_DATA           16
#define CONTROL_ADDR_OUTPUT_4_CTRL           0x0454
#define CONTROL_ADDR_OUTPUT_5_DATA           0x0460
#define CONTROL_BITS_OUTPUT_5_DATA           16
#define CONTROL_ADDR_OUTPUT_5_CTRL           0x0464
#define CONTROL_ADDR_OUTPUT_6_DATA           0x0470
#define CONTROL_BITS_OUTPUT_6_DATA           16
#define CONTROL_ADDR_OUTPUT_6_CTRL           0x0474
#define CONTROL_ADDR_OUTPUT_7_DATA           0x0480
#define CONTROL_BITS_OUTPUT_7_DATA           16
#define CONTROL_ADDR_OUTPUT_7_CTRL           0x0484
#define CONTROL_ADDR_OUTPUT_8_DATA           0x0490
#define CONTROL_BITS_OUTPUT_8_DATA           16
#define CONTROL_ADDR_OUTPUT_8_CTRL           0x0494
#define CONTROL_ADDR_OUTPUT_9_DATA           0x04a0
#define CONTROL_BITS_OUTPUT_9_DATA           16
#define CONTROL_ADDR_OUTPUT_9_CTRL           0x04a4
#define CONTROL_ADDR_OUTPUT_10_DATA          0x04b0
#define CONTROL_BITS_OUTPUT_10_DATA          16
#define CONTROL_ADDR_OUTPUT_10_CTRL          0x04b4
#define CONTROL_ADDR_OUTPUT_11_DATA          0x04c0
#define CONTROL_BITS_OUTPUT_11_DATA          16
#define CONTROL_ADDR_OUTPUT_11_CTRL          0x04c4
#define CONTROL_ADDR_OUTPUT_12_DATA          0x04d0
#define CONTROL_BITS_OUTPUT_12_DATA          16
#define CONTROL_ADDR_OUTPUT_12_CTRL          0x04d4
#define CONTROL_ADDR_OUTPUT_13_DATA          0x04e0
#define CONTROL_BITS_OUTPUT_13_DATA          16
#define CONTROL_ADDR_OUTPUT_13_CTRL          0x04e4
#define CONTROL_ADDR_OUTPUT_14_DATA          0x04f0
#define CONTROL_BITS_OUTPUT_14_DATA          16
#define CONTROL_ADDR_OUTPUT_14_CTRL          0x04f4
#define CONTROL_ADDR_OUTPUT_15_DATA          0x0500
#define CONTROL_BITS_OUTPUT_15_DATA          16
#define CONTROL_ADDR_OUTPUT_15_CTRL          0x0504
#define CONTROL_ADDR_OUTPUT_16_DATA          0x0510
#define CONTROL_BITS_OUTPUT_16_DATA          16
#define CONTROL_ADDR_OUTPUT_16_CTRL          0x0514
#define CONTROL_ADDR_OUTPUT_17_DATA          0x0520
#define CONTROL_BITS_OUTPUT_17_DATA          16
#define CONTROL_ADDR_OUTPUT_17_CTRL          0x0524
#define CONTROL_ADDR_OUTPUT_18_DATA          0x0530
#define CONTROL_BITS_OUTPUT_18_DATA          16
#define CONTROL_ADDR_OUTPUT_18_CTRL          0x0534
#define CONTROL_ADDR_OUTPUT_19_DATA          0x0540
#define CONTROL_BITS_OUTPUT_19_DATA          16
#define CONTROL_ADDR_OUTPUT_19_CTRL          0x0544
#define CONTROL_ADDR_OUTPUT_20_DATA          0x0550
#define CONTROL_BITS_OUTPUT_20_DATA          16
#define CONTROL_ADDR_OUTPUT_20_CTRL          0x0554
#define CONTROL_ADDR_OUTPUT_21_DATA          0x0560
#define CONTROL_BITS_OUTPUT_21_DATA          16
#define CONTROL_ADDR_OUTPUT_21_CTRL          0x0564
#define CONTROL_ADDR_OUTPUT_22_DATA          0x0570
#define CONTROL_BITS_OUTPUT_22_DATA          16
#define CONTROL_ADDR_OUTPUT_22_CTRL          0x0574
#define CONTROL_ADDR_OUTPUT_23_DATA          0x0580
#define CONTROL_BITS_OUTPUT_23_DATA          16
#define CONTROL_ADDR_OUTPUT_23_CTRL          0x0584
#define CONTROL_ADDR_OUTPUT_24_DATA          0x0590
#define CONTROL_BITS_OUTPUT_24_DATA          16
#define CONTROL_ADDR_OUTPUT_24_CTRL          0x0594
#define CONTROL_ADDR_OUTPUT_25_DATA          0x05a0
#define CONTROL_BITS_OUTPUT_25_DATA          16
#define CONTROL_ADDR_OUTPUT_25_CTRL          0x05a4
#define CONTROL_ADDR_OUTPUT_26_DATA          0x05b0
#define CONTROL_BITS_OUTPUT_26_DATA          16
#define CONTROL_ADDR_OUTPUT_26_CTRL          0x05b4
#define CONTROL_ADDR_OUTPUT_27_DATA          0x05c0
#define CONTROL_BITS_OUTPUT_27_DATA          16
#define CONTROL_ADDR_OUTPUT_27_CTRL          0x05c4
#define CONTROL_ADDR_OUTPUT_28_DATA          0x05d0
#define CONTROL_BITS_OUTPUT_28_DATA          16
#define CONTROL_ADDR_OUTPUT_28_CTRL          0x05d4
#define CONTROL_ADDR_OUTPUT_29_DATA          0x05e0
#define CONTROL_BITS_OUTPUT_29_DATA          16
#define CONTROL_ADDR_OUTPUT_29_CTRL          0x05e4
#define CONTROL_ADDR_OUTPUT_30_DATA          0x05f0
#define CONTROL_BITS_OUTPUT_30_DATA          16
#define CONTROL_ADDR_OUTPUT_30_CTRL          0x05f4
#define CONTROL_ADDR_OUTPUT_31_DATA          0x0600
#define CONTROL_BITS_OUTPUT_31_DATA          16
#define CONTROL_ADDR_OUTPUT_31_CTRL          0x0604
#define CONTROL_ADDR_OUTPUT_32_DATA          0x0610
#define CONTROL_BITS_OUTPUT_32_DATA          16
#define CONTROL_ADDR_OUTPUT_32_CTRL          0x0614
#define CONTROL_ADDR_OUTPUT_33_DATA          0x0620
#define CONTROL_BITS_OUTPUT_33_DATA          16
#define CONTROL_ADDR_OUTPUT_33_CTRL          0x0624
#define CONTROL_ADDR_OUTPUT_34_DATA          0x0630
#define CONTROL_BITS_OUTPUT_34_DATA          16
#define CONTROL_ADDR_OUTPUT_34_CTRL          0x0634
#define CONTROL_ADDR_OUTPUT_35_DATA          0x0640
#define CONTROL_BITS_OUTPUT_35_DATA          16
#define CONTROL_ADDR_OUTPUT_35_CTRL          0x0644
#define CONTROL_ADDR_OUTPUT_36_DATA          0x0650
#define CONTROL_BITS_OUTPUT_36_DATA          16
#define CONTROL_ADDR_OUTPUT_36_CTRL          0x0654
#define CONTROL_ADDR_OUTPUT_37_DATA          0x0660
#define CONTROL_BITS_OUTPUT_37_DATA          16
#define CONTROL_ADDR_OUTPUT_37_CTRL          0x0664
#define CONTROL_ADDR_OUTPUT_38_DATA          0x0670
#define CONTROL_BITS_OUTPUT_38_DATA          16
#define CONTROL_ADDR_OUTPUT_38_CTRL          0x0674
#define CONTROL_ADDR_OUTPUT_39_DATA          0x0680
#define CONTROL_BITS_OUTPUT_39_DATA          16
#define CONTROL_ADDR_OUTPUT_39_CTRL          0x0684
#define CONTROL_ADDR_OUTPUT_40_DATA          0x0690
#define CONTROL_BITS_OUTPUT_40_DATA          16
#define CONTROL_ADDR_OUTPUT_40_CTRL          0x0694
#define CONTROL_ADDR_OUTPUT_41_DATA          0x06a0
#define CONTROL_BITS_OUTPUT_41_DATA          16
#define CONTROL_ADDR_OUTPUT_41_CTRL          0x06a4
#define CONTROL_ADDR_OUTPUT_42_DATA          0x06b0
#define CONTROL_BITS_OUTPUT_42_DATA          16
#define CONTROL_ADDR_OUTPUT_42_CTRL          0x06b4
#define CONTROL_ADDR_OUTPUT_43_DATA          0x06c0
#define CONTROL_BITS_OUTPUT_43_DATA          16
#define CONTROL_ADDR_OUTPUT_43_CTRL          0x06c4
#define CONTROL_ADDR_OUTPUT_44_DATA          0x06d0
#define CONTROL_BITS_OUTPUT_44_DATA          16
#define CONTROL_ADDR_OUTPUT_44_CTRL          0x06d4
#define CONTROL_ADDR_OUTPUT_45_DATA          0x06e0
#define CONTROL_BITS_OUTPUT_45_DATA          16
#define CONTROL_ADDR_OUTPUT_45_CTRL          0x06e4
#define CONTROL_ADDR_OUTPUT_46_DATA          0x06f0
#define CONTROL_BITS_OUTPUT_46_DATA          16
#define CONTROL_ADDR_OUTPUT_46_CTRL          0x06f4
#define CONTROL_ADDR_OUTPUT_47_DATA          0x0700
#define CONTROL_BITS_OUTPUT_47_DATA          16
#define CONTROL_ADDR_OUTPUT_47_CTRL          0x0704
#define CONTROL_ADDR_OUTPUT_48_DATA          0x0710
#define CONTROL_BITS_OUTPUT_48_DATA          16
#define CONTROL_ADDR_OUTPUT_48_CTRL          0x0714
#define CONTROL_ADDR_OUTPUT_49_DATA          0x0720
#define CONTROL_BITS_OUTPUT_49_DATA          16
#define CONTROL_ADDR_OUTPUT_49_CTRL          0x0724
#define CONTROL_ADDR_OUTPUT_50_DATA          0x0730
#define CONTROL_BITS_OUTPUT_50_DATA          16
#define CONTROL_ADDR_OUTPUT_50_CTRL          0x0734
#define CONTROL_ADDR_OUTPUT_51_DATA          0x0740
#define CONTROL_BITS_OUTPUT_51_DATA          16
#define CONTROL_ADDR_OUTPUT_51_CTRL          0x0744
#define CONTROL_ADDR_OUTPUT_52_DATA          0x0750
#define CONTROL_BITS_OUTPUT_52_DATA          16
#define CONTROL_ADDR_OUTPUT_52_CTRL          0x0754
#define CONTROL_ADDR_OUTPUT_53_DATA          0x0760
#define CONTROL_BITS_OUTPUT_53_DATA          16
#define CONTROL_ADDR_OUTPUT_53_CTRL          0x0764
#define CONTROL_ADDR_OUTPUT_54_DATA          0x0770
#define CONTROL_BITS_OUTPUT_54_DATA          16
#define CONTROL_ADDR_OUTPUT_54_CTRL          0x0774
#define CONTROL_ADDR_OUTPUT_55_DATA          0x0780
#define CONTROL_BITS_OUTPUT_55_DATA          16
#define CONTROL_ADDR_OUTPUT_55_CTRL          0x0784
#define CONTROL_ADDR_OUTPUT_56_DATA          0x0790
#define CONTROL_BITS_OUTPUT_56_DATA          16
#define CONTROL_ADDR_OUTPUT_56_CTRL          0x0794
#define CONTROL_ADDR_OUTPUT_57_DATA          0x07a0
#define CONTROL_BITS_OUTPUT_57_DATA          16
#define CONTROL_ADDR_OUTPUT_57_CTRL          0x07a4
#define CONTROL_ADDR_OUTPUT_58_DATA          0x07b0
#define CONTROL_BITS_OUTPUT_58_DATA          16
#define CONTROL_ADDR_OUTPUT_58_CTRL          0x07b4
#define CONTROL_ADDR_OUTPUT_59_DATA          0x07c0
#define CONTROL_BITS_OUTPUT_59_DATA          16
#define CONTROL_ADDR_OUTPUT_59_CTRL          0x07c4
#define CONTROL_ADDR_OUTPUT_60_DATA          0x07d0
#define CONTROL_BITS_OUTPUT_60_DATA          16
#define CONTROL_ADDR_OUTPUT_60_CTRL          0x07d4
#define CONTROL_ADDR_OUTPUT_61_DATA          0x07e0
#define CONTROL_BITS_OUTPUT_61_DATA          16
#define CONTROL_ADDR_OUTPUT_61_CTRL          0x07e4
#define CONTROL_ADDR_OUTPUT_62_DATA          0x07f0
#define CONTROL_BITS_OUTPUT_62_DATA          16
#define CONTROL_ADDR_OUTPUT_62_CTRL          0x07f4
#define CONTROL_ADDR_OUTPUT_63_DATA          0x0800
#define CONTROL_BITS_OUTPUT_63_DATA          16
#define CONTROL_ADDR_OUTPUT_63_CTRL          0x0804
#define CONTROL_ADDR_OUTPUT_64_DATA          0x0810
#define CONTROL_BITS_OUTPUT_64_DATA          16
#define CONTROL_ADDR_OUTPUT_64_CTRL          0x0814
#define CONTROL_ADDR_OUTPUT_65_DATA          0x0820
#define CONTROL_BITS_OUTPUT_65_DATA          16
#define CONTROL_ADDR_OUTPUT_65_CTRL          0x0824
#define CONTROL_ADDR_OUTPUT_66_DATA          0x0830
#define CONTROL_BITS_OUTPUT_66_DATA          16
#define CONTROL_ADDR_OUTPUT_66_CTRL          0x0834
#define CONTROL_ADDR_OUTPUT_67_DATA          0x0840
#define CONTROL_BITS_OUTPUT_67_DATA          16
#define CONTROL_ADDR_OUTPUT_67_CTRL          0x0844
#define CONTROL_ADDR_OUTPUT_68_DATA          0x0850
#define CONTROL_BITS_OUTPUT_68_DATA          16
#define CONTROL_ADDR_OUTPUT_68_CTRL          0x0854
#define CONTROL_ADDR_OUTPUT_69_DATA          0x0860
#define CONTROL_BITS_OUTPUT_69_DATA          16
#define CONTROL_ADDR_OUTPUT_69_CTRL          0x0864
#define CONTROL_ADDR_OUTPUT_70_DATA          0x0870
#define CONTROL_BITS_OUTPUT_70_DATA          16
#define CONTROL_ADDR_OUTPUT_70_CTRL          0x0874
#define CONTROL_ADDR_OUTPUT_71_DATA          0x0880
#define CONTROL_BITS_OUTPUT_71_DATA          16
#define CONTROL_ADDR_OUTPUT_71_CTRL          0x0884
#define CONTROL_ADDR_OUTPUT_72_DATA          0x0890
#define CONTROL_BITS_OUTPUT_72_DATA          16
#define CONTROL_ADDR_OUTPUT_72_CTRL          0x0894
#define CONTROL_ADDR_OUTPUT_73_DATA          0x08a0
#define CONTROL_BITS_OUTPUT_73_DATA          16
#define CONTROL_ADDR_OUTPUT_73_CTRL          0x08a4
#define CONTROL_ADDR_OUTPUT_74_DATA          0x08b0
#define CONTROL_BITS_OUTPUT_74_DATA          16
#define CONTROL_ADDR_OUTPUT_74_CTRL          0x08b4
#define CONTROL_ADDR_OUTPUT_75_DATA          0x08c0
#define CONTROL_BITS_OUTPUT_75_DATA          16
#define CONTROL_ADDR_OUTPUT_75_CTRL          0x08c4
#define CONTROL_ADDR_OUTPUT_76_DATA          0x08d0
#define CONTROL_BITS_OUTPUT_76_DATA          16
#define CONTROL_ADDR_OUTPUT_76_CTRL          0x08d4
#define CONTROL_ADDR_OUTPUT_77_DATA          0x08e0
#define CONTROL_BITS_OUTPUT_77_DATA          16
#define CONTROL_ADDR_OUTPUT_77_CTRL          0x08e4
#define CONTROL_ADDR_OUTPUT_78_DATA          0x08f0
#define CONTROL_BITS_OUTPUT_78_DATA          16
#define CONTROL_ADDR_OUTPUT_78_CTRL          0x08f4
#define CONTROL_ADDR_OUTPUT_79_DATA          0x0900
#define CONTROL_BITS_OUTPUT_79_DATA          16
#define CONTROL_ADDR_OUTPUT_79_CTRL          0x0904
#define CONTROL_ADDR_OUTPUT_80_DATA          0x0910
#define CONTROL_BITS_OUTPUT_80_DATA          16
#define CONTROL_ADDR_OUTPUT_80_CTRL          0x0914
#define CONTROL_ADDR_OUTPUT_81_DATA          0x0920
#define CONTROL_BITS_OUTPUT_81_DATA          16
#define CONTROL_ADDR_OUTPUT_81_CTRL          0x0924
#define CONTROL_ADDR_OUTPUT_82_DATA          0x0930
#define CONTROL_BITS_OUTPUT_82_DATA          16
#define CONTROL_ADDR_OUTPUT_82_CTRL          0x0934
#define CONTROL_ADDR_OUTPUT_83_DATA          0x0940
#define CONTROL_BITS_OUTPUT_83_DATA          16
#define CONTROL_ADDR_OUTPUT_83_CTRL          0x0944
#define CONTROL_ADDR_OUTPUT_84_DATA          0x0950
#define CONTROL_BITS_OUTPUT_84_DATA          16
#define CONTROL_ADDR_OUTPUT_84_CTRL          0x0954
#define CONTROL_ADDR_OUTPUT_85_DATA          0x0960
#define CONTROL_BITS_OUTPUT_85_DATA          16
#define CONTROL_ADDR_OUTPUT_85_CTRL          0x0964
#define CONTROL_ADDR_OUTPUT_86_DATA          0x0970
#define CONTROL_BITS_OUTPUT_86_DATA          16
#define CONTROL_ADDR_OUTPUT_86_CTRL          0x0974
#define CONTROL_ADDR_OUTPUT_87_DATA          0x0980
#define CONTROL_BITS_OUTPUT_87_DATA          16
#define CONTROL_ADDR_OUTPUT_87_CTRL          0x0984
#define CONTROL_ADDR_OUTPUT_88_DATA          0x0990
#define CONTROL_BITS_OUTPUT_88_DATA          16
#define CONTROL_ADDR_OUTPUT_88_CTRL          0x0994
#define CONTROL_ADDR_OUTPUT_89_DATA          0x09a0
#define CONTROL_BITS_OUTPUT_89_DATA          16
#define CONTROL_ADDR_OUTPUT_89_CTRL          0x09a4
#define CONTROL_ADDR_OUTPUT_90_DATA          0x09b0
#define CONTROL_BITS_OUTPUT_90_DATA          16
#define CONTROL_ADDR_OUTPUT_90_CTRL          0x09b4
#define CONTROL_ADDR_OUTPUT_91_DATA          0x09c0
#define CONTROL_BITS_OUTPUT_91_DATA          16
#define CONTROL_ADDR_OUTPUT_91_CTRL          0x09c4
#define CONTROL_ADDR_OUTPUT_92_DATA          0x09d0
#define CONTROL_BITS_OUTPUT_92_DATA          16
#define CONTROL_ADDR_OUTPUT_92_CTRL          0x09d4
#define CONTROL_ADDR_OUTPUT_93_DATA          0x09e0
#define CONTROL_BITS_OUTPUT_93_DATA          16
#define CONTROL_ADDR_OUTPUT_93_CTRL          0x09e4
#define CONTROL_ADDR_OUTPUT_94_DATA          0x09f0
#define CONTROL_BITS_OUTPUT_94_DATA          16
#define CONTROL_ADDR_OUTPUT_94_CTRL          0x09f4
#define CONTROL_ADDR_OUTPUT_95_DATA          0x0a00
#define CONTROL_BITS_OUTPUT_95_DATA          16
#define CONTROL_ADDR_OUTPUT_95_CTRL          0x0a04
#define CONTROL_ADDR_OUTPUT_96_DATA          0x0a10
#define CONTROL_BITS_OUTPUT_96_DATA          16
#define CONTROL_ADDR_OUTPUT_96_CTRL          0x0a14
#define CONTROL_ADDR_OUTPUT_97_DATA          0x0a20
#define CONTROL_BITS_OUTPUT_97_DATA          16
#define CONTROL_ADDR_OUTPUT_97_CTRL          0x0a24
#define CONTROL_ADDR_OUTPUT_98_DATA          0x0a30
#define CONTROL_BITS_OUTPUT_98_DATA          16
#define CONTROL_ADDR_OUTPUT_98_CTRL          0x0a34
#define CONTROL_ADDR_OUTPUT_99_DATA          0x0a40
#define CONTROL_BITS_OUTPUT_99_DATA          16
#define CONTROL_ADDR_OUTPUT_99_CTRL          0x0a44
#define CONTROL_ADDR_OUTPUT_100_DATA         0x0a50
#define CONTROL_BITS_OUTPUT_100_DATA         16
#define CONTROL_ADDR_OUTPUT_100_CTRL         0x0a54
#define CONTROL_ADDR_OUTPUT_101_DATA         0x0a60
#define CONTROL_BITS_OUTPUT_101_DATA         16
#define CONTROL_ADDR_OUTPUT_101_CTRL         0x0a64
#define CONTROL_ADDR_OUTPUT_102_DATA         0x0a70
#define CONTROL_BITS_OUTPUT_102_DATA         16
#define CONTROL_ADDR_OUTPUT_102_CTRL         0x0a74
#define CONTROL_ADDR_OUTPUT_103_DATA         0x0a80
#define CONTROL_BITS_OUTPUT_103_DATA         16
#define CONTROL_ADDR_OUTPUT_103_CTRL         0x0a84
#define CONTROL_ADDR_OUTPUT_104_DATA         0x0a90
#define CONTROL_BITS_OUTPUT_104_DATA         16
#define CONTROL_ADDR_OUTPUT_104_CTRL         0x0a94
#define CONTROL_ADDR_OUTPUT_105_DATA         0x0aa0
#define CONTROL_BITS_OUTPUT_105_DATA         16
#define CONTROL_ADDR_OUTPUT_105_CTRL         0x0aa4
#define CONTROL_ADDR_OUTPUT_106_DATA         0x0ab0
#define CONTROL_BITS_OUTPUT_106_DATA         16
#define CONTROL_ADDR_OUTPUT_106_CTRL         0x0ab4
#define CONTROL_ADDR_OUTPUT_107_DATA         0x0ac0
#define CONTROL_BITS_OUTPUT_107_DATA         16
#define CONTROL_ADDR_OUTPUT_107_CTRL         0x0ac4
#define CONTROL_ADDR_OUTPUT_108_DATA         0x0ad0
#define CONTROL_BITS_OUTPUT_108_DATA         16
#define CONTROL_ADDR_OUTPUT_108_CTRL         0x0ad4
#define CONTROL_ADDR_OUTPUT_109_DATA         0x0ae0
#define CONTROL_BITS_OUTPUT_109_DATA         16
#define CONTROL_ADDR_OUTPUT_109_CTRL         0x0ae4
#define CONTROL_ADDR_OUTPUT_110_DATA         0x0af0
#define CONTROL_BITS_OUTPUT_110_DATA         16
#define CONTROL_ADDR_OUTPUT_110_CTRL         0x0af4
#define CONTROL_ADDR_OUTPUT_111_DATA         0x0b00
#define CONTROL_BITS_OUTPUT_111_DATA         16
#define CONTROL_ADDR_OUTPUT_111_CTRL         0x0b04
#define CONTROL_ADDR_OUTPUT_112_DATA         0x0b10
#define CONTROL_BITS_OUTPUT_112_DATA         16
#define CONTROL_ADDR_OUTPUT_112_CTRL         0x0b14
#define CONTROL_ADDR_OUTPUT_113_DATA         0x0b20
#define CONTROL_BITS_OUTPUT_113_DATA         16
#define CONTROL_ADDR_OUTPUT_113_CTRL         0x0b24
#define CONTROL_ADDR_OUTPUT_114_DATA         0x0b30
#define CONTROL_BITS_OUTPUT_114_DATA         16
#define CONTROL_ADDR_OUTPUT_114_CTRL         0x0b34
#define CONTROL_ADDR_OUTPUT_115_DATA         0x0b40
#define CONTROL_BITS_OUTPUT_115_DATA         16
#define CONTROL_ADDR_OUTPUT_115_CTRL         0x0b44
#define CONTROL_ADDR_OUTPUT_116_DATA         0x0b50
#define CONTROL_BITS_OUTPUT_116_DATA         16
#define CONTROL_ADDR_OUTPUT_116_CTRL         0x0b54
#define CONTROL_ADDR_OUTPUT_117_DATA         0x0b60
#define CONTROL_BITS_OUTPUT_117_DATA         16
#define CONTROL_ADDR_OUTPUT_117_CTRL         0x0b64
#define CONTROL_ADDR_OUTPUT_118_DATA         0x0b70
#define CONTROL_BITS_OUTPUT_118_DATA         16
#define CONTROL_ADDR_OUTPUT_118_CTRL         0x0b74
#define CONTROL_ADDR_OUTPUT_119_DATA         0x0b80
#define CONTROL_BITS_OUTPUT_119_DATA         16
#define CONTROL_ADDR_OUTPUT_119_CTRL         0x0b84
#define CONTROL_ADDR_OUTPUT_120_DATA         0x0b90
#define CONTROL_BITS_OUTPUT_120_DATA         16
#define CONTROL_ADDR_OUTPUT_120_CTRL         0x0b94
#define CONTROL_ADDR_OUTPUT_121_DATA         0x0ba0
#define CONTROL_BITS_OUTPUT_121_DATA         16
#define CONTROL_ADDR_OUTPUT_121_CTRL         0x0ba4
#define CONTROL_ADDR_OUTPUT_122_DATA         0x0bb0
#define CONTROL_BITS_OUTPUT_122_DATA         16
#define CONTROL_ADDR_OUTPUT_122_CTRL         0x0bb4
#define CONTROL_ADDR_OUTPUT_123_DATA         0x0bc0
#define CONTROL_BITS_OUTPUT_123_DATA         16
#define CONTROL_ADDR_OUTPUT_123_CTRL         0x0bc4
#define CONTROL_ADDR_OUTPUT_124_DATA         0x0bd0
#define CONTROL_BITS_OUTPUT_124_DATA         16
#define CONTROL_ADDR_OUTPUT_124_CTRL         0x0bd4
#define CONTROL_ADDR_OUTPUT_125_DATA         0x0be0
#define CONTROL_BITS_OUTPUT_125_DATA         16
#define CONTROL_ADDR_OUTPUT_125_CTRL         0x0be4
#define CONTROL_ADDR_OUTPUT_126_DATA         0x0bf0
#define CONTROL_BITS_OUTPUT_126_DATA         16
#define CONTROL_ADDR_OUTPUT_126_CTRL         0x0bf4
#define CONTROL_ADDR_OUTPUT_127_DATA         0x0c00
#define CONTROL_BITS_OUTPUT_127_DATA         16
#define CONTROL_ADDR_OUTPUT_127_CTRL         0x0c04
#define CONTROL_ADDR_NUMOFOUTPUTNEURONS_DATA 0x0c10
#define CONTROL_BITS_NUMOFOUTPUTNEURONS_DATA 16
#define CONTROL_ADDR_ACTIVATION_DATA         0x0c18
#define CONTROL_BITS_ACTIVATION_DATA         8
#define CONTROL_ADDR_BIAS_BASE               0x0d00
#define CONTROL_ADDR_BIAS_HIGH               0x0dff
#define CONTROL_WIDTH_BIAS                   16
#define CONTROL_DEPTH_BIAS                   128
#define CONTROL_ADDR_WEIGHTS_0_BASE          0x0e00
#define CONTROL_ADDR_WEIGHTS_0_HIGH          0x0eff
#define CONTROL_WIDTH_WEIGHTS_0              16
#define CONTROL_DEPTH_WEIGHTS_0              128
#define CONTROL_ADDR_WEIGHTS_1_BASE          0x0f00
#define CONTROL_ADDR_WEIGHTS_1_HIGH          0x0fff
#define CONTROL_WIDTH_WEIGHTS_1              16
#define CONTROL_DEPTH_WEIGHTS_1              128
#define CONTROL_ADDR_WEIGHTS_2_BASE          0x1000
#define CONTROL_ADDR_WEIGHTS_2_HIGH          0x10ff
#define CONTROL_WIDTH_WEIGHTS_2              16
#define CONTROL_DEPTH_WEIGHTS_2              128
#define CONTROL_ADDR_WEIGHTS_3_BASE          0x1100
#define CONTROL_ADDR_WEIGHTS_3_HIGH          0x11ff
#define CONTROL_WIDTH_WEIGHTS_3              16
#define CONTROL_DEPTH_WEIGHTS_3              128
#define CONTROL_ADDR_WEIGHTS_4_BASE          0x1200
#define CONTROL_ADDR_WEIGHTS_4_HIGH          0x12ff
#define CONTROL_WIDTH_WEIGHTS_4              16
#define CONTROL_DEPTH_WEIGHTS_4              128
#define CONTROL_ADDR_WEIGHTS_5_BASE          0x1300
#define CONTROL_ADDR_WEIGHTS_5_HIGH          0x13ff
#define CONTROL_WIDTH_WEIGHTS_5              16
#define CONTROL_DEPTH_WEIGHTS_5              128
#define CONTROL_ADDR_WEIGHTS_6_BASE          0x1400
#define CONTROL_ADDR_WEIGHTS_6_HIGH          0x14ff
#define CONTROL_WIDTH_WEIGHTS_6              16
#define CONTROL_DEPTH_WEIGHTS_6              128
#define CONTROL_ADDR_WEIGHTS_7_BASE          0x1500
#define CONTROL_ADDR_WEIGHTS_7_HIGH          0x15ff
#define CONTROL_WIDTH_WEIGHTS_7              16
#define CONTROL_DEPTH_WEIGHTS_7              128
#define CONTROL_ADDR_WEIGHTS_8_BASE          0x1600
#define CONTROL_ADDR_WEIGHTS_8_HIGH          0x16ff
#define CONTROL_WIDTH_WEIGHTS_8              16
#define CONTROL_DEPTH_WEIGHTS_8              128
#define CONTROL_ADDR_WEIGHTS_9_BASE          0x1700
#define CONTROL_ADDR_WEIGHTS_9_HIGH          0x17ff
#define CONTROL_WIDTH_WEIGHTS_9              16
#define CONTROL_DEPTH_WEIGHTS_9              128
#define CONTROL_ADDR_WEIGHTS_10_BASE         0x1800
#define CONTROL_ADDR_WEIGHTS_10_HIGH         0x18ff
#define CONTROL_WIDTH_WEIGHTS_10             16
#define CONTROL_DEPTH_WEIGHTS_10             128
#define CONTROL_ADDR_WEIGHTS_11_BASE         0x1900
#define CONTROL_ADDR_WEIGHTS_11_HIGH         0x19ff
#define CONTROL_WIDTH_WEIGHTS_11             16
#define CONTROL_DEPTH_WEIGHTS_11             128
#define CONTROL_ADDR_WEIGHTS_12_BASE         0x1a00
#define CONTROL_ADDR_WEIGHTS_12_HIGH         0x1aff
#define CONTROL_WIDTH_WEIGHTS_12             16
#define CONTROL_DEPTH_WEIGHTS_12             128
#define CONTROL_ADDR_WEIGHTS_13_BASE         0x1b00
#define CONTROL_ADDR_WEIGHTS_13_HIGH         0x1bff
#define CONTROL_WIDTH_WEIGHTS_13             16
#define CONTROL_DEPTH_WEIGHTS_13             128
#define CONTROL_ADDR_WEIGHTS_14_BASE         0x1c00
#define CONTROL_ADDR_WEIGHTS_14_HIGH         0x1cff
#define CONTROL_WIDTH_WEIGHTS_14             16
#define CONTROL_DEPTH_WEIGHTS_14             128
#define CONTROL_ADDR_WEIGHTS_15_BASE         0x1d00
#define CONTROL_ADDR_WEIGHTS_15_HIGH         0x1dff
#define CONTROL_WIDTH_WEIGHTS_15             16
#define CONTROL_DEPTH_WEIGHTS_15             128
#define CONTROL_ADDR_WEIGHTS_16_BASE         0x1e00
#define CONTROL_ADDR_WEIGHTS_16_HIGH         0x1eff
#define CONTROL_WIDTH_WEIGHTS_16             16
#define CONTROL_DEPTH_WEIGHTS_16             128
#define CONTROL_ADDR_WEIGHTS_17_BASE         0x1f00
#define CONTROL_ADDR_WEIGHTS_17_HIGH         0x1fff
#define CONTROL_WIDTH_WEIGHTS_17             16
#define CONTROL_DEPTH_WEIGHTS_17             128
#define CONTROL_ADDR_WEIGHTS_18_BASE         0x2000
#define CONTROL_ADDR_WEIGHTS_18_HIGH         0x20ff
#define CONTROL_WIDTH_WEIGHTS_18             16
#define CONTROL_DEPTH_WEIGHTS_18             128
#define CONTROL_ADDR_WEIGHTS_19_BASE         0x2100
#define CONTROL_ADDR_WEIGHTS_19_HIGH         0x21ff
#define CONTROL_WIDTH_WEIGHTS_19             16
#define CONTROL_DEPTH_WEIGHTS_19             128
#define CONTROL_ADDR_WEIGHTS_20_BASE         0x2200
#define CONTROL_ADDR_WEIGHTS_20_HIGH         0x22ff
#define CONTROL_WIDTH_WEIGHTS_20             16
#define CONTROL_DEPTH_WEIGHTS_20             128
#define CONTROL_ADDR_WEIGHTS_21_BASE         0x2300
#define CONTROL_ADDR_WEIGHTS_21_HIGH         0x23ff
#define CONTROL_WIDTH_WEIGHTS_21             16
#define CONTROL_DEPTH_WEIGHTS_21             128
#define CONTROL_ADDR_WEIGHTS_22_BASE         0x2400
#define CONTROL_ADDR_WEIGHTS_22_HIGH         0x24ff
#define CONTROL_WIDTH_WEIGHTS_22             16
#define CONTROL_DEPTH_WEIGHTS_22             128
#define CONTROL_ADDR_WEIGHTS_23_BASE         0x2500
#define CONTROL_ADDR_WEIGHTS_23_HIGH         0x25ff
#define CONTROL_WIDTH_WEIGHTS_23             16
#define CONTROL_DEPTH_WEIGHTS_23             128
#define CONTROL_ADDR_WEIGHTS_24_BASE         0x2600
#define CONTROL_ADDR_WEIGHTS_24_HIGH         0x26ff
#define CONTROL_WIDTH_WEIGHTS_24             16
#define CONTROL_DEPTH_WEIGHTS_24             128
#define CONTROL_ADDR_WEIGHTS_25_BASE         0x2700
#define CONTROL_ADDR_WEIGHTS_25_HIGH         0x27ff
#define CONTROL_WIDTH_WEIGHTS_25             16
#define CONTROL_DEPTH_WEIGHTS_25             128
#define CONTROL_ADDR_WEIGHTS_26_BASE         0x2800
#define CONTROL_ADDR_WEIGHTS_26_HIGH         0x28ff
#define CONTROL_WIDTH_WEIGHTS_26             16
#define CONTROL_DEPTH_WEIGHTS_26             128
#define CONTROL_ADDR_WEIGHTS_27_BASE         0x2900
#define CONTROL_ADDR_WEIGHTS_27_HIGH         0x29ff
#define CONTROL_WIDTH_WEIGHTS_27             16
#define CONTROL_DEPTH_WEIGHTS_27             128
#define CONTROL_ADDR_WEIGHTS_28_BASE         0x2a00
#define CONTROL_ADDR_WEIGHTS_28_HIGH         0x2aff
#define CONTROL_WIDTH_WEIGHTS_28             16
#define CONTROL_DEPTH_WEIGHTS_28             128
#define CONTROL_ADDR_WEIGHTS_29_BASE         0x2b00
#define CONTROL_ADDR_WEIGHTS_29_HIGH         0x2bff
#define CONTROL_WIDTH_WEIGHTS_29             16
#define CONTROL_DEPTH_WEIGHTS_29             128
#define CONTROL_ADDR_WEIGHTS_30_BASE         0x2c00
#define CONTROL_ADDR_WEIGHTS_30_HIGH         0x2cff
#define CONTROL_WIDTH_WEIGHTS_30             16
#define CONTROL_DEPTH_WEIGHTS_30             128
#define CONTROL_ADDR_WEIGHTS_31_BASE         0x2d00
#define CONTROL_ADDR_WEIGHTS_31_HIGH         0x2dff
#define CONTROL_WIDTH_WEIGHTS_31             16
#define CONTROL_DEPTH_WEIGHTS_31             128
#define CONTROL_ADDR_WEIGHTS_32_BASE         0x2e00
#define CONTROL_ADDR_WEIGHTS_32_HIGH         0x2eff
#define CONTROL_WIDTH_WEIGHTS_32             16
#define CONTROL_DEPTH_WEIGHTS_32             128
#define CONTROL_ADDR_WEIGHTS_33_BASE         0x2f00
#define CONTROL_ADDR_WEIGHTS_33_HIGH         0x2fff
#define CONTROL_WIDTH_WEIGHTS_33             16
#define CONTROL_DEPTH_WEIGHTS_33             128
#define CONTROL_ADDR_WEIGHTS_34_BASE         0x3000
#define CONTROL_ADDR_WEIGHTS_34_HIGH         0x30ff
#define CONTROL_WIDTH_WEIGHTS_34             16
#define CONTROL_DEPTH_WEIGHTS_34             128
#define CONTROL_ADDR_WEIGHTS_35_BASE         0x3100
#define CONTROL_ADDR_WEIGHTS_35_HIGH         0x31ff
#define CONTROL_WIDTH_WEIGHTS_35             16
#define CONTROL_DEPTH_WEIGHTS_35             128
#define CONTROL_ADDR_WEIGHTS_36_BASE         0x3200
#define CONTROL_ADDR_WEIGHTS_36_HIGH         0x32ff
#define CONTROL_WIDTH_WEIGHTS_36             16
#define CONTROL_DEPTH_WEIGHTS_36             128
#define CONTROL_ADDR_WEIGHTS_37_BASE         0x3300
#define CONTROL_ADDR_WEIGHTS_37_HIGH         0x33ff
#define CONTROL_WIDTH_WEIGHTS_37             16
#define CONTROL_DEPTH_WEIGHTS_37             128
#define CONTROL_ADDR_WEIGHTS_38_BASE         0x3400
#define CONTROL_ADDR_WEIGHTS_38_HIGH         0x34ff
#define CONTROL_WIDTH_WEIGHTS_38             16
#define CONTROL_DEPTH_WEIGHTS_38             128
#define CONTROL_ADDR_WEIGHTS_39_BASE         0x3500
#define CONTROL_ADDR_WEIGHTS_39_HIGH         0x35ff
#define CONTROL_WIDTH_WEIGHTS_39             16
#define CONTROL_DEPTH_WEIGHTS_39             128
#define CONTROL_ADDR_WEIGHTS_40_BASE         0x3600
#define CONTROL_ADDR_WEIGHTS_40_HIGH         0x36ff
#define CONTROL_WIDTH_WEIGHTS_40             16
#define CONTROL_DEPTH_WEIGHTS_40             128
#define CONTROL_ADDR_WEIGHTS_41_BASE         0x3700
#define CONTROL_ADDR_WEIGHTS_41_HIGH         0x37ff
#define CONTROL_WIDTH_WEIGHTS_41             16
#define CONTROL_DEPTH_WEIGHTS_41             128
#define CONTROL_ADDR_WEIGHTS_42_BASE         0x3800
#define CONTROL_ADDR_WEIGHTS_42_HIGH         0x38ff
#define CONTROL_WIDTH_WEIGHTS_42             16
#define CONTROL_DEPTH_WEIGHTS_42             128
#define CONTROL_ADDR_WEIGHTS_43_BASE         0x3900
#define CONTROL_ADDR_WEIGHTS_43_HIGH         0x39ff
#define CONTROL_WIDTH_WEIGHTS_43             16
#define CONTROL_DEPTH_WEIGHTS_43             128
#define CONTROL_ADDR_WEIGHTS_44_BASE         0x3a00
#define CONTROL_ADDR_WEIGHTS_44_HIGH         0x3aff
#define CONTROL_WIDTH_WEIGHTS_44             16
#define CONTROL_DEPTH_WEIGHTS_44             128
#define CONTROL_ADDR_WEIGHTS_45_BASE         0x3b00
#define CONTROL_ADDR_WEIGHTS_45_HIGH         0x3bff
#define CONTROL_WIDTH_WEIGHTS_45             16
#define CONTROL_DEPTH_WEIGHTS_45             128
#define CONTROL_ADDR_WEIGHTS_46_BASE         0x3c00
#define CONTROL_ADDR_WEIGHTS_46_HIGH         0x3cff
#define CONTROL_WIDTH_WEIGHTS_46             16
#define CONTROL_DEPTH_WEIGHTS_46             128
#define CONTROL_ADDR_WEIGHTS_47_BASE         0x3d00
#define CONTROL_ADDR_WEIGHTS_47_HIGH         0x3dff
#define CONTROL_WIDTH_WEIGHTS_47             16
#define CONTROL_DEPTH_WEIGHTS_47             128
#define CONTROL_ADDR_WEIGHTS_48_BASE         0x3e00
#define CONTROL_ADDR_WEIGHTS_48_HIGH         0x3eff
#define CONTROL_WIDTH_WEIGHTS_48             16
#define CONTROL_DEPTH_WEIGHTS_48             128
#define CONTROL_ADDR_WEIGHTS_49_BASE         0x3f00
#define CONTROL_ADDR_WEIGHTS_49_HIGH         0x3fff
#define CONTROL_WIDTH_WEIGHTS_49             16
#define CONTROL_DEPTH_WEIGHTS_49             128
#define CONTROL_ADDR_WEIGHTS_50_BASE         0x4000
#define CONTROL_ADDR_WEIGHTS_50_HIGH         0x40ff
#define CONTROL_WIDTH_WEIGHTS_50             16
#define CONTROL_DEPTH_WEIGHTS_50             128
#define CONTROL_ADDR_WEIGHTS_51_BASE         0x4100
#define CONTROL_ADDR_WEIGHTS_51_HIGH         0x41ff
#define CONTROL_WIDTH_WEIGHTS_51             16
#define CONTROL_DEPTH_WEIGHTS_51             128
#define CONTROL_ADDR_WEIGHTS_52_BASE         0x4200
#define CONTROL_ADDR_WEIGHTS_52_HIGH         0x42ff
#define CONTROL_WIDTH_WEIGHTS_52             16
#define CONTROL_DEPTH_WEIGHTS_52             128
#define CONTROL_ADDR_WEIGHTS_53_BASE         0x4300
#define CONTROL_ADDR_WEIGHTS_53_HIGH         0x43ff
#define CONTROL_WIDTH_WEIGHTS_53             16
#define CONTROL_DEPTH_WEIGHTS_53             128
#define CONTROL_ADDR_WEIGHTS_54_BASE         0x4400
#define CONTROL_ADDR_WEIGHTS_54_HIGH         0x44ff
#define CONTROL_WIDTH_WEIGHTS_54             16
#define CONTROL_DEPTH_WEIGHTS_54             128
#define CONTROL_ADDR_WEIGHTS_55_BASE         0x4500
#define CONTROL_ADDR_WEIGHTS_55_HIGH         0x45ff
#define CONTROL_WIDTH_WEIGHTS_55             16
#define CONTROL_DEPTH_WEIGHTS_55             128
#define CONTROL_ADDR_WEIGHTS_56_BASE         0x4600
#define CONTROL_ADDR_WEIGHTS_56_HIGH         0x46ff
#define CONTROL_WIDTH_WEIGHTS_56             16
#define CONTROL_DEPTH_WEIGHTS_56             128
#define CONTROL_ADDR_WEIGHTS_57_BASE         0x4700
#define CONTROL_ADDR_WEIGHTS_57_HIGH         0x47ff
#define CONTROL_WIDTH_WEIGHTS_57             16
#define CONTROL_DEPTH_WEIGHTS_57             128
#define CONTROL_ADDR_WEIGHTS_58_BASE         0x4800
#define CONTROL_ADDR_WEIGHTS_58_HIGH         0x48ff
#define CONTROL_WIDTH_WEIGHTS_58             16
#define CONTROL_DEPTH_WEIGHTS_58             128
#define CONTROL_ADDR_WEIGHTS_59_BASE         0x4900
#define CONTROL_ADDR_WEIGHTS_59_HIGH         0x49ff
#define CONTROL_WIDTH_WEIGHTS_59             16
#define CONTROL_DEPTH_WEIGHTS_59             128
#define CONTROL_ADDR_WEIGHTS_60_BASE         0x4a00
#define CONTROL_ADDR_WEIGHTS_60_HIGH         0x4aff
#define CONTROL_WIDTH_WEIGHTS_60             16
#define CONTROL_DEPTH_WEIGHTS_60             128
#define CONTROL_ADDR_WEIGHTS_61_BASE         0x4b00
#define CONTROL_ADDR_WEIGHTS_61_HIGH         0x4bff
#define CONTROL_WIDTH_WEIGHTS_61             16
#define CONTROL_DEPTH_WEIGHTS_61             128
#define CONTROL_ADDR_WEIGHTS_62_BASE         0x4c00
#define CONTROL_ADDR_WEIGHTS_62_HIGH         0x4cff
#define CONTROL_WIDTH_WEIGHTS_62             16
#define CONTROL_DEPTH_WEIGHTS_62             128
#define CONTROL_ADDR_WEIGHTS_63_BASE         0x4d00
#define CONTROL_ADDR_WEIGHTS_63_HIGH         0x4dff
#define CONTROL_WIDTH_WEIGHTS_63             16
#define CONTROL_DEPTH_WEIGHTS_63             128
#define CONTROL_ADDR_WEIGHTS_64_BASE         0x4e00
#define CONTROL_ADDR_WEIGHTS_64_HIGH         0x4eff
#define CONTROL_WIDTH_WEIGHTS_64             16
#define CONTROL_DEPTH_WEIGHTS_64             128
#define CONTROL_ADDR_WEIGHTS_65_BASE         0x4f00
#define CONTROL_ADDR_WEIGHTS_65_HIGH         0x4fff
#define CONTROL_WIDTH_WEIGHTS_65             16
#define CONTROL_DEPTH_WEIGHTS_65             128
#define CONTROL_ADDR_WEIGHTS_66_BASE         0x5000
#define CONTROL_ADDR_WEIGHTS_66_HIGH         0x50ff
#define CONTROL_WIDTH_WEIGHTS_66             16
#define CONTROL_DEPTH_WEIGHTS_66             128
#define CONTROL_ADDR_WEIGHTS_67_BASE         0x5100
#define CONTROL_ADDR_WEIGHTS_67_HIGH         0x51ff
#define CONTROL_WIDTH_WEIGHTS_67             16
#define CONTROL_DEPTH_WEIGHTS_67             128
#define CONTROL_ADDR_WEIGHTS_68_BASE         0x5200
#define CONTROL_ADDR_WEIGHTS_68_HIGH         0x52ff
#define CONTROL_WIDTH_WEIGHTS_68             16
#define CONTROL_DEPTH_WEIGHTS_68             128
#define CONTROL_ADDR_WEIGHTS_69_BASE         0x5300
#define CONTROL_ADDR_WEIGHTS_69_HIGH         0x53ff
#define CONTROL_WIDTH_WEIGHTS_69             16
#define CONTROL_DEPTH_WEIGHTS_69             128
#define CONTROL_ADDR_WEIGHTS_70_BASE         0x5400
#define CONTROL_ADDR_WEIGHTS_70_HIGH         0x54ff
#define CONTROL_WIDTH_WEIGHTS_70             16
#define CONTROL_DEPTH_WEIGHTS_70             128
#define CONTROL_ADDR_WEIGHTS_71_BASE         0x5500
#define CONTROL_ADDR_WEIGHTS_71_HIGH         0x55ff
#define CONTROL_WIDTH_WEIGHTS_71             16
#define CONTROL_DEPTH_WEIGHTS_71             128
#define CONTROL_ADDR_WEIGHTS_72_BASE         0x5600
#define CONTROL_ADDR_WEIGHTS_72_HIGH         0x56ff
#define CONTROL_WIDTH_WEIGHTS_72             16
#define CONTROL_DEPTH_WEIGHTS_72             128
#define CONTROL_ADDR_WEIGHTS_73_BASE         0x5700
#define CONTROL_ADDR_WEIGHTS_73_HIGH         0x57ff
#define CONTROL_WIDTH_WEIGHTS_73             16
#define CONTROL_DEPTH_WEIGHTS_73             128
#define CONTROL_ADDR_WEIGHTS_74_BASE         0x5800
#define CONTROL_ADDR_WEIGHTS_74_HIGH         0x58ff
#define CONTROL_WIDTH_WEIGHTS_74             16
#define CONTROL_DEPTH_WEIGHTS_74             128
#define CONTROL_ADDR_WEIGHTS_75_BASE         0x5900
#define CONTROL_ADDR_WEIGHTS_75_HIGH         0x59ff
#define CONTROL_WIDTH_WEIGHTS_75             16
#define CONTROL_DEPTH_WEIGHTS_75             128
#define CONTROL_ADDR_WEIGHTS_76_BASE         0x5a00
#define CONTROL_ADDR_WEIGHTS_76_HIGH         0x5aff
#define CONTROL_WIDTH_WEIGHTS_76             16
#define CONTROL_DEPTH_WEIGHTS_76             128
#define CONTROL_ADDR_WEIGHTS_77_BASE         0x5b00
#define CONTROL_ADDR_WEIGHTS_77_HIGH         0x5bff
#define CONTROL_WIDTH_WEIGHTS_77             16
#define CONTROL_DEPTH_WEIGHTS_77             128
#define CONTROL_ADDR_WEIGHTS_78_BASE         0x5c00
#define CONTROL_ADDR_WEIGHTS_78_HIGH         0x5cff
#define CONTROL_WIDTH_WEIGHTS_78             16
#define CONTROL_DEPTH_WEIGHTS_78             128
#define CONTROL_ADDR_WEIGHTS_79_BASE         0x5d00
#define CONTROL_ADDR_WEIGHTS_79_HIGH         0x5dff
#define CONTROL_WIDTH_WEIGHTS_79             16
#define CONTROL_DEPTH_WEIGHTS_79             128
#define CONTROL_ADDR_WEIGHTS_80_BASE         0x5e00
#define CONTROL_ADDR_WEIGHTS_80_HIGH         0x5eff
#define CONTROL_WIDTH_WEIGHTS_80             16
#define CONTROL_DEPTH_WEIGHTS_80             128
#define CONTROL_ADDR_WEIGHTS_81_BASE         0x5f00
#define CONTROL_ADDR_WEIGHTS_81_HIGH         0x5fff
#define CONTROL_WIDTH_WEIGHTS_81             16
#define CONTROL_DEPTH_WEIGHTS_81             128
#define CONTROL_ADDR_WEIGHTS_82_BASE         0x6000
#define CONTROL_ADDR_WEIGHTS_82_HIGH         0x60ff
#define CONTROL_WIDTH_WEIGHTS_82             16
#define CONTROL_DEPTH_WEIGHTS_82             128
#define CONTROL_ADDR_WEIGHTS_83_BASE         0x6100
#define CONTROL_ADDR_WEIGHTS_83_HIGH         0x61ff
#define CONTROL_WIDTH_WEIGHTS_83             16
#define CONTROL_DEPTH_WEIGHTS_83             128
#define CONTROL_ADDR_WEIGHTS_84_BASE         0x6200
#define CONTROL_ADDR_WEIGHTS_84_HIGH         0x62ff
#define CONTROL_WIDTH_WEIGHTS_84             16
#define CONTROL_DEPTH_WEIGHTS_84             128
#define CONTROL_ADDR_WEIGHTS_85_BASE         0x6300
#define CONTROL_ADDR_WEIGHTS_85_HIGH         0x63ff
#define CONTROL_WIDTH_WEIGHTS_85             16
#define CONTROL_DEPTH_WEIGHTS_85             128
#define CONTROL_ADDR_WEIGHTS_86_BASE         0x6400
#define CONTROL_ADDR_WEIGHTS_86_HIGH         0x64ff
#define CONTROL_WIDTH_WEIGHTS_86             16
#define CONTROL_DEPTH_WEIGHTS_86             128
#define CONTROL_ADDR_WEIGHTS_87_BASE         0x6500
#define CONTROL_ADDR_WEIGHTS_87_HIGH         0x65ff
#define CONTROL_WIDTH_WEIGHTS_87             16
#define CONTROL_DEPTH_WEIGHTS_87             128
#define CONTROL_ADDR_WEIGHTS_88_BASE         0x6600
#define CONTROL_ADDR_WEIGHTS_88_HIGH         0x66ff
#define CONTROL_WIDTH_WEIGHTS_88             16
#define CONTROL_DEPTH_WEIGHTS_88             128
#define CONTROL_ADDR_WEIGHTS_89_BASE         0x6700
#define CONTROL_ADDR_WEIGHTS_89_HIGH         0x67ff
#define CONTROL_WIDTH_WEIGHTS_89             16
#define CONTROL_DEPTH_WEIGHTS_89             128
#define CONTROL_ADDR_WEIGHTS_90_BASE         0x6800
#define CONTROL_ADDR_WEIGHTS_90_HIGH         0x68ff
#define CONTROL_WIDTH_WEIGHTS_90             16
#define CONTROL_DEPTH_WEIGHTS_90             128
#define CONTROL_ADDR_WEIGHTS_91_BASE         0x6900
#define CONTROL_ADDR_WEIGHTS_91_HIGH         0x69ff
#define CONTROL_WIDTH_WEIGHTS_91             16
#define CONTROL_DEPTH_WEIGHTS_91             128
#define CONTROL_ADDR_WEIGHTS_92_BASE         0x6a00
#define CONTROL_ADDR_WEIGHTS_92_HIGH         0x6aff
#define CONTROL_WIDTH_WEIGHTS_92             16
#define CONTROL_DEPTH_WEIGHTS_92             128
#define CONTROL_ADDR_WEIGHTS_93_BASE         0x6b00
#define CONTROL_ADDR_WEIGHTS_93_HIGH         0x6bff
#define CONTROL_WIDTH_WEIGHTS_93             16
#define CONTROL_DEPTH_WEIGHTS_93             128
#define CONTROL_ADDR_WEIGHTS_94_BASE         0x6c00
#define CONTROL_ADDR_WEIGHTS_94_HIGH         0x6cff
#define CONTROL_WIDTH_WEIGHTS_94             16
#define CONTROL_DEPTH_WEIGHTS_94             128
#define CONTROL_ADDR_WEIGHTS_95_BASE         0x6d00
#define CONTROL_ADDR_WEIGHTS_95_HIGH         0x6dff
#define CONTROL_WIDTH_WEIGHTS_95             16
#define CONTROL_DEPTH_WEIGHTS_95             128
#define CONTROL_ADDR_WEIGHTS_96_BASE         0x6e00
#define CONTROL_ADDR_WEIGHTS_96_HIGH         0x6eff
#define CONTROL_WIDTH_WEIGHTS_96             16
#define CONTROL_DEPTH_WEIGHTS_96             128
#define CONTROL_ADDR_WEIGHTS_97_BASE         0x6f00
#define CONTROL_ADDR_WEIGHTS_97_HIGH         0x6fff
#define CONTROL_WIDTH_WEIGHTS_97             16
#define CONTROL_DEPTH_WEIGHTS_97             128
#define CONTROL_ADDR_WEIGHTS_98_BASE         0x7000
#define CONTROL_ADDR_WEIGHTS_98_HIGH         0x70ff
#define CONTROL_WIDTH_WEIGHTS_98             16
#define CONTROL_DEPTH_WEIGHTS_98             128
#define CONTROL_ADDR_WEIGHTS_99_BASE         0x7100
#define CONTROL_ADDR_WEIGHTS_99_HIGH         0x71ff
#define CONTROL_WIDTH_WEIGHTS_99             16
#define CONTROL_DEPTH_WEIGHTS_99             128
#define CONTROL_ADDR_WEIGHTS_100_BASE        0x7200
#define CONTROL_ADDR_WEIGHTS_100_HIGH        0x72ff
#define CONTROL_WIDTH_WEIGHTS_100            16
#define CONTROL_DEPTH_WEIGHTS_100            128
#define CONTROL_ADDR_WEIGHTS_101_BASE        0x7300
#define CONTROL_ADDR_WEIGHTS_101_HIGH        0x73ff
#define CONTROL_WIDTH_WEIGHTS_101            16
#define CONTROL_DEPTH_WEIGHTS_101            128
#define CONTROL_ADDR_WEIGHTS_102_BASE        0x7400
#define CONTROL_ADDR_WEIGHTS_102_HIGH        0x74ff
#define CONTROL_WIDTH_WEIGHTS_102            16
#define CONTROL_DEPTH_WEIGHTS_102            128
#define CONTROL_ADDR_WEIGHTS_103_BASE        0x7500
#define CONTROL_ADDR_WEIGHTS_103_HIGH        0x75ff
#define CONTROL_WIDTH_WEIGHTS_103            16
#define CONTROL_DEPTH_WEIGHTS_103            128
#define CONTROL_ADDR_WEIGHTS_104_BASE        0x7600
#define CONTROL_ADDR_WEIGHTS_104_HIGH        0x76ff
#define CONTROL_WIDTH_WEIGHTS_104            16
#define CONTROL_DEPTH_WEIGHTS_104            128
#define CONTROL_ADDR_WEIGHTS_105_BASE        0x7700
#define CONTROL_ADDR_WEIGHTS_105_HIGH        0x77ff
#define CONTROL_WIDTH_WEIGHTS_105            16
#define CONTROL_DEPTH_WEIGHTS_105            128
#define CONTROL_ADDR_WEIGHTS_106_BASE        0x7800
#define CONTROL_ADDR_WEIGHTS_106_HIGH        0x78ff
#define CONTROL_WIDTH_WEIGHTS_106            16
#define CONTROL_DEPTH_WEIGHTS_106            128
#define CONTROL_ADDR_WEIGHTS_107_BASE        0x7900
#define CONTROL_ADDR_WEIGHTS_107_HIGH        0x79ff
#define CONTROL_WIDTH_WEIGHTS_107            16
#define CONTROL_DEPTH_WEIGHTS_107            128
#define CONTROL_ADDR_WEIGHTS_108_BASE        0x7a00
#define CONTROL_ADDR_WEIGHTS_108_HIGH        0x7aff
#define CONTROL_WIDTH_WEIGHTS_108            16
#define CONTROL_DEPTH_WEIGHTS_108            128
#define CONTROL_ADDR_WEIGHTS_109_BASE        0x7b00
#define CONTROL_ADDR_WEIGHTS_109_HIGH        0x7bff
#define CONTROL_WIDTH_WEIGHTS_109            16
#define CONTROL_DEPTH_WEIGHTS_109            128
#define CONTROL_ADDR_WEIGHTS_110_BASE        0x7c00
#define CONTROL_ADDR_WEIGHTS_110_HIGH        0x7cff
#define CONTROL_WIDTH_WEIGHTS_110            16
#define CONTROL_DEPTH_WEIGHTS_110            128
#define CONTROL_ADDR_WEIGHTS_111_BASE        0x7d00
#define CONTROL_ADDR_WEIGHTS_111_HIGH        0x7dff
#define CONTROL_WIDTH_WEIGHTS_111            16
#define CONTROL_DEPTH_WEIGHTS_111            128
#define CONTROL_ADDR_WEIGHTS_112_BASE        0x7e00
#define CONTROL_ADDR_WEIGHTS_112_HIGH        0x7eff
#define CONTROL_WIDTH_WEIGHTS_112            16
#define CONTROL_DEPTH_WEIGHTS_112            128
#define CONTROL_ADDR_WEIGHTS_113_BASE        0x7f00
#define CONTROL_ADDR_WEIGHTS_113_HIGH        0x7fff
#define CONTROL_WIDTH_WEIGHTS_113            16
#define CONTROL_DEPTH_WEIGHTS_113            128
#define CONTROL_ADDR_WEIGHTS_114_BASE        0x8000
#define CONTROL_ADDR_WEIGHTS_114_HIGH        0x80ff
#define CONTROL_WIDTH_WEIGHTS_114            16
#define CONTROL_DEPTH_WEIGHTS_114            128
#define CONTROL_ADDR_WEIGHTS_115_BASE        0x8100
#define CONTROL_ADDR_WEIGHTS_115_HIGH        0x81ff
#define CONTROL_WIDTH_WEIGHTS_115            16
#define CONTROL_DEPTH_WEIGHTS_115            128
#define CONTROL_ADDR_WEIGHTS_116_BASE        0x8200
#define CONTROL_ADDR_WEIGHTS_116_HIGH        0x82ff
#define CONTROL_WIDTH_WEIGHTS_116            16
#define CONTROL_DEPTH_WEIGHTS_116            128
#define CONTROL_ADDR_WEIGHTS_117_BASE        0x8300
#define CONTROL_ADDR_WEIGHTS_117_HIGH        0x83ff
#define CONTROL_WIDTH_WEIGHTS_117            16
#define CONTROL_DEPTH_WEIGHTS_117            128
#define CONTROL_ADDR_WEIGHTS_118_BASE        0x8400
#define CONTROL_ADDR_WEIGHTS_118_HIGH        0x84ff
#define CONTROL_WIDTH_WEIGHTS_118            16
#define CONTROL_DEPTH_WEIGHTS_118            128
#define CONTROL_ADDR_WEIGHTS_119_BASE        0x8500
#define CONTROL_ADDR_WEIGHTS_119_HIGH        0x85ff
#define CONTROL_WIDTH_WEIGHTS_119            16
#define CONTROL_DEPTH_WEIGHTS_119            128
#define CONTROL_ADDR_WEIGHTS_120_BASE        0x8600
#define CONTROL_ADDR_WEIGHTS_120_HIGH        0x86ff
#define CONTROL_WIDTH_WEIGHTS_120            16
#define CONTROL_DEPTH_WEIGHTS_120            128
#define CONTROL_ADDR_WEIGHTS_121_BASE        0x8700
#define CONTROL_ADDR_WEIGHTS_121_HIGH        0x87ff
#define CONTROL_WIDTH_WEIGHTS_121            16
#define CONTROL_DEPTH_WEIGHTS_121            128
#define CONTROL_ADDR_WEIGHTS_122_BASE        0x8800
#define CONTROL_ADDR_WEIGHTS_122_HIGH        0x88ff
#define CONTROL_WIDTH_WEIGHTS_122            16
#define CONTROL_DEPTH_WEIGHTS_122            128
#define CONTROL_ADDR_WEIGHTS_123_BASE        0x8900
#define CONTROL_ADDR_WEIGHTS_123_HIGH        0x89ff
#define CONTROL_WIDTH_WEIGHTS_123            16
#define CONTROL_DEPTH_WEIGHTS_123            128
#define CONTROL_ADDR_WEIGHTS_124_BASE        0x8a00
#define CONTROL_ADDR_WEIGHTS_124_HIGH        0x8aff
#define CONTROL_WIDTH_WEIGHTS_124            16
#define CONTROL_DEPTH_WEIGHTS_124            128
#define CONTROL_ADDR_WEIGHTS_125_BASE        0x8b00
#define CONTROL_ADDR_WEIGHTS_125_HIGH        0x8bff
#define CONTROL_WIDTH_WEIGHTS_125            16
#define CONTROL_DEPTH_WEIGHTS_125            128
#define CONTROL_ADDR_WEIGHTS_126_BASE        0x8c00
#define CONTROL_ADDR_WEIGHTS_126_HIGH        0x8cff
#define CONTROL_WIDTH_WEIGHTS_126            16
#define CONTROL_DEPTH_WEIGHTS_126            128
#define CONTROL_ADDR_WEIGHTS_127_BASE        0x8d00
#define CONTROL_ADDR_WEIGHTS_127_HIGH        0x8dff
#define CONTROL_WIDTH_WEIGHTS_127            16
#define CONTROL_DEPTH_WEIGHTS_127            128
