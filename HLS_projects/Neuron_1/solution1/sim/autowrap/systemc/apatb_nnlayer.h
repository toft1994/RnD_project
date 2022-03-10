// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern "C" void AESL_WRAP_nnlayer (
volatile void* input_s,
volatile void* output_r,
volatile void* weights_s,
volatile void* bias_s,
short numOfInNeurons,
short numOfOutNeurons,
char activation);
