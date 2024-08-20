#include <librealsense2/rs.hpp> // RealSense SDK
#include <opencv2/opencv.hpp>   // OpenCV

int main() {
    // Create a pipeline to configure, start, and stop the camera
    rs2::pipeline p;
    p.start();

    while (true) {
        // Wait for the next set of frames
        rs2::frameset frames = p.wait_for_frames();

        // Get RGB and depth frames
        rs2::video_frame color_frame = frames.get_color_frame();
        rs2::depth_frame depth_frame = frames.get_depth_frame();

        // Convert to OpenCV matrix format
        cv::Mat color(cv::Size(color_frame.get_width(), color_frame.get_height()), CV_8UC3, (void*)color_frame.get_data(), cv::Mat::AUTO_STEP);
        cv::Mat depth(cv::Size(depth_frame.get_width(), depth_frame.get_height()), CV_16UC1, (void*)depth_frame.get_data(), cv::Mat::AUTO_STEP);

        // Convert from RGB to BGR
        cv::cvtColor(color, color, cv::COLOR_RGB2BGR);

        // Normalize the depth image to make it visible
        cv::Mat depth_normalized;
        depth.convertTo(depth_normalized, CV_8UC1, 255.0 / 1000); // Assuming depth range is 0-1000mm

        // Apply colormap to depth image for better visualization
        cv::Mat depth_colormap;
        cv::applyColorMap(depth_normalized, depth_colormap, cv::COLORMAP_JET);

        // Save images
        cv::imwrite("rgb.png", color);
        cv::imwrite("depth.png", depth_colormap);

        // Show images
        cv::imshow("RGB Image", color);
        cv::imshow("Depth Image", depth_colormap);

        // Break the loop if 'q' is pressed
        if (cv::waitKey(1) == 'q') {
            break;
        }
    }

    return 0;
}
