set SynModuleInfo {
  {SRCNAME runLayer_Pipeline_1 MODELNAME runLayer_Pipeline_1 RTLNAME runLayer_runLayer_Pipeline_1
    SUBMODULES {
      {MODELNAME runLayer_flow_control_loop_pipe_sequential_init RTLNAME runLayer_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME runLayer_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME runLayer_Pipeline_2 MODELNAME runLayer_Pipeline_2 RTLNAME runLayer_runLayer_Pipeline_2}
  {SRCNAME runLayer_Pipeline_VITIS_LOOP_29_2 MODELNAME runLayer_Pipeline_VITIS_LOOP_29_2 RTLNAME runLayer_runLayer_Pipeline_VITIS_LOOP_29_2
    SUBMODULES {
      {MODELNAME runLayer_mac_muladd_16s_16s_16ns_16_4_1 RTLNAME runLayer_mac_muladd_16s_16s_16ns_16_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME runLayer MODELNAME runLayer RTLNAME runLayer IS_TOP 1
    SUBMODULES {
      {MODELNAME runLayer_mul_2ns_9s_9_1_1 RTLNAME runLayer_mul_2ns_9s_9_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME runLayer_tmp_weights_RAM_AUTO_1R1W RTLNAME runLayer_tmp_weights_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME runLayer_control_s_axi RTLNAME runLayer_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
