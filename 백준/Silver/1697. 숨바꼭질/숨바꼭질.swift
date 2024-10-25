let nk = readLine()!.split(separator: " ").map{Int($0)!}
let (n, k) = (nk[0], nk[1])
var visited = [Bool](repeating: false, count: 100001)

func bfs(_ start: Int) {
    var index = 0
    var queue = [(start, 0)]
    visited[start] = true
    
    while queue.count > index {
        let (location, second) = queue[index]
        
        if location == k {
            print(second)
            break
        }
        
        for nx in [location + 1, location - 1, location * 2] {
            if nx >= 0 && nx <= 100000 && !visited[nx] {
                queue.append((nx, second + 1))
                visited[nx] = true
            }
        }
        
        index += 1
    }
}

bfs(n)