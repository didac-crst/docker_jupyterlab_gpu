# JupyterLab with Tensorflow with enabled GPU Docker

This docker provides access to JupyeterLab together with the Tensorflow library with access to the NVIDIA GPU.

### Hardware specifications:
- CPU: AMD Ryzen 9 3900X WRAITH 3800 AM4
- GPU: NVIDIA MSI GeForce RTX 2080 Super Gaming X Trio (8GB GDDRD6)

### Software requirements:

20240313: My system is currently running on the following OS & drivers:
- Kernel:
    > **Linux command:** ```$ uname -r```
    - Version: 5.15.0-100-generic

- Linux:
    > **Linux command:** ```$ lsb_release -a```
    - Distribution: Ubuntu (Server)
    - Version: 22.04.4 LTS

- GCC (GNU Compiler Collection):
    > **Linux command:** ```$ gcc -v```
    - Version: 11.4.0 (Ubuntu 11.4.0-1ubuntu1~22.04)

- Bazel:
    > **Linux command:** ```$ bazel version```
    - Build label: 7.1.0

- Clang:
    > **Linux command:** ```$ clang-17 --version```
    - Version: Ubuntu clang 17.0.6

- LLVM:
    > **Linux command:** ```$ llvm-config-17 --version```
    - Version: 17.0.6

- NVIDIA-SMI:
    > **Linux command:** ```$ nvidia-smi```
    - Driver Version: 550.54.14
    - CUDA Version: 12.4

- Cuda compilation tools:
    > **Linux command:** ```$ nvcc --version```
    - Release: release 12.3, V12.3.52
    - Build: ```cuda_12.3.r12.3/compiler.33281558_0```

- cuDNN:
    - Unknown???


Therefore, to make Tensorflow run properly, it is needed to install the following:
- Tensorflow:2.16.1
    - Python version: 3.9 - 3.12
    - Compilier: Clang 17.0.6
    - Build tools: Bazel 6.5.0
    - cuDNN: 8.9
    - CUDA: 12.3
    - Source: [Tensorflow](https://www.tensorflow.org/install/source#gpu)

- cudNN need to be manually downloaded manually from:
    - Source: [NVIDIA](https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/)
    - Files:
        - ```libcudnn8_8.1.1.33-1+cuda11.2_amd64.deb```
        - ```libcudnn8-dev_8.1.1.33-1+cuda11.2_amd64.deb```
    - The above mentioned files need to be placed into: ```./jupyterlab_GPU_base/cuDNN/```
