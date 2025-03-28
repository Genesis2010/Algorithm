let nm = readLine()!.split(separator: " ").map{Int($0)!}
let n = nm[0], m = nm[1]

var maxCount = 0
var graph = [[Int]](repeating: [], count: n+1)
var result = Array(repeating: 0, count: n+1)

for _ in 1...m {
    let ab = readLine()!.split(separator: " ").map{Int($0)!}
    graph[ab[1]].append(ab[0])
}

for i in 1...n {
    let count = bfs(start: i)
    
    if count > maxCount {
        maxCount  = count
        result = [i]
    } else if count == maxCount {
        result.append(i)
    }
}

print(result.sorted().map { String($0) }.joined(separator: " "))

func bfs(start: Int) -> Int {
    
    var index = 0
    var count = 1
    
    var visited = [Bool](repeating: false, count: n + 1)
    visited[start] = true
    var queue = [start]
    
    while index < queue.count {
        let nodeIndex = queue[index]

        for i in graph[nodeIndex] {
            if !visited[i] {
                visited[i] = true
                queue.append(i)
                count += 1
            }
        }
        
        index += 1
    }
    
    return count
}