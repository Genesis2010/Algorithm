import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    
    var sum = 0

    for (index, value) in absolutes.enumerated() {
        if signs[index] {
            sum += value
        } else {
            sum -= value
        }
    }
    
    return sum
}