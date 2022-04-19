# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\HLS_projects_OneDPS\Application_code\design_1_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\HLS_projects_OneDPS\Application_code\design_1_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_wrapper}\
-hw {C:\HLS_projects_OneDPS\project_1\design_1_wrapper.xsa}\
-out {C:/HLS_projects_OneDPS/Application_code}

platform write
domain create -name {freertos10_xilinx_ps7_cortexa9_0} -display-name {freertos10_xilinx_ps7_cortexa9_0} -os {freertos10_xilinx} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {design_1_wrapper}
domain active {zynq_fsbl}
domain active {freertos10_xilinx_ps7_cortexa9_0}
platform generate -quick
bsp reload
bsp setlib -name xilffs -ver 4.6
bsp write
bsp reload
catch {bsp regenerate}
catch {bsp regenerate}
platform generate
platform config -updatehw {C:/HLS_projects_OneDPS/project_1/design_1_wrapper.xsa}
bsp reload
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
platform config -updatehw {C:/HLS_projects_OneDPS/project_1/design_1_wrapper.xsa}
platform generate -domains zynq_fsbl 
platform generate -domains 
platform active {design_1_wrapper}
platform config -updatehw {C:/HLS_projects_OneDPS/project_1/design_1_wrapper.xsa}
platform generate
