// 시저 암호
import Foundation

func solution(_ s:String, _ n:Int) -> String {
    let upperString = Array("abcdefghijklmnopqrstuvwxyz".uppercased())
    let lowerString = Array("abcdefghijklmnopqrstuvwxyz")
    var result = ""
    
    for i in s {
        // 대문자에 포함된 경우
        if upperString.contains(i) {
            var indexNum = upperString.firstIndex(of: i)! + n
            
            if indexNum > 25 {
                indexNum = indexNum - 26
            }
            
            result.append(upperString[indexNum])
        // 소문자에 포함된 경우
        } else if lowerString.contains(i) {
            var indexNum = lowerString.firstIndex(of: i)! + n
            
            if indexNum > 25 {
                indexNum = indexNum - 26
            }
            
            result.append(lowerString[indexNum])
        } else {
            result.append(i)
        }
    }
    return result
}

print(solution("AB", 1))
print(solution("z", 1))
print(solution("a B z", 4))

