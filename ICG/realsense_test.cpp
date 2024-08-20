#include <librealsense2/rs.hpp> // Include RealSense Cross Platform API
#include <iostream> // Include for std::cout and std::cerr

int main() {
    rs2::pipeline p;

    try {
        p.start();
        rs2::frameset frames = p.wait_for_frames();
        rs2::depth_frame depth = frames.get_depth_frame();
        float dist_to_center = depth.get_distance(depth.get_width() / 2, depth.get_height() / 2);

        std::cout << "The distance to the center of the frame is: " << dist_to_center << " meters\n";
    } catch (const rs2::error &e) {
        std::cerr << "RealSense error calling " << e.get_failed_function() << "(" << e.get_failed_args() << "):\n" << e.what() << std::endl;
        return EXIT_FAILURE;
    } catch (const std::exception &e) {
        std::cerr << e.what() << std::endl;
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
