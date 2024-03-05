func solution(_ s:String) -> String {
    
    var str = s.map { String($0) }
    let middle = Int(str.count / 2)
    var result = ""
    if s.count % 2 == 0 {
        result = "\(str[middle - 1])" + "\(str[middle])"
    } else {
        result = str[middle]
    }
    
    return result
}