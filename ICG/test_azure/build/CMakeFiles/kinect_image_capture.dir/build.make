# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/demo-ur5/heeseon/src/3DObjectTracking/ICG/test_azure

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/demo-ur5/heeseon/src/3DObjectTracking/ICG/test_azure/build

# Include any dependencies generated for this target.
include CMakeFiles/kinect_image_capture.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/kinect_image_capture.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/kinect_image_capture.dir/flags.make

CMakeFiles/kinect_image_capture.dir/main.cpp.o: CMakeFiles/kinect_image_capture.dir/flags.make
CMakeFiles/kinect_image_capture.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/demo-ur5/heeseon/src/3DObjectTracking/ICG/test_azure/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/kinect_image_capture.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kinect_image_capture.dir/main.cpp.o -c /home/demo-ur5/heeseon/src/3DObjectTracking/ICG/test_azure/main.cpp

CMakeFiles/kinect_image_capture.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kinect_image_capture.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/demo-ur5/heeseon/src/3DObjectTracking/ICG/test_azure/main.cpp > CMakeFiles/kinect_image_capture.dir/main.cpp.i

CMakeFiles/kinect_image_capture.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kinect_image_capture.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/demo-ur5/heeseon/src/3DObjectTracking/ICG/test_azure/main.cpp -o CMakeFiles/kinect_image_capture.dir/main.cpp.s

# Object files for target kinect_image_capture
kinect_image_capture_OBJECTS = \
"CMakeFiles/kinect_image_capture.dir/main.cpp.o"

# External object files for target kinect_image_capture
kinect_image_capture_EXTERNAL_OBJECTS =

kinect_image_capture: CMakeFiles/kinect_image_capture.dir/main.cpp.o
kinect_image_capture: CMakeFiles/kinect_image_capture.dir/build.make
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libk4a.so.1.3.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_aruco.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_bgsegm.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_bioinspired.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_ccalib.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_dnn_objdetect.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_dnn_superres.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_dpm.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_face.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_freetype.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_fuzzy.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_hdf.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_hfs.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_img_hash.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_line_descriptor.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_quality.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_reg.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_rgbd.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_saliency.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_shape.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_stereo.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_structured_light.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_surface_matching.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_tracking.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_viz.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_xobjdetect.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_xphoto.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_datasets.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_plot.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_text.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_dnn.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_phase_unwrapping.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_optflow.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_ximgproc.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_video.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_videoio.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.4.2.0
kinect_image_capture: /usr/lib/x86_64-linux-gnu/libopencv_core.so.4.2.0
kinect_image_capture: CMakeFiles/kinect_image_capture.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/demo-ur5/heeseon/src/3DObjectTracking/ICG/test_azure/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable kinect_image_capture"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kinect_image_capture.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/kinect_image_capture.dir/build: kinect_image_capture

.PHONY : CMakeFiles/kinect_image_capture.dir/build

CMakeFiles/kinect_image_capture.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/kinect_image_capture.dir/cmake_clean.cmake
.PHONY : CMakeFiles/kinect_image_capture.dir/clean

CMakeFiles/kinect_image_capture.dir/depend:
	cd /home/demo-ur5/heeseon/src/3DObjectTracking/ICG/test_azure/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/demo-ur5/heeseon/src/3DObjectTracking/ICG/test_azure /home/demo-ur5/heeseon/src/3DObjectTracking/ICG/test_azure /home/demo-ur5/heeseon/src/3DObjectTracking/ICG/test_azure/build /home/demo-ur5/heeseon/src/3DObjectTracking/ICG/test_azure/build /home/demo-ur5/heeseon/src/3DObjectTracking/ICG/test_azure/build/CMakeFiles/kinect_image_capture.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/kinect_image_capture.dir/depend

