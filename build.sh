export DOCKER_TMP=/data/users/yang/HPC/docker/tmp
sudo docker build . -t bitmayang/monai
#:1.2.0
sudo docker push bitmayang/monai