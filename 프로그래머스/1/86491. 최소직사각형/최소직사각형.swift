import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var w = [Int]()
    var h = [Int]()
    
    for i in 0..<sizes.count {
        w.append(max(sizes[i][0], sizes[i][1]))
        h.append(min(sizes[i][0], sizes[i][1]))
    }
    
    return w.max()! * h.max()!
}