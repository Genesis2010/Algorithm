let input = Int(readLine()!)!
let nArray = readLine()!.split(separator: " ").map{Int($0)!}.sorted()

var location = (0, 0)
var closeSum = Int.max

var start = 0
var end = input-1

while start < end {
    let sum = nArray[start] + nArray[end]
        
    if sum == 0 {
       print(nArray[start], nArray[end])
       break
    } else if abs(sum) < closeSum {
       closeSum = abs(sum)
       location = (start, end)
    }
        
    if sum < 0 {
        start += 1
    } else if sum > 0 {
        end -= 1
    }
}
print(nArray[location.0], nArray[location.1])