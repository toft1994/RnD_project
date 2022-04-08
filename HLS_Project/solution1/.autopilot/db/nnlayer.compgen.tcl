# This script segment is generated automatically by AutoPilot

set name nnlayer_mul_24s_26ns_50_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name nnlayer_sdiv_18ns_16s_16_22_seq_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {sdiv} IMPL {auto_seq} LATENCY 21 ALLOW_PRAGMA 1
}


set name nnlayer_sdiv_48ns_32s_48_52_seq_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {sdiv} IMPL {auto_seq} LATENCY 51 ALLOW_PRAGMA 1
}


set name nnlayer_sdiv_24ns_17s_24_28_seq_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {sdiv} IMPL {auto_seq} LATENCY 27 ALLOW_PRAGMA 1
}


set id 138
set name nnlayer_mac_muladd_16s_16s_24ns_24_4_1
set corename simcore_mac
set op mac
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 16
set in0_signed 1
set in1_width 16
set in1_signed 1
set in2_width 24
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 24
set arg_lists {i0 {16 1 +} i1 {16 1 +} m {24 1 +} i2 {24 0 +} p {24 0 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {dsp} LATENCY 3 ALLOW_PRAGMA 1
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 266
set name nnlayer_mul_mul_9ns_16s_25_4_1
set corename simcore_mul
set op mul
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 9
set in0_signed 0
set in1_width 16
set in1_signed 1
set ce_width 1
set ce_signed 0
set out_width 25
set arg_lists {i0 {9 0 +} i1 {16 1 +} p {25 1 +} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {dsp} LATENCY 3 ALLOW_PRAGMA 1
}


set op mul
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 273
set hasByteEnable 0
set MemName nnlayer_output_V_RAM_AUTO_1R1W
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 16
set AddrRange 128
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 0
set ROMData { }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 3.254
set ClkPeriod 10
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $MemName BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 274
set hasByteEnable 0
set MemName nnlayer_resArray_V_RAM_AUTO_1R1W
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 32
set AddrRange 128
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 0
set ROMData { }
set HasInitializer 0
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 3.254
set ClkPeriod 10
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $MemName BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
set port_control {
input_0 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
input_1 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
input_2 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
input_3 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
input_4 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
input_5 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
input_6 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
input_7 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
input_8 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 80
	offset_end 87
}
input_9 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 88
	offset_end 95
}
input_10 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 96
	offset_end 103
}
input_11 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 104
	offset_end 111
}
input_12 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 112
	offset_end 119
}
input_13 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 120
	offset_end 127
}
input_14 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 128
	offset_end 135
}
input_15 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 136
	offset_end 143
}
input_16 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 144
	offset_end 151
}
input_17 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 152
	offset_end 159
}
input_18 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 160
	offset_end 167
}
input_19 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 168
	offset_end 175
}
input_20 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 176
	offset_end 183
}
input_21 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 184
	offset_end 191
}
input_22 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 192
	offset_end 199
}
input_23 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 200
	offset_end 207
}
input_24 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 208
	offset_end 215
}
input_25 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 216
	offset_end 223
}
input_26 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 224
	offset_end 231
}
input_27 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 232
	offset_end 239
}
input_28 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 240
	offset_end 247
}
input_29 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 248
	offset_end 255
}
input_30 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 256
	offset_end 263
}
input_31 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 264
	offset_end 271
}
input_32 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 272
	offset_end 279
}
input_33 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 280
	offset_end 287
}
input_34 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 288
	offset_end 295
}
input_35 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 296
	offset_end 303
}
input_36 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 304
	offset_end 311
}
input_37 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 312
	offset_end 319
}
input_38 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 320
	offset_end 327
}
input_39 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 328
	offset_end 335
}
input_40 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 336
	offset_end 343
}
input_41 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 344
	offset_end 351
}
input_42 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 352
	offset_end 359
}
input_43 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 360
	offset_end 367
}
input_44 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 368
	offset_end 375
}
input_45 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 376
	offset_end 383
}
input_46 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 384
	offset_end 391
}
input_47 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 392
	offset_end 399
}
input_48 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 400
	offset_end 407
}
input_49 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 408
	offset_end 415
}
input_50 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 416
	offset_end 423
}
input_51 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 424
	offset_end 431
}
input_52 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 432
	offset_end 439
}
input_53 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 440
	offset_end 447
}
input_54 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 448
	offset_end 455
}
input_55 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 456
	offset_end 463
}
input_56 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 464
	offset_end 471
}
input_57 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 472
	offset_end 479
}
input_58 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 480
	offset_end 487
}
input_59 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 488
	offset_end 495
}
input_60 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 496
	offset_end 503
}
input_61 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 504
	offset_end 511
}
input_62 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 512
	offset_end 519
}
input_63 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 520
	offset_end 527
}
input_64 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 528
	offset_end 535
}
input_65 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 536
	offset_end 543
}
input_66 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 544
	offset_end 551
}
input_67 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 552
	offset_end 559
}
input_68 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 560
	offset_end 567
}
input_69 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 568
	offset_end 575
}
input_70 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 576
	offset_end 583
}
input_71 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 584
	offset_end 591
}
input_72 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 592
	offset_end 599
}
input_73 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 600
	offset_end 607
}
input_74 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 608
	offset_end 615
}
input_75 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 616
	offset_end 623
}
input_76 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 624
	offset_end 631
}
input_77 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 632
	offset_end 639
}
input_78 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 640
	offset_end 647
}
input_79 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 648
	offset_end 655
}
input_80 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 656
	offset_end 663
}
input_81 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 664
	offset_end 671
}
input_82 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 672
	offset_end 679
}
input_83 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 680
	offset_end 687
}
input_84 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 688
	offset_end 695
}
input_85 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 696
	offset_end 703
}
input_86 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 704
	offset_end 711
}
input_87 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 712
	offset_end 719
}
input_88 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 720
	offset_end 727
}
input_89 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 728
	offset_end 735
}
input_90 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 736
	offset_end 743
}
input_91 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 744
	offset_end 751
}
input_92 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 752
	offset_end 759
}
input_93 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 760
	offset_end 767
}
input_94 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 768
	offset_end 775
}
input_95 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 776
	offset_end 783
}
input_96 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 784
	offset_end 791
}
input_97 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 792
	offset_end 799
}
input_98 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 800
	offset_end 807
}
input_99 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 808
	offset_end 815
}
input_100 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 816
	offset_end 823
}
input_101 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 824
	offset_end 831
}
input_102 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 832
	offset_end 839
}
input_103 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 840
	offset_end 847
}
input_104 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 848
	offset_end 855
}
input_105 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 856
	offset_end 863
}
input_106 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 864
	offset_end 871
}
input_107 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 872
	offset_end 879
}
input_108 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 880
	offset_end 887
}
input_109 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 888
	offset_end 895
}
input_110 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 896
	offset_end 903
}
input_111 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 904
	offset_end 911
}
input_112 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 912
	offset_end 919
}
input_113 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 920
	offset_end 927
}
input_114 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 928
	offset_end 935
}
input_115 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 936
	offset_end 943
}
input_116 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 944
	offset_end 951
}
input_117 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 952
	offset_end 959
}
input_118 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 960
	offset_end 967
}
input_119 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 968
	offset_end 975
}
input_120 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 976
	offset_end 983
}
input_121 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 984
	offset_end 991
}
input_122 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 992
	offset_end 999
}
input_123 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 1000
	offset_end 1007
}
input_124 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 1008
	offset_end 1015
}
input_125 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 1016
	offset_end 1023
}
input_126 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 1024
	offset_end 1031
}
input_127 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 1032
	offset_end 1039
}
output_0 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1040
	offset_end 1047
}
output_1 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1056
	offset_end 1063
}
output_2 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1072
	offset_end 1079
}
output_3 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1088
	offset_end 1095
}
output_4 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1104
	offset_end 1111
}
output_5 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1120
	offset_end 1127
}
output_6 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1136
	offset_end 1143
}
output_7 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1152
	offset_end 1159
}
output_8 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1168
	offset_end 1175
}
output_9 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1184
	offset_end 1191
}
output_10 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1200
	offset_end 1207
}
output_11 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1216
	offset_end 1223
}
output_12 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1232
	offset_end 1239
}
output_13 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1248
	offset_end 1255
}
output_14 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1264
	offset_end 1271
}
output_15 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1280
	offset_end 1287
}
output_16 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1296
	offset_end 1303
}
output_17 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1312
	offset_end 1319
}
output_18 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1328
	offset_end 1335
}
output_19 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1344
	offset_end 1351
}
output_20 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1360
	offset_end 1367
}
output_21 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1376
	offset_end 1383
}
output_22 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1392
	offset_end 1399
}
output_23 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1408
	offset_end 1415
}
output_24 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1424
	offset_end 1431
}
output_25 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1440
	offset_end 1447
}
output_26 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1456
	offset_end 1463
}
output_27 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1472
	offset_end 1479
}
output_28 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1488
	offset_end 1495
}
output_29 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1504
	offset_end 1511
}
output_30 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1520
	offset_end 1527
}
output_31 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1536
	offset_end 1543
}
output_32 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1552
	offset_end 1559
}
output_33 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1568
	offset_end 1575
}
output_34 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1584
	offset_end 1591
}
output_35 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1600
	offset_end 1607
}
output_36 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1616
	offset_end 1623
}
output_37 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1632
	offset_end 1639
}
output_38 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1648
	offset_end 1655
}
output_39 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1664
	offset_end 1671
}
output_40 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1680
	offset_end 1687
}
output_41 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1696
	offset_end 1703
}
output_42 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1712
	offset_end 1719
}
output_43 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1728
	offset_end 1735
}
output_44 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1744
	offset_end 1751
}
output_45 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1760
	offset_end 1767
}
output_46 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1776
	offset_end 1783
}
output_47 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1792
	offset_end 1799
}
output_48 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1808
	offset_end 1815
}
output_49 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1824
	offset_end 1831
}
output_50 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1840
	offset_end 1847
}
output_51 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1856
	offset_end 1863
}
output_52 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1872
	offset_end 1879
}
output_53 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1888
	offset_end 1895
}
output_54 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1904
	offset_end 1911
}
output_55 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1920
	offset_end 1927
}
output_56 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1936
	offset_end 1943
}
output_57 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1952
	offset_end 1959
}
output_58 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1968
	offset_end 1975
}
output_59 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 1984
	offset_end 1991
}
output_60 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2000
	offset_end 2007
}
output_61 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2016
	offset_end 2023
}
output_62 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2032
	offset_end 2039
}
output_63 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2048
	offset_end 2055
}
output_64 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2064
	offset_end 2071
}
output_65 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2080
	offset_end 2087
}
output_66 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2096
	offset_end 2103
}
output_67 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2112
	offset_end 2119
}
output_68 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2128
	offset_end 2135
}
output_69 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2144
	offset_end 2151
}
output_70 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2160
	offset_end 2167
}
output_71 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2176
	offset_end 2183
}
output_72 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2192
	offset_end 2199
}
output_73 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2208
	offset_end 2215
}
output_74 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2224
	offset_end 2231
}
output_75 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2240
	offset_end 2247
}
output_76 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2256
	offset_end 2263
}
output_77 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2272
	offset_end 2279
}
output_78 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2288
	offset_end 2295
}
output_79 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2304
	offset_end 2311
}
output_80 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2320
	offset_end 2327
}
output_81 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2336
	offset_end 2343
}
output_82 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2352
	offset_end 2359
}
output_83 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2368
	offset_end 2375
}
output_84 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2384
	offset_end 2391
}
output_85 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2400
	offset_end 2407
}
output_86 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2416
	offset_end 2423
}
output_87 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2432
	offset_end 2439
}
output_88 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2448
	offset_end 2455
}
output_89 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2464
	offset_end 2471
}
output_90 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2480
	offset_end 2487
}
output_91 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2496
	offset_end 2503
}
output_92 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2512
	offset_end 2519
}
output_93 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2528
	offset_end 2535
}
output_94 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2544
	offset_end 2551
}
output_95 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2560
	offset_end 2567
}
output_96 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2576
	offset_end 2583
}
output_97 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2592
	offset_end 2599
}
output_98 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2608
	offset_end 2615
}
output_99 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2624
	offset_end 2631
}
output_100 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2640
	offset_end 2647
}
output_101 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2656
	offset_end 2663
}
output_102 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2672
	offset_end 2679
}
output_103 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2688
	offset_end 2695
}
output_104 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2704
	offset_end 2711
}
output_105 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2720
	offset_end 2727
}
output_106 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2736
	offset_end 2743
}
output_107 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2752
	offset_end 2759
}
output_108 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2768
	offset_end 2775
}
output_109 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2784
	offset_end 2791
}
output_110 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2800
	offset_end 2807
}
output_111 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2816
	offset_end 2823
}
output_112 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2832
	offset_end 2839
}
output_113 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2848
	offset_end 2855
}
output_114 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2864
	offset_end 2871
}
output_115 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2880
	offset_end 2887
}
output_116 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2896
	offset_end 2903
}
output_117 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2912
	offset_end 2919
}
output_118 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2928
	offset_end 2935
}
output_119 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2944
	offset_end 2951
}
output_120 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2960
	offset_end 2967
}
output_121 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2976
	offset_end 2983
}
output_122 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 2992
	offset_end 2999
}
output_123 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 3008
	offset_end 3015
}
output_124 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 3024
	offset_end 3031
}
output_125 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 3040
	offset_end 3047
}
output_126 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 3056
	offset_end 3063
}
output_127 { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 3072
	offset_end 3079
}
numOfOutputNeurons { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 3088
	offset_end 3095
}
activation { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 3096
	offset_end 3103
}
bias { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 3328
	offset_end 3583
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_0 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 3584
	offset_end 3839
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_1 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 3840
	offset_end 4095
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_2 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 4096
	offset_end 4351
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_3 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 4352
	offset_end 4607
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_4 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 4608
	offset_end 4863
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_5 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 4864
	offset_end 5119
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_6 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 5120
	offset_end 5375
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_7 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 5376
	offset_end 5631
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_8 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 5632
	offset_end 5887
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_9 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 5888
	offset_end 6143
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_10 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 6144
	offset_end 6399
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_11 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 6400
	offset_end 6655
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_12 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 6656
	offset_end 6911
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_13 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 6912
	offset_end 7167
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_14 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 7168
	offset_end 7423
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_15 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 7424
	offset_end 7679
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_16 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 7680
	offset_end 7935
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_17 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 7936
	offset_end 8191
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_18 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 8192
	offset_end 8447
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_19 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 8448
	offset_end 8703
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_20 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 8704
	offset_end 8959
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_21 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 8960
	offset_end 9215
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_22 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 9216
	offset_end 9471
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_23 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 9472
	offset_end 9727
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_24 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 9728
	offset_end 9983
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_25 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 9984
	offset_end 10239
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_26 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 10240
	offset_end 10495
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_27 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 10496
	offset_end 10751
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_28 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 10752
	offset_end 11007
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_29 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 11008
	offset_end 11263
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_30 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 11264
	offset_end 11519
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_31 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 11520
	offset_end 11775
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_32 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 11776
	offset_end 12031
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_33 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 12032
	offset_end 12287
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_34 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 12288
	offset_end 12543
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_35 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 12544
	offset_end 12799
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_36 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 12800
	offset_end 13055
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_37 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 13056
	offset_end 13311
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_38 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 13312
	offset_end 13567
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_39 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 13568
	offset_end 13823
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_40 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 13824
	offset_end 14079
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_41 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 14080
	offset_end 14335
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_42 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 14336
	offset_end 14591
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_43 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 14592
	offset_end 14847
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_44 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 14848
	offset_end 15103
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_45 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 15104
	offset_end 15359
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_46 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 15360
	offset_end 15615
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_47 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 15616
	offset_end 15871
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_48 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 15872
	offset_end 16127
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_49 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 16128
	offset_end 16383
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_50 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 16384
	offset_end 16639
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_51 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 16640
	offset_end 16895
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_52 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 16896
	offset_end 17151
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_53 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 17152
	offset_end 17407
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_54 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 17408
	offset_end 17663
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_55 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 17664
	offset_end 17919
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_56 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 17920
	offset_end 18175
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_57 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 18176
	offset_end 18431
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_58 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 18432
	offset_end 18687
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_59 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 18688
	offset_end 18943
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_60 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 18944
	offset_end 19199
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_61 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 19200
	offset_end 19455
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_62 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 19456
	offset_end 19711
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_63 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 19712
	offset_end 19967
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_64 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 19968
	offset_end 20223
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_65 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 20224
	offset_end 20479
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_66 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 20480
	offset_end 20735
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_67 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 20736
	offset_end 20991
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_68 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 20992
	offset_end 21247
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_69 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 21248
	offset_end 21503
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_70 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 21504
	offset_end 21759
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_71 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 21760
	offset_end 22015
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_72 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 22016
	offset_end 22271
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_73 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 22272
	offset_end 22527
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_74 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 22528
	offset_end 22783
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_75 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 22784
	offset_end 23039
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_76 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 23040
	offset_end 23295
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_77 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 23296
	offset_end 23551
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_78 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 23552
	offset_end 23807
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_79 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 23808
	offset_end 24063
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_80 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 24064
	offset_end 24319
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_81 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 24320
	offset_end 24575
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_82 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 24576
	offset_end 24831
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_83 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 24832
	offset_end 25087
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_84 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 25088
	offset_end 25343
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_85 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 25344
	offset_end 25599
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_86 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 25600
	offset_end 25855
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_87 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 25856
	offset_end 26111
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_88 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 26112
	offset_end 26367
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_89 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 26368
	offset_end 26623
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_90 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 26624
	offset_end 26879
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_91 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 26880
	offset_end 27135
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_92 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 27136
	offset_end 27391
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_93 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 27392
	offset_end 27647
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_94 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 27648
	offset_end 27903
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_95 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 27904
	offset_end 28159
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_96 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 28160
	offset_end 28415
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_97 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 28416
	offset_end 28671
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_98 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 28672
	offset_end 28927
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_99 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 28928
	offset_end 29183
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_100 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 29184
	offset_end 29439
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_101 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 29440
	offset_end 29695
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_102 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 29696
	offset_end 29951
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_103 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 29952
	offset_end 30207
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_104 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 30208
	offset_end 30463
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_105 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 30464
	offset_end 30719
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_106 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 30720
	offset_end 30975
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_107 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 30976
	offset_end 31231
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_108 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 31232
	offset_end 31487
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_109 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 31488
	offset_end 31743
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_110 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 31744
	offset_end 31999
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_111 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 32000
	offset_end 32255
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_112 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 32256
	offset_end 32511
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_113 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 32512
	offset_end 32767
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_114 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 32768
	offset_end 33023
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_115 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 33024
	offset_end 33279
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_116 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 33280
	offset_end 33535
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_117 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 33536
	offset_end 33791
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_118 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 33792
	offset_end 34047
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_119 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 34048
	offset_end 34303
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_120 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 34304
	offset_end 34559
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_121 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 34560
	offset_end 34815
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_122 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 34816
	offset_end 35071
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_123 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 35072
	offset_end 35327
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_124 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 35328
	offset_end 35583
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_125 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 35584
	offset_end 35839
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_126 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 35840
	offset_end 36095
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_127 { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 36096
	offset_end 36351
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
ap_start {
	mailbox_input_ctrl 0
	mailbox_output_ctrl 0
	auto_restart_enabled 1
	auto_restart_counter_num 0
	auto_restart_counter_offset 16
	auto_restart_counter_size 32
}
ap_done { }
ap_ready { }
ap_idle { }
ap_local_deadlock { 
	dir O
	width 1
	depth 1
	mode ap_none
	offset -1
	offset_end -1
}
interrupt {
    ap_local_deadlock 5
}
}
dict set axilite_register_dict control $port_control


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 275 \
			corename nnlayer_control_axilite \
			name nnlayer_control_s_axi \
			ports {$port_control} \
			op interface \
			interrupt_mode none \
			is_flushable 0 \
			is_datawidth64 0 \
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'control'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler nnlayer_control_s_axi BINDTYPE interface TYPE interface_s_axilite
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


