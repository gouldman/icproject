# 禁用 IO flow 引导
setIoFlowFlag 0
#
# # Floorplan 设置
 floorPlan -site CORE -s 2000.0 2000.0 20.0 20.0 20.0 20.0
#
# #######################################################
# # SRAM 宏块布局（data_mem 区域）
# #######################################################
#
# # wrapper3
 setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper3/sram_inst0 405.976 1924.588 509.176 2094.788
 setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper3/sram_inst1 302.776 1924.588 405.976 2094.788
 setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper3/sram_inst2 199.36  1924.727 302.56  2094.927
 setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper3/sram_inst3 96.1    1924.727 199.3   2094.927
#
# # wrapper2
 setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper2/sram_inst0 818.776 1924.588 921.976 2094.788
 setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper2/sram_inst1 715.576 1924.588 818.776 2094.788
 setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper2/sram_inst2 612.376 1924.588 715.576 2094.788
 setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper2/sram_inst3 509.176 1924.588 612.376 2094.788

# # wrapper1
 setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper1/sram_inst0 1231.576 1924.588 1334.776 2094.788
 setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper1/sram_inst1 1128.376 1924.588 1231.576 2094.788
 setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper1/sram_inst2 1025.176 1924.588 1128.376 2094.788
 setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper1/sram_inst3 921.976  1924.588 1025.176 2094.788

# # wrapper0
 setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper0/sram_inst0 1644.376 1924.588 1747.576 2094.788
 setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper0/sram_inst1 1541.176 1924.588 1644.376 2094.788
 setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper0/sram_inst2 1437.976 1924.588 1541.176 2094.788
 setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper0/sram_inst3 1334.776 1924.588 1437.976 2094.788

# #######################################################
# # SRAM 宏块布局（instr_mem 区域）
# #######################################################
#
# # wrapper3
 setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper3/sram_inst0 406.245 96.762 509.445 266.962
 setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper3/sram_inst1 303.045 96.762 406.245 266.962
 setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper3/sram_inst2 199.845 96.762 303.045 266.962
 setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper3/sram_inst3 96.645  96.762 199.845 266.962
# # wrapper2
 setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper2/sram_inst0 819.045 96.762 922.245 266.962
 setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper2/sram_inst1 715.845 96.762 819.045 266.962
 setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper2/sram_inst2 612.645 96.762 715.845 266.962
 setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper2/sram_inst3 509.445 96.762 612.645 266.962
#
# # wrapper1
 setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper1/sram_inst0 1231.845 96.762 1335.045 266.962
 setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper1/sram_inst1 1128.645 96.762 1231.845 266.962
 setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper1/sram_inst2 1025.445 96.762 1128.645 266.962
 setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper1/sram_inst3 922.245  96.762 1025.445 266.962
#
# # wrapper0
 setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper0/sram_inst0 1644.645 96.762 1747.845 266.962
 setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper0/sram_inst1 1541.445 96.762 1644.645 266.962
 setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper0/sram_inst2 1438.245 96.762 1541.445 266.962
 setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper0/sram_inst3 1335.045 96.762 1438.245 266.962
#
##R180
placeInstance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper0/sram_inst0 1644.645 96.76 R180
deselectAll
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper0/sram_inst1
placeInstance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper0/sram_inst1 1541.445 96.76 R180
deselectAll
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper0/sram_inst2
placeInstance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper0/sram_inst2 1438.245 96.76 R180
deselectAll
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper0/sram_inst3
placeInstance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper0/sram_inst3 1335.045 96.76 R180
deselectAll
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper1/sram_inst0
placeInstance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper1/sram_inst0 1231.845 96.76 R180
deselectAll
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper1/sram_inst1
placeInstance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper1/sram_inst1 1128.645 96.76 R180
deselectAll
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper1/sram_inst2
placeInstance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper1/sram_inst2 1025.445 96.76 R180
deselectAll
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper1/sram_inst3
placeInstance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper1/sram_inst3 922.245 96.76 R180
deselectAll
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper2/sram_inst0
placeInstance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper2/sram_inst0 819.045 96.76 R180
deselectAll
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper2/sram_inst1
placeInstance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper2/sram_inst1 715.845 96.76 R180
deselectAll
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper2/sram_inst2
placeInstance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper2/sram_inst2 612.645 96.76 R180
deselectAll
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper2/sram_inst3
placeInstance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper2/sram_inst3 509.445 96.76 R180
deselectAll
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper3/sram_inst0
placeInstance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper3/sram_inst0 406.245 96.76 R180
deselectAll
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper3/sram_inst1
placeInstance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper3/sram_inst1 303.045 96.76 R180
deselectAll
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper3/sram_inst2
placeInstance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper3/sram_inst2 199.845 96.76 R180
deselectAll
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper3/sram_inst3
placeInstance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper3/sram_inst3 96.645 96.76 R180

#######################################################
# Halo设置和布局初始化
#######################################################
addHaloToBlock {10 10 10 10} -allBlock

#######################################################
# Step 1: 选中所有宏块并清除原有 row（cutRow）
#######################################################
foreach inst {
    top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper3/sram_inst3
    top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper3/sram_inst2
    top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper3/sram_inst1
    top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper3/sram_inst0
    top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper2/sram_inst3
    top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper2/sram_inst2
    top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper2/sram_inst1
    top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper2/sram_inst0
    top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper1/sram_inst3
    top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper1/sram_inst2
    top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper1/sram_inst1
    top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper1/sram_inst0
    top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper0/sram_inst3
    top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper0/sram_inst2
    top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper0/sram_inst1
    top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper0/sram_inst0
    top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper3/sram_inst3
    top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper3/sram_inst2
    top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper3/sram_inst1
    top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper3/sram_inst0
    top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper2/sram_inst3
    top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper2/sram_inst2
    top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper2/sram_inst1
    top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper2/sram_inst0
    top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper1/sram_inst3
    top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper1/sram_inst2
    top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper1/sram_inst1
    top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper1/sram_inst0
    top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper0/sram_inst3
    top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper0/sram_inst2
    top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper0/sram_inst1
    top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper0/sram_inst0
} {
    selectInst $inst
}
cutRow -selected
