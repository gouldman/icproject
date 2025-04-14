############################################################
# cts.tcl - Clock Tree Synthesis (CTS) 脚本 for Innovus
############################################################
set_interactive_constraint_modes {Clock_constraint}

# 5. 生成时钟树 spec 文件
create_ccopt_clock_tree_spec -file ./ccopt.spec
source ./ccopt.spec
# 1. 设置 buffer/inverter cell 库
set_ccopt_property inverter_cells {
  HS65_LL_CNIVX10 HS65_LL_CNIVX103 HS65_LL_CNIVX124
  HS65_LL_CNIVX14 HS65_LL_CNIVX17 HS65_LL_CNIVX21 HS65_LL_CNIVX24
  HS65_LL_CNIVX27 HS65_LL_CNIVX3 HS65_LL_CNIVX31 HS65_LL_CNIVX34
  HS65_LL_CNIVX38 HS65_LL_CNIVX41 HS65_LL_CNIVX45 HS65_LL_CNIVX48
  HS65_LL_CNIVX52 HS65_LL_CNIVX55 HS65_LL_CNIVX58 HS65_LL_CNIVX62
  HS65_LL_CNIVX7 HS65_LL_CNIVX82
}

set_ccopt_property buffer_cells {
  HS65_LL_CNBFX10 HS65_LL_CNBFX103 HS65_LL_CNBFX124 HS65_LL_CNBFX14
  HS65_LL_CNBFX17 HS65_LL_CNBFX21 HS65_LL_CNBFX24 HS65_LL_CNBFX27
  HS65_LL_CNBFX31 HS65_LL_CNBFX34 HS65_LL_CNBFX38
  HS65_LL_CNBFX38_0 HS65_LL_CNBFX38_1 HS65_LL_CNBFX38_2 HS65_LL_CNBFX38_3
  HS65_LL_CNBFX38_4 HS65_LL_CNBFX38_5 HS65_LL_CNBFX38_6 HS65_LL_CNBFX38_7
  HS65_LL_CNBFX38_8 HS65_LL_CNBFX38_9 HS65_LL_CNBFX38_10 HS65_LL_CNBFX38_11
  HS65_LL_CNBFX38_12 HS65_LL_CNBFX38_13 HS65_LL_CNBFX38_14 HS65_LL_CNBFX38_15
  HS65_LL_CNBFX38_16 HS65_LL_CNBFX38_17 HS65_LL_CNBFX38_18 HS65_LL_CNBFX38_19
  HS65_LL_CNBFX38_20 HS65_LL_CNBFX38_21 HS65_LL_CNBFX38_22 HS65_LL_CNBFX38_23
  HS65_LL_CNBFX41 HS65_LL_CNBFX45 HS65_LL_CNBFX48 HS65_LL_CNBFX52
  HS65_LL_CNBFX55 HS65_LL_CNBFX58 HS65_LL_CNBFX62 HS65_LL_CNBFX82
}

# 2. 设置 Hold Fixing Cells
setOptMode -holdFixingCells { HS65_LL_BFX106 HS65_LL_BFX13 HS65_LL_BFX142 HS65_LL_BFX18 HS65_LL_BFX2 HS65_LL_BFX213 HS65_LL_BFX22 HS65_LL_BFX27 HS65_LL_BFX284 HS65_LL_BFX31 HS65_LL_BFX35 HS65_LL_BFX4 HS65_LL_BFX40 HS65_LL_BFX44 HS65_LL_BFX49 HS65_LL_BFX53 HS65_LL_BFX62 HS65_LL_BFX7 HS65_LL_BFX71 HS65_LL_BFX9 HS65_LL_BFX106 HS65_LL_BFX13 HS65_LL_BFX142 HS65_LL_BFX18 HS65_LL_BFX2 HS65_LL_BFX213 HS65_LL_BFX22 HS65_LL_BFX27 HS65_LL_BFX284 HS65_LL_BFX31 HS65_LL_BFX35 HS65_LL_BFX4 HS65_LL_BFX40 HS65_LL_BFX44 HS65_LL_BFX49 HS65_LL_BFX53 HS65_LL_BFX62 HS65_LL_BFX7 HS65_LL_BFX71 HS65_LL_BFX9 HS65_LL_BFX106 HS65_LL_BFX13 HS65_LL_BFX142 HS65_LL_BFX18 HS65_LL_BFX2 HS65_LL_BFX213 HS65_LL_BFX22 HS65_LL_BFX27 HS65_LL_BFX284 HS65_LL_BFX31 HS65_LL_BFX35 HS65_LL_BFX4 HS65_LL_BFX40 HS65_LL_BFX44 HS65_LL_BFX49 HS65_LL_BFX53 HS65_LL_BFX62 HS65_LL_BFX7 HS65_LL_BFX71 HS65_LL_BFX9 HS65_LL_BFX106 HS65_LL_BFX13 HS65_LL_BFX142 HS65_LL_BFX18 HS65_LL_BFX2 HS65_LL_BFX213 HS65_LL_BFX22 HS65_LL_BFX27 HS65_LL_BFX284 HS65_LL_BFX31 HS65_LL_BFX35 HS65_LL_BFX4 HS65_LL_BFX40 HS65_LL_BFX44 HS65_LL_BFX49 HS65_LL_BFX53 HS65_LL_BFX62 HS65_LL_BFX7 HS65_LL_BFX71 HS65_LL_BFX9  }

