import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    
    let type: [String] = ["R", "C", "J", "A", "T", "F", "M", "N"]
    var typeNum: [String: Int] = ["R": 0, "C": 0, "J": 0, "A": 0, "T": 0, "F": 0, "M": 0, "N": 0]
    
    var result: String = ""
    
    for (index, data) in survey.enumerated() {
        let splitData = Array(data)
        let selectNum = choices[index]
        
        switch selectNum {
            case 1...3:
            typeNum[String(splitData[0])] = (typeNum[String(splitData[0])] ?? 0) + 4 - selectNum
            case 5...7:
            typeNum[String(splitData[1])] = (typeNum[String(splitData[1])] ?? 0) + selectNum - 4
            default:
                break
        }
    }
    
    for i in 0...3 {
        if (typeNum[type[i]] ?? 0) >= (typeNum[type[i+4]] ?? 0) {
            result += type[i]
        } else if (typeNum[type[i]] ?? 0) < (typeNum[type[i+4]] ?? 0) {
            result += type[i+4]
        }
    }
    
    return result
}