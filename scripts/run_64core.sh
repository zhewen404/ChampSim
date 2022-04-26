#!/bin/bash
TRACE_DIR=~/repo/PARSEC-2.1
binary=${1}
n_warm=${2}
n_sim=${3}
num=${4}
option=${5}

trace1=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $1}'`
trace2=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $2}'`
trace3=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $3}'`
trace4=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $4}'`
trace5=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $5}'`
trace6=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $6}'`
trace7=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $7}'`
trace8=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $8}'`
trace9=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $9}'`
trace10=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $10}'`
trace11=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $11}'`
trace12=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $12}'`
trace13=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $13}'`
trace14=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $14}'`
trace15=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $15}'`
trace16=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $16}'`
trace17=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $17}'`
trace18=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $18}'`
trace19=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $19}'`
trace20=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $20}'`
trace21=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $21}'`
trace22=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $22}'`
trace23=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $23}'`
trace24=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $24}'`
trace25=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $25}'`
trace26=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $26}'`
trace27=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $27}'`
trace28=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $28}'`
trace29=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $29}'`
trace30=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $30}'`
trace31=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $31}'`
trace32=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $32}'`
trace33=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $33}'`
trace34=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $34}'`
trace35=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $35}'`
trace36=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $36}'`
trace37=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $37}'`
trace38=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $38}'`
trace39=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $39}'`
trace40=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $40}'`
trace41=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $41}'`
trace42=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $42}'`
trace43=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $43}'`
trace44=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $44}'`
trace45=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $45}'`
trace46=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $46}'`
trace47=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $47}'`
trace48=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $48}'`
trace49=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $49}'`
trace50=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $50}'`
trace51=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $51}'`
trace52=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $52}'`
trace53=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $53}'`
trace54=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $54}'`
trace55=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $55}'`
trace56=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $56}'`
trace57=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $57}'`
trace58=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $58}'`
trace59=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $59}'`
trace60=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $60}'`
trace61=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $61}'`
trace62=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $62}'`
trace63=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $63}'`
trace64=`sed -n ''$num'p' scripts/sim_list/64core_workloads.txt | awk '{print $64}'`

mkdir -p out/results_8x8

# echo ${binary}
# echo ${trace1}
# echo ${trace2}
# echo ${trace3}
# echo ${trace4}
# echo ${trace5}
echo ${trace64}

echo "./bin/${binary} -warmup_instructions ${n_warm}000000 -simulation_instructions ${n_sim}000000 ${option} \
    -traces \
    ${TRACE_DIR}/parsec_2.1.${trace1}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace2}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace3}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace4}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace5}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace6}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace7}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace8}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace9}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace10}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace11}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace12}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace13}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace14}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace15}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace16}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace17}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace18}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace19}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace20}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace21}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace22}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace23}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace24}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace25}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace26}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace27}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace28}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace29}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace30}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace31}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace32}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace33}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace34}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace35}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace36}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace37}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace38}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace39}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace40}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace41}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace42}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace43}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace44}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace45}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace46}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace47}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace48}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace49}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace50}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace51}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace52}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace53}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace54}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace55}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace56}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace57}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace58}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace59}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace60}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace61}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace62}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace63}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace64}.champsimtrace.xz \
    &> out/results_8x8/mix${num}-${binary}${option}.txt"

./bin/${binary} -warmup_instructions ${n_warm}000000 -simulation_instructions ${n_sim}000000 ${option} \
    -traces \
    ${TRACE_DIR}/parsec_2.1.${trace1}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace2}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace3}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace4}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace5}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace6}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace7}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace8}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace9}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace10}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace11}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace12}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace13}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace14}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace15}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace16}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace17}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace18}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace19}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace20}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace21}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace22}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace23}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace24}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace25}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace26}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace27}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace28}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace29}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace30}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace31}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace32}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace33}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace34}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace35}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace36}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace37}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace38}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace39}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace40}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace41}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace42}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace43}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace44}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace45}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace46}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace47}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace48}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace49}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace50}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace51}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace52}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace53}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace54}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace55}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace56}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace57}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace58}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace59}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace60}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace61}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace62}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace63}.champsimtrace.xz \
    ${TRACE_DIR}/parsec_2.1.${trace64}.champsimtrace.xz \
    &> out/results_8x8/mix${num}-${binary}${option}.txt &
echo "launched simulation."