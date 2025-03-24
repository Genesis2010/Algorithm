let testCount = Int(readLine()!)!
var result = [Int]()
var iMap = [[Int]](repeating: [], count: 300)
var visited = [[Bool]](repeating: [false], count: 300)

// 10, 11, 8, 7, 1, 2, 4, 5시 방향
let dx = [-2, -1, -2, -1, 1, 2, 1, 2]
let dy = [1, 2, -1, -2, 2, 1, -2, -1]

for _ in 0..<testCount {
    
    let i = Int(readLine()!)!
    iMap = [[Int]](repeating: [], count: i)
    visited = Array(repeating: Array(repeating: false, count: i), count: i)
    
    let location = readLine()!.split(separator: " ").map{ Int($0)! }
    let moveLocation = readLine()!.split(separator: " ").map{ Int($0)! }
    
    if location[0] == moveLocation[0] && location[1] == moveLocation[1] {
        result.append(0)
        continue
    }
    
    result.append(bfs(location, moveLocation))
}

result.forEach{ print($0) }

func bfs(_ location: [Int], _ moveLocation: [Int]) -> Int {
    var index = 0
    var queue = [(location[0], location[1], 0)]
    visited[location[0]][location[1]] = true
    
    while index < queue.count {
        let x = queue[index].0
        let y = queue[index].1
        let count = queue[index].2
        
        if moveLocation[0] == x && moveLocation[1] == y {
            return count
        }
        
        for i in 0..<dx.count {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx >= 0 && nx < visited.count && ny >= 0 && ny < visited.count, !visited[nx][ny] {
                visited[nx][ny] = true
                queue.append((nx, ny, count + 1))
            }
        }
        
        index += 1
    }
    
    return -1
}