set_property PACKAGE_PIN N14 [get_ports {clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk}]
# clk => 100000000Hz
create_clock -period 10.0 -name clk_0 -waveform {0.000 5.0} [get_ports clk]
set_clock_groups -asynchronous -group {clk_0}

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

set_property PACKAGE_PIN N3 [get_ports {mataddr[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mataddr[0]}]

set_property PACKAGE_PIN M2 [get_ports {mataddr[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mataddr[1]}]

set_property PACKAGE_PIN R10 [get_ports {mataddr[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mataddr[2]}]

set_property PACKAGE_PIN N13 [get_ports {mataddr[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mataddr[3]}]

set_property PACKAGE_PIN N1 [get_ports {mataddr[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mataddr[4]}]

set_property PACKAGE_PIN P5 [get_ports {mattop[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mattop[0]}]

set_property PACKAGE_PIN T4 [get_ports {mattop[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mattop[1]}]

set_property PACKAGE_PIN M5 [get_ports {mattop[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mattop[2]}]

set_property PACKAGE_PIN L4 [get_ports {matbot[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {matbot[0]}]

set_property PACKAGE_PIN R2 [get_ports {matbot[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {matbot[1]}]

set_property PACKAGE_PIN P4 [get_ports {matbot[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {matbot[2]}]

set_property PACKAGE_PIN R12 [get_ports {matclk}]
set_property IOSTANDARD LVCMOS33 [get_ports {matclk}]

set_property PACKAGE_PIN R13 [get_ports {matoe}]
set_property IOSTANDARD LVCMOS33 [get_ports {matoe}]

set_property PACKAGE_PIN N11 [get_ports {matlat}]
set_property IOSTANDARD LVCMOS33 [get_ports {matlat}]

set_property PACKAGE_PIN R3 [get_ports {matgnd[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {matgnd[0]}]

set_property PACKAGE_PIN P10 [get_ports {matgnd[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {matgnd[1]}]

