let count = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map{Int($0)!}
let maxNum = Int(readLine()!)!

var start = 0
var end = array.max()!
var result = 0

while start <= end {
    let mid = (start + end) / 2
    var sum = 0
    
    for i in 0..<array.count {
        if array[i] <= mid {
            sum += array[i]
        } else {
            sum += mid
        }
    }
    
    if sum <= maxNum {
        result = mid
        start = mid + 1
    } else {
        end = mid - 1
    }
}

print(result)