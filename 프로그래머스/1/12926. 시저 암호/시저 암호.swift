func solution(_ s:String, _ n:Int) -> String {
    var result = ""

    for char in s {
        if char.isUppercase {
            let newAscii = (Int(char.asciiValue!) - 65 + n) % 26 + 65
            result.append(Character(UnicodeScalar(newAscii)!))
        } else if char.isLowercase {
            let newAscii = (Int(char.asciiValue!) - 97 + n) % 26 + 97
            result.append(Character(UnicodeScalar(newAscii)!))
        } else {
            result.append(char)  // 공백 처리
        }
    }

    return result
}
