var input = readLine()!.split(separator: " ").map{ Int(String($0))! }

for i in 0..<input.count {
    input[i] = input[i] * input[i]
}

print(input.reduce(0,+) % 10)