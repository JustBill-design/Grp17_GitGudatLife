set projDir "./vivado"
set projName "blank"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir"]} { file delete -force "$projDir" }
create_project $projName "$projDir" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "./source/alchitry_top.sv" "./source/reset_conditioner.sv" "./source/pipeline.sv" "./source/button_conditioner.sv" "./source/edge_detector.sv" "./source/bin_to_dec.sv" "./source/simple_ram.v" "./source/display_driver.sv" "./source/fsm.sv" "./source/bram.sv" "./source/regfile.sv" "./source/multi_seven_seg.sv" "./source/counter.sv" "./source/alu.sv" "./source/shift_register.sv" "./source/adder.sv" "./source/boolean.sv" "./source/compare.sv" "./source/fa.sv" "./source/mux_2.sv" "./source/rca.sv" "./source/shifter.sv" "./source/x_bit_left_shifter.sv" "./source/x_bit_right_ari_shifter.sv" "./source/x_bit_right_shifter.sv" "./source/divider.sv" "./source/multiplier.sv" "./source/lucid_globals.sv" "./../cores/clk_10/clk_10.xci" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "./constraint/alchitry.xdc" "./constraint/au_props.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 24
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 24
wait_on_run impl_1
