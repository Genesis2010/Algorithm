import Foundation

func solution(_ strlist:[String]) -> [Int] {
    
    var result = [Int]()
    
    for i in strlist {
        result.append(i.count)
    }
    
    return result
}