set_clock_latency -max  0.5  [get_clocks {clk_jtag}]
set_clock_latency -source -early -max  0.5 [get_clocks {clk_jtag}]
set_clock_latency -source -late -max  0.5 [get_clocks {clk_jtag}]
set_clock_latency -max  0.5  [get_clocks {clk_spi}]
set_clock_latency -source -early -max  0.5 [get_clocks {clk_spi}]
set_clock_latency -source -late -max  0.5 [get_clocks {clk_spi}]
set_clock_latency -source -early -min -rise  -0.216851 [get_ports {in_tck_i}] -clock in_tck_i 
set_clock_latency -source -early -min -fall  -0.227806 [get_ports {in_tck_i}] -clock in_tck_i 
set_clock_latency -source -late -min -rise  -0.216851 [get_ports {in_tck_i}] -clock in_tck_i 
set_clock_latency -source -late -min -fall  -0.227806 [get_ports {in_tck_i}] -clock in_tck_i 
set_clock_latency -source -early -min -rise  -0.170389 [get_ports {in_spi_clk_i}] -clock in_spi_clk_i 
set_clock_latency -source -early -min -fall  -0.179935 [get_ports {in_spi_clk_i}] -clock in_spi_clk_i 
set_clock_latency -source -late -min -rise  -0.170389 [get_ports {in_spi_clk_i}] -clock in_spi_clk_i 
set_clock_latency -source -late -min -fall  -0.179935 [get_ports {in_spi_clk_i}] -clock in_spi_clk_i 
set_clock_latency -source -early -min -rise  -0.295326 [get_ports {in_clk}] -clock in_clk 
set_clock_latency -source -early -min -fall  -0.306376 [get_ports {in_clk}] -clock in_clk 
set_clock_latency -source -late -min -rise  -0.295326 [get_ports {in_clk}] -clock in_clk 
set_clock_latency -source -late -min -fall  -0.306376 [get_ports {in_clk}] -clock in_clk 
