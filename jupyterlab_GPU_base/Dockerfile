# Use an official NVIDIA CUDA parent image
FROM nvidia/cuda:11.0.3-base-ubuntu20.04

# Set the timezone
ENV TZ=Europe/Amsterdam
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install cuDNN
COPY cudnn/libcudnn8_8.1.1.33-1+cuda11.2_amd64.deb /tmp
COPY cudnn/libcudnn8-dev_8.1.1.33-1+cuda11.2_amd64.deb /tmp

# Install Python 3.10, distutils and build-essential
RUN apt-get update && apt-get install -y \
    software-properties-common \
    build-essential --no-install-recommends \
    cuda-cudart-11-0=11.0.221-1

RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update && apt-get install -y \
    python3.10 \
    python3.10-distutils \
    python3.10-dev

# Install pip
RUN apt-get install -y curl
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3.10 get-pip.py
RUN rm get-pip.py

# Install CUDA Toolkit
RUN apt-get update && apt-get install -y cuda-toolkit-11-2

# Set to the working directory
WORKDIR /tmp

RUN dpkg -i /tmp/libcudnn8_8.1.1.33-1+cuda11.2_amd64.deb \
    && dpkg -i /tmp/libcudnn8-dev_8.1.1.33-1+cuda11.2_amd64.deb \
    && rm /tmp/libcudnn8_8.1.1.33-1+cuda11.2_amd64.deb \
    && rm /tmp/libcudnn8-dev_8.1.1.33-1+cuda11.2_amd64.deb

RUN add-apt-repository ppa:ubuntu-toolchain-r/test -y \
    && apt-get update \
    && apt-get install -y gcc-9

# Install unzip
RUN apt-get update && apt-get install -y unzip

# Install Bazel
RUN curl -LO https://github.com/bazelbuild/bazel/releases/download/5.3.0/bazel-5.3.0-installer-linux-x86_64.sh \
    && chmod +x bazel-5.3.0-installer-linux-x86_64.sh \
    && ./bazel-5.3.0-installer-linux-x86_64.sh \
    && rm bazel-5.3.0-installer-linux-x86_64.sh

# Install system dependencies for scikit-learn
RUN apt-get install -y libblas-dev liblapack-dev gfortran

# Set the LD_LIBRARY_PATH environment variable
ENV LD_LIBRARY_PATH=/usr/local/cuda/lib64:${LD_LIBRARY_PATH}

# Set to the working directory
WORKDIR /jupyterlab

# Install dependencies
RUN pip install --upgrade pip
RUN pip install jupyterlab

# Expose the port Jupyter will run on
EXPOSE 8888