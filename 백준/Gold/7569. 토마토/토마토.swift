let mnhInput = readLine()!.split(separator: " ").map{Int($0)!}
let m = mnhInput[0], n = mnhInput[1], h = mnhInput[2] // m 열, n 행, h 높이
var box = Array(repeating: Array(repeating: Array(repeating: -1, count: m),count: n),count: h)
var visited = Array(repeating: Array(repeating: Array(repeating: false, count: m),count: n),count: h)
var result = 0
var is0 = [Bool]()

let dx = [0, 0, -1, 1, 0, 0]
let dy = [0, 0, 0, 0, -1, 1]
let dz = [1, -1, 0, 0, 0, 0]

for z in 0..<h {
    for x in 0..<n {
        let input = readLine()!.split(separator: " ").map{Int($0)!}
        is0.append(input.contains(0))
        box[z][x] = input
    }
}

if is0.filter({ $0 == true }).count == 0 {
    print(0)
} else {
    var index = 0
    var resultDay = 0
    var queue = findIndices(target: 1, array: box)

    while index < queue.count {
        let (z, y, x, day) = queue[index]
        visited[z][y][x] = true
        resultDay = max(resultDay, day)
        
        for i in 0..<6 {
            let nx = x + dx[i], ny = y + dy[i], nz = z + dz[i]
            
            if nx >= 0 && nx < box[0][0].count && ny >= 0 && ny < box[0].count && nz < box.count && nz >= 0 {
                if box[nz][ny][nx] == 0 && !visited[nz][ny][nx] {
                    visited[nz][ny][nx] = true
                    box[nz][ny][nx] = 1
                    queue.append((nz, ny, nx, day + 1))
                }
            }
        }
        
        index += 1
    }
    
    if findIndices(target: 0, array: box).count > 0 {
        print(-1)
    } else {
        print(resultDay)
    }
}


func findIndices(target: Int, array: [[[Int]]]) -> [(Int, Int, Int, Int)] {
    var result: [(Int, Int, Int, Int)] = []
    
    for i in 0..<array.count {
        for j in 0..<array[i].count {
            for k in 0..<array[i][j].count {
                if array[i][j][k] == target {
                    result.append((i, j, k, 0))
                }
            }
        }
    }
    
    return result
}
