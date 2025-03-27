let nm = readLine()!.split(separator: " ").map{Int($0)!}
let n = nm[0], m = nm[1]

var map = [[Int]](repeating: [], count: n)

var emptyPositions = [(Int, Int)]()
var virusPositions = [(Int, Int)]()

var maxSafeArea = 0

for i in 0..<n {
    map[i] = readLine()!.split(separator: " ").map{ Int($0)! }
}

for i in 0..<n {
    for j in 0..<m {
        if map[i][j] == 0 {
            emptyPositions.append((i, j))
        } else if map[i][j] == 2 {
            virusPositions.append((i, j))
        }
    }
}

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1 ,1]


for i in 0..<emptyPositions.count {
    for j in i+1..<emptyPositions.count {
        for k in j+1..<emptyPositions.count {
            var tempMap = map
            
            let position1 = emptyPositions[i]
            let position2 = emptyPositions[j]
            let position3 = emptyPositions[k]
            
            tempMap[position1.0][position1.1] = 1
            tempMap[position2.0][position2.1] = 1
            tempMap[position3.0][position3.1] = 1
            
            bfs(&tempMap)
            
            maxSafeArea = max(search(tempMap), maxSafeArea)
        }
    }
}

print(maxSafeArea)

func bfs(_ tempMap: inout [[Int]]) {
    var index = 0
    var queue = virusPositions
    
    while index < queue.count {
        let (x, y) = queue[index]
        
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx >= 0, nx < n, ny >= 0, ny < m, tempMap[nx][ny] == 0 {
                tempMap[nx][ny] = 2
                queue.append((nx, ny))
            }
        }
        
        index += 1
    }
}

func search(_ tempMap: [[Int]]) -> Int {
    var count = 0
    
    for i in 0..<tempMap.count {
        for j in 0..<tempMap[i].count {
            if tempMap[i][j] == 0 {
                count += 1
            }
        }
    }
    
    return count
}