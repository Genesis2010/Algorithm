import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    
    var result = [0,0]
    var tempStr = words[0]
    var temp = [words[0]]

    for i in 1..<words.count {
        if !temp.contains(words[i]) {
            temp.append(words[i])
        } else {
            result.removeAll()
            result.append((i % n) + 1)
            result.append(Int(i / n) + 1)
            break
        }
        
        if !(words[i].first == tempStr.last) {
            result.removeAll()
            result.append((i % n) + 1)
            result.append(Int(i / n) + 1)
            break
        } else {
            tempStr = words[i]
        }
    }
    
    return result
}