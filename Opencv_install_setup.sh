#!/bin/bash 

#This bash file installs opencv lib and all its dependencies


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

NAME=${1}

echo -e "${CYAN} SETUP:Start Opencv Setup...${NC}"

echo -e "${CYAN} SETUP:Sudo apt-get update${NC}" &&
sudo apt-get update &&
echo -e "${CYAN} SETUP:Sudo apt-get upgrade ${NC}" &&
sudo apt-get -y upgrade &&

sudo apt -y install libglew-dev &&
sudo apt -y install libtiff5-dev &&
sudo apt -y install zlib1g-dev &&
sudo apt -y install libjpeg-dev &&
sudo apt -y install libavcodec-dev &&
sudo apt -y install libavformat-dev &&
sudo apt -y install libavutil-dev &&
sudo apt -y install libpostproc-dev &&
sudo apt -y install libswscale-dev &&
sudo apt -y install libeigen3-dev &&
sudo apt -y install libtbb-dev &&		
sudo apt -y install libgtk2.0-dev &&
sudo apt -y install cmake pkg-config checkinstall &&
sudo apt -y install python-dev &&
sudo apt -y install python-numpy &&
sudo apt -y install python-py &&
sudo apt -y install python-pytest &&
sudo apt -y install python3-dev &&
sudo apt -y install python3-numpy &&
sudo apt -y install python3-py &&
sudo apt -y install python3-pytest &&
sudo apt -y install libgstreamer1.0-dev &&
sudo apt -y install libgstreamer-plugins-base1.0-dev &&
sudo apt -y install libgtkglext1 &&
sudo apt -y install libgtkglext1-dev &&

cd ~ &&
wget -O opencv.zip https://github.com/opencv/opencv/archive/4.0.0.zip &&
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/4.0.0.zip &&
unzip opencv.zip &&
unzip opencv_contrib.zip &&

mv opencv-4.0.0 opencv &&
mv opencv_contrib-4.0.0 opencv_contrib &&

#Compile 
echo -e "${CYAN} Setup: Compile ${NC} " &&
source ~/.virtualenvs/$NAME/bin/activate &&
cd ~/opencv &&
mkdir build &&
cd build &&

cmake -DCMAKE_BUILD_TYPE=Release \
-DCMAKE_INSTALL_PREFIX=/usr/local \
-DBUILD_PNG=ON \
-DBUILD_TIFF=ON \
-DBUILD_TBB=ON \
-DBUILD_JPEG=ON \
-DBUILD_JASPER=OFF \
-DBUILD_ZLIB=OFF \
-DBUILD_EXAMPLES=OFF \
-DBUILD_opencv_java=OFF \
-DBUILD_opencv_python2=ON \
-DBUILD_opencv_python3=ON \
-DBUILD_PERF_TESTS=OFF \
-DBUILD_TESTS=OFF \
-DWITH_FFMPEG=ON \
-DWITH_V4L=OFF \
-DWITH_GSTREAMER=ON \
-DWITH_GSTREAMER_0_10=OFF \
-DWITH_CUDA=ON \
-D WITH_CUDNN=ON \
-D OPENCV_DNN_CUDA=ON \
-D ENABLE_FAST_MATH=1 \
-D CUDA_FAST_MATH=1 \
-D CUDA_ARCH_BIN=7.0 \
-D WITH_CUBLAS=1 \
-DWITH_CSTRIPES=ON \
-DWITH_GTK=ON \
-DWITH_VTK=OFF \
-DWITH_TBB=ON \
-DWITH_1394=OFF \
-DWITH_OPENEXR=OFF \
-DWITH_OPENGL=OFF -DENABLE_PRECOMPILED_HEADERS=OFF \
-DCUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda-10.1 \
-D CUDA_ARCH_BIN="6.0 6.1 7.0 7.5" \
-DCUDA_ARCH_PTX= \
-DINSTALL_C_EXAMPLES=OFF \
-D ENABLE_FAST_MATH=ON \
-D CUDA_FAST_MATH=ON \
-D WITH_CUBLAS=ON \
-DBUILD_PROTOBUF=ON \
-D WITH_PROTOBUF=OFF \
-DBUILD_opencv_cudacodec=OFF \
-DOPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules \
.. &&
	
make -j4 &&
sudo make install &&
sudo ldconfig &&

#link opencv into python3 virtual env
echo -e "${CYAN} link opencv into python3 virtual env ${NC}"
cd /usr/local/python/cv2/python-3.6 &&
sudo mv cv2.cpython-35m-x86_64-linux-gnu.so cv2.so &&
cd ~/.virtualenvs/$NAME/lib/python3.6/site-packages/ &&
ln -s /usr/local/python/cv2/python-3.6/cv2.so cv2.so &&

echo -e "${GREEN} SETUP:Opencv installed sucessfully ${NC} "
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
