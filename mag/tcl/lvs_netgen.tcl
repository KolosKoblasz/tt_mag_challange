set layout [readnet spice tt_um_magic_challenge.lvs.spice]
set source [readnet spice /dev/null]
readnet spice $::env(PDK_ROOT)/$::env(PDK)/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice $source
readnet verilog ../src/project.v $source
lvs "$layout tt_um_magic_challenge" "$source tt_um_magic_challenge" $::env(PDK_ROOT)/sky130A/libs.tech/netgen/sky130A_setup.tcl lvs.report -blackbox
