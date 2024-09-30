let input = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (input[0], input[1])

var basket = Array(repeating: 0, count: n)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let (start, end, value) = (input[0] - 1, input[1] - 1, input[2])
    
    for i in start...end {
        basket[i] = value
    }
}

basket.forEach {
    print($0, terminator: " ")
}