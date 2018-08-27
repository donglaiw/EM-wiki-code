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
# create env
conda create -n ${env_name} python=2.7 cython numpy
# activate env
source activate ${env_name}

# 3. setup github repo
if [ ! -d ${folder_name} ];then
    mkdir ${folder_name}
fi
cd ${folder_name}
# 3.1 for data pre-processing
git clone git@github.com:donglaiw/EM-preprocess.git
cd EM-preprocess
conda env update -f requirements.txt
python setup.py install
cd ..

# 3.2 for affinity prediction [TODO]
# 3.3 for segmentation
git clone git@github.com:donglaiw/zwatershed.git
cd zwatershed
conda env update -f requirements.txt
python setup.py install
cd ..
git clone git@github.com:donglaiw/waterz.git
cd waterz
conda env update -f requirements.txt
python setup.py install
cd ..
# 3.4 for evaluation
git clone git@github.com:donglaiw/EM-segLib.git
cd EM-segLib
conda env update -f requirements.txt
python setup.py install
cd ..
