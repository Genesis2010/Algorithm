while true {
    let whInput = readLine()!.split(separator: " ").map{Int($0)!}
    let w = whInput[0], h = whInput[1]
    var hwMap = [[Int]](repeating: Array(repeating: 0, count: w), count: h)
    var visited = Array(repeating: Array(repeating: false, count: w), count: h)
    
    var result = 0
    let directions = [(-1, -1), (-1, 0), (-1, 1),
                      ( 0, -1),           ( 0, 1),
                      ( 1, -1), ( 1, 0),  ( 1, 1)]
    
    if w == 0 && h == 0 {
        break
    }
    
    for row in 0..<h {
        let whInput = readLine()!.split(separator: " ").map{Int($0)!}
        hwMap[row] = whInput
    }
    
    printIsland()
    
    func dfs(_ x: Int, _ y: Int) {
        for (dx, dy) in directions {
            let nx = dx + x, ny = dy + y
            
            if nx >= 0 && nx < h && ny >= 0 && ny < w {
                if visited[nx][ny] == false && hwMap[nx][ny] == 1 {
                    visited[nx][ny] = true
                    dfs(nx, ny)
                }
            }
        }
    }


    func printIsland() {
        for i in 0..<h {
            for j in 0..<w {
                if hwMap[i][j] == 1 && visited[i][j] == false {
                    dfs(i, j)
                    result += 1
                }
            }
        }
        
        print(result)
    }
}