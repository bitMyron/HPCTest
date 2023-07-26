# Pull base image.
FROM nbutter/pytorch:ubuntu1604
MAINTAINER Yang Ma USYD BMC

# Set up ubuntu dependencies
#RUN apt-get update -y && \
#  apt-get install -y wget git build-essential git curl libgl1 libglib2.0-0 libsm6 libxrender1 libxext6 && \
#  rm -rf /var/lib/apt/lists/*

# Make the dir everything will go in
WORKDIR /build

# Intall anaconda
ENV PATH="/build/miniconda3/bin:${PATH}"
ARG PATH="/build/miniconda3/bin:${PATH}"
#RUN curl -o miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-py38_4.12.0-Linux-x86_64.sh &&\
#	mkdir /build/.conda && \
#	bash miniconda.sh -b -p /build/miniconda3 &&\
#	rm -rf miniconda.sh

RUN conda --version

RUN conda install pytorch==1.11 torchvision==0.12.0 torchaudio==0.11.0 cudatoolkit=10.2 ignite==0.4.10 -c pytorch
RUN conda install "numpy>=1.20"
RUN conda install "setuptools>=50.3.0,<66.0.0,!=60.6.0"
RUN conda install "coverage>=5.5"
RUN conda install "parameterized"
RUN conda install -c conda-forge gdown
RUN conda install "scipy"
RUN conda install -c conda-forge itk
RUN conda install -c conda-forge nibabel
RUN conda install "pillow!=8.3.0"
RUN conda install "tensorboard>=2.6"
RUN conda install "scikit-image>=0.19.0"
RUN conda install "tqdm==4.59.0"
RUN conda install "lmdb"
RUN conda install "flake8>=3.8.1"
RUN conda install -c conda-forge flake8-bugbear
RUN conda install -c conda-forge flake8-comprehensions
#RUN conda install -c conda-forge flake8-executable
RUN conda install "pylint!=2.13"
RUN conda install "mccabe"
RUN conda install "pep8-naming"
RUN conda install "pycodestyle"
RUN conda install "pyflakes"
RUN conda install "black"
RUN conda install "isort"
RUN conda install "pytype>=2020.6.1"
RUN conda install "types-pkg_resources"
RUN conda install "mypy>=0.790"
RUN conda install "ninja"
RUN conda install "torchvision"
RUN conda install "psutil"
RUN conda install "cucim==22.8.1"
RUN conda install "openslide-python==1.1.2"
RUN conda install "imagecodecs"
RUN conda install "tifffile"
RUN conda install "pandas"
RUN conda install "requests"
RUN conda install "einops==0.4.1"
RUN conda install "transformers<4.22"
RUN conda install "mlflow>=1.28.0"
RUN conda install "matplotlib!=3.5.0"
RUN conda install "tensorboardX==2.1"
RUN conda install "types-PyYAML"
RUN conda install "pyyaml"
RUN conda install "fire"
RUN conda install "jsonschema"
RUN conda install "pynrrd"
RUN conda install "pre-commit"
RUN conda install "pydicom"
RUN conda install "h5py"
RUN conda install "nni"
RUN conda install "optuna"
RUN conda install "protobuf==3.19.0"
RUN conda install "git+https://github.com/Project-MONAI/MetricsReloaded@monai-support#egg=MetricsReloaded"
RUN conda install "nipype==1.5.1"
RUN conda install "wandb"

RUN conda clean -a -y
#RUN pip cache purge

RUN mkdir /project /scratch && touch /usr/bin/nvidia-smi

CMD /bin/bash
#