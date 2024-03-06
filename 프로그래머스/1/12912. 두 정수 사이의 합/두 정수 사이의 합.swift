func solution(_ a:Int, _ b:Int) -> Int64 {
    var sum:Int64 = 0
    
    let num = (min(a,b), max(a,b))
    
    for i in num.0...num.1 {
        sum += Int64(i)
    }
    
    return Int64(sum)
}