let input = readLine()!.split(separator: " ").map{Int($0)!}
let (n, m) = (input[0], input[1])
var result = 0
var s = Set<String>()

for _ in 0..<n {
    s.insert(readLine()!)
}

for _ in 0..<m {
    if s.contains(readLine()!) { result += 1 }
}

print(result)
