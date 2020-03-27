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

sudo apt install -y zram-config && 
sudo apt install -y htop curl nano vim wget tmux &&

sudo apt update &&
sudo apt install -y  software-properties-common apt-transport-https &&
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add - &&
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" &&

sudo apt update &&
sudo apt install -y  code &&

sudo apt install -y prelink preload &&
sudo apt install -y openssh-server &&
sudo ufw allow ssh &&

sudo apt install -y gnome-tweaks &&
sudo apt install -y net-tools &&

#install figlet
sudo apt-get install -y figlet &&

#install cmake
sudo apt-get -y install cmake &&

#gnome tweak
sudo apt -y install gnome-shell-extensions &&
sudo apt -y install gnome-tweak-tool && 
sudo apt -y chrome-gnome-shell &&
#go to  https://extensions.gnome.org/extension/1485/workspace-matrix/
#       https://addons.mozilla.org/en-US/firefox/addon/gnome-shell-integration/


#install python 3
sudo apt-get install -y python3-dev && 
sudo apt-get install -y ipython ipython3 &&
sudo apt install -y python3 python3-pip &&
sudo apt install -y python3-usb &&
# installing pip 
wget https://bootstrap.pypa.io/get-pip.py &&
sudo python3 get-pip.py &&
sudo rm -rf ~/get-pip.py ~/.cache/pip && 
#install numpy
sudo apt install -y python3-numpy &&
sudo apt install -y python-numpy &&
#install scipy
sudo apt install -y python3-scipy &&
sudo apt install -y python-scipy &&
#install mock
sudo apt install -y python3-mock &&
sudo apt install -y python-mock &&
#install six
sudo apt install -y python3-six &&
sudo apt install -y python-six &&




echo "Linux tools completed" 




