cmake_minimum_required(VERSION 3.5)
cmake_policy(SET CMP0072 NEW)

project(ICG)

# Add this line to set the CMAKE_PREFIX_PATH
set(CMAKE_PREFIX_PATH "/usr/lib/x86_64-linux-gnu/cmake/k4a;/usr/lib/x86_64-linux-gnu/cmake/k4arecord")

# Options
option(USE_AZURE_KINECT "Use Azure Kinect" ON)
option(USE_REALSENSE "Use RealSense D435" ON)

# Libraries
if (WIN32)
    set(GLEW_STATIC true)
    set(OpenCV_STATIC true)
    set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")
endif ()

find_package(Eigen3 3.3.2 REQUIRED)
find_package(OpenGL REQUIRED)
find_package(GLEW REQUIRED)
find_package(glfw3 3.1.2 REQUIRED)
find_package(OpenCV 4.0.0 REQUIRED)
if(USE_AZURE_KINECT)
    find_package(K4A 1.3.0 REQUIRED)
endif()
if (USE_REALSENSE)
    find_package(realsense2 REQUIRED)
endif ()
