import Foundation

func solution(_ n:Int) -> Int {
    var result = 0
    var num = [Int]()
    for i in 1..<n/2 {
        if n % i == 0 {
            num.append(i)
        }
    }
    
    
    for i in 1..<n {
        if num.contains(i) {
            continue
        } else if n % i == 1 {
            result = i
            break
        }
    }
    return result
}