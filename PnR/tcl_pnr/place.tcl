# 清除之前的 global net 连接（确保干净）
clearGlobalNets

# 电源网络连接（全局绑定）
globalNetConnect VDD -type tiehi -inst *
globalNetConnect VDD -type pgpin -pin vdd -inst *
globalNetConnect VDD -type pgpin -pin VDDC -inst *
globalNetConnect GND -type pgpin -pin gnd -inst *
globalNetConnect GND -type pgpin -pin GNDC -inst *
globalNetConnect GND -type tielo -inst *

# 生成 Core Ring（绕整个 core 区域）
addRing \
 -type core_rings \
 -nets {VDD GND} \
 -layer {bottom M3 top M3 left M4 right M4} \
 -width 2 \
 -spacing 2 \
 -offset 2 \
 -stacked_via_bottom_layer M1 \
 -stacked_via_top_layer AP \
 -skip_via_on_wire_shape Noshape \
 -skip_via_on_pin Standardcell \
 -follow core \
 -jog_distance 0.4 \
 -threshold 0.4

# 生成 Block Ring（为每组 SRAM 宏单元）
# 包括 data_mem 和 instr_mem
# data SRAM Block Ring
selectInst top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper1/sram_inst1
selectInst top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper3/sram_inst3
selectInst top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper3/sram_inst2
selectInst top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper3/sram_inst1
selectInst top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper3/sram_inst0
selectInst top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper2/sram_inst3
selectInst top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper2/sram_inst2
selectInst top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper2/sram_inst1
selectInst top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper2/sram_inst0
selectInst top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper1/sram_inst3
selectInst top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper1/sram_inst2
selectInst top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper1/sram_inst0
selectInst top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper0/sram_inst3
selectInst top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper0/sram_inst2
selectInst top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper0/sram_inst1
selectInst top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper0/sram_inst0

addRing \
 -type block_rings \
 -nets {VDD GND} \
 -layer {bottom M3 top M3 left M4 right M4} \
 -width 2 \
 -spacing 2 \
 -offset 2 \
 -stacked_via_bottom_layer M1 \
 -stacked_via_top_layer AP \
 -skip_via_on_wire_shape Noshape \
 -skip_via_on_pin Standardcell \
 -around selected \
 -follow core \
 -jog_distance 0.4 \
 -threshold 0.4 \
 -skip_side {left top}

# instr SRAM Block Ring
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper3/sram_inst3
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper3/sram_inst2
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper3/sram_inst1
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper3/sram_inst0
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper2/sram_inst3
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper2/sram_inst2
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper2/sram_inst1
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper2/sram_inst0
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper1/sram_inst3
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper1/sram_inst2
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper1/sram_inst1
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper1/sram_inst0
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper0/sram_inst3
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper0/sram_inst2
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper0/sram_inst1
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper0/sram_inst0

addRing \
 -type block_rings \
 -nets {VDD GND} \
 -layer {bottom M3 top M3 left M4 right M4} \
 -width 2 \
 -spacing 2 \
 -offset 2 \
 -stacked_via_bottom_layer M1 \
 -stacked_via_top_layer AP \
 -skip_via_on_wire_shape Noshape \
 -skip_via_on_pin Standardcell \
 -around selected \
 -follow core \
 -jog_distance 0.4 \
 -threshold 0.4 \
 -skip_side {left bottom}

# Power Stripe 纵向/横向交错布线（在 M4/M3）
# 纵向 Stripe（默认垂直）
addStripe \
 -layer M4 \
 -width 2 \
 -spacing 2 \
 -nets {VDD GND} \
 -direction vertical \
 -stacked_via_bottom_layer M1 \
 -stacked_via_top_layer AP \
 -skip_via_on_wire_shape Noshape \
 -skip_via_on_pin Standardcell \
 -set_to_set_distance 100 \
 -merge_stripes_value 2.5 \
 -area {}

# 横向 Stripe（M3）
addStripe \
 -layer M3 \
 -width 2 \
 -spacing 2 \
 -nets {VDD GND} \
 -direction horizontal \
 -stacked_via_bottom_layer M1 \
 -stacked_via_top_layer AP \
 -skip_via_on_wire_shape Noshape \
 -skip_via_on_pin Standardcell \
 -set_to_set_distance 100 \
 -merge_stripes_value 2.5 \
 -area {}

# 插入 Well Tap cells
addWellTap -cell HS65_LS_FILLERSNPWPFP4 -cellInterval 25 -prefix WELLTAP

# 设置 place mode 并执行标准单元布局
setPlaceMode -prerouteAsObs {1 2 3 4 5 6 7 8}
setPlaceMode -fp false
placeDesign
