let input = readLine()!.split(separator: " ").map { Int($0)! }

let count = [1, 1, 2, 2, 2, 8]

for i in 0..<input.count {
    let difference = count[i] - input[i]
    print(difference, terminator: " ")
}