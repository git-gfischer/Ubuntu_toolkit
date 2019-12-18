#!/bin/bash
#source: https://www.liquidweb.com/kb/how-to-install-pytorch-on-ubuntu/

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

echo -e "${YELLOW} Be sure to have virtualenv and virtualenvwrapper installed${NC} "

sudo apt-get update &&
sudo apt-get upgrade &&
sudo apt-get install -y python3-venv &&

NAME=${1} 
echo -e "${CYAN} SETUP:source /usr/local/bin/virtualenvwrapper.sh${NC} " &&

#installing pytorch
echo -e "${CYAN} SETUP:pip3 install torch==1.3.0+cpu torchvision==0.4.1+cpu -f https://download.pytorch.org/whl/torch_stable.html ${NC}" &&
source ~/.virtualenvs/$NAME/bin/activate &&
pip3 install torch==1.3.0+cpu torchvision==0.4.1+cpu -f https://download.pytorch.org/whl/torch_stable.html &&
echo -e "${CYAN} SETUP:pip3 install torchvision ${NC}" &&
pip3 install torchvision &&

echo -e "${GREEN} Pytorch install sucessfully ${NC}"


