func solution(_ s:String) -> String {
    
    var str = s.map { String($0) }
    let middle = Int(str.count / 2)
    if s.count % 2 == 0 {
        return "\(str[middle - 1])" + "\(str[middle])"
    } else {
        return str[middle]
    }
}