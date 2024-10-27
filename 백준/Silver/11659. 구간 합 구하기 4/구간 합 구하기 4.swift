let nm = readLine()!.split(separator: " ").map{ Int($0)! }
let numArray = readLine()!.split(separator: " ").map{ Int($0)! }
var dp = [Int](repeating: 0, count: numArray.count)
var result = ""
for i in 0..<numArray.count {
    if i == 0 {
        dp[i] = numArray[i]
    } else {
        dp[i] = dp[i-1] + numArray[i]
    }
}

for _ in 0..<nm[1] {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    if input[0] == 1 {
        result += "\(dp[input[1] - 1])\n"
    } else if input[0] == input[1] {
        result += "\(numArray[input[1]  - 1])\n"
    } else {
        result += "\(dp[input[1] - 1] - dp[input[0] - 2])\n"
    }
}

print(result)