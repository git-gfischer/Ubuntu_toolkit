#!/bin/zsh
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

echo -e "${YELLOW} Run this after installed virtualenv wrapper" &&
echo -e "${GREEN} Creating python-dev virtualenv" &&
source `which virtualenvwrapper.sh` &&
mkvirtualenv python-dev &&
source ~/.virtualenvs/python-dev/bin/activate &&
cd &&
touch req.txt &&

echo "absl-py" >> req.txt &&
echo "astor" >> req.txt &&
echo "astroid" >> req.txt &&
echo "bleach" >> req.txt &&
echo "certifi" >> req.txt &&
echo "chardet" >> req.txt &&
echo "click" >> req.txt &&
echo "cycler" >> req.txt &&
echo "Flask" >> req.txt &&
echo "Flask-Cors" >> req.txt &&
echo "gast" >> req.txt &&
echo "graphviz" >> req.txt &&
echo "idna" >> req.txt &&
echo "imutils" >> req.txt &&
echo "isort" >> req.txt &&
echo "itsdangerous" >> req.txt &&
echo "Jinja2" >> req.txt &&
echo "kiwisolver" >> req.txt &&
echo "lazy-object-proxy" >> req.txt &&
echo "lxml" >> req.txt &&
echo "Markdown" >> req.txt &&
echo "MarkupSafe" >> req.txt &&
echo "matplotlib" >> req.txt &&
echo "mccabe" >> req.txt &&
echo "metric-learn" >> req.txt &&
echo "pika" >> req.txt &&
echo "Pillow" >> req.txt &&
echo "pylint" >> req.txt &&
echo "pyparsing" >> req.txt &&
echo "pyqt5" >> req.txt &&
echo "python-dateutil" >> req.txt &&
echo "pytz" >> req.txt &&
echo "PyYAML" >> req.txt &&
echo "redis" >> req.txt && 
echo "requests" >> req.txt &&
echo "scikit-learn" >> req.txt &&
echo "termcolor" >> req.txt &&
echo "torch" >> req.txt &&
echo "torchvision" >> req.txt &&
echo "typed-ast" >> req.txt &&
echo "urllib3" >> req.txt &&
echo "Werkzeug" >> req.txt && 
echo "wrapt" >> req.txt &&
echo "tensorflow==1.13.1" >> req.txt &&
echo "opencv-contrib-python" >> req.txt &&

pip  install -r req.txt
echo -e "${GREEN} python-dev created"


