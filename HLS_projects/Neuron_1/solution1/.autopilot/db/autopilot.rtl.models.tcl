set SynModuleInfo {
  {SRCNAME nnlayer_Pipeline_1 MODELNAME nnlayer_Pipeline_1 RTLNAME nnlayer_nnlayer_Pipeline_1
    SUBMODULES {
      {MODELNAME nnlayer_flow_control_loop_pipe_sequential_init RTLNAME nnlayer_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME nnlayer_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME nnlayer_Pipeline_2 MODELNAME nnlayer_Pipeline_2 RTLNAME nnlayer_nnlayer_Pipeline_2}
  {SRCNAME nnlayer_Pipeline_3 MODELNAME nnlayer_Pipeline_3 RTLNAME nnlayer_nnlayer_Pipeline_3}
  {SRCNAME nnlayer_Pipeline_VITIS_LOOP_40_1 MODELNAME nnlayer_Pipeline_VITIS_LOOP_40_1 RTLNAME nnlayer_nnlayer_Pipeline_VITIS_LOOP_40_1}
  {SRCNAME nnlayer_Pipeline_VITIS_LOOP_46_3 MODELNAME nnlayer_Pipeline_VITIS_LOOP_46_3 RTLNAME nnlayer_nnlayer_Pipeline_VITIS_LOOP_46_3
    SUBMODULES {
      {MODELNAME nnlayer_mac_muladd_16s_16s_16ns_16_4_1 RTLNAME nnlayer_mac_muladd_16s_16s_16ns_16_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME nnlayer MODELNAME nnlayer RTLNAME nnlayer IS_TOP 1
    SUBMODULES {
      {MODELNAME nnlayer_input_r_RAM_AUTO_1R1W RTLNAME nnlayer_input_r_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nnlayer_weights_RAM_AUTO_1R1W RTLNAME nnlayer_weights_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nnlayer_control_s_axi RTLNAME nnlayer_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
