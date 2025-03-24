let n = Int(readLine()!)!
var nMap = [[Int]](repeating: [], count: n)
var visited = Array(repeating: Array(repeating: false, count: n), count: n)
var result = [Int]()

let dx = [-1, 1, 0, 0]
let dy = [0, 0, 1, -1]

for i in 0..<n {
    nMap[i] = readLine()!.map { Int(String($0))! }
}

// 각 좌표를 검사하며 아직 방문되지 않은 집 (값이 1) 에 대해 DFS 수행
for i in 0..<n {
    for j in 0..<n {
        if nMap[i][j] == 1 && !visited[i][j] {
            let cnt = dfs(i, j)
            result.append(cnt)
        }
    }
}

result.sort()
print(result.count)

for cnt in result {
    print(cnt)
}

func dfs(_ x: Int, _ y: Int) -> Int {
    visited[x][y] = true
    var count = 1  // 현재 셀 포함
    
    // 4방향 탐색
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        
        if nx >= 0 && nx < n && ny >= 0 && ny < n, nMap[nx][ny] == 1 && !visited[nx][ny] {
            count += dfs(nx, ny)
        }
    }
    
    return count
}