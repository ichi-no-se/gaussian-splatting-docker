FROM nvidia/cuda:11.8.0-devel-ubuntu22.04

ENV DEBIAN_FRONTEND=noninteractive

ENV TORCH_CUDA_ARCH_LIST="8.9;8.6;8.0;7.5"

RUN apt update && apt install -y python3 python3-dev python3-distutils curl libgl1-mesa-glx libglib2.0-0 libglm-dev

RUN ln -s /usr/bin/python3 /usr/bin/python

RUN curl -sS https://bootstrap.pypa.io/get-pip.py | python

RUN pip install --upgrade pip setuptools wheel

WORKDIR /root/gaussian_splatting

COPY ./ ./

RUN pip install -r requirements.txt

RUN pip install -r requirements-submodules.txt
