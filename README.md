# JupyterLab with Tensorflow with enabled GPU Docker

This docker provides access to JupyeterLab together with the Tensorflow library with access to the NVIDIA GPU.

### Software requirements:

20240313: My system is currently running on the following OS & drivers:
- Ubuntu:
    > **Linux command:** ```$ lsb_release -a```
    - Version: 20.04.6 LTS


- NVIDIA-SMI:
    > **Linux command:** ```$ nvidia-smi```
    - Driver Version: 460.91.03
    - CUDA Version: 11.2


- Cuda compilation tools:
    > **Linux command:** ```$ nvcc --version```
    - Release: 12.4, V12.4.99
    - Build: ```cuda_12.4.r12.4/compiler.33961263_0``` on ```Tue_Feb_27_16:19:38_PST_2024```



Therefore, to make Tensorflow run properly, it is needed to install the following:
- Tensorflow:2.11.0
    - Python version: 3.7 - 3.10
    - Compilier: GCC 9.3.1
    - Build tools: Bazel 5.3.0
    - cudNN: 8.1
    - CUDA: 11.2
    - Source: [Tensorflow](https://www.tensorflow.org/install/source#gpu)

- cudNN need to be manually downloaded manually from:
    - Source: [NVIDIA](https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/)
    - Files:
        - ```libcudnn8_8.1.1.33-1+cuda11.2_amd64.deb```
        - ```libcudnn8-dev_8.1.1.33-1+cuda11.2_amd64.deb```
    - The above mentioned files need to be placed into: ```./jupyterlab_GPU_base/cudNN/```
