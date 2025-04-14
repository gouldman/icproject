set_clock_latency -max  0.5  [get_clocks {clk_jtag}]
set_clock_latency -source -early -max  0.5 [get_clocks {clk_jtag}]
set_clock_latency -source -late -max  0.5 [get_clocks {clk_jtag}]
set_clock_latency -max  0.5  [get_clocks {clk_spi}]
set_clock_latency -source -early -max  0.5 [get_clocks {clk_spi}]
set_clock_latency -source -late -max  0.5 [get_clocks {clk_spi}]
set_clock_latency -source -early -max -rise  -0.65211 [get_ports {in_tck_i}] -clock in_tck_i 
set_clock_latency -source -early -max -fall  -0.660649 [get_ports {in_tck_i}] -clock in_tck_i 
set_clock_latency -source -late -max -rise  -0.65211 [get_ports {in_tck_i}] -clock in_tck_i 
set_clock_latency -source -late -max -fall  -0.660649 [get_ports {in_tck_i}] -clock in_tck_i 
set_clock_latency -source -early -max -rise  -0.506208 [get_ports {in_spi_clk_i}] -clock in_spi_clk_i 
set_clock_latency -source -early -max -fall  -0.516534 [get_ports {in_spi_clk_i}] -clock in_spi_clk_i 
set_clock_latency -source -late -max -rise  -0.506208 [get_ports {in_spi_clk_i}] -clock in_spi_clk_i 
set_clock_latency -source -late -max -fall  -0.516534 [get_ports {in_spi_clk_i}] -clock in_spi_clk_i 
set_clock_latency -source -early -max -rise  -0.89893 [get_ports {in_clk}] -clock in_clk 
set_clock_latency -source -early -max -fall  -0.894065 [get_ports {in_clk}] -clock in_clk 
set_clock_latency -source -late -max -rise  -0.89893 [get_ports {in_clk}] -clock in_clk 
set_clock_latency -source -late -max -fall  -0.894065 [get_ports {in_clk}] -clock in_clk 
