# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\jespe\Desktop\Uni_Civil_10_Semester\RnD\RnD_project\Multi_DSP\Application_code\design_1_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\jespe\Desktop\Uni_Civil_10_Semester\RnD\RnD_project\Multi_DSP\Application_code\design_1_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_wrapper}\
-hw {C:\Users\jespe\Desktop\Uni_Civil_10_Semester\RnD\RnD_project\Multi_DSP\Vivado_project\design_1_wrapper.xsa}\
-out {C:/Users/jespe/Desktop/Uni_Civil_10_Semester/RnD/RnD_project/Multi_DSP/Application_code}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {design_1_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
bsp reload
bsp setlib -name xilffs -ver 4.6
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform active {design_1_wrapper}
platform config -updatehw {C:/Users/jespe/Desktop/Uni_Civil_10_Semester/RnD/RnD_project/Multi_DSP/Vivado_project/design_1_wrapper.xsa}
platform generate -domains 
platform active {design_1_wrapper}
domain active {zynq_fsbl}
bsp reload
domain active {standalone_ps7_cortexa9_0}
bsp reload
bsp reload
domain active {zynq_fsbl}
bsp reload
bsp config compiler "arm-none-eabi-gcc"
bsp reload
domain active {standalone_ps7_cortexa9_0}
bsp config extra_compiler_flags "-O3 -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns"
bsp write
bsp reload
catch {bsp regenerate}
bsp reload
domain active {zynq_fsbl}
bsp config extra_compiler_flags "-O3 -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns"
bsp write
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
platform generate -domains zynq_fsbl 
bsp reload
