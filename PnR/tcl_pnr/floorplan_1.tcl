# 禁用 IO flow 引导
setIoFlowFlag 0

# Floorplan 设置
floorPlan -site CORE -s 1600.0 1600.0 20.0 20.0 20.0 20.0

# #######################################################
# # SRAM 宏块布局（data_mem 区域） - 放在芯片底部
# #######################################################

# 精确匹配 data RAM 宏块路径（共16个）
set SRAM_DATA_MACRO [dbGet top.insts.top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper*/sram_inst*]
set SOUTH_OFFSET 200
create_relative_floorplan -place [lindex $SRAM_DATA_MACRO 0] -ref_type core_boundary -bbox both -horizontal_edge_separate {0 0 0} -vertical_edge_separate [list 0 0 $SOUTH_OFFSET]

for {set i 1} {$i < [llength $SRAM_DATA_MACRO]} {incr i} {
    set prev [expr {$i - 1}]
    create_relative_floorplan -place [lindex $SRAM_DATA_MACRO $i]  -orient R180 -ref_type object -ref [lindex $SRAM_DATA_MACRO $prev] -bbox both -horizontal_edge_separate {1 0 3} -vertical_edge_separate {0 0 0}
    puts "Placed SRAM_DATA_MACRO($i)"
}

# #######################################################
# # SRAM 宏块布局（instr_mem 区域） - 放在芯片顶部
# #######################################################

# 精确匹配 instr RAM 宏块路径（共16个）
set SRAM_INSTR_MACRO [dbGet top.insts.top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper*/sram_inst*]
set NORTH_OFFSET 200
create_relative_floorplan -place [lindex $SRAM_INSTR_MACRO 0] -ref_type core_boundary -bbox both -horizontal_edge_separate {0 0 0} -vertical_edge_separate [list $NORTH_OFFSET 0 0]

for {set i 1} {$i < [llength $SRAM_INSTR_MACRO]} {incr i} {
    set prev [expr {$i - 1}]
    create_relative_floorplan -place [lindex $SRAM_INSTR_MACRO $i]  -orient R0 -ref_type object -ref [lindex $SRAM_INSTR_MACRO $prev] -bbox both -horizontal_edge_separate {1 0 3} -vertical_edge_separate {0 0 0}
    puts "Placed SRAM_INSTR_MACRO($i)"
}

# Halo设置和布局初始化
addHaloToBlock {10 10 10 10} -allBlock

# Step 1: 选中所有宏块并清除原有 row（cutRow）
foreach inst [concat $SRAM_DATA_MACRO $SRAM_INSTR_MACRO] {
    selectInst $inst
}
cutRow -selected

#puts "✅ SRAM 自动布局完成，共布置 [llength $SRAM_DATA_MACRO] 个 Data RAM， [llength $SRAM_INSTR_MACRO] 个 Instr RAM。"
