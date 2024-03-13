# Use the self created cuda_jupyter image
FROM jupyterlab_gpu_base_img:1.0

# Set the working directory
WORKDIR /jupyterlab

# Install the required packages
RUN pip install --upgrade pip setuptools
COPY requirements.txt .
COPY ./utils/ ./utils/
# RUN pip install --no-cache-dir -r requirements.txt

# Run JupyterLab on container startup
CMD ["jupyter", "lab", "--ip='*'", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token='mytoken'"]