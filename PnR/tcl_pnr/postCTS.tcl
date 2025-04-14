# ===========================
# Post-CTS Optimization TCL
# ===========================

# Step 1: Post-CTS Timing Analysis (Setup)
timeDesign -postCTS

# Step 2: Post-CTS Timing Analysis (Hold)
timeDesign -postCTS -hold

# Step 3: Reset optimization settings
setOptMode -reset

# Step 4: Set Hold Fixing Cells
setOptMode -holdFixingCells { HS65_LL_BFX106 HS65_LL_BFX13 HS65_LL_BFX142 HS65_LL_BFX18 HS65_LL_BFX2 HS65_LL_BFX213 HS65_LL_BFX22 HS65_LL_BFX27 HS65_LL_BFX284 HS65_LL_BFX31 HS65_LL_BFX35 HS65_LL_BFX4 HS65_LL_BFX40 HS65_LL_BFX44 HS65_LL_BFX49 HS65_LL_BFX53 HS65_LL_BFX62 HS65_LL_BFX7 HS65_LL_BFX71 HS65_LL_BFX9 HS65_LL_BFX106 HS65_LL_BFX13 HS65_LL_BFX142 HS65_LL_BFX18 HS65_LL_BFX2 HS65_LL_BFX213 HS65_LL_BFX22 HS65_LL_BFX27 HS65_LL_BFX284 HS65_LL_BFX31 HS65_LL_BFX35 HS65_LL_BFX4 HS65_LL_BFX40 HS65_LL_BFX44 HS65_LL_BFX49 HS65_LL_BFX53 HS65_LL_BFX62 HS65_LL_BFX7 HS65_LL_BFX71 HS65_LL_BFX9 HS65_LL_BFX106 HS65_LL_BFX13 HS65_LL_BFX142 HS65_LL_BFX18 HS65_LL_BFX2 HS65_LL_BFX213 HS65_LL_BFX22 HS65_LL_BFX27 HS65_LL_BFX284 HS65_LL_BFX31 HS65_LL_BFX35 HS65_LL_BFX4 HS65_LL_BFX40 HS65_LL_BFX44 HS65_LL_BFX49 HS65_LL_BFX53 HS65_LL_BFX62 HS65_LL_BFX7 HS65_LL_BFX71 HS65_LL_BFX9 HS65_LL_BFX106 HS65_LL_BFX13 HS65_LL_BFX142 HS65_LL_BFX18 HS65_LL_BFX2 HS65_LL_BFX213 HS65_LL_BFX22 HS65_LL_BFX27 HS65_LL_BFX284 HS65_LL_BFX31 HS65_LL_BFX35 HS65_LL_BFX4 HS65_LL_BFX40 HS65_LL_BFX44 HS65_LL_BFX49 HS65_LL_BFX53 HS65_LL_BFX62 HS65_LL_BFX7 HS65_LL_BFX71 HS65_LL_BFX9  }

# (Optional) Check what hold fixing cells are set
# getOptMode -holdFixingCells

# Step 5: Post-CTS Optimization (Setup Incremental)
optDesign -postCTS -incr

# Step 6: Post-CTS Optimization (Hold)
optDesign -postCTS -hold

# Step 7: Enable Fanout and DRC Fixing
setOptMode -fixFanoutLoad true -fixDRC true

# Step 8: Final Post-CTS DRV Optimization
optDesign -postCTS -drv

#generate reports
report_ccopt_clock_trees -filename ./cts_rpt/clktree_ccopt.rpt 
report_ccopt_clock_trees -filename ./cts_rpt/skewgrp_ccopt.rpt
report_ccopt_clock_trees -filename ./cts_rpt/worstChain_ccopt.rpt


