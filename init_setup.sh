echo [$(date)]: "START" 
echo [$(date)]: "creating env with python 3.8 version" 
conda create --p ./env python=3.8 -y
echo [$(date)]: "activating the environment" 
source activate ./env
echo [$(date)]: "installing the dev requirements" 
conda install -c conda-forge cudatoolkit=11.2 cudnn=8.1.0 -y
pip3 install -r requirements_dev.txt
echo [$(date)]: "END" 