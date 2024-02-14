let input = Int(readLine()!)!
var result = Set<String>()
var count = [Int](repeating: 0, count: input)

for _ in 1...input {
    let words = String(readLine()!)
    
    result.insert(words)
}

let sorted = result.sorted{ $0.count == $1.count ? $0 < $1 : $0.count < $1.count }

for i in 0..<sorted.count {
    print(sorted[i])
}