let nc = readLine()!.split(separator: " ").map { Int($0)! }
let (n, c) = (nc[0], nc[1])

var input = [Int]()

for _ in 0..<n {
    input.append(Int(readLine()!)!)
}

input.sort()

var start = 1
var end = input[input.count - 1] - input[0]
var answer = 0

while start <= end {
    var start_home = input[0]
    var count = 1
    var mid = (end + start) / 2
    
    for i in 0..<n {
        if (input[i] - start_home) >= mid {
            start_home = input[i]
            count += 1
        }
    }
    
    if count >= c {
        start = mid + 1
        answer = mid
    } else {
        end = mid - 1
    }
}

print(answer)