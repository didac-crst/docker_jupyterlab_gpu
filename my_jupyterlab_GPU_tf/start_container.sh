#!/bin/sh

docker run --name my_jupyterlab_gpu_tf --gpus all -p 8888:8888 -v ./notebooks:/jupyterlab/notebooks my_jupyterlab_gpu_tf_img