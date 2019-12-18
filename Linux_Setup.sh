#!/bin/bash 

#Fischer toolkit
#This bash file sets up valiable tools to write software as well
#source: https://www.pyimagesearch.com/2018/08/15/how-to-install-opencv-4-on-ubuntu/
#Date:7/10/2019

#TODO:Cuda 10.2
#tensorrt -latest
#tensorflow pip install tensorflow-gpu    comes with 2.0
#opencv
#PIL
#matplotlib
#gnome matrix workstation  https://github.com/mzur/gnome-shell-wsmatrix

sudo apt-get update &&
sudo apt-get upgrade &&
sudo apt install build-essential &&

sudo apt install zram-config && 
sudo apt install htop curl nano vim wget tmux &&

sudo apt update &&
sudo apt install software-properties-common apt-transport-https &&
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add - &&
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" &&

sudo apt update &&
sudo apt install code &&

sudo apt install prelink preload &&
sudo apt install openssh-server &&
sudo ufw allow ssh &&

sudo apt install gnome-tweaks &&


#install python 3
sudo apt-get install python3-dev && 
sudo apt-get install ipython ipython3 &&
sudo apt install python3 python3-pip &&
sudo apt install python3-usb &&
# installing pip 
wget https://bootstrap.pypa.io/get-pip.py &&
sudo python3 get-pip.py &&
sudo rm -rf ~/get-pip.py ~/.cache/pip && 
#install numpy
sudo apt install python3-numpy &&
sudo apt install python-numpy &&
#install scipy
sudo apt install python3-scipy &&
sudo apt install python-scipy &&
#install mock
sudo apt install python3-mock &&
sudo apt install python-mock &&
#install six
sudo apt install python3-six &&
sudo apt install python-six &&

echo "Linux tools completed" 




