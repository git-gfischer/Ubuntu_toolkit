#!/bin/zsh

echo -e "Creating new Nvidia docker with Deepstream" &&
echo -e "Usage: ./Create_Deepstream_docker <NAME>" &&
xhost + &&
sudo docker pull nvcr.io/nvidia/deepstream:4.0.2-19.12-devel &&
sudo docker run --gpus all -ti -e DISPLAY:DISPLAY -v ~/deepstream:/home -v /tmp/.X11-unix:/tmp/X11-unix --net=host --name=$1 nvcr.io/nvidia/deepstream:4.0.2-19.12-devel bash &&
 
