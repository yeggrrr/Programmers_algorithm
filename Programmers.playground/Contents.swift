// 짝수의 합 구하기

//import Foundation
//func solution(_ n: Int) -> Int {
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
//func solution(_ numbers: [Int]) -> Double {
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

//func solution(_ num: Int) -> String {
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

//func solution(_ arr: [Int]) -> Double {
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
//func solution(_ n: Int) -> Int {
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

//func solution2(_ n: Int) -> Int {
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

//func solution(_ n: Int) -> Int {
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
//func solution(_ food: [Int]) -> String {
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

//import Foundation
//
//func solution(_ n: Int) -> Int {
//    // for문으로 2에서 n까지 돌리기 (-> 1로 나누었을 때, 나머지가 1일 되는 경우는 없음)
//    for num in 2..<n {
//        // 만약 n을 num으로 나눈 나머지가 1이라면 (-> 2부터 num을 for문으로 돌렸기 때문에 그 값이 가장 작은 수)
//        if n % num == 1 {
//            // num을 리턴
//            return num
//        }
//    }
//    return 0
//}
//
//solution(10) // 결과: 3
//solution(12) // 결과: 11
//solution(55) // 결과: 2
//solution(100) // 결과: 3

// ------------------------------------------------------------------------ //

// x만큼 간격이 있는 n개의 숫자

//func solution(_ x:Int, _ n:Int) -> [Int64] {
//    var array = [Int64]()
//    for i in 1...n {
//        array.append(Int64(i * x))
//    }
//    
//    return array
//}
//
//solution(2, 5) // 결과: [2, 4, 6, 8, 10]
//solution(4, 3) // 결과: [4, 8, 12]
//solution(-4, 2) // 결과: [-4, -8]



//// Int 범위
//print("Int8 범위: \(Int8.min) ~ \(Int8.max)")
//print("Int16 범위: \(Int16.min) ~ \(Int16.max)")
//print("Int32범위: \(Int32.min) ~ \(Int32.max)")
//print("Int64 범위: \(Int64.min) ~ \(Int64.max)")
//print("Int 범위: \(Int.min) ~ \(Int.max)")

// --------------------------------------------------------------------------- //

// 자연수 뒤집어 배열로 만들기

//func solution(_ n: Int64) -> [Int] {
//    var result: [Int] = []
//    // n을 문자열로 변환 후, 뒤집어서 for문 돌리기
//    for index in String(n).reversed() {
//        // 변환에 실패할 수 있으니, guard문으로 else break 만들어주고
//        // 넘겨받은 index를 String 으로 변환 -> Int로 변환하여 num으로
//        guard let num = Int(String(index)) else { break }
//        // result에 num 더해주기
//        result.append(num)
//
//    }
//    return result
//}
//
//solution(12345) // 결과: [5, 4 ,3, 2, 1]
//solution(525252) // 결과:[2, 5, 2, 5, 2, 5]

// 자연수 뒤집어 배열로 만들기 _ map 활용

//func solution2(_ n: Int64) -> [Int] {
//    let arr = String(n).compactMap { Int(String($0)) }
//    return arr.reversed()
//}
//
//solution2(12345) // 결과: [5, 4, 3, 2, 1]
//solution2(525252) // 결과:[2, 5, 2, 5, 2, 5]
 
// while문 활용

//func solution3(_ n: Int64) -> [Int] {
//    var num: Int = Int(n)
//    var arr: [Int] = []
//
//    while num > 0 {
//        arr.append(num % 10)
//        num /= 10
//    }
//    return arr
//}
//
//solution3(12345)  // 결과: [5, 4, 3, 2, 1]
//solution3(525252) // 결과:[2, 5, 2, 5, 2, 5]

// --------------------------------------------------------------------- //

// 문자열을 정수로 바꾸기

// <방법1>
//func solution(_ s: String) -> Int {
//    return Int(s)!
//}
//
//solution("1234")
//solution("-1234")

// <방법2>
//func solution2(_ s: String) -> Int {
//    if let num = Int(s) {
//        return num
//    }
//    return 0
//}
//
//solution2("1234")
//solution2("-1234")

// <방법3>
//func solution3(_ s: String) -> Int {
//    guard let num = Int(s) else { return 0 }
//    return num
//}
//
//solution3("1234")
//solution3("-1234")

// ------------------------------------------------------------------------ //
 
// 정수 제곱근 판별

//import Foundation
//
//// <방법1>
//func solution(_ n: Int64) -> Int64 {
//    let sq = Int64(sqrt(Double(n)))
//    return sq * sq == n ? (sq + 1) * (sq + 1) : -1
//}
//
//solution(121)
//solution(3)

// <방법2>
//func solution2(_ n: Int64) -> Int64 {
//    let sq = Int64(sqrt(Double(n)))
//    if sq * sq == n {
//        return (sq + 1) * (sq + 1)
//    } else {
//        return -1
//    }
//}
//
//solution2(121)
//solution2(3)

// ------------------------------------------------------------------------------ //

// 정수 내림차순으로 배치하기

