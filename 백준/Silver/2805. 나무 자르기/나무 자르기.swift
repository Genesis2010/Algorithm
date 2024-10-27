let nm = readLine()!.split(separator: " ").map{ Int($0)! }
let (n, m) = (nm[0], nm[1])
var tree = readLine()!.split(separator: " ").map{ Int($0)! }
var start = 1
var end = tree.max()!

while start <= end {
    var mid = (start + end) / 2
    
    let temp = tree.map { max(0, $0 - mid) }.reduce(0, +)
    
    if temp >= m {
       start = mid + 1
    } else {
       end = mid - 1
    }
}

print(start - 1)