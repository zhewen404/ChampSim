#!/bin/bash
TRACE_DIR=~/repo/PARSEC-2.1
binary=${1}
n_warm=${2}
n_sim=${3}
num=${4}
option=${5}

trace1=`sed -n ''$num'p' scripts/sim_list/16core_workloads.txt | awk '{print $1}'`
trace2=`sed -n ''$num'p' scripts/sim_list/16core_workloads.txt | awk '{print $2}'`
trace3=`sed -n ''$num'p' scripts/sim_list/16core_workloads.txt | awk '{print $3}'`
trace4=`sed -n ''$num'p' scripts/sim_list/16core_workloads.txt | awk '{print $4}'`
trace5=`sed -n ''$num'p' scripts/sim_list/16core_workloads.txt | awk '{print $5}'`
trace6=`sed -n ''$num'p' scripts/sim_list/16core_workloads.txt | awk '{print $6}'`
trace7=`sed -n ''$num'p' scripts/sim_list/16core_workloads.txt | awk '{print $7}'`
trace8=`sed -n ''$num'p' scripts/sim_list/16core_workloads.txt | awk '{print $8}'`
trace9=`sed -n ''$num'p' scripts/sim_list/16core_workloads.txt | awk '{print $9}'`
trace10=`sed -n ''$num'p' scripts/sim_list/16core_workloads.txt | awk '{print $10}'`
trace11=`sed -n ''$num'p' scripts/sim_list/16core_workloads.txt | awk '{print $11}'`
trace12=`sed -n ''$num'p' scripts/sim_list/16core_workloads.txt | awk '{print $12}'`
trace13=`sed -n ''$num'p' scripts/sim_list/16core_workloads.txt | awk '{print $13}'`
trace14=`sed -n ''$num'p' scripts/sim_list/16core_workloads.txt | awk '{print $14}'`
trace15=`sed -n ''$num'p' scripts/sim_list/16core_workloads.txt | awk '{print $15}'`
trace16=`sed -n ''$num'p' scripts/sim_list/16core_workloads.txt | awk '{print $16}'`

mkdir -p out/results_4x4

# echo ${binary}
# echo ${trace1}
# echo ${trace2}
# echo ${trace3}
# echo ${trace4}
# echo ${trace5}
# echo ${trace6}

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
    &> out/results_4x4/mix${num}-${binary}${option}.txt"

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
    &> out/results_4x4/mix${num}-${binary}${option}.txt &