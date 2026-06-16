# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct J:\antsdr_t510_standalone\vitis\t510_standalone_top\platform.tcl
# 
# OR launch xsct and run below command.
# source J:\antsdr_t510_standalone\vitis\t510_standalone_top\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {t510_standalone_top}\
-hw {J:\antsdr_t510_standalone\t510_standalone_top.xsa}\
-arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {J:/antsdr_t510_standalone/vitis}

platform write
domain create -name {standalone_psu_cortexa53_0} -display-name {standalone_psu_cortexa53_0} -os {standalone} -proc {psu_cortexa53_0} -runtime {cpp} -arch {64-bit} -support-app {empty_application}
platform generate -domains 
platform active {t510_standalone_top}
domain active {zynqmp_fsbl}
domain active {zynqmp_pmufw}
domain active {standalone_psu_cortexa53_0}
platform generate -quick
platform generate
platform active {t510_standalone_top}
platform config -updatehw {J:/antsdr_t510_standalone/t510_standalone_top.xsa}
platform generate -domains 
platform config -updatehw {J:/antsdr_t510_standalone/t510_standalone_top.xsa}
platform generate -domains 
platform config -updatehw {J:/antsdr_t510_standalone/t510_standalone_top.xsa}
platform generate -domains 
platform config -updatehw {J:/antsdr_t510_standalone/t510_standalone_top.xsa}
platform generate -domains 
platform active {t510_standalone_top}
platform config -updatehw {J:/antsdr_t510_standalone/t510_standalone_top.xsa}
platform generate -domains standalone_psu_cortexa53_0 
platform generate -domains standalone_psu_cortexa53_0 
platform active {t510_standalone_top}
platform config -updatehw {J:/t510_standalone/antsdr_t510_standalone/t510_standalone_top.xsa}
platform generate -domains 
platform generate
platform generate
platform generate
platform generate
platform generate
