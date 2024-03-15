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

// 자릿수 더하기

// <방법1>

//import Foundation
//
//func solution(_ n:Int) -> Int {
//    var answer = 0
//    // str = n을 문자열로
//    var str = String(n)
//    
//    // for 문으로 str 돌리기
//    for num in str {
//        // for문으로 넘어온 각 문자는 Character이기 때문에 String으로 감싸주고,
//        // 다시 Int로 한 번 더 감싸주기
//        var Num = Int(String(num))
//        // Int로 감싸게 되면서 값이 있는지 없는지 몰라서 옵셔널 상태이기 때문에 !로 unwrapping
//        answer += Num!
//    }
//    return answer
//}
//
//solution(123) // 결과: 6
// solution(987) // 결과: 24

// <방법2>

//func solution2(_ n:Int) -> Int {
//    var answer:Int = 0
//    var num: Int = n
//    // num이 0보다 클 경우 while 반복문 돌리기
//    while num > 0 {
//        // num을 10으로 나눈 나머지 answer에 더해주기
//        answer += num % 10
//        // num을 10으로 나눈 값을 num으로 넘기기
//        num = num / 10
//    }
//    return answer
//}
//
//solution2(123) // 결과: 6
//solution2(987) // 결과: 24

// 약수의 합

//func solution(_ n:Int) -> Int {
//    var sum = 0
//    // n이 0보다 클 경우 guard문을 빠져나가고, 아니라면 0 리턴
//    guard n > 0 else { return 0 }
//    // for문으로 1부터 n까지 돌리기
//    for num in 1...n {
//        // 만약 n을 num으로 나눈 나머지가 0이라면(=n의 약수)
//        if n % num == 0 {
//            // sum에 num을 더해라.
//            sum += num
//        }
//    }
//    // sum(=n의 약수의 합) 리턴
//    return sum
//}
//
//solution(12)  // 결과: 28
//solution(5)  // 결과: 6

// --------------------------------------------------------------------------- //

// 푸드파이터

//import Foundation
//func solution(_ food:[Int]) -> String {
//    var myFood = ""
//    // for문으로 1 ~ food.count 돌리기
//    for i in 1..<food.count {
//        // 만약 food의 i번째 수가 1이 아니라면
//        if food[i] != 1 {
//            // foodCount = 1개가 아닌 음식의 수
//            let foodCount = food[i]
//            // 2명의 참가자가 동일하게 먹어야하므로 음식의 수는 짝수여야 함 -> 나누기 2를 한 몫
//            let canEatCount = foodCount / 2
//            // canEatArray = i를 canEatCount만큼 반복하는 Array // ex.[1, 1, 1, 3]
//            let canEatArray = Array(repeating: "\(i)", count: canEatCount)
//            // canEatString = 공백없이 배열을 join하기 -> ex. 1113
//            let canEatString = canEatArray.joined()
//            // myFood에 canEatString 더해주기 -> ex. "1113"
//            myFood.append(canEatString)
//        }
//    }
//    // myFood + "0" + myFood 거꾸로 -> ex. "111303111"
//    let placementOfFood = myFood + "0" + myFood.reversed()
//    return placementOfFood
//}
//
//solution([1, 3, 4, 6])  // 결과: "1223330333221"
//solution([1, 7, 1, 2])  // 결과: "111303111"

// ----------------------------------------------------------------------------- //

// 나머지가 1이 되는 수 찾기

import Foundation

func solution(_ n:Int) -> Int {
    // for문으로 2에서 n까지 돌리기 (-> 1로 나누었을 때, 나머지가 1일 되는 경우는 없음)
    for num in 2..<n {
        // 만약 n을 num으로 나눈 나머지가 1이라면 (-> 2부터 num을 for문으로 돌렸기 때문에 그 값이 가장 작은 수)
        if n % num == 1 {
            // num을 리턴
            return num
        }
    }
    return 0
}

solution(10) // 결과: 3
solution(12) // 결과: 11
solution(55) // 결과: 2
solution(100) // 결과: 3


