func solution(_ n:Int) -> Int {
    
    var num = Array(repeating: 0, count: n+1)
    var count = 0
    
    for i in 2...n {
        if num[i] == 0 {
            count += 1
            
            for j in stride(from: i, through: n, by: i) {
                num[j] = 1
            }
        }
    }
    
    return count
}

