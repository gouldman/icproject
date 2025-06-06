# ===========================
# IO Pad Spacing Setup
# ===========================

# Left Side IOs
uiSetTool select
gui_select -rect {-86.926 2285.076 1981.676 2117.749}
deselectAll
selectInst PcornerUL
selectInst PGND1
selectInst clkpad
selectInst rst_pad
selectInst uart_dtr_pad
selectInst spi_sdo0_o_pad
selectInst testmode_pad
selectInst fetch_en_pad
selectInst spi_clk_pad
selectInst spi_cs_pad
selectInst PGND2
spaceIoInst -fixSide left -space 139

# Bottom Side IOs
uiSetTool ruler
uiSetTool ruler
uiSetTool select
deselectAll
pan 73.551 332.815
pan 246.610 155.754
selectInst PGND4
selectInst tdi_i_pad
selectInst tms_i_pad
selectInst spi_sdo1_o_pad
selectInst uart_rts_pad
selectInst trstn_i_pad
selectInst spi_mode_o0_pad
selectInst spi_mode_o1_pad
selectInst tck_i_pad
selectInst PGND3
selectInst PcornerLL
spaceIoInst -fixSide bottom -space 139

# Right Side IOs
uiSetTool ruler
uiSetTool select
deselectAll
pan 269.421 24.112
pan -229.831 41.184
pan -239.038 20.226
selectInst PVDD1
selectInst gpio_out8_pad
selectInst tdo_o_pad
selectInst uart_tx_pad
selectInst spi_sdo2_o_pad
selectInst uart_rx_pad
selectInst uart_cts_pad
selectInst uart_dsr_pad
selectInst PVDD2
selectInst PVDD3
selectInst PcornerLR
spaceIoInst -fixSide right -space 139

# Top Side IOs
pan -806.891 -806.892
deselectAll
uiSetTool ruler
uiSetTool select
pan -194.693 300.692
selectInst PcornerUR
selectInst PGND5
selectInst PVDD6
selectInst spi_sdi3_pad
selectInst spi_sdi2_pad
selectInst spi_sdi1_pad
selectInst spi_sdo3_o_pad
selectInst spi_sdi0_pad
selectInst PVDD5
selectInst PVDD4
pan 4.327 860.974
pan 464.987 -588.494
spaceIoInst -fixSide top -space 158
deselectAll


#add IO Pads
addIoFiller -cell PADSPACE_74x1u PADSPACE_74x2u PADSPACE_74x4u PADSPACE_74x8u PADSPACE_74x16u -prefix IO_FILLE -side n -row 1
setDrawView place
addIoFiller -cell PADSPACE_74x1u PADSPACE_74x2u PADSPACE_74x4u PADSPACE_74x8u PADSPACE_74x16u -prefix IO_FILLE -side s -row 1
addIoFiller -cell PADSPACE_74x1u PADSPACE_74x2u PADSPACE_74x4u PADSPACE_74x8u PADSPACE_74x16u -prefix IO_FILLE -side w -row 1
addIoFiller -cell PADSPACE_74x1u PADSPACE_74x2u PADSPACE_74x4u PADSPACE_74x8u PADSPACE_74x16u -prefix IO_FILLE -side e -row 1
deselectAll
setDrawView place
