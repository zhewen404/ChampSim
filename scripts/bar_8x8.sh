#!/bin/bash
python3 config.py cfg/8x8.json cmp_8x8
make clean
make
echo "done buidling"
./scripts/run_64core.sh cmp_8x8 10 10 1 &

echo "done"