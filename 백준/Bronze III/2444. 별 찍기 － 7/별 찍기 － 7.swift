let n = Int(readLine()!)!
for i in 1...n {
    let text = String(repeating: " ", count: n - i) + String(repeating: "*", count: 2 * i - 1)
    print(text)
}

for i in 1..<n {
    let text = String(repeating: " ", count: i) + String(repeating: "*", count: 2 * (n - i) - 1)
    print(text)
}