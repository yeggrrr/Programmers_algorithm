// 이상한 문자 만들기

// s: 한 개 이상의 단어로 구성
// 각 단어는 하나 이상의 공백으로 구성
// 각 단어의 짝수번째는 대문자, 홀수번째는 소문자로 리턴

func solution(_ s:String) -> String {
    var count = 0
    var result = ""
    
    for letter in s {
        if letter == " " {
            count = -1
            result += String(letter)
        } else if count % 2 == 0 {
            result.append(letter.uppercased())
        } else {
            result.append(letter.lowercased())
        }
        count += 1
    }
    return result
}

solution("hello world")
print(solution("hello world")) // HeLlO WoRlD
