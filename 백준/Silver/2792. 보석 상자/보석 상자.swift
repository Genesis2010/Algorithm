let nm = readLine()!.split(separator: " ").map{Int($0)!}
let (n, m) = (nm[0], nm[1])
var colors = [Int]()
var result = [Int]()
for _ in 0..<m {
    colors.append(Int(readLine()!)!)
}

var start = 1
var end = colors.max()!

while start <= end {
    let mid = (start + end) / 2
    var people = 0
    
    for color in colors {
        if color % mid == 0 {
            people += color / mid
        } else {
            people += (color/mid) + 1
        }
    }
    
    if people > n {
        start = mid + 1
    } else {
        end = mid - 1
    }
}

print(start)