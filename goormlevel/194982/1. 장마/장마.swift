/*
N개의 집 순서대로 
땅 높이는 제각각 -> i번째 땅 높이 ki (해수면 보다 낮을 수도 있음 음수)
장마는 M 일 동안 
장마 시작 된지 i 일 되는날 Si 부터 ei 위치까지 비가 온다 -> 높이 1만큼 증가 
배수 시스템은 장마가 시작된지 3의 배수되는 날마다 작동
작동 날짜를 기준을 ㅗ2이 이내에 비가 내린 위치에서만 작동
*/

let input = readLine()!.split(separator: " ").map{Int($0)!}
var rainSystem: Set<Int> = []
let n = input[0]
let m = input[1]

var groundLevel = readLine()!.split(separator: " ").map{Int($0)!}

for day in 1...m {
	let rain = readLine()!.split(separator: " ").map{Int($0)!}
	
	for i in rain[0]-1...rain[1]-1 {
		groundLevel[i] += 1
		rainSystem.insert(i)
	}
	
	if day % 3 == 0 {
		for i in rainSystem {
			groundLevel[i] -= 1
		}
		rainSystem.removeAll()
	}
}

print(groundLevel.map{String($0)}.joined(separator: " "))