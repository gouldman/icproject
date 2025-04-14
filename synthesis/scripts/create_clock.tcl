# ALL values are in picosecond

set PERIOD 40000
set ClkTop $DESIGN
set ClkDomain $DESIGN
set ClkName in_clk
set ClkLatency 500
set ClkRise_uncertainty 200
set ClkFall_uncertainty 200
set ClkSlew 500
set InputDelay 500
set OutputDelay 500

# Remember to change the -port ClkxC* to the actual name of clock port/pin in your design

define_clock -name $ClkName -period $PERIOD -design $ClkTop -domain $ClkDomain [find / -port in_clk*]

set_attribute clock_network_late_latency $ClkLatency $ClkName
set_attribute clock_source_late_latency  $ClkLatency $ClkName 

set_attribute clock_setup_uncertainty $ClkLatency $ClkName
set_attribute clock_hold_uncertainty $ClkLatency $ClkName 

set_attribute slew_rise $ClkRise_uncertainty $ClkName 
set_attribute slew_fall $ClkFall_uncertainty $ClkName

 set_attribute max_fanout 20.000 $DESIGN

external_delay -input $InputDelay  -clock [find / -clock $ClkName] -name in_con  [find /des* -port ports_in/*]
external_delay -output $OutputDelay -clock [find / -clock $ClkName] -name out_con [find /des* -port ports_out/*]

# SPI Slave clock
set PERIOD_SPI 100000
set ClkName_SPI clk_spi

define_clock -name $ClkName_SPI -period $PERIOD_SPI -design $ClkTop -domain $ClkDomain [find / -port in_spi_clk_i*]

set_attribute clock_network_late_latency $ClkLatency $ClkName_SPI
set_attribute clock_source_late_latency  $ClkLatency $ClkName_SPI 

set_attribute clock_setup_uncertainty $ClkLatency $ClkName_SPI
set_attribute clock_hold_uncertainty $ClkLatency $ClkName_SPI 

set_attribute slew_rise $ClkRise_uncertainty $ClkName_SPI 
set_attribute slew_fall $ClkFall_uncertainty $ClkName_SPI
 
external_delay -input $InputDelay  -clock [find / -clock $ClkName_SPI] -name in_con  [find /des* -port ports_in/*]
external_delay -output $OutputDelay -clock [find / -clock $ClkName_SPI] -name out_con [find /des* -port ports_out/*]

# JTAG clock
set PERIOD_JTAG 100000
set ClkName_JTAG clk_jtag

define_clock -name $ClkName_JTAG -period $PERIOD_JTAG -design $ClkTop -domain $ClkDomain [find / -port in_tck_i*]

set_attribute clock_network_late_latency $ClkLatency $ClkName_JTAG
set_attribute clock_source_late_latency  $ClkLatency $ClkName_JTAG 

set_attribute clock_setup_uncertainty $ClkLatency $ClkName_JTAG
set_attribute clock_hold_uncertainty $ClkLatency $ClkName_JTAG

set_attribute slew_rise $ClkRise_uncertainty $ClkName_JTAG 
set_attribute slew_fall $ClkFall_uncertainty $ClkName_JTAG
 
external_delay -input $InputDelay  -clock [find / -clock $ClkName_JTAG] -name in_con  [find /des* -port ports_in/*]
external_delay -output $OutputDelay -clock [find / -clock $ClkName_JTAG] -name out_con [find /des* -port ports_out/*]

set_clock_groups -asynchronous -group $ClkName -group $ClkName_SPI -group $ClkName_JTAG
