let nm = readLine()!.split(separator: " ").map{Int($0)!}
let n = nm[0], m = nm[1]
var arr = [Int]()
var minNum = Int.max

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

arr.sort()

var left = 0
var right = 0

while left < n && right < n {
    let minus = arr[right] - arr[left]
    
    
    
    if minus >= m {
        minNum = min(minus, minNum)
        
        left += 1
    } else {
        right += 1
    }
}

print(minNum)