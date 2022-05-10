// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nnlayer_mul_mul_14s_14s_14_4_1__HH__
#define __nnlayer_mul_mul_14s_14s_14_4_1__HH__
#include "nnlayer_mul_mul_14s_14s_14_4_1_DSP48_0.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(nnlayer_mul_mul_14s_14s_14_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    nnlayer_mul_mul_14s_14s_14_4_1_DSP48_0 nnlayer_mul_mul_14s_14s_14_4_1_DSP48_0_U;

    SC_CTOR(nnlayer_mul_mul_14s_14s_14_4_1):  nnlayer_mul_mul_14s_14s_14_4_1_DSP48_0_U ("nnlayer_mul_mul_14s_14s_14_4_1_DSP48_0_U") {
        nnlayer_mul_mul_14s_14s_14_4_1_DSP48_0_U.clk(clk);
        nnlayer_mul_mul_14s_14s_14_4_1_DSP48_0_U.rst(reset);
        nnlayer_mul_mul_14s_14s_14_4_1_DSP48_0_U.ce(ce);
        nnlayer_mul_mul_14s_14s_14_4_1_DSP48_0_U.a(din0);
        nnlayer_mul_mul_14s_14s_14_4_1_DSP48_0_U.b(din1);
        nnlayer_mul_mul_14s_14s_14_4_1_DSP48_0_U.p(dout);

    }

};

#endif //
