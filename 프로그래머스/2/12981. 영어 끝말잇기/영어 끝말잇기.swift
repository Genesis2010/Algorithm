import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    
    var tempStr = words[0]
    var temp = [words[0]]

    for i in 1..<words.count {
        if !temp.contains(words[i]) {
            temp.append(words[i])
        } else {
            return [(i % n) + 1, Int(i / n) + 1]
        }
        
        if !(words[i].first == tempStr.last) {
            return [(i % n) + 1, Int(i / n) + 1]
        } else {
            tempStr = words[i]
        }
    }
    
    return [0,0]
}