
let ns = readLine()!.split(separator: " ").map{Int($0)!}
let array = readLine()!.split(separator: " ").map{Int($0)!}
let (n,s) = (ns[0], ns[1])
var start = 0
var end = 0
var sum = 0
var count = 0
var result = [Int]()

while end <= n {
    if sum < s {
        if end < n { 
            sum += array[end]
            count += 1
        }
        end += 1
        
    } else {
        sum -= array[start]
        start += 1
        count -= 1
    }
    
    if sum >= s {
        result.append(count)
    }
}
print(result.isEmpty ? 0 : result.min()!)