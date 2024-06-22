let input = Int(readLine()!)!
var dCount = 0
var pCount = 0

for _ in 1...input {
	let n = readLine()!
	
	if n == "D" {
		dCount += 1
	} else {
		pCount += 1
	}
	
	if abs(dCount - pCount) >= 2 {
		break
	}
}

print("\(dCount):\(pCount)")