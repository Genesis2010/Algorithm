func solution(_ x:Int) -> Bool {
    
    let splitX = String(x).map{ Int(String($0))! }
    
    if x % splitX.reduce(0,+) == 0 {
        return true
    } else {
        return false
    }
}