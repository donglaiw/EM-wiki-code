#!/bin/bash
echo "Downloading training data:"
wget http://140.247.107.75/rhoana_product/snemi/image/train-input.tif
echo "Downloading labels for the training data:"
wget http://140.247.107.75/rhoana_product/snemi/seg/train-labels.tif
echo "Downloading the test data:"
wget http://140.247.107.75/rhoana_product/snemi/image/test-input.tif

