#!/bin/bash

python segment-anything/scripts/amg.py --checkpoint segment-anything/sam_checkpoint/sam_vit_h_4b8939.pth --model-type default --input $1 --output output/sam_out
