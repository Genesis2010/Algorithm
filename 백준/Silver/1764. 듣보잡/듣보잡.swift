let nm = readLine()!.split(separator: " ").map{Int($0)!}
let n = nm[0], m = nm[1]

var notListen = Set<String>()
var result = [String]()

for _ in 0..<n {
    let input = readLine()!
    notListen.insert(input)
}

for _ in 0..<m {
    let input = readLine()!
    if notListen.contains(input) {
        result.append(input)
    }
}

result.sort()

print(result.count)
print(result.joined(separator: "\n"))