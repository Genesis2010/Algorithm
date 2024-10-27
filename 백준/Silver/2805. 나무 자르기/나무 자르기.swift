let nm = readLine()!.split(separator: " ").map{ Int($0)! }
let (n, m) = (nm[0], nm[1])
var trees = readLine()!.split(separator: " ").map{ Int($0)! }
var start = 1
var end = trees.max()!

while start <= end {
    let mid = (start + end) / 2
    var wood = 0
    
    for tree in trees {
        if tree >= mid {
            wood += tree - mid
        }
    }
    
    if wood >= m {
       start = mid + 1
    } else {
       end = mid - 1
    }
}

print(start - 1)