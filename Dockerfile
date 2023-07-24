#To build this file:
#sudo docker build . -t nbutter/pytorch:ubuntu1604

#To run this, mounting your current host directory in the container directory,
# at /project, and excute the example script which is in your current
# working direcotry run:
#sudo docker run --gpus all -it -v `pwd`:/project nbutter/pytorch:ubuntu1604 /bin/bash -c "cd /project && python example_Unsupervised_surgery_pipeline_with_SCVI.py"

#To push to docker hub:
#sudo docker push nbutter/pytorch:ubuntu1604

#To build a singularity container
#singularity build pytorch.img docker://nbutter/pytorch:ubuntu1604

#To run the singularity image (noting singularity mounts the current folder by default)
#singularity run --nv --bind /project:/project pytorch.img /bin/bash -c "cd "$PBS_O_WORKDIR" && python example_Unsupervised_surgery_pipeline_with_SCVI.py"

# Pull base image.
FROM projectmonai/monai:1.2.0
MAINTAINER Yang Ma USYD

# Make the dir everything will go in
WORKDIR /build

# Intall anaconda
RUN pip install nipype==1.5.1 wandb
RUN mkdir /project /scratch && touch /usr/bin/nvidia-smi

CMD /bin/bash
#
