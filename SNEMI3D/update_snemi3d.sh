#!/bin/bash
# ${1}: env name
# ${2}: install folder name

# 1. get input
env_name=vcg_snemi
folder_name=./vcg_snemi
if [ ! -z ${1} ];then
    env_name=${1}
fi
if [ ! -z ${2} ];then
    folder_name=${2}
fi
cur_path=`pwd`

# 2. setup environment
# activate env
source activate ${env_name}

# 3. update github repo
# 3.1 for data pre-processing
cd ${folder_name}/EM-preprocess
git pull
python setup.py install

# 3.2 for affinity prediction [TODO]
# 3.3 for segmentation
cd ${folder_name}/zwatershed
git pull
python setup.py install

cd ${folder_name}/waterz
git pull
python setup.py install

# 3.4 for evaluation
cd ${folder_name}/EM-segLib
git pull
python setup.py install
