// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern "C" void AESL_WRAP_nnlayer (
volatile void* input_r,
volatile void* output_r,
volatile void* bias,
volatile void* weights,
short numOfInputNeurons,
short numOfOutputNeurons,
char activation);
