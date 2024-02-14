let n = Int(readLine()!)!

var person : [(Int, Int)] = []

var result = [Int](repeating: 1, count: n)

for _ in 1...n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    let result : (Int, Int) = (input[0], input[1])

    person.append(result)
}

for i in 0..<n {
    for j in 0..<n {
        if !(i == j) && (person[i].0 < person[j].0 && person[i].1 < person[j].1) {
            result[i] += 1
        }
    }
}

for i in result {
    print("\(i) ", terminator: "")
}