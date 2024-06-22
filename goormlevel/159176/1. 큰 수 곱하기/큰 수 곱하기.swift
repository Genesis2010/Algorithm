let input = readLine()!.split(separator: " ").map{ String($0) }
var result = input[0]

for _ in 1..<input.count {
	result += "00"
}

print(result)
