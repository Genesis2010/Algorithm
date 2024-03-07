import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    let sortA = A.sorted(by: <)
    let sortB = B.sorted(by: >)
    var sum = 0
    
    for i in 0..<sortA.count {
        sum += sortA[i] * sortB[i]
    }
    
    return sum
}