func solution(_ n:Int64) -> [Int] {
    
    var count = String(n).count
    
    var numArray = Array(repeating: 0, count: count)
    
    for i in String(n) {
        count -= 1
        numArray[count] = Int(String(i))!
    }
    
    return numArray
}