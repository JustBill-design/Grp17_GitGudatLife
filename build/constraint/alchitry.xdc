set_property PACKAGE_PIN N14 [get_ports {clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk}]
# clk => 10000000Hz
create_clock -period 100.0 -name clk_0 -waveform {0.000 50.0} [get_ports clk]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks clk_0]

set_property PACKAGE_PIN P6 [get_ports {rst_n}]
set_property IOSTANDARD LVCMOS33 [get_ports {rst_n}]

set_property PACKAGE_PIN K13 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]

set_property PACKAGE_PIN K12 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]

set_property PACKAGE_PIN L14 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]

set_property PACKAGE_PIN L13 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]

set_property PACKAGE_PIN M16 [get_ports {led[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]

set_property PACKAGE_PIN M14 [get_ports {led[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]

set_property PACKAGE_PIN M12 [get_ports {led[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]

set_property PACKAGE_PIN N16 [get_ports {led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]

set_property PACKAGE_PIN P15 [get_ports {usb_rx}]
set_property IOSTANDARD LVCMOS33 [get_ports {usb_rx}]

set_property PACKAGE_PIN P16 [get_ports {usb_tx}]
set_property IOSTANDARD LVCMOS33 [get_ports {usb_tx}]

set_property PACKAGE_PIN G2 [get_ports {io_led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_led[0]}]

set_property PACKAGE_PIN G1 [get_ports {io_led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_led[1]}]

set_property PACKAGE_PIN H2 [get_ports {io_led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_led[2]}]

set_property PACKAGE_PIN H1 [get_ports {io_led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_led[3]}]

set_property PACKAGE_PIN K1 [get_ports {io_led[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_led[4]}]

set_property PACKAGE_PIN J1 [get_ports {io_led[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_led[5]}]

set_property PACKAGE_PIN L3 [get_ports {io_led[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_led[6]}]

set_property PACKAGE_PIN L2 [get_ports {io_led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_led[7]}]

set_property PACKAGE_PIN A7 [get_ports {butt_dirs[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {butt_dirs[0]}]
set_property PULLUP true [get_ports {butt_dirs[0]}]

set_property PACKAGE_PIN B5 [get_ports {butt_dirs[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {butt_dirs[1]}]
set_property PULLUP true [get_ports {butt_dirs[1]}]

set_property PACKAGE_PIN A4 [get_ports {butt_dirs[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {butt_dirs[2]}]
set_property PULLUP true [get_ports {butt_dirs[2]}]

set_property PACKAGE_PIN A3 [get_ports {butt_dirs[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {butt_dirs[3]}]
set_property PULLUP true [get_ports {butt_dirs[3]}]

set_property PACKAGE_PIN F3 [get_ports {butt_sel_desel[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {butt_sel_desel[0]}]
set_property PULLUP true [get_ports {butt_sel_desel[0]}]

set_property PACKAGE_PIN E1 [get_ports {butt_sel_desel[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {butt_sel_desel[1]}]
set_property PULLUP true [get_ports {butt_sel_desel[1]}]

set_property PACKAGE_PIN A2 [get_ports {butt_reset}]
set_property IOSTANDARD LVCMOS33 [get_ports {butt_reset}]
set_property PULLUP true [get_ports {butt_reset}]

set_property PACKAGE_PIN D1 [get_ports {butt_next_play}]
set_property IOSTANDARD LVCMOS33 [get_ports {butt_next_play}]
set_property PULLUP true [get_ports {butt_next_play}]

set_property PACKAGE_PIN P5 [get_ports {aseg[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {aseg[0]}]

set_property PACKAGE_PIN M5 [get_ports {aseg[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {aseg[1]}]

set_property PACKAGE_PIN L4 [get_ports {aseg[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {aseg[2]}]

set_property PACKAGE_PIN P4 [get_ports {aseg[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {aseg[3]}]

set_property PACKAGE_PIN N3 [get_ports {aseg[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {aseg[4]}]

set_property PACKAGE_PIN R10 [get_ports {aseg[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {aseg[5]}]

set_property PACKAGE_PIN L5 [get_ports {aseg[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {aseg[6]}]

set_property PACKAGE_PIN N4 [get_ports {aseg[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {aseg[7]}]

set_property PACKAGE_PIN M4 [get_ports {aseg[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {aseg[8]}]

set_property PACKAGE_PIN P3 [get_ports {aseg[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {aseg[9]}]

set_property PACKAGE_PIN N2 [get_ports {aseg[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {aseg[10]}]

set_property PACKAGE_PIN R11 [get_ports {aseg[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {aseg[11]}]

set_property PACKAGE_PIN R2 [get_ports {bseg[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {bseg[0]}]

set_property PACKAGE_PIN N1 [get_ports {bseg[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {bseg[1]}]

set_property PACKAGE_PIN M2 [get_ports {bseg[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {bseg[2]}]

set_property PACKAGE_PIN N13 [get_ports {bseg[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {bseg[3]}]

set_property PACKAGE_PIN N11 [get_ports {bseg[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {bseg[4]}]

set_property PACKAGE_PIN P10 [get_ports {bseg[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {bseg[5]}]

set_property PACKAGE_PIN R1 [get_ports {bseg[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {bseg[6]}]

set_property PACKAGE_PIN P1 [get_ports {bseg[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {bseg[7]}]

set_property PACKAGE_PIN M1 [get_ports {bseg[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {bseg[8]}]

set_property PACKAGE_PIN P13 [get_ports {bseg[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {bseg[9]}]

set_property PACKAGE_PIN N12 [get_ports {bseg[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {bseg[10]}]

set_property PACKAGE_PIN P11 [get_ports {bseg[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {bseg[11]}]

set_property PACKAGE_PIN C6 [get_ports {timerseg[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {timerseg[0]}]

set_property PACKAGE_PIN D5 [get_ports {timerseg[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {timerseg[1]}]

set_property PACKAGE_PIN E5 [get_ports {timerseg[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {timerseg[2]}]

set_property PACKAGE_PIN G4 [get_ports {timerseg[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {timerseg[3]}]

set_property PACKAGE_PIN C4 [get_ports {timerseg[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {timerseg[4]}]

set_property PACKAGE_PIN D3 [get_ports {timerseg[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {timerseg[5]}]

set_property PACKAGE_PIN C7 [get_ports {timerseg[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {timerseg[6]}]

set_property PACKAGE_PIN D6 [get_ports {timerseg[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {timerseg[7]}]

set_property PACKAGE_PIN F5 [get_ports {timerseg[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {timerseg[8]}]

set_property PACKAGE_PIN G5 [get_ports {timerseg[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {timerseg[9]}]

set_property PACKAGE_PIN D4 [get_ports {timerseg[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {timerseg[10]}]

set_property PACKAGE_PIN E3 [get_ports {timerseg[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {timerseg[11]}]

set_property PACKAGE_PIN K2 [get_ports {mataddr[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mataddr[0]}]

set_property PACKAGE_PIN K3 [get_ports {mataddr[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mataddr[1]}]

set_property PACKAGE_PIN P9 [get_ports {mataddr[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mataddr[2]}]

set_property PACKAGE_PIN N9 [get_ports {mataddr[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mataddr[3]}]

set_property PACKAGE_PIN J5 [get_ports {mataddr[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mataddr[4]}]

set_property PACKAGE_PIN N6 [get_ports {mattop[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mattop[2]}]

set_property PACKAGE_PIN M6 [get_ports {mattop[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mattop[1]}]

set_property PACKAGE_PIN H4 [get_ports {mattop[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mattop[0]}]

set_property PACKAGE_PIN H3 [get_ports {matbot[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {matbot[2]}]

set_property PACKAGE_PIN J3 [get_ports {matbot[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {matbot[1]}]

set_property PACKAGE_PIN J4 [get_ports {matbot[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {matbot[0]}]

set_property PACKAGE_PIN R6 [get_ports {matclk}]
set_property IOSTANDARD LVCMOS33 [get_ports {matclk}]

set_property PACKAGE_PIN T10 [get_ports {matoe}]
set_property IOSTANDARD LVCMOS33 [get_ports {matoe}]

set_property PACKAGE_PIN R7 [get_ports {matlat}]
set_property IOSTANDARD LVCMOS33 [get_ports {matlat}]

set_property PACKAGE_PIN H5 [get_ports {matgnd[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {matgnd[0]}]

set_property PACKAGE_PIN T9 [get_ports {matgnd[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {matgnd[1]}]

