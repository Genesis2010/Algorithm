let input = Int(readLine()!)!

var start = 0
var end = input - 1

var result = 0

let a = readLine()!.split(separator: " ").map{ Int($0)! }.sorted()
let x = Int(readLine()!)!

while start < end {
    let sum = a[start] + a[end]
    
    if sum == x {
        end -= 1
        start += 1
        result += 1
    } else if sum > x {
        end -= 1
    } else {
        start += 1
    }
}
print(result)