#!/bin/zsh

echo "installing Deepstream...." &&
echo "Make sure you have CUDA 10.1 Tensorrt5.1.5 cuDNN 7.6.5"

sudo apt -y install \
    libssl1.0.0 \
    libgstreamer1.0-0 \
    gstreamer1.0-tools \
    gstreamer1.0-plugins-good \
    gstreamer1.0-plugins-bad \
    gstreamer1.0-plugins-ugly \
    gstreamer1.0-libav \
    libgstrtspserver-1.0-0 \
    libjansson4 \
    libgstrtspserver-1.0-0 \
    libgstreamer-plugins-base1.0-dev

cd &&
git clone https://github.com/edenhill/librdkafka.git &&
cd librdkafka &&
git reset --hard 7101c2310341ab3f4675fc565f64f0967e135a6a &&
./configure &&
make &&
sudo make install &&
echo "kafka installed successfully" &&


sudo mkdir -p /opt/nvidia/deepstream/deepstream-4.0/lib  &&
sudo cp /usr/local/lib/librdkafka* /opt/nvidia/deepstream/deepstream-4.0/lib &&
sudo apt-get install ./deepstream-4.0_4.0-1_amd64.deb &&
echo "Deepstream installed succesfully"

