set ROOT "./"

set SYNT_SCRIPT    "${ROOT}/scripts"
set SYNT_OUT       "${ROOT}/outputs"
set SYNT_REPORT    "${ROOT}/reports"

if {![file exists ${SYNT_SCRIPT}]}     { file mkdir ${SYNT_SCRIPT}}
if {![file exists ${SYNT_OUT}]}        { file mkdir ${SYNT_OUT}}
if {![file exists ${SYNT_REPORT}]}     { file mkdir ${SYNT_REPORT}}

puts "\n\n\n DESIGN FILES \n\n\n"
source $SYNT_SCRIPT/design_setup.tcl

set_attribute hdl_error_on_blackbox true /

puts "\n\n\n ANALYZE HDL DESIGN \n\n\n"
read_hdl -sv ${DESIGN_FILES_SV} 
read_hdl -vhdl ${DESIGN_FILES_VHDL}
read_hdl ${DESIGN_FILES_V}

puts "\n\n\n ELABORATE \n\n\n"
elaborate ${DESIGN}



check_design
report timing -lint

puts "\n\n\n TIMING CONSTRAINTS \n\n\n"
source $SYNT_SCRIPT/create_clock.tcl

puts "\n\n\n SYN_GENERIC \n\n\n"
syn_generic

puts "\n\n\n SYN_MAP \n\n\n"
syn_map

puts "\n\n\n SYN_OPT \n\n\n"
syn_opt

puts "\n\n\n EXPORT DESIGN \n\n\n"
write_hdl    > ${SYNT_OUT}/${DESIGN}.v
write_sdc    > ${SYNT_OUT}/${DESIGN}.sdc
#write_sdf   -version 2.1  > ${SYNT_OUT}/${DESIGN}.sdf
write_sdf   -version 3.0 > ${SYNT_OUT}/${DESIGN}.sdf
#write_sdf -version 3.0 top_top.sdf -map_file /usr/local-eit/cad2/cmpstm/oldmems/mem2010/SPHDL100909-40446@1.0/behaviour/verilog/SPHDL100909.verilog.map -precision 4 -min_view FF -max_view SS

puts "\n\n\n REPORTING \n\n\n"
report qor      > $SYNT_REPORT/qor_${DESIGN}.rpt
report area     > $SYNT_REPORT/area_${DESIGN}.rpt
report datapath > $SYNT_REPORT/datapath_${DESIGN}.rpt
report messages > $SYNT_REPORT/messages_${DESIGN}.rpt
report gates    > $SYNT_REPORT/gates_${DESIGN}.rpt
report timing   > $SYNT_REPORT/timing_${DESIGN}.rpt
report timing -lint > $SYNT_REPORT/timing_lint_${DESIGN}.rpt
