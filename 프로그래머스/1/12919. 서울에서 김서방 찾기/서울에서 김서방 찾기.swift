func solution(_ seoul:[String]) -> String {
    
    var kimiIndex = 0
    
    for (index, value) in seoul.enumerated() {
        if value == "Kim" {
             kimiIndex = index
        }
    }
    
    return "김서방은 \(kimiIndex)에 있다"
}
