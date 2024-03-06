func solution(_ n:Int) -> Int {
    
    var num = [Int]()
    if n > 1 {
       for i in 1...Int(n/2) {
        if n % i == 0 {
            num.append(i)
        } 
      }
    }
    num.append(n)
    return num.reduce(0, +)
}