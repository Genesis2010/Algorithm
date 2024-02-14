let n = Int(readLine()!)!

var num_array = readLine()!.split(separator: " ").map{ Int($0)! }

var stack: [Int] = []

var count = 1 

while !num_array.isEmpty {
	let num = num_array.removeFirst()

	if count == num {
		count += 1 

		while !stack.isEmpty && count == stack.last! {
			stack.removeLast()
			count += 1 
		}
	} else {
		stack.append(num)
	}
}

print(stack.isEmpty ? "Nice" : "Sad")