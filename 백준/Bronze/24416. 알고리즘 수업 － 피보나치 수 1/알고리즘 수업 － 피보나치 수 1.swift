let n = Int(readLine()!)!
var dp: [Int] = [0,1,1]

for i in 3...40 {
    dp.append(dp[i-1] + dp[i-2])
}

print(dp[n], n-2)