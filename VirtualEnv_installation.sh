#bin/bash

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

sudo apt-get update &&
sudo apt-get -y upgrade &&

sudo apt install -y python3-pip &&
sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev &&
sudo apt install -y python3-venv &&
sudo pip3 install  virtualenv &&
sudo pip3 install virtualenvwrapper &&

echo -e "\n# virtualenv and virtualenvwrapper" >> ~/.bashrc && 
echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.bashrc &&
echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3" >> ~/.bashrc &&
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc && 
source ~/.bashrc &&

echo -e "${GREEN} SETUP: Virtualenv installed sucessfully" &&
echo -e "${YELLOW}SETUP:Close this Terminal"
