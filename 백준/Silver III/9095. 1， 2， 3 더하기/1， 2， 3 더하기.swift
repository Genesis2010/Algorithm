let input = Int(readLine()!)!

func dp(n: Int) -> Int {
    if n == 1 { return 1 }
    if n == 2 { return 2 }
    if n == 3 { return 4 }
    else {
        return dp(n: n-3) + dp(n: n-2) + dp(n: n-1)
    }
}

for _ in 0..<input {
    print(dp(n: Int(readLine()!)!))
}