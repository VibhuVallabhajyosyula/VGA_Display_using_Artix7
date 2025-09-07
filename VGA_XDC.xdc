#clk
set_property -dict { PACKAGE_PIN N11    IOSTANDARD LVCMOS33 } [get_ports { clk }];

# switches
set_property -dict { PACKAGE_PIN L5    IOSTANDARD LVCMOS33 } [get_ports { red_sw }];#LSB
set_property -dict { PACKAGE_PIN L4    IOSTANDARD LVCMOS33 } [get_ports { green_sw }];
set_property -dict { PACKAGE_PIN M4    IOSTANDARD LVCMOS33 } [get_ports { blue_sw }];

#VGA
set_property -dict { PACKAGE_PIN F14 IOSTANDARD LVCMOS33 } [get_ports {h_sync}];
set_property -dict { PACKAGE_PIN H16 IOSTANDARD LVCMOS33 } [get_ports {v_sync}];
set_property -dict { PACKAGE_PIN D15 IOSTANDARD LVCMOS33 } [get_ports {red[0]}];
set_property -dict { PACKAGE_PIN F12 IOSTANDARD LVCMOS33 } [get_ports {red[1]}];
set_property -dict { PACKAGE_PIN F13 IOSTANDARD LVCMOS33 } [get_ports {red[2]}];
set_property -dict { PACKAGE_PIN E16 IOSTANDARD LVCMOS33 } [get_ports {red[3]}];
set_property -dict { PACKAGE_PIN D16 IOSTANDARD LVCMOS33 } [get_ports {green[0]}];
set_property -dict { PACKAGE_PIN F15 IOSTANDARD LVCMOS33 } [get_ports {green[1]}];
set_property -dict { PACKAGE_PIN E15 IOSTANDARD LVCMOS33 } [get_ports {green[2]}];
set_property -dict { PACKAGE_PIN H11 IOSTANDARD LVCMOS33 } [get_ports {green[3]}];
set_property -dict { PACKAGE_PIN G12 IOSTANDARD LVCMOS33 } [get_ports {blue[0]}];
set_property -dict { PACKAGE_PIN H12 IOSTANDARD LVCMOS33 } [get_ports {blue[1]}];
set_property -dict { PACKAGE_PIN H13 IOSTANDARD LVCMOS33 } [get_ports {blue[2]}];
set_property -dict { PACKAGE_PIN G14 IOSTANDARD LVCMOS33 } [get_ports {blue[3]}];
