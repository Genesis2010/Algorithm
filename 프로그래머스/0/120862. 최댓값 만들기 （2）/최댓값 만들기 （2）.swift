import Foundation

func solution(_ numbers:[Int]) -> Int {
    var sortedNumbers = numbers.sorted()
    
    let num1 = sortedNumbers[0] * sortedNumbers[1]
    let num2 = sortedNumbers[numbers.count - 2] * sortedNumbers[numbers.count - 1]
    
    return max(num1, num2)
}