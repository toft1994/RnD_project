############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Neuron_1
set_top nnlayer
add_files Neuron_1/neural_layer.cpp
add_files -tb Neuron_1/test_bench.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
config_export -format ip_catalog -output C:/Users/jespe/Desktop/Uni_Civil_10_Semester/RnD/RnD_project/HLS_projects -rtl verilog
set_clock_uncertainty 1.25
source "./Neuron_1/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -rtl verilog -format ip_catalog -output C:/Users/jespe/Desktop/Uni_Civil_10_Semester/RnD/RnD_project/HLS_projects
