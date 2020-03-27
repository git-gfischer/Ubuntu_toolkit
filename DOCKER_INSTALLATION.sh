#####!/bin/bash
#!/bin/zsh

#source: https://github.com/nvidia/nvidia-docker/wiki/Installation-(version-2.0)
#source: https://nvidia.github.io/nvidia-docker/


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


echo -e "${CYAN}starting docker installation...${NC}" &&
sudo apt-get update &&

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common &&

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - &&
sudo apt-key fingerprint 0EBFCD88 &&

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable" &&

   sudo apt-get update &&
   sudo apt-get install docker-ce docker-ce-cli containerd.io &&
   sudo apt-get install docker.io &&
   sudo systemctl start docker &&
   sudo systemctl enable docker &&

   echo -e "${CYAN} Installing nvidia-docker ....${NC}" &&
   
   curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | \
   sudo apt-key add -
    distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
   curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | \
   sudo tee /etc/apt/sources.list.d/nvidia-docker.list
   sudo apt-get update &&
   sudo apt-get install nvidia-docker2 &&
	
  # echo  "
  # {
#"log-driver": "json-file",
#"log-opts": {
#    "max-size": "10m",    
#    "max-file": "3"    
#    },
#    "default-runtime": "nvidia",
#    "runtimes": {
#        "nvidia": {
#            "path": "nvidia-container-runtime",
#            "runtimeArgs": []
#        }
#    }
#}" > /etc/docker/daemon.json





   sudo pkill -SIGHUP dockerd &&

   echo -e "${GREEN}Docker installed successfully"
