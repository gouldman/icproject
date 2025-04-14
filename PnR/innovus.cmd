#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Fri Apr 11 09:42:47 2025                
#                                                     
#######################################################

#@(#)CDS: Innovus v16.13-s045_1 (64bit) 10/03/2016 04:28 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 16.13-s045_1 NR160923-1039/16_13-UB (database version 2.30, 351.6.1) {superthreading v1.30}
#@(#)CDS: AAE 16.13-s013 (64bit) 10/03/2016 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 16.13-s013_1 () Sep 28 2016 05:49:12 ( )
#@(#)CDS: SYNTECH 16.13-s008_1 () Sep 15 2016 11:59:01 ( )
#@(#)CDS: CPE v16.13-s039
#@(#)CDS: IQRC/TQRC 15.2.5-s542 (64bit) Thu Aug 25 18:41:43 PDT 2016 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getDrawView
loadWorkspace -name Physical
win
set init_pwr_net VDD
set init_gnd_net GND
set init_lef_file {/usr/local-eit/cad2/cmpstm/stm065v536/EncounterTechnoKit_cmos065_7m4x0y2z_AP@5.3.1/TECH/cmos065_7m4x0y2z_AP_Worst.lef /usr/local-eit/cad2/cmpstm/stm065v536/CORE65LPLVT_5.1/CADENCE/LEF/CORE65LPLVT_soc.lef /usr/local-eit/cad2/cmpstm/stm065v536/CLOCK65LPLVT_3.1/CADENCE/LEF/CLOCK65LPLVT_soc.lef /usr/local-eit/cad2/cmpstm/stm065v536/PRHS65_7.0.a/CADENCE/LEF/PRHS65_soc.lef /usr/local-eit/cad2/cmpstm/oldmems/mem2010/SPHDL100909-40446@1.0/CADENCE/LEF/SPHDL100909_soc.lef /usr/local-eit/cad2/cmpstm/dicp18/lu_pads_65nm/PADS_Jun2013.lef /usr/local-eit/cad2/cmpstm/stm065v536/IO65LP_SF_BASIC_50A_ST_7M4X0Y2Z_7.2/CADENCE/LEF/IO65LP_SF_BASIC_50A_ST_7M4X0Y2Z_soc.lef /usr/local-eit/cad2/cmpstm/stm065v536/IO65LPHVT_SF_1V8_50A_7M4X0Y2Z_7.0/CADENCE/LEF/IO65LPHVT_SF_1V8_50A_7M4X0Y2Z_soc.lef}
set init_verilog ../synthesis/outputs/top_top.v
set init_mmmc_file v1.view
set init_io_file dummy_design_for_pnr/soc_w_LU_pads/Medfilt_w_LU_pads.io
init_design
setIoFlowFlag 0
floorPlan -site CORE -s 2000.0 2000.0 20.0 20.0 20.0 20.0
setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper3/sram_inst0 405.976 1924.588 509.176 2094.788
setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper3/sram_inst1 302.776 1924.588 405.976 2094.788
setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper3/sram_inst2 199.36 1924.727 302.56 2094.927
setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper3/sram_inst3 96.1 1924.727 199.3 2094.927
setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper2/sram_inst0 818.776 1924.588 921.976 2094.788
setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper2/sram_inst1 715.576 1924.588 818.776 2094.788
setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper2/sram_inst2 612.376 1924.588 715.576 2094.788
setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper2/sram_inst3 509.176 1924.588 612.376 2094.788
setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper1/sram_inst0 1231.576 1924.588 1334.776 2094.788
setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper1/sram_inst1 1128.376 1924.588 1231.576 2094.788
setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper1/sram_inst2 1025.176 1924.588 1128.376 2094.788
setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper1/sram_inst3 921.976 1924.588 1025.176 2094.788
setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper0/sram_inst0 1644.376 1924.588 1747.576 2094.788
setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper0/sram_inst1 1541.176 1924.588 1644.376 2094.788
setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper0/sram_inst2 1437.976 1924.588 1541.176 2094.788
setObjFPlanBox Instance top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper0/sram_inst3 1334.776 1924.588 1437.976 2094.788
setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper3/sram_inst0 406.245 96.762 509.445 266.962
setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper3/sram_inst1 303.045 96.762 406.245 266.962
setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper3/sram_inst2 199.845 96.762 303.045 266.962
setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper3/sram_inst3 96.645 96.762 199.845 266.962
setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper2/sram_inst0 819.045 96.762 922.245 266.962
setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper2/sram_inst1 715.845 96.762 819.045 266.962
setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper2/sram_inst2 612.645 96.762 715.845 266.962
setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper2/sram_inst3 509.445 96.762 612.645 266.962
setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper1/sram_inst0 1231.845 96.762 1335.045 266.962
setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper1/sram_inst1 1128.645 96.762 1231.845 266.962
setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper1/sram_inst2 1025.445 96.762 1128.645 266.962
setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper1/sram_inst3 922.245 96.762 1025.445 266.962
setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper0/sram_inst0 1644.645 96.762 1747.845 266.962
setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper0/sram_inst1 1541.445 96.762 1644.645 266.962
setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper0/sram_inst2 1438.245 96.762 1541.445 266.962
setObjFPlanBox Instance top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper0/sram_inst3 1335.045 96.762 1438.245 266.962
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
addHaloToBlock {10 10 10 10} -allBlock
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
selectInst top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper1/sram_inst1
selectInst top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper1/sram_inst0
selectInst top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper0/sram_inst3
selectInst top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper0/sram_inst2
selectInst top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper0/sram_inst1
selectInst top_inst_core_region_i/data_mem/sp_ram_i_four_sram_wrapper0/sram_inst0
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
cutRow -selected
fit
deselectAll
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper0/sram_inst0
deselectAll
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper0/sram_inst1
deselectAll
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper0/sram_inst2
deselectAll
selectInst top_inst_core_region_i/instr_mem/sp_ram_wrap_i_sp_ram_i_four_sram_wrapper0/sram_inst3
clearGlobalNets
globalNetConnect VDD -type tiehi -inst *
globalNetConnect VDD -type pgpin -pin vdd -inst *
globalNetConnect VDD -type pgpin -pin VDDC -inst *
globalNetConnect GND -type pgpin -pin gnd -inst *
globalNetConnect GND -type pgpin -pin GNDC -inst *
globalNetConnect GND -type tielo -inst *
addRing -type core_rings -nets {VDD GND} -layer {bottom M3 top M3 left M4 right M4} -width 2 -spacing 2 -offset 2 -stacked_via_bottom_layer M1 -stacked_via_top_layer AP -skip_via_on_wire_shape Noshape -skip_via_on_pin Standardcell -follow core -jog_distance 0.4 -threshold 0.4
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
addRing -type block_rings -nets {VDD GND} -layer {bottom M3 top M3 left M4 right M4} -width 2 -spacing 2 -offset 2 -stacked_via_bottom_layer M1 -stacked_via_top_layer AP -skip_via_on_wire_shape Noshape -skip_via_on_pin Standardcell -around selected -follow core -jog_distance 0.4 -threshold 0.4 -skip_side {left top}
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
addRing -type block_rings -nets {VDD GND} -layer {bottom M3 top M3 left M4 right M4} -width 2 -spacing 2 -offset 2 -stacked_via_bottom_layer M1 -stacked_via_top_layer AP -skip_via_on_wire_shape Noshape -skip_via_on_pin Standardcell -around selected -follow core -jog_distance 0.4 -threshold 0.4 -skip_side {left bottom}
addStripe -layer M4 -width 2 -spacing 2 -nets {VDD GND} -direction vertical -stacked_via_bottom_layer M1 -stacked_via_top_layer AP -skip_via_on_wire_shape Noshape -skip_via_on_pin Standardcell -set_to_set_distance 100 -merge_stripes_value 2.5 -area {}
addStripe -layer M3 -width 2 -spacing 2 -nets {VDD GND} -direction horizontal -stacked_via_bottom_layer M1 -stacked_via_top_layer AP -skip_via_on_wire_shape Noshape -skip_via_on_pin Standardcell -set_to_set_distance 100 -merge_stripes_value 2.5 -area {}
addWellTap -cell HS65_LS_FILLERSNPWPFP4 -cellInterval 25 -prefix WELLTAP
setPlaceMode -prerouteAsObs {1 2 3 4 5 6 7 8}
setPlaceMode -fp false
placeDesign
deselectAll
set_interactive_constraint_modes {Clock_constraint}
create_ccopt_clock_tree_spec -file ./ccopt.spec
ccopt_check_and_flatten_ilms_no_restore
check_ccopt_clock_tree_convergence
get_ccopt_property auto_design_state_for_ilms
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
setOptMode -holdFixingCells { HS65_LL_BFX106 HS65_LL_BFX13 HS65_LL_BFX142 HS65_LL_BFX18 HS65_LL_BFX2 HS65_LL_BFX213 HS65_LL_BFX22 HS65_LL_BFX27 HS65_LL_BFX284 HS65_LL_BFX31 HS65_LL_BFX35 HS65_LL_BFX4 HS65_LL_BFX40 HS65_LL_BFX44 HS65_LL_BFX49 HS65_LL_BFX53 HS65_LL_BFX62 HS65_LL_BFX7 HS65_LL_BFX71 HS65_LL_BFX9 HS65_LL_BFX106 HS65_LL_BFX13 HS65_LL_BFX142 HS65_LL_BFX18 HS65_LL_BFX2 HS65_LL_BFX213 HS65_LL_BFX22 HS65_LL_BFX27 HS65_LL_BFX284 HS65_LL_BFX31 HS65_LL_BFX35 HS65_LL_BFX4 HS65_LL_BFX40 HS65_LL_BFX44 HS65_LL_BFX49 HS65_LL_BFX53 HS65_LL_BFX62 HS65_LL_BFX7 HS65_LL_BFX71 HS65_LL_BFX9 HS65_LL_BFX106 HS65_LL_BFX13 HS65_LL_BFX142 HS65_LL_BFX18 HS65_LL_BFX2 HS65_LL_BFX213 HS65_LL_BFX22 HS65_LL_BFX27 HS65_LL_BFX284 HS65_LL_BFX31 HS65_LL_BFX35 HS65_LL_BFX4 HS65_LL_BFX40 HS65_LL_BFX44 HS65_LL_BFX49 HS65_LL_BFX53 HS65_LL_BFX62 HS65_LL_BFX7 HS65_LL_BFX71 HS65_LL_BFX9 HS65_LL_BFX106 HS65_LL_BFX13 HS65_LL_BFX142 HS65_LL_BFX18 HS65_LL_BFX2 HS65_LL_BFX213 HS65_LL_BFX22 HS65_LL_BFX27 HS65_LL_BFX284 HS65_LL_BFX31 HS65_LL_BFX35 HS65_LL_BFX4 HS65_LL_BFX40 HS65_LL_BFX44 HS65_LL_BFX49 HS65_LL_BFX53 HS65_LL_BFX62 HS65_LL_BFX7 HS65_LL_BFX71 HS65_LL_BFX9  }
getOptMode -holdFixingCells
create_clock -name in_clk -period 40.0 [get_ports in_clk]
create_ccopt_clock_tree -name in_clk -source in_clk -no_skew_group
set_ccopt_property target_max_trans_sdc -delay_corner SS -late -clock_tree in_clk 0.200
set_ccopt_property source_latency -delay_corner SS -late -rise -clock_tree in_clk 0.500
set_ccopt_property source_latency -delay_corner SS -late -fall -clock_tree in_clk 0.500
set_ccopt_property source_latency -delay_corner FF -late -rise -clock_tree in_clk 0.500
set_ccopt_property source_latency -delay_corner FF -late -fall -clock_tree in_clk 0.500
set_ccopt_property clock_period -pin in_clk 40
create_ccopt_skew_group -name in_clk/Clock_constraint -sources in_clk -auto_sinks
set_ccopt_property include_source_latency -skew_group in_clk/Clock_constraint true
set_ccopt_property extracted_from_clock_name -skew_group in_clk/Clock_constraint in_clk
set_ccopt_property extracted_from_constraint_mode_name -skew_group in_clk/Clock_constraint Clock_constraint
set_ccopt_property extracted_from_delay_corners -skew_group in_clk/Clock_constraint {SS FF}
create_clock -name in_spi_clk_i -period 100.0 [get_ports in_spi_clk_i]
create_ccopt_clock_tree -name in_spi_clk_i -source in_spi_clk_i -no_skew_group
set_ccopt_property target_max_trans_sdc -delay_corner SS -late -clock_tree in_spi_clk_i 0.200
set_ccopt_property source_latency -delay_corner SS -late -rise -clock_tree in_spi_clk_i 0.500
set_ccopt_property source_latency -delay_corner SS -late -fall -clock_tree in_spi_clk_i 0.500
set_ccopt_property source_latency -delay_corner FF -late -rise -clock_tree in_spi_clk_i 0.500
set_ccopt_property source_latency -delay_corner FF -late -fall -clock_tree in_spi_clk_i 0.500
set_ccopt_property clock_period -pin in_spi_clk_i 100
create_ccopt_skew_group -name in_spi_clk_i/Clock_constraint -sources in_spi_clk_i -auto_sinks
set_ccopt_property include_source_latency -skew_group in_spi_clk_i/Clock_constraint true
set_ccopt_property extracted_from_clock_name -skew_group in_spi_clk_i/Clock_constraint in_spi_clk_i
set_ccopt_property extracted_from_constraint_mode_name -skew_group in_spi_clk_i/Clock_constraint Clock_constraint
set_ccopt_property extracted_from_delay_corners -skew_group in_spi_clk_i/Clock_constraint {SS FF}
create_clock -name in_tck_i -period 100.0 [get_ports in_tck_i]
create_ccopt_clock_tree -name in_tck_i -source in_tck_i -no_skew_group
set_ccopt_property target_max_trans_sdc -delay_corner SS -late -clock_tree in_tck_i 0.200
set_ccopt_property source_latency -delay_corner SS -late -rise -clock_tree in_tck_i 0.500
set_ccopt_property source_latency -delay_corner SS -late -fall -clock_tree in_tck_i 0.500
set_ccopt_property source_latency -delay_corner FF -late -rise -clock_tree in_tck_i 0.500
set_ccopt_property source_latency -delay_corner FF -late -fall -clock_tree in_tck_i 0.500
set_ccopt_property clock_period -pin in_tck_i 100
create_ccopt_skew_group -name in_tck_i/Clock_constraint -sources in_tck_i -auto_sinks
set_ccopt_property include_source_latency -skew_group in_tck_i/Clock_constraint true
set_ccopt_property extracted_from_clock_name -skew_group in_tck_i/Clock_constraint in_tck_i
set_ccopt_property extracted_from_constraint_mode_name -skew_group in_tck_i/Clock_constraint Clock_constraint
set_ccopt_property extracted_from_delay_corners -skew_group in_tck_i/Clock_constraint {SS FF}
check_ccopt_clock_tree_convergence
set_ccopt_property max_fanout 20
ccopt_check_and_flatten_ilms_no_restore
ccopt_design
timeDesign -postCTS
timeDesign -postCTS -hold
setOptMode -reset
setOptMode -holdFixingCells { HS65_LL_BFX106 HS65_LL_BFX13 HS65_LL_BFX142 HS65_LL_BFX18 HS65_LL_BFX2 HS65_LL_BFX213 HS65_LL_BFX22 HS65_LL_BFX27 HS65_LL_BFX284 HS65_LL_BFX31 HS65_LL_BFX35 HS65_LL_BFX4 HS65_LL_BFX40 HS65_LL_BFX44 HS65_LL_BFX49 HS65_LL_BFX53 HS65_LL_BFX62 HS65_LL_BFX7 HS65_LL_BFX71 HS65_LL_BFX9 HS65_LL_BFX106 HS65_LL_BFX13 HS65_LL_BFX142 HS65_LL_BFX18 HS65_LL_BFX2 HS65_LL_BFX213 HS65_LL_BFX22 HS65_LL_BFX27 HS65_LL_BFX284 HS65_LL_BFX31 HS65_LL_BFX35 HS65_LL_BFX4 HS65_LL_BFX40 HS65_LL_BFX44 HS65_LL_BFX49 HS65_LL_BFX53 HS65_LL_BFX62 HS65_LL_BFX7 HS65_LL_BFX71 HS65_LL_BFX9 HS65_LL_BFX106 HS65_LL_BFX13 HS65_LL_BFX142 HS65_LL_BFX18 HS65_LL_BFX2 HS65_LL_BFX213 HS65_LL_BFX22 HS65_LL_BFX27 HS65_LL_BFX284 HS65_LL_BFX31 HS65_LL_BFX35 HS65_LL_BFX4 HS65_LL_BFX40 HS65_LL_BFX44 HS65_LL_BFX49 HS65_LL_BFX53 HS65_LL_BFX62 HS65_LL_BFX7 HS65_LL_BFX71 HS65_LL_BFX9 HS65_LL_BFX106 HS65_LL_BFX13 HS65_LL_BFX142 HS65_LL_BFX18 HS65_LL_BFX2 HS65_LL_BFX213 HS65_LL_BFX22 HS65_LL_BFX27 HS65_LL_BFX284 HS65_LL_BFX31 HS65_LL_BFX35 HS65_LL_BFX4 HS65_LL_BFX40 HS65_LL_BFX44 HS65_LL_BFX49 HS65_LL_BFX53 HS65_LL_BFX62 HS65_LL_BFX7 HS65_LL_BFX71 HS65_LL_BFX9  }
optDesign -postCTS -incr
optDesign -postCTS -hold
setOptMode -fixFanoutLoad true -fixDRC true
optDesign -postCTS -drv
report_ccopt_clock_trees -filename ./cts_rpt/clktree_ccopt.rpt
report_ccopt_clock_trees -filename ./cts_rpt/skewgrp_ccopt.rpt
report_ccopt_clock_trees -filename ./cts_rpt/worstChain_ccopt.rpt
gui_select -rect {180.616 234.856 291.502 397.978}
pan -2511.331 120.179
deselectAll
fit
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 50 -prefix top_top_postCTS -outDir timingReports
selectWire 1127.2500 743.7600 1127.3500 814.1500 4 top_inst_peripherals_i/apb_uart_i/UART_RXFF/FE_PHN25390_iFIFOMem_62_10
