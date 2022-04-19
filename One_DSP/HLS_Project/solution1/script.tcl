############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project HLS_Project
set_top nnlayer
add_files neural_layer.cpp
add_files -tb HLS_Project/test_bench.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
config_export -format ip_catalog -output C:/Users/jespe/Desktop/Uni_Civil_10_Semester/RnD/HLS_projects/Neuron_1 -rtl verilog -vivado_clock 10
config_interface -m_axi_alignment_byte_size 64 -m_axi_latency 64 -m_axi_max_widen_bitwidth 512
config_rtl -register_reset_num 3
set_clock_uncertainty 1.25
source "./HLS_Project/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -rtl verilog -format ip_catalog -output C:/Users/jespe/Desktop/Uni_Civil_10_Semester/RnD/HLS_projects/Neuron_1
