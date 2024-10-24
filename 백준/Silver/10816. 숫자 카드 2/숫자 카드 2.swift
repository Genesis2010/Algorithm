let n = Int(readLine()!)!
var dict = [Int: Int]()

let input = readLine()!.split(separator: " ").map{Int($0)!}

for i in input {
    dict[i, default: 0] += 1
}

let m = Int(readLine()!)!
let input2 = readLine()!.split(separator: " ").map{Int($0)!}

for i in input2 {
    print(dict[i] ?? 0, terminator: " ")
}