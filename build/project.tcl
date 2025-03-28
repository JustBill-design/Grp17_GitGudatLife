set projDir "./vivado"
set projName "blank"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir"]} { file delete -force "$projDir" }
create_project $projName "$projDir" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "./source/alchitry_top.sv" "./source/reset_conditioner.sv" "./source/pipeline.sv" "./source/button_conditioner.sv" "./source/simple_dual_port_ram.v.sv" "./source/edge_detector.sv" "./source/bin_to_dec.sv" "./source/fifo.sv" "./source/simple_ram.v.sv" "./source/display_driver.sv" "./source/lucid_globals.sv" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "./constraint/alchitry.xdc" "./constraint/au_props.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 24
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 24
wait_on_run impl_1
