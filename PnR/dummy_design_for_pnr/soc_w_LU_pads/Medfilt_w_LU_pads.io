
version: 3

Orient: R270
Pad: PcornerLL SW PADSPACE_C_74x74u_CH
Orient: R0x3
Pad: PcornerLR SE PADSPACE_C_74x74u_CH
Orient: R90
Pad: PcornerUR NE PADSPACE_C_74x74u_CH
Orient: R180
Pad: PcornerUL NW PADSPACE_C_74x74u_CH

# # ------------------------------------------------ #
# # NORTH
# # ------------------------------------------------ #
Pad: PGND1    N CPAD_S_74x50u_GND
Pad: clkpad    N CPAD_S_74x50u_IN
Pad: rst_pad N CPAD_S_74x50u_OUT
Pad: testmode_pad N CPAD_S_74x50u_IN
Pad: fetch_en_pad N CPAD_S_74x50u_IN
Pad: spi_clk_pad  N CPAD_S_74x50u_IN
Pad: spi_cs_pad  N CPAD_S_74x50u_IN
Pad: PGND2    N CPAD_S_74x50u_GND
# # ------------------------------------------------ #
# # WEST 
# # ------------------------------------------------ #
Pad: PGND3    W CPAD_S_74x50u_GND
Pad: spi_clk_pad  W CPAD_S_74x50u_IN
Pad: spi_cs_pad  W CPAD_S_74x50u_IN
Pad: tck_i_pad    W CPAD_S_74x50u_IN
Pad: trstn_i_pad  W CPAD_S_74x50u_IN
Pad: tms_i_pad  W CPAD_S_74x50u_IN
Pad: tdi_i_pad  W CPAD_S_74x50u_IN
Pad: PGND4    W CPAD_S_74x50u_GND
# # ------------------------------------------------ #
# # SOUTH
# # ------------------------------------------------ #
Pad: PVDD1    S CPAD_S_74x50u_VDD
Pad: gpio_out8_pad S CPAD_S_74x50u_OUT
Pad: tdo_o_pad S CPAD_S_74x50u_OUT
Pad: uart_rx_pad  S CPAD_S_74x50u_OUT
Pad: uart_cts_pad  S CPAD_S_74x50u_OUT
Pad: uart_dsr_pad  S CPAD_S_74x50u_OUT
Pad: PVDD2    S CPAD_S_74x50u_VDD
Pad: PVDD3    S CPAD_S_74x50u_VDD
# # ------------------------------------------------ #
# # EAST 
# # ------------------------------------------------ #
Pad: PVDD4    E CPAD_S_74x50u_VDD
Pad: PVDD5    E CPAD_S_74x50u_VDD
Pad: spi_sdi0_pad E CPAD_S_74x50u_OUT
Pad: spi_sdi1_pad E CPAD_S_74x50u_OUT
Pad: spi_sdi2_pad E CPAD_S_74x50u_OUT
Pad: spi_sdi3_pad E CPAD_S_74x50u_OUT
Pad: PVDD6    E CPAD_S_74x50u_VDD
Pad: PGND5    E CPAD_S_74x50u_GND
