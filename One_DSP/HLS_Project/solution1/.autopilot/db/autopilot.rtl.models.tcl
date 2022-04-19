set SynModuleInfo {
  {SRCNAME nnlayer_Pipeline_VITIS_LOOP_87_1 MODELNAME nnlayer_Pipeline_VITIS_LOOP_87_1 RTLNAME nnlayer_nnlayer_Pipeline_VITIS_LOOP_87_1
    SUBMODULES {
      {MODELNAME nnlayer_flow_control_loop_pipe_sequential_init RTLNAME nnlayer_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME nnlayer_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME nnlayer_Pipeline_VITIS_LOOP_96_2 MODELNAME nnlayer_Pipeline_VITIS_LOOP_96_2 RTLNAME nnlayer_nnlayer_Pipeline_VITIS_LOOP_96_2
    SUBMODULES {
      {MODELNAME nnlayer_mac_muladd_16s_16s_24ns_24_4_1 RTLNAME nnlayer_mac_muladd_16s_16s_24ns_24_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME nnlayer_Pipeline_VITIS_LOOP_45_1 MODELNAME nnlayer_Pipeline_VITIS_LOOP_45_1 RTLNAME nnlayer_nnlayer_Pipeline_VITIS_LOOP_45_1}
  {SRCNAME nnlayer_Pipeline_VITIS_LOOP_30_1 MODELNAME nnlayer_Pipeline_VITIS_LOOP_30_1 RTLNAME nnlayer_nnlayer_Pipeline_VITIS_LOOP_30_1
    SUBMODULES {
      {MODELNAME nnlayer_sdiv_24ns_17s_24_28_1 RTLNAME nnlayer_sdiv_24ns_17s_24_28_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 27 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME nnlayer_Pipeline_VITIS_LOOP_16_1 MODELNAME nnlayer_Pipeline_VITIS_LOOP_16_1 RTLNAME nnlayer_nnlayer_Pipeline_VITIS_LOOP_16_1}
  {SRCNAME nnlayer_Pipeline_VITIS_LOOP_116_1 MODELNAME nnlayer_Pipeline_VITIS_LOOP_116_1 RTLNAME nnlayer_nnlayer_Pipeline_VITIS_LOOP_116_1}
  {SRCNAME nnlayer MODELNAME nnlayer RTLNAME nnlayer IS_TOP 1
    SUBMODULES {
      {MODELNAME nnlayer_mul_24s_26ns_50_1_1 RTLNAME nnlayer_mul_24s_26ns_50_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME nnlayer_udiv_26ns_26s_26_30_seq_1 RTLNAME nnlayer_udiv_26ns_26s_26_30_seq_1 BINDTYPE op TYPE udiv IMPL auto_seq LATENCY 29 ALLOW_PRAGMA 1}
      {MODELNAME nnlayer_mul_32ns_26ns_42_1_1 RTLNAME nnlayer_mul_32ns_26ns_42_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME nnlayer_udiv_56ns_56ns_16_60_seq_1 RTLNAME nnlayer_udiv_56ns_56ns_16_60_seq_1 BINDTYPE op TYPE udiv IMPL auto_seq LATENCY 59 ALLOW_PRAGMA 1}
      {MODELNAME nnlayer_output_V_RAM_AUTO_1R1W RTLNAME nnlayer_output_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nnlayer_resArray_V_RAM_AUTO_1R1W RTLNAME nnlayer_resArray_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nnlayer_control_s_axi RTLNAME nnlayer_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
