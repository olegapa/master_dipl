FROM python:3.9

WORKDIR /segmentation

COPY . /segmentation

RUN pip install torch torchvision
RUN pip install opencv-python ftfy regex tqdm ttach tensorboard lxml cython

#RUN cd /CLIP-ES/pydensecrf
#RUN python setup.py install
#RUN cd /../../segment-anything
#RUN pip install -e .
#
#RUN cd /../..

