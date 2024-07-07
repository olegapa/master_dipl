#!/bin/bash

printf "starting app"

conda create -n clip-es python=3.9
conda activate clip-es

# install packages
pip install torch==1.7.1+cu101 torchvision==0.8.2+cu101 -f https://download.pytorch.org/whl/torch_stable.html
pip install opencv-python ftfy regex tqdm ttach tensorboard lxml cython

# install pydensecrf from source
#git clone https://github.com/lucasb-eyer/pydensecrf
cd CLIP-ES/pydensecrf
python setup.py install
cd ../../segment-anything
pip install -e .


