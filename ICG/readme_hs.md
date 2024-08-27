
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
    --RBOT_dataset -> /media/hee/MGTEC/dataset/RBOT_dataset

```
ln -s "/media/hee/Extreme Pro/dataset/YCB-Video/HUGGING_FACE/YCB-Video-Base/image_sets"

lrwxrwxrwx 1 hee hee   79  7월 21 16:50 image_sets -> '/media/hee/Extreme Pro/dataset/YCB-Video/HUGGING_FACE/YCB-Video-Base/image_sets'
lrwxrwxrwx 1 hee hee   58  8월 11 17:16 models -> /media/hee/MGTEC/dataset/YCB-Video/YCB_Video_Models/models
lrwxrwxrwx 1 hee hee   78  7월 19 17:25 models_eval -> '/media/hee/Extreme Pro/dataset/YCB-Video/HUGGING_FACE/ycbv_models/models_eval/'
lrwxrwxrwx 1 hee hee   78  7월 19 17:25 models_fine -> '/media/hee/Extreme Pro/dataset/YCB-Video/HUGGING_FACE/ycbv_models/models_fine/'
lrwxrwxrwx 1 hee hee   63  7월 19 17:27 models_GT_color -> '/media/hee/Extreme Pro/dataset/YCB-Video/hipose/models_GT_color'
drwxrwxr-x 2 hee hee 4096  8월  8 15:58 models_obj
lrwxrwxrwx 1 hee hee   72  7월 19 17:25 models_ply -> '/media/hee/Extreme Pro/dataset/YCB-Video/HUGGING_FACE/ycbv_models/models'
lrwxrwxrwx 1 hee hee   50  7월 21 16:43 poses -> '/media/hee/Extreme Pro/dataset/YCB-Video/ICG/poses'
lrwxrwxrwx 1 hee hee   64  7월 19 17:24 test -> '/media/hee/Extreme Pro/dataset/YCB-Video/HUGGING_FACE/test/test/'
lrwxrwxrwx 1 hee hee   55  7월 19 17:27 test_GT -> '/media/hee/Extreme Pro/dataset/YCB-Video/hipose/test_GT'


```


## build
```
cd build/
cmake -DUSE_AZURE_KINECT=OFF -DUSE_REALSENSE=OFF ../
/home/hee/.local/bin/cmake --build /home/hee/workspace/src/3DObjectTracking/ICG/build --config Debug --target all
make
```

## Execute
```
cd build/
./examples/evaluate_ycb_dataset
```

- YCBEvaluator::VisualizeResult  
    - 콘솔에 주어진 결과를 포맷팅하여 출력
- 


<!-- 
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
``` -->


## Test opencv 
- make example_opencv.cpp file
```
g++ -o example_opencv example_opencv.cpp `pkg-config --cflags --libs opencv4`
./example_opencv
```

## Test time
- make example_time.cpp file
```
g++ -o example_time example_time.cpp
./example_time
```


ExecuteMeasuredTrackingCycle