import Foundation

func solution(_ dot:[Int]) -> Int {
    
    let xy = (dot[0], dot[1])
    
    if xy.0 > 0 && xy.1 > 0 {
        return 1
    } else if xy.0 > 0 && xy.1 < 0 {
        return 4
    } else if xy.0 < 0 && xy.1 > 0 {
        return 2
    } else {
        return 3
    }
}