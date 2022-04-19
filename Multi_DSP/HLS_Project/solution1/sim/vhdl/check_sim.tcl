# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
# Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
# ==============================================================
proc sc_sim_check {ret err logfile} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set errfile "err.log"
    if {[file exists $errfile] && [file size $errfile] != 0} {
        set fl [open $errfile r]
        while {[gets $fl line] >= 0} {
            if {[string first "AESL_mErrNo = " $line] == 0} {
                set mismatch_num [string range $line [string length "AESL_mErrNo = "] end]
                if {$mismatch_num != 0} {
                    ::AP::printMsg ERR COSIM 403 COSIM_403_986 ${mismatch_num}
                    break
                }
            }
        }
    }
    if {$ret || $err != ""} {
        if { [lindex $::errorCode 0] eq "CHILDSTATUS"} {
            set status [lindex $::errorCode 2]
            if {$status != ""} {
                ::AP::printMsg ERR COSIM 404 COSIM_404_987 $status
            } else {
                ::AP::printMsg ERR COSIM 405 COSIM_405_988
            }
        } else {
            ::AP::printMsg ERR COSIM 405 COSIM_405_989
        }
    }
    if {[file exists $logfile]} {
        set cmdret [catch {eval exec "grep \"Error:\" $logfile"} err]
        file delete -force $logfile
        if {$cmdret == 0} {
            ::AP::printMsg ERR COSIM 405 COSIM_405_990
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
}

proc rtl_sim_check {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set errfile "err.log"
    if {[file exists $errfile] && [file size $errfile] != 0} {
        set fl [open $errfile r]
        set unmatch_num 0
        while {[gets $fl line] >= 0} {
            if {[string first "unmatched" $line] != -1} {
                set unmatch_num [expr $unmatch_num + 1]
            }
        }
        if {$unmatch_num != 0} {
            ::AP::printMsg ERR COSIM 406 COSIM_406_991 ${unmatch_num}
        }
    }
    if {[file exists ".aesl_error"]} {
        set errfl [open ".aesl_error" r]
        gets $errfl line
        if {$line != 0} {
            ::AP::printMsg ERR COSIM 407 COSIM_407_992 $line
        }
    }
    if {[file exists ".exit.err"]} {
        ::AP::printMsg ERR COSIM 405 COSIM_405_993
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
}

proc check_tvin_file {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set rtlfilelist {
         "c.nnlayer.autotvin_input_0.dat"
         "c.nnlayer.autotvin_input_1.dat"
         "c.nnlayer.autotvin_input_2.dat"
         "c.nnlayer.autotvin_input_3.dat"
         "c.nnlayer.autotvin_input_4.dat"
         "c.nnlayer.autotvin_input_5.dat"
         "c.nnlayer.autotvin_input_6.dat"
         "c.nnlayer.autotvin_input_7.dat"
         "c.nnlayer.autotvin_input_8.dat"
         "c.nnlayer.autotvin_input_9.dat"
         "c.nnlayer.autotvin_input_10.dat"
         "c.nnlayer.autotvin_input_11.dat"
         "c.nnlayer.autotvin_input_12.dat"
         "c.nnlayer.autotvin_input_13.dat"
         "c.nnlayer.autotvin_input_14.dat"
         "c.nnlayer.autotvin_input_15.dat"
         "c.nnlayer.autotvin_input_16.dat"
         "c.nnlayer.autotvin_input_17.dat"
         "c.nnlayer.autotvin_input_18.dat"
         "c.nnlayer.autotvin_input_19.dat"
         "c.nnlayer.autotvin_input_20.dat"
         "c.nnlayer.autotvin_input_21.dat"
         "c.nnlayer.autotvin_input_22.dat"
         "c.nnlayer.autotvin_input_23.dat"
         "c.nnlayer.autotvin_input_24.dat"
         "c.nnlayer.autotvin_input_25.dat"
         "c.nnlayer.autotvin_input_26.dat"
         "c.nnlayer.autotvin_input_27.dat"
         "c.nnlayer.autotvin_input_28.dat"
         "c.nnlayer.autotvin_input_29.dat"
         "c.nnlayer.autotvin_input_30.dat"
         "c.nnlayer.autotvin_input_31.dat"
         "c.nnlayer.autotvin_input_32.dat"
         "c.nnlayer.autotvin_input_33.dat"
         "c.nnlayer.autotvin_input_34.dat"
         "c.nnlayer.autotvin_input_35.dat"
         "c.nnlayer.autotvin_input_36.dat"
         "c.nnlayer.autotvin_input_37.dat"
         "c.nnlayer.autotvin_input_38.dat"
         "c.nnlayer.autotvin_input_39.dat"
         "c.nnlayer.autotvin_input_40.dat"
         "c.nnlayer.autotvin_input_41.dat"
         "c.nnlayer.autotvin_input_42.dat"
         "c.nnlayer.autotvin_input_43.dat"
         "c.nnlayer.autotvin_input_44.dat"
         "c.nnlayer.autotvin_input_45.dat"
         "c.nnlayer.autotvin_input_46.dat"
         "c.nnlayer.autotvin_input_47.dat"
         "c.nnlayer.autotvin_input_48.dat"
         "c.nnlayer.autotvin_input_49.dat"
         "c.nnlayer.autotvin_input_50.dat"
         "c.nnlayer.autotvin_input_51.dat"
         "c.nnlayer.autotvin_input_52.dat"
         "c.nnlayer.autotvin_input_53.dat"
         "c.nnlayer.autotvin_input_54.dat"
         "c.nnlayer.autotvin_input_55.dat"
         "c.nnlayer.autotvin_input_56.dat"
         "c.nnlayer.autotvin_input_57.dat"
         "c.nnlayer.autotvin_input_58.dat"
         "c.nnlayer.autotvin_input_59.dat"
         "c.nnlayer.autotvin_input_60.dat"
         "c.nnlayer.autotvin_input_61.dat"
         "c.nnlayer.autotvin_input_62.dat"
         "c.nnlayer.autotvin_input_63.dat"
         "c.nnlayer.autotvin_input_64.dat"
         "c.nnlayer.autotvin_input_65.dat"
         "c.nnlayer.autotvin_input_66.dat"
         "c.nnlayer.autotvin_input_67.dat"
         "c.nnlayer.autotvin_input_68.dat"
         "c.nnlayer.autotvin_input_69.dat"
         "c.nnlayer.autotvin_input_70.dat"
         "c.nnlayer.autotvin_input_71.dat"
         "c.nnlayer.autotvin_input_72.dat"
         "c.nnlayer.autotvin_input_73.dat"
         "c.nnlayer.autotvin_input_74.dat"
         "c.nnlayer.autotvin_input_75.dat"
         "c.nnlayer.autotvin_input_76.dat"
         "c.nnlayer.autotvin_input_77.dat"
         "c.nnlayer.autotvin_input_78.dat"
         "c.nnlayer.autotvin_input_79.dat"
         "c.nnlayer.autotvin_input_80.dat"
         "c.nnlayer.autotvin_input_81.dat"
         "c.nnlayer.autotvin_input_82.dat"
         "c.nnlayer.autotvin_input_83.dat"
         "c.nnlayer.autotvin_input_84.dat"
         "c.nnlayer.autotvin_input_85.dat"
         "c.nnlayer.autotvin_input_86.dat"
         "c.nnlayer.autotvin_input_87.dat"
         "c.nnlayer.autotvin_input_88.dat"
         "c.nnlayer.autotvin_input_89.dat"
         "c.nnlayer.autotvin_input_90.dat"
         "c.nnlayer.autotvin_input_91.dat"
         "c.nnlayer.autotvin_input_92.dat"
         "c.nnlayer.autotvin_input_93.dat"
         "c.nnlayer.autotvin_input_94.dat"
         "c.nnlayer.autotvin_input_95.dat"
         "c.nnlayer.autotvin_input_96.dat"
         "c.nnlayer.autotvin_input_97.dat"
         "c.nnlayer.autotvin_input_98.dat"
         "c.nnlayer.autotvin_input_99.dat"
         "c.nnlayer.autotvin_input_100.dat"
         "c.nnlayer.autotvin_input_101.dat"
         "c.nnlayer.autotvin_input_102.dat"
         "c.nnlayer.autotvin_input_103.dat"
         "c.nnlayer.autotvin_input_104.dat"
         "c.nnlayer.autotvin_input_105.dat"
         "c.nnlayer.autotvin_input_106.dat"
         "c.nnlayer.autotvin_input_107.dat"
         "c.nnlayer.autotvin_input_108.dat"
         "c.nnlayer.autotvin_input_109.dat"
         "c.nnlayer.autotvin_input_110.dat"
         "c.nnlayer.autotvin_input_111.dat"
         "c.nnlayer.autotvin_input_112.dat"
         "c.nnlayer.autotvin_input_113.dat"
         "c.nnlayer.autotvin_input_114.dat"
         "c.nnlayer.autotvin_input_115.dat"
         "c.nnlayer.autotvin_input_116.dat"
         "c.nnlayer.autotvin_input_117.dat"
         "c.nnlayer.autotvin_input_118.dat"
         "c.nnlayer.autotvin_input_119.dat"
         "c.nnlayer.autotvin_input_120.dat"
         "c.nnlayer.autotvin_input_121.dat"
         "c.nnlayer.autotvin_input_122.dat"
         "c.nnlayer.autotvin_input_123.dat"
         "c.nnlayer.autotvin_input_124.dat"
         "c.nnlayer.autotvin_input_125.dat"
         "c.nnlayer.autotvin_input_126.dat"
         "c.nnlayer.autotvin_input_127.dat"
         "c.nnlayer.autotvin_bias.dat"
         "c.nnlayer.autotvin_weights_0.dat"
         "c.nnlayer.autotvin_weights_1.dat"
         "c.nnlayer.autotvin_weights_2.dat"
         "c.nnlayer.autotvin_weights_3.dat"
         "c.nnlayer.autotvin_weights_4.dat"
         "c.nnlayer.autotvin_weights_5.dat"
         "c.nnlayer.autotvin_weights_6.dat"
         "c.nnlayer.autotvin_weights_7.dat"
         "c.nnlayer.autotvin_weights_8.dat"
         "c.nnlayer.autotvin_weights_9.dat"
         "c.nnlayer.autotvin_weights_10.dat"
         "c.nnlayer.autotvin_weights_11.dat"
         "c.nnlayer.autotvin_weights_12.dat"
         "c.nnlayer.autotvin_weights_13.dat"
         "c.nnlayer.autotvin_weights_14.dat"
         "c.nnlayer.autotvin_weights_15.dat"
         "c.nnlayer.autotvin_weights_16.dat"
         "c.nnlayer.autotvin_weights_17.dat"
         "c.nnlayer.autotvin_weights_18.dat"
         "c.nnlayer.autotvin_weights_19.dat"
         "c.nnlayer.autotvin_weights_20.dat"
         "c.nnlayer.autotvin_weights_21.dat"
         "c.nnlayer.autotvin_weights_22.dat"
         "c.nnlayer.autotvin_weights_23.dat"
         "c.nnlayer.autotvin_weights_24.dat"
         "c.nnlayer.autotvin_weights_25.dat"
         "c.nnlayer.autotvin_weights_26.dat"
         "c.nnlayer.autotvin_weights_27.dat"
         "c.nnlayer.autotvin_weights_28.dat"
         "c.nnlayer.autotvin_weights_29.dat"
         "c.nnlayer.autotvin_weights_30.dat"
         "c.nnlayer.autotvin_weights_31.dat"
         "c.nnlayer.autotvin_weights_32.dat"
         "c.nnlayer.autotvin_weights_33.dat"
         "c.nnlayer.autotvin_weights_34.dat"
         "c.nnlayer.autotvin_weights_35.dat"
         "c.nnlayer.autotvin_weights_36.dat"
         "c.nnlayer.autotvin_weights_37.dat"
         "c.nnlayer.autotvin_weights_38.dat"
         "c.nnlayer.autotvin_weights_39.dat"
         "c.nnlayer.autotvin_weights_40.dat"
         "c.nnlayer.autotvin_weights_41.dat"
         "c.nnlayer.autotvin_weights_42.dat"
         "c.nnlayer.autotvin_weights_43.dat"
         "c.nnlayer.autotvin_weights_44.dat"
         "c.nnlayer.autotvin_weights_45.dat"
         "c.nnlayer.autotvin_weights_46.dat"
         "c.nnlayer.autotvin_weights_47.dat"
         "c.nnlayer.autotvin_weights_48.dat"
         "c.nnlayer.autotvin_weights_49.dat"
         "c.nnlayer.autotvin_weights_50.dat"
         "c.nnlayer.autotvin_weights_51.dat"
         "c.nnlayer.autotvin_weights_52.dat"
         "c.nnlayer.autotvin_weights_53.dat"
         "c.nnlayer.autotvin_weights_54.dat"
         "c.nnlayer.autotvin_weights_55.dat"
         "c.nnlayer.autotvin_weights_56.dat"
         "c.nnlayer.autotvin_weights_57.dat"
         "c.nnlayer.autotvin_weights_58.dat"
         "c.nnlayer.autotvin_weights_59.dat"
         "c.nnlayer.autotvin_weights_60.dat"
         "c.nnlayer.autotvin_weights_61.dat"
         "c.nnlayer.autotvin_weights_62.dat"
         "c.nnlayer.autotvin_weights_63.dat"
         "c.nnlayer.autotvin_weights_64.dat"
         "c.nnlayer.autotvin_weights_65.dat"
         "c.nnlayer.autotvin_weights_66.dat"
         "c.nnlayer.autotvin_weights_67.dat"
         "c.nnlayer.autotvin_weights_68.dat"
         "c.nnlayer.autotvin_weights_69.dat"
         "c.nnlayer.autotvin_weights_70.dat"
         "c.nnlayer.autotvin_weights_71.dat"
         "c.nnlayer.autotvin_weights_72.dat"
         "c.nnlayer.autotvin_weights_73.dat"
         "c.nnlayer.autotvin_weights_74.dat"
         "c.nnlayer.autotvin_weights_75.dat"
         "c.nnlayer.autotvin_weights_76.dat"
         "c.nnlayer.autotvin_weights_77.dat"
         "c.nnlayer.autotvin_weights_78.dat"
         "c.nnlayer.autotvin_weights_79.dat"
         "c.nnlayer.autotvin_weights_80.dat"
         "c.nnlayer.autotvin_weights_81.dat"
         "c.nnlayer.autotvin_weights_82.dat"
         "c.nnlayer.autotvin_weights_83.dat"
         "c.nnlayer.autotvin_weights_84.dat"
         "c.nnlayer.autotvin_weights_85.dat"
         "c.nnlayer.autotvin_weights_86.dat"
         "c.nnlayer.autotvin_weights_87.dat"
         "c.nnlayer.autotvin_weights_88.dat"
         "c.nnlayer.autotvin_weights_89.dat"
         "c.nnlayer.autotvin_weights_90.dat"
         "c.nnlayer.autotvin_weights_91.dat"
         "c.nnlayer.autotvin_weights_92.dat"
         "c.nnlayer.autotvin_weights_93.dat"
         "c.nnlayer.autotvin_weights_94.dat"
         "c.nnlayer.autotvin_weights_95.dat"
         "c.nnlayer.autotvin_weights_96.dat"
         "c.nnlayer.autotvin_weights_97.dat"
         "c.nnlayer.autotvin_weights_98.dat"
         "c.nnlayer.autotvin_weights_99.dat"
         "c.nnlayer.autotvin_weights_100.dat"
         "c.nnlayer.autotvin_weights_101.dat"
         "c.nnlayer.autotvin_weights_102.dat"
         "c.nnlayer.autotvin_weights_103.dat"
         "c.nnlayer.autotvin_weights_104.dat"
         "c.nnlayer.autotvin_weights_105.dat"
         "c.nnlayer.autotvin_weights_106.dat"
         "c.nnlayer.autotvin_weights_107.dat"
         "c.nnlayer.autotvin_weights_108.dat"
         "c.nnlayer.autotvin_weights_109.dat"
         "c.nnlayer.autotvin_weights_110.dat"
         "c.nnlayer.autotvin_weights_111.dat"
         "c.nnlayer.autotvin_weights_112.dat"
         "c.nnlayer.autotvin_weights_113.dat"
         "c.nnlayer.autotvin_weights_114.dat"
         "c.nnlayer.autotvin_weights_115.dat"
         "c.nnlayer.autotvin_weights_116.dat"
         "c.nnlayer.autotvin_weights_117.dat"
         "c.nnlayer.autotvin_weights_118.dat"
         "c.nnlayer.autotvin_weights_119.dat"
         "c.nnlayer.autotvin_weights_120.dat"
         "c.nnlayer.autotvin_weights_121.dat"
         "c.nnlayer.autotvin_weights_122.dat"
         "c.nnlayer.autotvin_weights_123.dat"
         "c.nnlayer.autotvin_weights_124.dat"
         "c.nnlayer.autotvin_weights_125.dat"
         "c.nnlayer.autotvin_weights_126.dat"
         "c.nnlayer.autotvin_weights_127.dat"
         "c.nnlayer.autotvin_numOfOutputNeurons.dat"
         "c.nnlayer.autotvin_activation.dat"
    }
    foreach rtlfile $rtlfilelist {
        if {[file isfile $rtlfile]} {
        } else {
            ::AP::printMsg ERR COSIM 320 COSIM_320_994
            return 1
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
    return 0
}

proc check_tvout_file {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set rtlfilelist {
         "rtl.nnlayer.autotvout_output_0.dat"
         "rtl.nnlayer.autotvout_output_1.dat"
         "rtl.nnlayer.autotvout_output_2.dat"
         "rtl.nnlayer.autotvout_output_3.dat"
         "rtl.nnlayer.autotvout_output_4.dat"
         "rtl.nnlayer.autotvout_output_5.dat"
         "rtl.nnlayer.autotvout_output_6.dat"
         "rtl.nnlayer.autotvout_output_7.dat"
         "rtl.nnlayer.autotvout_output_8.dat"
         "rtl.nnlayer.autotvout_output_9.dat"
         "rtl.nnlayer.autotvout_output_10.dat"
         "rtl.nnlayer.autotvout_output_11.dat"
         "rtl.nnlayer.autotvout_output_12.dat"
         "rtl.nnlayer.autotvout_output_13.dat"
         "rtl.nnlayer.autotvout_output_14.dat"
         "rtl.nnlayer.autotvout_output_15.dat"
         "rtl.nnlayer.autotvout_output_16.dat"
         "rtl.nnlayer.autotvout_output_17.dat"
         "rtl.nnlayer.autotvout_output_18.dat"
         "rtl.nnlayer.autotvout_output_19.dat"
         "rtl.nnlayer.autotvout_output_20.dat"
         "rtl.nnlayer.autotvout_output_21.dat"
         "rtl.nnlayer.autotvout_output_22.dat"
         "rtl.nnlayer.autotvout_output_23.dat"
         "rtl.nnlayer.autotvout_output_24.dat"
         "rtl.nnlayer.autotvout_output_25.dat"
         "rtl.nnlayer.autotvout_output_26.dat"
         "rtl.nnlayer.autotvout_output_27.dat"
         "rtl.nnlayer.autotvout_output_28.dat"
         "rtl.nnlayer.autotvout_output_29.dat"
         "rtl.nnlayer.autotvout_output_30.dat"
         "rtl.nnlayer.autotvout_output_31.dat"
         "rtl.nnlayer.autotvout_output_32.dat"
         "rtl.nnlayer.autotvout_output_33.dat"
         "rtl.nnlayer.autotvout_output_34.dat"
         "rtl.nnlayer.autotvout_output_35.dat"
         "rtl.nnlayer.autotvout_output_36.dat"
         "rtl.nnlayer.autotvout_output_37.dat"
         "rtl.nnlayer.autotvout_output_38.dat"
         "rtl.nnlayer.autotvout_output_39.dat"
         "rtl.nnlayer.autotvout_output_40.dat"
         "rtl.nnlayer.autotvout_output_41.dat"
         "rtl.nnlayer.autotvout_output_42.dat"
         "rtl.nnlayer.autotvout_output_43.dat"
         "rtl.nnlayer.autotvout_output_44.dat"
         "rtl.nnlayer.autotvout_output_45.dat"
         "rtl.nnlayer.autotvout_output_46.dat"
         "rtl.nnlayer.autotvout_output_47.dat"
         "rtl.nnlayer.autotvout_output_48.dat"
         "rtl.nnlayer.autotvout_output_49.dat"
         "rtl.nnlayer.autotvout_output_50.dat"
         "rtl.nnlayer.autotvout_output_51.dat"
         "rtl.nnlayer.autotvout_output_52.dat"
         "rtl.nnlayer.autotvout_output_53.dat"
         "rtl.nnlayer.autotvout_output_54.dat"
         "rtl.nnlayer.autotvout_output_55.dat"
         "rtl.nnlayer.autotvout_output_56.dat"
         "rtl.nnlayer.autotvout_output_57.dat"
         "rtl.nnlayer.autotvout_output_58.dat"
         "rtl.nnlayer.autotvout_output_59.dat"
         "rtl.nnlayer.autotvout_output_60.dat"
         "rtl.nnlayer.autotvout_output_61.dat"
         "rtl.nnlayer.autotvout_output_62.dat"
         "rtl.nnlayer.autotvout_output_63.dat"
         "rtl.nnlayer.autotvout_output_64.dat"
         "rtl.nnlayer.autotvout_output_65.dat"
         "rtl.nnlayer.autotvout_output_66.dat"
         "rtl.nnlayer.autotvout_output_67.dat"
         "rtl.nnlayer.autotvout_output_68.dat"
         "rtl.nnlayer.autotvout_output_69.dat"
         "rtl.nnlayer.autotvout_output_70.dat"
         "rtl.nnlayer.autotvout_output_71.dat"
         "rtl.nnlayer.autotvout_output_72.dat"
         "rtl.nnlayer.autotvout_output_73.dat"
         "rtl.nnlayer.autotvout_output_74.dat"
         "rtl.nnlayer.autotvout_output_75.dat"
         "rtl.nnlayer.autotvout_output_76.dat"
         "rtl.nnlayer.autotvout_output_77.dat"
         "rtl.nnlayer.autotvout_output_78.dat"
         "rtl.nnlayer.autotvout_output_79.dat"
         "rtl.nnlayer.autotvout_output_80.dat"
         "rtl.nnlayer.autotvout_output_81.dat"
         "rtl.nnlayer.autotvout_output_82.dat"
         "rtl.nnlayer.autotvout_output_83.dat"
         "rtl.nnlayer.autotvout_output_84.dat"
         "rtl.nnlayer.autotvout_output_85.dat"
         "rtl.nnlayer.autotvout_output_86.dat"
         "rtl.nnlayer.autotvout_output_87.dat"
         "rtl.nnlayer.autotvout_output_88.dat"
         "rtl.nnlayer.autotvout_output_89.dat"
         "rtl.nnlayer.autotvout_output_90.dat"
         "rtl.nnlayer.autotvout_output_91.dat"
         "rtl.nnlayer.autotvout_output_92.dat"
         "rtl.nnlayer.autotvout_output_93.dat"
         "rtl.nnlayer.autotvout_output_94.dat"
         "rtl.nnlayer.autotvout_output_95.dat"
         "rtl.nnlayer.autotvout_output_96.dat"
         "rtl.nnlayer.autotvout_output_97.dat"
         "rtl.nnlayer.autotvout_output_98.dat"
         "rtl.nnlayer.autotvout_output_99.dat"
         "rtl.nnlayer.autotvout_output_100.dat"
         "rtl.nnlayer.autotvout_output_101.dat"
         "rtl.nnlayer.autotvout_output_102.dat"
         "rtl.nnlayer.autotvout_output_103.dat"
         "rtl.nnlayer.autotvout_output_104.dat"
         "rtl.nnlayer.autotvout_output_105.dat"
         "rtl.nnlayer.autotvout_output_106.dat"
         "rtl.nnlayer.autotvout_output_107.dat"
         "rtl.nnlayer.autotvout_output_108.dat"
         "rtl.nnlayer.autotvout_output_109.dat"
         "rtl.nnlayer.autotvout_output_110.dat"
         "rtl.nnlayer.autotvout_output_111.dat"
         "rtl.nnlayer.autotvout_output_112.dat"
         "rtl.nnlayer.autotvout_output_113.dat"
         "rtl.nnlayer.autotvout_output_114.dat"
         "rtl.nnlayer.autotvout_output_115.dat"
         "rtl.nnlayer.autotvout_output_116.dat"
         "rtl.nnlayer.autotvout_output_117.dat"
         "rtl.nnlayer.autotvout_output_118.dat"
         "rtl.nnlayer.autotvout_output_119.dat"
         "rtl.nnlayer.autotvout_output_120.dat"
         "rtl.nnlayer.autotvout_output_121.dat"
         "rtl.nnlayer.autotvout_output_122.dat"
         "rtl.nnlayer.autotvout_output_123.dat"
         "rtl.nnlayer.autotvout_output_124.dat"
         "rtl.nnlayer.autotvout_output_125.dat"
         "rtl.nnlayer.autotvout_output_126.dat"
         "rtl.nnlayer.autotvout_output_127.dat"
    }
    foreach rtlfile $rtlfilelist {
        if {[file isfile $rtlfile]} {
        } else {
            ::AP::printMsg ERR COSIM 303 COSIM_303_996
            return 1
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
    return 0
}
