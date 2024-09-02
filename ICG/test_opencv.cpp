#include <opencv2/opencv.hpp>
#include <iostream>

int main()
{
	std::cout << "OpenCV version : " << CV_VERSION << std::endl;

	cv::Mat img; // 이미지 처리를 위해 Mat 클래스 선언
	img = cv::imread("resources/tomato.jpg"); // 이미지 읽기

	// 이미지가 없을 경우 예외 처리
	if (img.empty())
	{
		std::cerr << "Image load failed" << std::endl;
		return -1;
	}

	cv::namedWindow("image"); // 이미지를 보여주기 위한 빈 창
	cv::imshow("image", img); // "image"라는 이름의 창에 이미지를 넣어 보여줌

	cv::waitKey(); // 종료 키 대기

	return 0;
}