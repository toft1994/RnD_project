# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\jespe\Desktop\Uni_Civil_10_Semester\RnD\RnD_project\Application_code\design_1_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\jespe\Desktop\Uni_Civil_10_Semester\RnD\RnD_project\Application_code\design_1_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_wrapper}\
-hw {C:\Users\jespe\Desktop\Uni_Civil_10_Semester\RnD\RnD_project\vivado_project\design_1_wrapper.xsa}\
-out {C:/Users/jespe/Desktop/Uni_Civil_10_Semester/RnD/RnD_project/Application_code}

platform write
domain create -name {freertos10_xilinx_ps7_cortexa9_0} -display-name {freertos10_xilinx_ps7_cortexa9_0} -os {freertos10_xilinx} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {design_1_wrapper}
domain active {zynq_fsbl}
domain active {freertos10_xilinx_ps7_cortexa9_0}
platform generate -quick
platform generate
bsp reload
bsp setlib -name xilffs -ver 4.6
bsp write
bsp reload
catch {bsp regenerate}
catch {bsp regenerate}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform config -updatehw {C:/Users/jespe/Desktop/Uni_Civil_10_Semester/RnD/RnD_project/Vivado_project/design_1_wrapper.xsa}
platform generate -domains 
bsp reload
bsp reload
platform active {design_1_wrapper}
platform config -updatehw {C:/Users/jespe/Desktop/Uni_Civil_10_Semester/RnD/RnD_project/Vivado_project/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/jespe/Desktop/Uni_Civil_10_Semester/RnD/RnD_project/Vivado_project/design_1_wrapper.xsa}
platform generate -domains 
