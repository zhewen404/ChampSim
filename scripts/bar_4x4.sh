#!/bin/bash
python3 config.py cfg/4x4.json cmp_4x4
make clean
make
./run_16core.sh cmp_4x4 10 10 1

echo "done"