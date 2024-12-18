import Foundation

func solution(_ numbers: [Int], _ target: Int) -> Int {
    return dfs(numbers, target, 0, 0)
}

func dfs(_ numbers: [Int], _ target: Int, _ index: Int, _ sum: Int) -> Int {
    if index == numbers.count {
        return sum == target ? 1 : 0
    }
    
    let add = dfs(numbers, target, index + 1, sum + numbers[index])
    let subtract = dfs(numbers, target, index + 1, sum - numbers[index])
    
    return add + subtract
}