let nmInput = readLine()!.split(separator: " ").map{ Int($0)! }
let n = nmInput[0], m = nmInput[1]
var nmMap = Array(repeating: Array(repeating: 0, count: m), count: n)
var visited = Array(repeating: Array(repeating: 0, count: m), count: n)

for i in 0..<n {
    let rowInput = readLine()!.map{ Int(String($0))! }
    nmMap[i] = rowInput
}

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

func bfs() {
    var queue: [(Int, Int)] = [(0,0)]
    visited[0][0] = 1
    
    while !queue.isEmpty {
        
        let (x, y) = queue.removeFirst()
        
        for i in 0..<4 {
            let nx = dx[i] + x, ny = dy[i] + y
            
            if nx >= 0 && nx < n && ny >= 0 && ny < m {
                if visited[nx][ny] == 0 && nmMap[nx][ny] == 1 {
                    queue.append((nx, ny))
                    visited[nx][ny] = visited[x][y] + 1
                }
            }
        }
    }
}

bfs()

print(visited[n-1][m-1])