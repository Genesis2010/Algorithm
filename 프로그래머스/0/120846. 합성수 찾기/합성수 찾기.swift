import Foundation

func solution(_ n:Int) -> Int {
    
    var result = 0
    
    for i in 1...n {
        var count = 0 
        for j in 1...i {
            if i % j == 0 {
            count += 1
            }
        }
        
        if count >= 3 {
            result += 1
        }
    }
    return result
}