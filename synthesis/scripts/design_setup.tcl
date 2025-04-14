# Change this variable to top entity of your own design
set DESIGN top_top

# Change this variable to the RTL path of your own design
set RTL "../pulpino/rtl"

set_attribute script_search_path $SYNT_SCRIPT /

set_attribute init_hdl_search_path { \
	../pulpino/rtl/includes/ \
	../pulpino/rtl/components/ \
	../pulpino/rtl/ \
	../pulpino/ips/riscv/ \
	../pulpino/ips/riscv/include/ \
	../pulpino/ips/adv_dbg_if/rtl \
	../pulpino/ips/apb/apb2per \
	../pulpino/ips/apb/apb_event_unit \
	../pulpino/ips/apb/apb_event_unit/include \
	../pulpino/ips/apb/apb_gpio \
	../pulpino/ips/apb/apb_node \
	../pulpino/ips/apb/apb_pulpino \
	../pulpino/ips/apb/apb_timer \
	../pulpino/ips/apb/apb_uart \
	../pulpino/ips/apb/apb_uart_sv \
	../pulpino/ips/axi/axi2apb \
	../pulpino/ips/axi/axi_mem_if_DP \
	../pulpino/ips/axi/axi_node \
	../pulpino/ips/axi/axi_slice \
	../pulpino/ips/axi/axi_slice_dc \
	../pulpino/ips/axi/axi_spi_master \

	../pulpino/ips/axi/axi_spi_slave \
	../pulpino/ips/axi/core2axi \
} /

set_attribute init_lib_search_path { \
/usr/local-eit/cad2/cmpstm/stm065v536/CORE65LPLVT_5.1/libs \
/usr/local-eit/cad2/cmpstm/stm065v536/CLOCK65LPLVT_3.1/libs \
/usr/local-eit/cad2/cmpstm/oldmems/mem2010/SPHDL100909-40446@1.0/libs \
/usr/local-eit/cad2/cmpstm/dicp18/lu_pads_65nm \
} /

set_attribute library { \
CLOCK65LPLVT_nom_1.20V_25C.lib \
CORE65LPLVT_nom_1.20V_25C.lib \
SPHDL100909_nom_1.20V_25C.lib \
Pads_Oct2012.lib} /

