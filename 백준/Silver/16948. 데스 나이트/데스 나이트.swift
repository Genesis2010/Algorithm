let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{Int($0)!}

let s_x = input[0]
let s_y = input[1]
let e_x = input[2]
let e_y = input[3]

var queue = [(Int, Int)]()
var visited = Array(repeating: Array(repeating: 0, count: n)
, count: n)

let dx = [-2, -2, 0, 0, 2, 2]
let dy = [-1, 1, -2, 2, -1, 1]

func bfs(input_x: Int, input_y: Int) -> Int{
    queue.append((input[0], input[1]))
    
    visited[input_x][input_y] = 0
    
    while !queue.isEmpty {
        let (x, y) = queue.removeFirst()
        
        if x == e_x && y == e_y {
            return visited[x][y]
        }
        
        for i in 0..<dx.count {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx >= 0 && nx < n && ny >= 0 && ny < n {
                if visited[nx][ny] == 0 {
                    queue.append((nx, ny))
                    visited[nx][ny] = visited[x][y] + 1
                }
            }
        }
    }
    
    return -1
}

print(bfs(input_x: s_x, input_y: s_y))