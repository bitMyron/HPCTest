export DOCKER_TMP=/data/users/yang/HPC/docker/tmp
sudo docker build . -t bitmayang/ubuntu1604:monai.1.0
sudo docker push bitmayang/ubuntu1604:monai.1.0