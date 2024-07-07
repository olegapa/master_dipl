#!/bin/bash

python CLIP-ES/eval_cam_with_crf.py --cam_out_dir ./output/clipes/cams --image_root $1 --split_file $2 --pseudo_mask_save_path ./output/clipes/pseudo_masks