//func solution(_ n:Int64) -> Int64 {
//    guard let desc = Int64(String(String(n).sorted(by: >))) else { return 0 }
//    return desc
//}
//
//solution(118372) // 결과: 873211
//solution(132465) // 결과: 654321

// ----------------------------------------------------------------------------- //

// 콜라 문제

//import Foundation
//
//func solution(_ a: Int, _ b: Int, _ n: Int) -> Int {
//    var nowCoke = n
//    var totalCokeCount = 0
//    
//    while nowCoke >= a {
//        totalCokeCount += ((nowCoke / a) * b)
//        nowCoke = nowCoke - ((nowCoke / a) * a) + ((nowCoke / a) * b)
//    }
//    return totalCokeCount
//}
//
//solution(2, 1, 20) // 결과: 19
//solution(3, 1, 20) // 결과: 9
//solution(2, 1, 33) // 결과: 32
//solution(3, 1, 23) // 결과: 11

// ------------------------------------------------------------------------------ //

// 하샤드 수

// <방법1>
//func solution(_ x: Int) -> Bool {
//    var sum = 0
//    // 문자열(String)은 단일 객체로 사용되지만,
//    // 구조적으로 Character 타입의 개별 문자들이 모여 이루어진 객체임.
//    // 그래서 for문을 돌리면 자체적으로 각 문자(char)가 순회처리 됨.
//    for i in String(x) {
//        // Int로 다시 변환하면, optional로 나오기 때문에 guard문 사용.
//        guard let num = Int(String(i)) else { break }
//        // sum에 순차적으로 더해줌. (-> 각 자리 수의 합)
//        sum += num
//    }
//    // x에서 sum의 나눈 나머지가 0이면(= 나누어 떨어지면),true(= 하샤드 수)
//    return x % sum == 0
//}
//
//solution(10) // 결과: true
//solution(12) // 결과: true
//solution(11) // 결과: false
//solution(13) // 결과: false

// <방법2>
//func solution2(_ x: Int) -> Bool {
//    var sum = 0
//    var num = x
//
//    while num > 0 {
//        sum += num % 10
//        print(sum)
//        num /= 10
//        
//    }
//    return x % sum == 0
//}
//
//solution2(10) // 결과: true
//solution2(12) // 결과: true
//solution2(11) // 결과: false
//solution2(13) // 결과: false

// ------------------------------------------------------------------------------ //

// 두 정수 사이의 합

// <방법1>
//func solution(_ a:Int, _ b:Int) -> Int64 {
//    var sum = 0
//    // a와 b가 같다면,
//    if a == b {
//        // 둘 중 아무거나 리턴이므로 return a
//        return Int64(a)
//    }
//    
//    // firstNumber = a가 b보다 작다면 a, 아니라면 b
//    // secondNumber = a가 b보다 작다면 b, 아니리면 a
//    var firstNumber = a < b ? a : b
//    var secondNumber = a < b ? b : a
//    // a ~ b까지 for문 돌리기
//    for i in firstNumber...secondNumber {
//        // sum에 모두 더해주기
//        sum += i
//    }
//    
//    return Int64(sum)
//}
//
//solution(3, 5) // 결과: 12
//solution(3, 3) // 결과: 3
//solution(5, 3) // 결과: 12

// <방법2>

//func solution2(_ a:Int, _ b:Int) -> Int64 {
//    var sum = 0
//    if a == b {
//        return Int64(a)
//    }
//
//    for i in (a < b ? a...b : b...a) {
//        sum += i
//    }
//    
//    return Int64(sum)
//}
//
//solution2(3, 5) // 결과: 12
//solution2(3, 3) // 결과: 3
//solution2(5, 3) // 결과: 12

// ------------------------------------------------------------------------------ //

// 콜라츠 추측

//func solution(_ num:Int) -> Int {
//    var number = num
//    var count = 0
//    
//    while number > 1 {
//        if number % 2 == 0 {
//            number = number / 2
//        } else {
//            number = ( number * 3 ) + 1
//        }
//        count += 1
//        if count == 500 {
//            return -1
//        }
//    }
//    return count
//}
//
//solution(6) // 결과: 8
//solution(16) // 결과: 4
//solution(626331) // 결과: -1
//solution(1) // 결과: 0

// ------------------------------------------------------------------------------ //

// 서울에서 김서방 찾기

// <방법1>
func solution(_ seoul:[String]) -> String {
    var result = 0
    for (index, name) in seoul.enumerated() {
        if name == "Kim" {
            result = index
        }
    }
    
    return "김서방은 \(result)에 있다"
}

solution(["Jane", "Kim", "Park", "Song", "Lee"]) 
// 결과: "김서방은 1에 있다"
solution(["Park", "Lee", "Song", "Kim", "Jane"])
// 결과: "김서방은 3에 있다"

// <방법2>
func solution2(_ seoul:[String]) -> String {
    for i in 0..<seoul.count {
        if seoul[i] == "Kim" {
            return "김서방은 \(i)에 있다"
        }
    }
    return ""
}

solution2(["Jane", "Kim", "Park", "Song", "Lee"])
// 결과: "김서방은 1에 있다"
solution2(["Park", "Lee", "Song", "Kim", "Jane"])
// 결과: "김서방은 3에 있다"
