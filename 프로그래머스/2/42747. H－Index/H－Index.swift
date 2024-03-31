import Foundation

func solution(_ citations:[Int]) -> Int {
    
    for (index, h) in citations.sorted(by: >).enumerated() {
        if index >= h {
            return index
        }
    }
    
    return citations.count
}