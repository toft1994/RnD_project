# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\jespe\Desktop\Uni_Civil_10_Semester\RnD\Application_code\design_1_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\jespe\Desktop\Uni_Civil_10_Semester\RnD\Application_code\design_1_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_wrapper}\
-hw {C:\Users\jespe\Desktop\Uni_Civil_10_Semester\RnD\vivado_project\design_1_wrapper.xsa}\
-out {C:/Users/jespe/Desktop/Uni_Civil_10_Semester/RnD/Application_code}

platform write
domain create -name {freertos10_xilinx_ps7_cortexa9_0} -display-name {freertos10_xilinx_ps7_cortexa9_0} -os {freertos10_xilinx} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {design_1_wrapper}
domain active {zynq_fsbl}
domain active {freertos10_xilinx_ps7_cortexa9_0}
platform generate -quick
platform generate
platform active {design_1_wrapper}
platform config -updatehw {C:/Users/jespe/Desktop/Uni_Civil_10_Semester/RnD/vivado_project/design_1_wrapper.xsa}
domain active {zynq_fsbl}
platform generate -domains 
bsp reload
platform config -updatehw {C:/Users/jespe/Desktop/Uni_Civil_10_Semester/RnD/vivado_project/design_1_wrapper.xsa}
platform generate -domains 
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform active {design_1_wrapper}
platform config -updatehw {C:/Users/jespe/Desktop/Uni_Civil_10_Semester/RnD/vivado_project/design_1_wrapper.xsa}
platform generate -domains 
