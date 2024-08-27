#include <iostream>
#include <ctime>
#include <iomanip>
#include <sstream>

int main() {
    // 현재 시간을 time_t 형식으로 가져오기
    std::time_t t = std::time(nullptr);
    
    // time_t를 tm 구조체로 변환하기 (로컬 시간)
    std::tm* now = std::localtime(&t);

    // 출력 스트림을 사용하여 형식 지정
    std::ostringstream oss;
    oss << std::put_time(now, "%Y%m%d_%H%M");

    // string 변수에 결과 저장
    std::string _time = oss.str();

    // 결과 출력
    std::cout << _time << std::endl;

    return 0;
}
