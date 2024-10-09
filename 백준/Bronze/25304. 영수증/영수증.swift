let x = Int(readLine()!)!
let n = Int(readLine()!)!

var sumPrice = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    sumPrice += input[0] * input[1]
}

print(sumPrice == x ? "Yes" : "No")