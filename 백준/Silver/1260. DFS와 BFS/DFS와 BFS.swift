let input = readLine()!.split(separator: " ").map{Int($0)!}
var graph = [Int: [Int]]()
var visited = Array(repeating: false, count: input[0]+1)
var bfsResult = [Int]()
var dfsResult = [Int]()

for _ in 0..<input[1] {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    graph[input[0], default: []].append(input[1])
    graph[input[1], default: []].append(input[0])
}

for key in graph.keys {
    graph[key]?.sort()
}

func bfs(_ start: Int) {
    var queue = [Int]()
    
    queue.append(start)
    visited[start] = true
    bfsResult.append(start)
    
    while !queue.isEmpty {
        let index = queue.removeFirst()
        
        if let next_index = graph[index] {
            for i in next_index {
                if visited[i] == false {
                    queue.append(i)
                    visited[i] = true
                    bfsResult.append(i)
                }
            }
        }
    }
}

func dfs(_ start: Int) {
    visited[start] = true
    dfsResult.append(start)
    
    if let next_index = graph[start] {
        for i in next_index {
            if !visited[i]  {
                dfs(i)
            }
        }
    }
}

dfs(input[2])
print(dfsResult.map{ String($0)}.joined(separator: " "))

visited = [Bool](repeating: false, count: input[0]+1)

bfs(input[2])
print(bfsResult.map{ String($0)}.joined(separator: " "))