# 可选：查看当前设置
getOptMode -holdFixingCells

# 3. 定义多个时钟的 CTS 属性（周期单位为 ns）
# ---- in_clk ----
create_clock -name in_clk -period 40.0 [get_ports in_clk]
create_ccopt_clock_tree -name in_clk -source in_clk -no_skew_group
set_ccopt_property target_max_trans_sdc -delay_corner SS -late -clock_tree in_clk 0.200
foreach corner {SS FF} {
  foreach edge {rise fall} {
    set_ccopt_property source_latency -delay_corner $corner -late -$edge -clock_tree in_clk 0.500
  }
}
set_ccopt_property clock_period -pin in_clk 40
create_ccopt_skew_group -name in_clk/Clock_constraint -sources in_clk -auto_sinks
set_ccopt_property include_source_latency -skew_group in_clk/Clock_constraint true
set_ccopt_property extracted_from_clock_name -skew_group in_clk/Clock_constraint in_clk
set_ccopt_property extracted_from_constraint_mode_name -skew_group in_clk/Clock_constraint Clock_constraint
set_ccopt_property extracted_from_delay_corners -skew_group in_clk/Clock_constraint {SS FF}

# ---- in_spi_clk_i ----
create_clock -name in_spi_clk_i -period 100.0 [get_ports in_spi_clk_i]
create_ccopt_clock_tree -name in_spi_clk_i -source in_spi_clk_i -no_skew_group
set_ccopt_property target_max_trans_sdc -delay_corner SS -late -clock_tree in_spi_clk_i 0.200
foreach corner {SS FF} {
  foreach edge {rise fall} {
    set_ccopt_property source_latency -delay_corner $corner -late -$edge -clock_tree in_spi_clk_i 0.500
  }
}
set_ccopt_property clock_period -pin in_spi_clk_i 100
create_ccopt_skew_group -name in_spi_clk_i/Clock_constraint -sources in_spi_clk_i -auto_sinks
set_ccopt_property include_source_latency -skew_group in_spi_clk_i/Clock_constraint true
set_ccopt_property extracted_from_clock_name -skew_group in_spi_clk_i/Clock_constraint in_spi_clk_i
set_ccopt_property extracted_from_constraint_mode_name -skew_group in_spi_clk_i/Clock_constraint Clock_constraint
set_ccopt_property extracted_from_delay_corners -skew_group in_spi_clk_i/Clock_constraint {SS FF}

# ---- in_tck_i ----
create_clock -name in_tck_i -period 100.0 [get_ports in_tck_i]
create_ccopt_clock_tree -name in_tck_i -source in_tck_i -no_skew_group
set_ccopt_property target_max_trans_sdc -delay_corner SS -late -clock_tree in_tck_i 0.200
foreach corner {SS FF} {
  foreach edge {rise fall} {
    set_ccopt_property source_latency -delay_corner $corner -late -$edge -clock_tree in_tck_i 0.500
  }
}
set_ccopt_property clock_period -pin in_tck_i 100
create_ccopt_skew_group -name in_tck_i/Clock_constraint -sources in_tck_i -auto_sinks
set_ccopt_property include_source_latency -skew_group in_tck_i/Clock_constraint true
set_ccopt_property extracted_from_clock_name -skew_group in_tck_i/Clock_constraint in_tck_i
set_ccopt_property extracted_from_constraint_mode_name -skew_group in_tck_i/Clock_constraint Clock_constraint
set_ccopt_property extracted_from_delay_corners -skew_group in_tck_i/Clock_constraint {SS FF}

# 4. 检查时钟树收敛性
check_ccopt_clock_tree_convergence

set_ccopt_property max_fanout 20

# 6. 检查 ILM 和并执行时钟树综合
ccopt_check_and_flatten_ilms_no_restore
ccopt_design

