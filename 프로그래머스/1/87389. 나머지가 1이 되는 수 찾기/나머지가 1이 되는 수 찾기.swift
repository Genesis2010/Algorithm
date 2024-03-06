import Foundation

func solution(_ n:Int) -> Int {
    
    var count = 1
    
    while true {
        if n % count == 1 {
            break
        }
        
        count += 1
    }
    
    return count
}