FROM nvidia/cuda:12.4.1-cudnn-devel-ubuntu22.04

RUN apt-get update -y \
    && apt-get install -y \
        git \
        python3 \
        python3-pip \
        ffmpeg \ 
        libsm6 \
        libxext6 \
    && apt-get clean

RUN git clone https://github.com/kenlu0912/nerf-pytorch.git

RUN cd nerf-pytorch \
    && pip install -r requirements.txt
