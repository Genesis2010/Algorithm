let input = readLine()!.split(separator: " ").map{Int($0)!}
var location: (Int,Int) = (0,0)
for i in 1...input[0] {
	location.0 = i
	
	if i % 2 != 0 {
		for _ in 1...input[1] {
			print("#", terminator: "")
		}
	} else if i % 4 == 0 {
		print("#", terminator: "")
		for _ in 2...input[1] {
			print(".", terminator: "")
		}
	} else {
		for _ in 2...input[1] {
			print(".", terminator: "")
		}
		print("#", terminator: "")
	}
	
	print()
}