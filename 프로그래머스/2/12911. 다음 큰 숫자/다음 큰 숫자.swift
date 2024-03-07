import Foundation

func solution(_ n:Int) -> Int
{
    
    let binaryN = String(n, radix: 2)
    let nCount1 = binaryN.filter { $0 == "1" }.count
    var nextNum = n
    var nextCount1 = 0
    
    while nCount1 != nextCount1 {
        nextNum += 1
        nextCount1 = String(nextNum, radix: 2).filter { $0 == "1" }.count
    }
    
    return nextNum
}