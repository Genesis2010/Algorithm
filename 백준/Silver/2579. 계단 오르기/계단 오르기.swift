let input = Int(readLine()!)!

var scores = [0]
var dp = Array(repeating: 0, count: 301)

for _ in 1...input {
    scores.append(Int(readLine()!)!)
}

if input == 1 {
    print(scores[1])
} else if input == 2 {
    print(scores[1] + scores[2])
} else if input == 3 {
    print(max(scores[1] + scores[3], scores[2] + scores[3]))
} else {
    dp[1] = scores[1]
    dp[2] = scores[1] + scores[2]
    dp[3] = max(scores[1] + scores[3], scores[2] + scores[3])
    for i in 4...input {
        dp[i] = max(scores[i] + scores[i-1] + dp[i-3], scores[i] + dp[i-2])
    }
    print(dp[input])
}