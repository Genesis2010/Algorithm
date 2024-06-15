let input = Int(readLine()!)!
var result = 0
for _ in 1...input {
	let info = readLine()!.split(separator: " ").map{ String($0) }
	
	if info[0] == "in" {
		result += Int(info[1])!
	} else {
		result -= Int(info[1])!
	}
	
	if result < 0 {
		break
	}
}

print(result >= 0 ? "success" : "fail")