// 짝수의 합 구하기

//import Foundation
//func solution(_ n:Int) -> Int {
//    var sum = 0
//    // for 문으로 0부터 n까지 돌리기
//    for num in 0...n {
//        // 만약 num을 2로 나눈 나머지가 0인 경우 = 짝수인 경우
//        if num % 2 == 0 {
//            // 조건에 만족한다면, sum에 num 더하기
//            sum += num
//        }
//    } 
//    return sum
//}
//
//solution(10)
//solution(20)
//solution(30)

// -------------------------------------------------------------- //

// 배열의 평균값

import Foundation

func solution(_ numbers:[Int]) -> Double {
    var sum = 0
    // for 문으로 num에 배열의 0번째부터 (numbers의 개수 - 1)번째까지 돌리기
    for num in 0..<numbers.count {
        // sum에 각각 더해줌
        sum += numbers[num]
    }
    // numbers에 있는 모든 수를 더한 sum / numbers의 개수 = 평균
    return Double(sum) / Double(numbers.count)
}

solution([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
solution([89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99])
