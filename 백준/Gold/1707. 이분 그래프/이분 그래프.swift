var k = Int(readLine()!)!
var result = [Bool]()

while k > 0 {
      
    let veInput = readLine()!.split(separator: " ").map{Int($0)!}
    let v = veInput[0], e = veInput[1]
    
    var graph = [[Int]](repeating: [], count: v+1)
    var visited = Array(repeating: -1, count: v+1)
    
    for _ in 0..<e {
        let edge = readLine()!.split(separator: " ").map { Int($0)! }
        let u = edge[0], w = edge[1]
        graph[u].append(w)
        graph[w].append(u)
    }
    
    var isBipartite = true
    
    for i in 1...v {
        if visited[i] == -1 {
            if !bfs(graph: graph, visited: &visited, start: i) {
                isBipartite = false
                break
            }
        }
    }
    
    result.append(isBipartite)
    
    k -= 1
}

for i in result {
    print(i == false ? "NO": "YES")
}

func bfs(graph: [[Int]], visited: inout [Int], start: Int) -> Bool {
    
    var index = 0
    var queue = [start]
    
    while index < queue.count {
        let current = queue[index]
        index += 1

        for i in graph[current] {
            if visited[i] == -1 {
                visited[i] = 1 - visited[current]
                queue.append(i)
            } else if visited[i] == visited[current] {
                return false
            }
        }
    }
    
    return true
}
