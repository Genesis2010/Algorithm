let n = Int(readLine()!)!
var map = [[String]](repeating: [], count: n)
var visited = Array(repeating: Array(repeating: false, count: n), count: n)
var result = [Int]()
var count = 0

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

for i in 0..<n {
    map[i] = readLine()!.map{String($0)}
}

// 적록색약이 아닌 경우
for i in 0..<n {
    for j in 0..<n {
        if visited[i][j] == false {
            dfs(x: i, y: j, target: map[i][j])
            count += 1
        }
    }
}

result.append(count)
count = 0

for i in 0..<n {
    for j in 0..<n {
        if map[i][j] == "G" {
            map[i][j] = "R"
        }
    }
}

visited = Array(repeating: Array(repeating: false, count: n), count: n)

for i in 0..<n {
    for j in 0..<n {
        if visited[i][j] == false {
            dfs(x: i, y: j, target: map[i][j])
            count += 1
        }
    }
}

result.append(count)
count = 0

print(result[0], result[1])

func dfs(x: Int, y: Int, target: String) {
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        
        if nx >= 0, nx < n, ny >= 0, ny < n, !visited[nx][ny], map[nx][ny] == target {
            visited[nx][ny] = true
            dfs(x: nx, y: ny, target: target)
        }
    }
}