func solution(_ phone_number:String) -> String {
    
    let count = phone_number.count
    let arrNum = Array(phone_number)
    var result = ""
    
    for i in 0..<count-4 {
        result += "*"
    }
    
    for i in count-4..<count {
        result += String(arrNum[i])
    }
    
    return result
}