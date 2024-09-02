#include <k4a/k4a.hpp>
#include <opencv2/opencv.hpp>
#include <iostream>
#include <thread>

int main() {
    try {
        // Azure Kinect 장치 열기
        k4a::device device = k4a::device::open(0);
        std::cout << "Device opened successfully." << std::endl;

        // Azure Kinect 카메라 설정
        k4a_device_configuration_t config = K4A_DEVICE_CONFIG_INIT_DISABLE_ALL;
        config.color_format = K4A_IMAGE_FORMAT_COLOR_BGRA32;
        config.color_resolution = K4A_COLOR_RESOLUTION_720P;
        config.depth_mode = K4A_DEPTH_MODE_NFOV_UNBINNED;
        config.camera_fps = K4A_FRAMES_PER_SECOND_15;  // 프레임 레이트 조정

        // 카메라 시작
        device.start_cameras(&config);
        std::cout << "Cameras started successfully." << std::endl;

        // 캡처 객체 생성
        k4a::capture capture;

        // 캡처 시도 루프
        int attempts = 0;
        bool success_rgb = false;
        bool success_depth = false;
        while (attempts < 100) {
            if (device.get_capture(&capture, std::chrono::milliseconds(1000))) {
                // RGB 이미지 가져오기 시도
                k4a::image color_image = capture.get_color_image();
                if (color_image) {
                    // OpenCV를 사용하여 RGB 이미지를 저장
                    cv::Mat rgb_image(color_image.get_height_pixels(),
                                      color_image.get_width_pixels(),
                                      CV_8UC4,
                                      color_image.get_buffer());

                    cv::imwrite("/home/demo-ur5/heeseon/src/3DObjectTracking/ICG/test_azure/rgb.png", rgb_image);
                    std::cout << "RGB image saved as rgb.png" << std::endl;
                    success_rgb = true;
                } else {
                    std::cerr << "Failed to get color image from capture! Attempt " << attempts + 1 << std::endl;
                    success_rgb = false;
                }

                // 깊이 이미지 가져오기 시도
                k4a::image depth_image = capture.get_depth_image();
                if (depth_image) {
                    // 깊이 이미지를 16비트 단일 채널 이미지로 변환
                    cv::Mat depth_image_mat(depth_image.get_height_pixels(),
                                            depth_image.get_width_pixels(),
                                            CV_16U,
                                            depth_image.get_buffer());

                    // 깊이 값의 유효성 검사
                    double min, max;
                    cv::minMaxLoc(depth_image_mat, &min, &max);
                    std::cout << "Depth min: " << min << ", max: " << max << std::endl;

                    // 깊이 값을 8비트 이미지로 정규화 (0-255)
                    cv::Mat depth_image_normalized;
                    depth_image_mat.convertTo(depth_image_normalized, CV_8U, 255.0 / max);

                    // OpenCV를 사용하여 깊이 이미지를 PNG로 저장
                    cv::imwrite("/home/demo-ur5/heeseon/src/3DObjectTracking/ICG/test_azure/depth.png", depth_image_normalized);
                    std::cout << "Depth image saved as depth.png" << std::endl;
                    success_depth = true;
                } else {
                    std::cerr << "Failed to get depth image, attempt " << attempts + 1 << std::endl;
                    success_depth = false;
                }

                // RGB 이미지와 깊이 이미지 모두 성공하면 루프 종료
                if (success_rgb && success_depth) {
                    break;
                }
            } else {
                std::cerr << "Failed to capture from device, attempt " << attempts + 1 << std::endl;
            }

            std::this_thread::sleep_for(std::chrono::milliseconds(1000));  // 딜레이 추가
            attempts++;
        }

        // 장치 정리
        device.close();
        std::cout << "Device closed successfully." << std::endl;

    } catch (const std::exception& e) {
        std::cerr << "Exception caught: " << e.what() << std::endl;
    }

    return 0;
}
