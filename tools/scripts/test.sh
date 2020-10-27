#!/bin/bash
CONFIG=$1
CHECKPOINT=$2

# Test
python -m torch.distributed.launch \
    --nproc_per_node=1 \
    ./tools/dist_test_modified.py \
    $CONFIG \
    --checkpoint=$CHECKPOINT \


