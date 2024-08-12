
1. GLEW build
```
$ sudo apt-get install build-essential libxmu-dev libxi-dev libgl-dev cmake git

$ cd /usr/local
$ git clone https://github.com/nigels-com/glew.git

$ make extensions

$ cd build
$ cmake ./cmake
$ make -j4

$ vi ~/.bashrc
## export LD_LIBRARY_PATH=/usr/local/glew/build/lib:$LD_LIBRARY_PATH
$ source ~/.bashrc

```
2. install K4A
```
$ curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
$ sudo apt-add-repository https://packages.microsoft.com/ubuntu/18.04/prod
$ curl -sSL https://packages.microsoft.com/config/ubuntu/18.04/prod.list | sudo tee /etc/apt/sources.list.d/microsoft-prod.list
$ curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
$ sudo apt-get update
$ sudo apt install libk4a1.3-dev            (=1.3.0)
$ sudo apt install libk4abt1.0-dev          (=1.0.0)
$ sudo apt install k4a-tools=1.3.0
k4aviewer   ## to test,
```

3. build Doxygen
```
<!-- # download Doxygen from 
tar -xvzf ~
mkdir build && cd build
### Error
    sudo apt update
    sudo apt-get install flex
    sudo apt-get install bison
cmake -G "Unix Makefiles" ..
make -->
sudo apt-get install doxygen
```

## dataset setting
--data
    --ycbv
        --image_sets/keyframe.txt

```
ln -s "/media/hee/Extreme Pro/dataset/YCB-Video/HUGGING_FACE/YCB-Video-Base/image_sets"


```


## build
```
cd build/
cmake -DUSE_AZURE_KINECT=OFF -DUSE_REALSENSE=OFF ../
make
```

## Execute
```
cd build/
./examples/evaluate_ycb_dataset
```

## dataset change
/home/hee/workspace/src/3DObjectTracking/ICG/data/ycbv/poses/ground_truth/0048_002_master_chef_can_backup.txt



---------------------------------------------------------------------
## RBOT dataset
```
cd data
ln -s "/media/hee/MGTEC/dataset/RBOT_dataset"
# set directory at evaluate_rbot_dataset.cpp
```

## build
```
cd build/
cmake -DUSE_AZURE_KINECT=OFF -DUSE_REALSENSE=OFF ../
make
```

## Execute
```
cd build/
./examples/evaluate_rbot_dataset
```
