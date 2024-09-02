cmake_minimum_required(VERSION 3.10)
project(kinect_image_capture)

find_package(k4a REQUIRED)
find_package(OpenCV REQUIRED)

add_executable(kinect_image_capture main.cpp)
target_link_libraries(kinect_image_capture k4a::k4a ${OpenCV_LIBS}) # Azure Kinect SDK와 OpenCV 라이브러리를 링크
include_directories(${K4A_INCLUDE_DIRS} ${OpenCV_INCLUDE_DIRS})
