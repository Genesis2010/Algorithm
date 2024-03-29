import Foundation

func solution(_ num_list:[Int]) -> Int {
    
    var result = -1
    
    for (index, value) in num_list.enumerated() {
        if value < 0 {
            result = index
            break
        }
    }
    
    result = result >= 0 ? result : -1
    
    return result
}