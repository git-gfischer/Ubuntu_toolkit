#!/bin/bash 

#This bash file installs opencv lib and all its dependencies
#it is required a virtualenv to be active in order to link the opencv to it
# it creates a virtual env given by the users input 
#

#echo color table
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
BROWN='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT_GRAY='\033[0;37m'
DARK_GRAY='\033[1;30m'
LIGHT_RED='\033[1;31m'
LIGHT_GREEN='\033[1;32m'
YELLOW='\033[1;33m'
LIGHT_BLUE='\033[1;34m'
LIGHT_PURPLE='\033[1;35m'
LIGHT_CYAN='\033[1;36m'
WHITE='\033[1;37m'
NC='\033[0m' #no color

echo -e "${CYAN} SETUP:Start Opencv Setup...${NC}"

echo -e "${CYAN} SETUP:Sudo apt-get update${NC}" &&
sudo apt-get update &&
echo -e "${CYAN} SETUP:Sudo apt-get upgrade ${NC}" &&
sudo apt-get upgrade &&

echo -e "${CYAN} SETUP:Sudo apt-get install build-essential cmake unzip pkg-config ${NC}" &&
sudo apt-get install build-essential cmake unzip pkg-config &&

echo -e "${CYAN} SETUP:Sudo apt-get install libjpeg-dev libpng-dev libtiff-dev ${NC}" &&
sudo apt-get install libjpeg-dev libpng-dev libtiff-dev &&

echo -e "${CYAN} SETUP:Sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev ${NC} " &&
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev &&

echo -e "${CYAN} SETUP:Sudo apt-get install libxvidcore-dev libx264-dev ${NC}" &&
sudo apt-get install libxvidcore-dev libx264-dev &&

echo -e "${CYAN} SETUP:Sudo apt-get install libgtk-3-dev ${NC}" &&
sudo apt-get install libgtk-3-dev &&

echo -e "${CYAN} SETUP:Sudo apt-get install libatlas-base-dev gfortran ${NC}" &&
sudo apt-get install libatlas-base-dev gfortran &&

#creating virtual env
#mkvirtualenv cv -p python3 &&
#changing to recently created virtual env
#workon cv && 
#installing numpy
#pip install numpy &&

#Compile 
echo -e "${CYAN} Setup: Compile ${NC} " &&
cd ~/opencv &&
mkdir build &&
cd build &&

cmake -D CMAKE_BUILD_TYPE=RELEASE \
	-D CMAKE_INSTALL_PREFIX=/usr/local \
	-D INSTALL_PYTHON_EXAMPLES=ON \
	-D INSTALL_C_EXAMPLES=OFF \
	-D OPENCV_ENABLE_NONFREE=ON \
	-D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib/modules \
	-D PYTHON_EXECUTABLE=~/.virtualenvs/cv/bin/python \
	-D BUILD_EXAMPLES=ON .. &&
	
make -j4 &&
sudo make install &&
sudo ldconfig &&

#link opencv into python3 virtual env
echo -e "${CYAN} link opencv into python3 virtual env ${NC}"
workon $1 &&
cd /usr/local/python/cv2/python-3.5 &&
sudo mv cv2.cpython-35m-x86_64-linux-gnu.so cv2.so &&
cd ~/.virtualenvs/cv/lib/python3.5/site-packages/ &&
ln -s /usr/local/python/cv2/python-3.5/cv2.so cv2.so &&

echo -e "${GREEN} SETUP:Opencv installed sucessfully ${NC} "
	 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
