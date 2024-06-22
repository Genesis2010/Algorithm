let input = Int(readLine()!)!

for i in 1...input*input {
	if i % input == 0 {
		print(i)
	} else {
		print(i, terminator: " ")
	}
}
