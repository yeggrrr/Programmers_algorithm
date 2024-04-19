// 삼총사

import Foundation

func solution(_ number:[Int]) -> Int {
    var count = 0
    for i in 0..<number.count {
        for j in i + 1..<number.count {
            for k in j + 1..<number.count {
                if number[i] + number[j] + number[k] == 0 {
                    count += 1
                }
            }
        }
    }
    return count
}

solution([-2, 3, 0, 2, -5])
print(solution([-2, 3, 0, 2, -5]))

solution([1, -1, 1, -1])
print(solution([1, -1, 1, -1]))
