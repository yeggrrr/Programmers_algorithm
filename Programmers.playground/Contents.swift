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

//import Foundation
//
//func solution(_ numbers:[Int]) -> Double {
//    var sum = 0
//    // for 문으로 num에 배열의 0번째부터 (numbers의 개수 - 1)번째까지 돌리기
//    for num in 0..<numbers.count {
//        // sum에 각각 더해줌
//        sum += numbers[num]
//    }
//    // numbers에 있는 모든 수를 더한 sum / numbers의 개수 = 평균
//    return Double(sum) / Double(numbers.count)
//}
//
//solution([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
//solution([89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99])

// reduce로 풀어보기 (방법 1)

//func solution2(_ numbers:[Int]) -> Double {
//    return Double(numbers.reduce(0,+)) / Double(numbers.count)
//}
//
//solution2([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
//solution2([89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99])

// reduce로 풀어보기 (방법 2)

//func solution3(_ numbers:[Int]) -> Double {
//    let sum = Double(numbers.reduce(0) { $0 + $1 }) / Double(numbers.count)
//    return sum
//}
//solution3([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
//solution3([89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99])


// ------------------------------------------------------------ //

// 짝수와 홀수

//func solution(_ num:Int) -> String {
//    // num을 2로 나눈 나머지가 0이라면
//    if num % 2 == 0 {
//        // "Even"을 리턴
//        return "Even"
//    // 그게 아니라면
//    } else {
//        // "Odd"를 리턴
//        return "Odd"
//    }
//}
//solution(10)
//solution(3)
//solution(4)


// ----------------------------------------------------------------- //
// 평균 구하기

//func solution(_ arr:[Int]) -> Double {
//    var sum = 0
//    for num in 0..<arr.count {
//        sum += arr[num]
//    }
//    return Double(sum) / Double(arr.count)
//    
//}
//
//solution([1,2,3,4])
//solution([5, 5])

// ----------------------------------------------------------------- //

// 자릿수 구하기

// <방법1>

import Foundation

func solution(_ n:Int) -> Int {
    var answer = 0
    // str = n을 문자열로
    var str = String(n)
    
    // for 문으로 str 돌리기
    for num in str {
        // for문으로 넘어온 각 문자는 Character이기 때문에 String으로 감싸주고,
        // 다시 Int로 한 번 더 감싸주기
        var Num = Int(String(num))
        // Int로 감싸게 되면서 값이 있는지 없는지 몰라서 옵셔널 상태이기 때문에 !로 unwrapping
        answer += Num!
    }
    return answer
}

solution(123) // 결과: 6
// solution(987) // 결과: 24

// <방법2>

func solution2(_ n:Int) -> Int {
    var answer:Int = 0
    var num: Int = n
    // num이 0보다 클 경우 while 반복문 돌리기
    while num > 0 {
        // num을 10으로 나눈 나머지 answer에 더해주기
        answer += num % 10
        // num을 10으로 나눈 값을 num으로 넘기기
        num = num / 10
    }
    return answer
}

solution2(123) // 결과: 6
//solution2(987) // 결과: 24
