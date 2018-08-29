# Step-by-Step Example for SNEMI3D Challenge

## 1. Preparation

- Install Minicoda [python 2.7](https://conda.io/miniconda.html)

- Install github repos
```
chmod +x ./install_snemi3d.sh
./install_snemi3d.sh
```

- Download data: 
    = train: [image](http://140.247.107.75/rhoana_product/snemi/image/train-input.tif), [affinity](http://140.247.107.75/rhoana_product/snemi/aff/model_snemi_dice_mls._train_min.h5), [gt segmentation](http://140.247.107.75/rhoana_product/snemi/seg/train-label.tif)
    = test: [image](http://140.247.107.75/rhoana_product/snemi/image/test-input.tif), [affinity]()


## 2. Pipeline
### 2.1 Image Deflickering
```
python do_snemi3d.py 1 train-data.tiff train-data-df.tiff
```

### 2.2. Affinity Prediction 
(not ready yet, download affinity for [SNEMI-train](), [SNEMI-test]())

### 2.3. 2D Segmentation
```
python do_snemi3d.py 1 INPUT_IMAGE_STACK DEFLICKER_IMAGE_STACK
```

### 2.4. 3D Linking
```
python do_snemi3d.py 1 INPUT_IMAGE_STACK DEFLICKER_IMAGE_STACK
```

### 2.5. post-processing
```
python do_snemi3d.py 1 INPUT_IMAGE_STACK DEFLICKER_IMAGE_STACK
```


## 3. Evaluation
