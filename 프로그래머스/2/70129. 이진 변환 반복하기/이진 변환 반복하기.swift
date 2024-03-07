import Foundation

func solution(_ s:String) -> [Int] {
    
    var count = 0
    var transCount = 0
    var str = s

    while str != "1" {
        var temp = ""
        str.forEach {
            if $0 == "1" {
                temp += "1"
            } else {
                count += 1
            }
        }
        
        let binaryNum = String(temp.count, radix: 2)
        str = binaryNum
        transCount += 1
    }
    
    return [transCount, count]
}