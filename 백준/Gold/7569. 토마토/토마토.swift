import Foundation

let mnhInput = readLine()!.split(separator: " ").map{Int($0)!}
let m = mnhInput[0], n = mnhInput[1], h = mnhInput[2] // m 열, n 행, h 높이
var box = Array(repeating: Array(repeating: Array(repeating: -1, count: m),count: n),count: h)
var queue = [(Int, Int, Int)]()

let dx = [0, 0, -1, 1, 0, 0]
let dy = [0, 0, 0, 0, -1, 1]
let dz = [1, -1, 0, 0, 0, 0]

for z in 0..<h {
    for x in 0..<n {
        box[z][x] = readLine()!.split(separator: " ").map{Int($0)!}
        
        for y in 0..<m {
            if box[z][x][y] == 1 {
                queue.append((z,x,y))
            }
        }
    }
}

var index = 0

while index < queue.count {
    let (z, y, x) = queue[index]
    
    for i in 0..<6 {
        let nx = x + dx[i], ny = y + dy[i], nz = z + dz[i]
        
        if nx >= 0 && nx < m && ny >= 0 && ny < n && nz < h && nz >= 0 {
            if box[nz][ny][nx] == 0 {
                box[nz][ny][nx] = box[z][y][x] + 1
                queue.append((nz, ny, nx))
            }
        }
    }
    
    index += 1
}

var maxDay = 0

for z in 0..<h {
    for y in 0..<n {
        for x in 0..<m {
            if box[z][y][x] == 0 {
                print(-1)
                exit(0)
            }
            
            maxDay = max(maxDay, box[z][y][x])
        }
    }
}

print(maxDay - 1)