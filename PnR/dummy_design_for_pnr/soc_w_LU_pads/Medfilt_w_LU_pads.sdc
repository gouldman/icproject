###################################################################

# Created by write_sdc on Thu Feb 14 20:35:07 2019

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -power mW -voltage V       \
-current mA
create_clock [get_ports clk]  -name myClk  -period 2  -waveform {0 1}
set_clock_latency 0.1  [get_clocks myClk]
set_clock_uncertainty 0.04  [get_clocks myClk]
set_clock_transition -max -rise 0.1 [get_clocks myClk]
set_clock_transition -max -fall 0.1 [get_clocks myClk]
set_clock_transition -min -rise 0.1 [get_clocks myClk]
set_clock_transition -min -fall 0.1 [get_clocks myClk]
