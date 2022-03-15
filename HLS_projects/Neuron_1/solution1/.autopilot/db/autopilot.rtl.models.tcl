set SynModuleInfo {
  {SRCNAME nnlayer_Pipeline_VITIS_LOOP_32_1 MODELNAME nnlayer_Pipeline_VITIS_LOOP_32_1 RTLNAME nnlayer_nnlayer_Pipeline_VITIS_LOOP_32_1
    SUBMODULES {
      {MODELNAME nnlayer_flow_control_loop_pipe_sequential_init RTLNAME nnlayer_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME nnlayer_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME nnlayer_Pipeline_VITIS_LOOP_10_1 MODELNAME nnlayer_Pipeline_VITIS_LOOP_10_1 RTLNAME nnlayer_nnlayer_Pipeline_VITIS_LOOP_10_1}
  {SRCNAME nnlayer MODELNAME nnlayer RTLNAME nnlayer IS_TOP 1
    SUBMODULES {
      {MODELNAME nnlayer_mac_muladd_16s_16s_24ns_24_4_1 RTLNAME nnlayer_mac_muladd_16s_16s_24ns_24_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME nnlayer_control_s_axi RTLNAME nnlayer_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
