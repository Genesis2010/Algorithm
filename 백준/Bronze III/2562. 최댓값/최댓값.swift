var num : [Int] = []

for _ in 1...9 {
    let input = Int(readLine()!)!
    num.append(input)
}

print(num.max()!)
print(num.index(of: num.max()!)! + 1)