# put all your design files here
set DESIGN_FILES_SV { \
                axi2apb32.sv AXI_2_APB_32.sv axi2apb.sv AXI_2_APB.sv \
	axi_mem_if_DP_hybr.sv axi_mem_if_DP.sv \
	axi_mem_if_MP_Hybrid_multi_bank.sv axi_mem_if_multi_bank.sv \
	axi_mem_if_SP.sv axi_read_only_ctrl.sv axi_write_only_ctrl.sv \
	apb_regs_top.sv axi_address_decoder_AR.sv axi_address_decoder_AW.sv \
	axi_address_decoder_BR.sv axi_address_decoder_BW.sv \
	axi_address_decoder_DW.sv axi_AR_allocator.sv axi_ArbitrationTree.sv \
	axi_AW_allocator.sv axi_BR_allocator.sv axi_BW_allocator.sv \
	axi_DW_allocator.sv axi_FanInPrimitive_Req.sv axi_multiplexer.sv \
	axi_node.sv axi_node_wrap.sv axi_node_wrap_with_slices.sv \
	axi_regs_top.sv axi_request_block.sv axi_response_block.sv \
	axi_RR_Flag_Req.sv axi_ar_buffer.sv axi_aw_buffer.sv axi_b_buffer.sv \
	axi_buffer.sv axi_r_buffer.sv axi_slice.sv axi_w_buffer.sv \
        axi_slice_dc_master.sv axi_slice_dc_slave.sv \
	axi_spi_master.sv spi_master_axi_if.sv spi_master_clkgen.sv \
	spi_master_controller.sv spi_master_fifo.sv spi_master_rx.sv \
	spi_master_tx.sv axi_spi_slave.sv spi_slave_axi_plug.sv \
	spi_slave_cmd_parser.sv spi_slave_controller.sv spi_slave_dc_fifo.sv \
	spi_slave_regs.sv spi_slave_rx.sv spi_slave_syncro.sv spi_slave_tx.sv  \
	core2axi.sv \
	apb2per.sv apb_event_unit.sv generic_service_unit.sv sleep_unit.sv \
                apb_node.sv apb_node_wrap.sv apb_pulpino.sv apb_timer.sv timer.sv \
	apb_uart.sv apb_uart_sv.sv io_generic_fifo.sv uart_interrupt.sv uart_rx.sv uart_tx.sv \
	adbg_axi_biu.sv adbg_axi_module.sv adbg_axionly_top.sv adbg_lint_biu.sv \
	adbg_lint_module.sv adbg_lintonly_top.sv adbg_or1k_biu.sv \
	adbg_or1k_module.sv adbg_or1k_status_reg.sv adbg_top.sv adv_dbg_if.sv \
	riscv_defines.sv apu_core_package.sv \
	riscv_alu_basic.sv riscv_alu_div.sv riscv_alu.sv \
	riscv_apu_disp.sv riscv_compressed_decoder.sv \
	riscv_cs_registers.sv riscv_debug_unit.sv \
	riscv_decoder.sv riscv_ex_stage.sv riscv_fetch_fifo.sv \
	riscv_hwloop_controller.sv riscv_hwloop_regs.sv riscv_id_stage.sv \
	riscv_if_stage.sv riscv_int_controller.sv riscv_L0_buffer.sv \
	riscv_load_store_unit.sv riscv_mult.sv riscv_prefetch_buffer.sv \
	riscv_prefetch_L0_buffer.sv riscv_register_file_latch.sv \
	riscv_register_file.sv \
	riscv_controller.sv riscv_core.sv axi2apb_wrap.sv \
	apb_bus.sv \
                apb_mock_uart.sv \
                apu_defines.sv \
	axi2apb_wrap.sv \
	axi_bus.sv \
	axi_mem_if_SP_wrap.sv \
	axi_node_intf_wrap.sv \
	axi_slice_wrap.sv \
	axi_spi_slave_wrap.sv \
	boot_code.sv \
	boot_rom_wrap.sv \
	clk_rst_gen.sv \
	cluster_clock_gating.sv \
	cluster_clock_inverter.sv \
	cluster_clock_mux2.sv \
	config.sv \
	core2axi_wrap.sv \
	core_region.sv \
	debug_bus.sv \
	dp_ram.sv \
	dp_ram_wrap.sv \
	generic_fifo.sv \
	instr_ram_wrap.sv \
	periph_bus_wrap.sv \
	peripherals.sv \
	pulp_clock_gating.sv \
	pulp_clock_inverter.sv \
	pulp_clock_mux2.sv \
	ram_mux.sv \

	rstgen.sv \
	sp_ram_ip.sv \
        four_sram_wrapper.sv \
	sp_ram_wrap.sv \
	pulpino_top.sv \
        top_top.sv\
}
set DESIGN_FILES_V { \
        dc_full_detector.v dc_synchronizer.v dc_data_buffer.v \
        dc_token_ring_fifo_din.v \
         dc_token_ring_fifo_dout.v \
         dc_token_ring.v \
	
   adbg_tap_top.v adbg_crc32.v bytefifo.v syncflop.v syncreg.v \
}

set DESIGN_FILES_VHDL { \
	apb_uart.vhd slib_clock_div.vhd slib_counter.vhd slib_edge_detect.vhd \
	slib_fifo.vhd slib_input_filter.vhd slib_input_sync.vhd \
	slib_mv_filter.vhd uart_baudgen.vhd uart_interrupt.vhd \
	uart_receiver.vhd uart_transmitter.vhd \
}

set SYN_EFF high 
set MAP_EFF high 
set OPT_EFF high 

set_attribute syn_generic_effort ${SYN_EFF}
set_attribute syn_map_effort ${MAP_EFF}
set_attribute syn_opt_effort ${OPT_EFF}
set_attribute information_level 5; # Up to maximum 9
set_attribute hdl_error_on_latch false
