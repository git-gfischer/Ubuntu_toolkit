#!/bin/bash 
#Usage: ./Opencv_install_setup.sh <VIRTUAL ENV>
#This bash file installs opencv lib and all its dependencies
#Source: https://qengineering.eu/install-caffe-on-ubuntu-18.04-with-opencv-4.1.html
#Source: https://cuda-chen.github.io/image%20processing/programming/2020/02/22/build-opencv-dnn-module-with-nvidia-gpu-support-on-ubuntu-1804.html
#Source: https://www.pyimagesearch.com/2016/07/11/compiling-opencv-with-cuda-support/
#Source: https://www.pyimagesearch.com/2020/02/03/how-to-use-opencvs-dnn-module-with-nvidia-gpus-cuda-and-cudnn/
#Source: https://cv-tricks.com/installation/opencv-4-1-ubuntu18-04/ (check here for after instalation)
#Source: https://stackoverflow.com/questions/55234833/how-to-compile-static-opencv4-libraries

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

sudo apt-get -y install build-essential cmake unzip pkg-config
sudo apt-get -y install libjpeg-dev libpng-dev libtiff-dev
sudo apt-get -y install libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get -y install libv4l-dev libxvidcore-dev libx264-dev
sudo apt-get -y install libgtk-3-dev
sudo apt-get -y install libatlas-base-dev gfortran
sudo apt-get -y install libprotobuf-dev libgoogle-glog-dev libgflags-dev
sudo apt-get -y install libprotobuf-dev libleveldb-dev liblmdb-dev


cd ~ &&
wget -O opencv.zip https://github.com/opencv/opencv/archive/4.5.1.zip &&
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/4.5.1.zip &&
unzip opencv.zip &&
unzip opencv_contrib.zip &&

mv opencv-4.5.1 opencv &&
mv opencv_contrib-4.5.1 opencv_contrib &&

#Compile 
#echo -e "${CYAN} Setup: Compile ${NC} " &&
#source ~/.virtualenvs/$NAME/bin/activate &&
#pip3 install numpy &&
cd ~/opencv &&
mkdir build &&
cd build &&

cmake -DCMAKE_BUILD_TYPE=Release \
-DCMAKE_INSTALL_PREFIX=/usr/local \
-D INSTALL_PYTHON_EXAMPLES=ON \
-D INSTALL_C_EXAMPLES=ON \
-D OPENCV_ENABLE_NONFREE=ON \
-DWITH_CUDA=ON \
-D WITH_CUDNN=ON \
-D OPENCV_DNN_CUDA=ON \
-DWITH_GSTREAMER=ON \
-DWITH_GSTREAMER_0_10=OFF \
-DWITH_OPENGL=ON \
-DBUILD_TBB=ON \
-D ENABLE_FAST_MATH=1 \
-D CUDA_FAST_MATH=1 \
-D CUDA_ARCH_BIN="6.1 7.0 7.5" \
-DCUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda-10.1 \
-DENABLE_PRECOMPILED_HEADERS=OFF \
-D WITH_CUBLAS=1 \
-DOPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules \
-D HAVE_opencv_python3=ON \
-D PYTHON_EXECUTABLE=~/.virtualenvs/opencv_cuda/bin/python \
-DBUILD_EXAMPLES=ON \
-DBUILD_opencv_cudacodec=OFF \
-D OPENCV_GENERATE_PKGCONFIG=YES \
.. &&

#-D CUDA_NVCC_FLAGS=”-D_FORCE_INLINES –expt-relaxed-constexpr” \


#c++ only
make -j4  &&
sudo make install &&

#python 
#make -j4  &&
#cd .. &&
#python ./modules/python/src2/gen2.py ./build/modules/python_bindings_generator ./build/modules/python_bindings_generator/headers.txt &&
#cd build &&
#sudo make install &&
#sudo ldconfig &&


#link opencv into python3 virtual env
#echo -e "${CYAN} link opencv into python3 virtual env ${NC}"
#cd ~/.virtualenvs/$NAME/lib/python3.6/site-packages/ &&
#ln -s /usr/local/lib/python3.6/site-packages/cv2/python-3.6/cv2.cpython-36m-x86_64-linux-gnu.so cv2.so &&

echo -e "${GREEN} SETUP:Opencv installed sucessfully ${NC} "
echo -e "${YELLOW} SETUP:opencv4.pc must be ajusted in order to compile C++ codes ${NC} "
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
