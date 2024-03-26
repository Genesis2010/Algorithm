import Foundation

func solution(_ s:String) -> Int {
    
    var stack = [String]()
    var str = s.map{String($0)}
    
    for i in 0..<s.count {
        if !stack.isEmpty {
            if stack.last! == str[i] {
                stack.popLast()!
            } else {
                stack.append(str[i])
            }
        } else {
            stack.append(str[i])
        }
    }
    return stack.isEmpty ? 1 : 0
}  