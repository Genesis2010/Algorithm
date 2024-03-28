import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var size = sizes
    let count = size.count
    var x: [Int] = []
    var y: [Int] = []
    var xMax = 0
    var yMax = 0

    for i in 0..<count {
        size[i].sort()
        x.append(size[i][0])
        y.append(size[i][1])
    }
    
    xMax = x.max()!
    yMax = y.max()!

    return x.max()! * y.max()!
}