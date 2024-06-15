/*
키보드를 마지막으로 누른후 c 초 동안 남아있따가 c+1초 때 사라짐
키보드를 총 N번 누름
각 글자를 입력할때마다 화며에 남아있는 글자의 개수
*/

let info = readLine()!.split(separator: " ").map{ Int($0)! }
let input = readLine()!.split(separator: " ").map{ Int($0)! }

let (n, c) = (info[0], info[1]+1)

var keyboardInput = 0
var time = 0
for i in input {
	if !(i - time < c) {
		keyboardInput = 0
	}
	keyboardInput += 1
	time = i
}

print(keyboardInput)