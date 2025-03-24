let computerNum = Int(readLine()!)!
let linkComputerNum = Int(readLine()!)!

var graph = [[Int]](repeating: [], count: computerNum + 1)
var visited = [Bool](repeating: false, count: computerNum + 1)

for _ in 0..<linkComputerNum {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    
    graph[input[0]].append(input[1])
    graph[input[1]].append(input[0])
}

print(dfs(1) - 1)

func dfs(_ start: Int) -> Int {
    var count = 1
    visited[start] = true
    
    for i in graph[start] {
        if visited[i] == false {
            count += dfs(i)
        }
    }
    
    return count
}