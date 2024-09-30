var result = [Int]()

for _ in 0..<5 {
    result.append(Int(readLine()!)!)
}

print(result.reduce(0) { $0 + $1 } / result.count)
print(result.sorted(by: <)[2])