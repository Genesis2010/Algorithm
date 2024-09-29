import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var result = Array(repeating: 0, count: id_list.count)
    var reportData = [String: Set<String>]()
    
    for data in report {
        let splitData = data.split(separator: " ").map{ String($0) }
        reportData[splitData[1], default: Set()].insert(splitData[0])
    }
    
    for value in reportData.values {
        if value.count >= k {
            for person in value {
                result[id_list.firstIndex(of: person)!] += 1
            }
        }
    }
    
    return result
}