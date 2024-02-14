let n = Int(readLine()!)!
var cache: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)
var triangle: [[Int]] = []

for _ in 0..<n {
    triangle.append(readLine()!.split(separator: " ").map{ Int($0)! })
}

cache[0][0] = triangle[0][0]

for i in 1..<n {
    for j in 0..<i+1 {
        if i == j {
            cache[i][j] = cache[i-1][j-1] + triangle[i][j]
        } else if j == 0 {
            cache[i][j] = cache[i-1][j] + triangle[i][j]
        } else {
            cache[i][j] = max(cache[i-1][j-1], cache[i-1][j]) + triangle[i][j]
        }
    }
}

print(cache[n-1].max()!)