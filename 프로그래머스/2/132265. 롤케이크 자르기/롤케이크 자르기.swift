import Foundation

func solution(_ topping: [Int]) -> Int {
    var leftSet = Set<Int>()
    var rightDict = [Int: Int]()
    var result = 0
    
    for t in topping {
        rightDict[t, default: 0] += 1
    }
    
    for t in topping {
        leftSet.insert(t)
        
        if let count = rightDict[t] {
            if count == 1 {
                rightDict.removeValue(forKey: t)
            } else {
                rightDict[t] = count - 1
            }
        }

        if leftSet.count == rightDict.count {
            result += 1
        }
    }
    
    return result
}