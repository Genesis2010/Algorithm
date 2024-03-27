let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], s = input[1]
let array = readLine()!.split(separator: " ").map { Int($0)! }

var count = n+1
var start = 0
var end = 0
var sum = 0 

while end <= n {
    if sum >= s {
        count = min(count, end - start)
        sum -= array[start]
        start += 1
    } else if end < n {
        sum += array[end]
        end += 1
    } else {
        break
    }
}

print(count == n+1 ? 0 : count)