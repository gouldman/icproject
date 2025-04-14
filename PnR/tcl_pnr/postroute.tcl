#OCV setting
setAnalysisMode -analysisType onChipVariation
#report timing
group_path   -name In2Reg       -from  $inp -to $allregs
group_path   -name Reg2Out      -from $allregs -to $outp
group_path   -name Reg2Reg      -from $regs -to $regs

redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -pathReports -slackReports -numPaths 50 -prefix top_top_postRoute -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix top_top_postRoute -outDir timingReports

#optimize
setOptMode -fixCap true -fixTran true -fixFanoutLoad true
optDesign -postRoute -hold
