#!/bin/bash

printf "Starting CAM generation process\n"
echo arg1  $1  arg 2 $2
#CUDA_VISIBLE_DEVICES=0 python generate_cams_voc12.py --img_root /your_home_dir/datasets/VOC2012/JPEGImages --split_file ./voc12/train_aug.txt --model /your_home_dir/pretrained_models/clip/ViT-B-16.pt --num_workers 1 --cam_out_dir ./output/voc12/cams
CUDA_VISIBLE_DEVICES=0 python $1 --img_root $2 --split_file $3 --model ./CLIP-ES/pretrained_models/clip/ViT-B-16.pt --num_workers 1 --cam_out_dir ./output/clipes/cams