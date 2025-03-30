let nk = readLine()!.split(separator: " ").map{Int($0)!}
let n = nk[0], k = nk[1]
var items = [(weight: Int, value: Int)]()

for _ in 0..<n {
    let line = readLine()!.split(separator: " ").map { Int($0)! }
    items.append((line[0], line[1]))
}

var dp = [Int](repeating: 0, count: k + 1)

for item in items {
    let (weight, value) = item
    if weight > k { continue }
    
    for w in stride(from: k, through: weight, by: -1) {
        dp[w] = max(dp[w], dp[w - weight] + value)
    }
}

print(dp[k])