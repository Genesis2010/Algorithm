let input = Int(readLine()!)!
let vowel = ["a","e","i","o","u"]
let bigVowel = ["A","E","I","O","U"]
var result = ""
for _ in 1...input {
	let str = readLine()!.map{String($0)}
	
	for i in str {
		if vowel.contains(i) {
			result += i
		} else if bigVowel.contains(i) {
			result += i
		}
	}
	
	print(result.count > 0 ? result : "???")
	result = ""
}