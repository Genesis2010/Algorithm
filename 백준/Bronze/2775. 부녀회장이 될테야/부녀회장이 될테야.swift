var dp = Array(repeating: Array(repeating: 0, count: 15), count:15)

for i in 0..<15 {
    dp[0][i] = i
    dp[i][1] = 1
}

for i in 1..<15 {
    for j in 2..<15{
        dp[i][j] = dp[i][j-1] + dp[i-1][j]
    }
}

let T = Int(readLine()!)!
for _ in 1...T {
    let k = Int(readLine()!)!
    let n = Int(readLine()!)!
    
    print(dp[k][n])    
}