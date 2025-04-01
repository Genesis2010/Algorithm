let n = Int(readLine()!)!
let m = Int(readLine()!)!

var busData = [[(cityNum: Int, value: Int)]](repeating: [], count: n+1)
var dist = Array(repeating: Int.max, count: n+1)
var result = [Int]()
var queue = [Int]()

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    busData[input[0]].append((cityNum: input[1], value: input[2]))
}

for i in 1..<n+1 {
    busData[i].sort(by: {$0.value < $1.value })
}

let input = readLine()!.split(separator: " ").map{Int($0)!}
queue.append(input[0])
dist[input[0]] = 0

bfs(start: input[0], end: input[1])

func bfs(start: Int, end: Int) {
    var index = 0
    
    while index < queue.count {
        let next_node = queue[index]
        let sum_cost = dist[next_node]
        
        for data in busData[next_node] {
            let node = data.cityNum
            let cost = data.value
            
            if dist[node] > cost + sum_cost {
                dist[node] = cost + sum_cost
                queue.append(node)
            }
        }
        
        index += 1
    }
}

print(dist[input[1]])