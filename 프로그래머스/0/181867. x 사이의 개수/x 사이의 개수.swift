import Foundation

func solution(_ myString:String) -> [Int] {
    
    var splitStr = ""
    var result = [Int]()
    for i in myString {
        if i == "x" {
            result.append(splitStr.count)
            splitStr = ""
        } else {
            splitStr += String(i)
        }
    }
    
    result.append(splitStr.count)
    
    return result
}