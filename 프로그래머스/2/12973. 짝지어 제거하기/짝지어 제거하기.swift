import Foundation

func solution(_ s:String) -> Int {
    
    var stack = [String]()
    var str = s.map{String($0)}
    
    for i in 0..<s.count {
        if !stack.isEmpty {
            let letter = stack.popLast()!
            
            if letter == str[i] {
                continue
            } else {
                stack.append(letter)
                stack.append(str[i])
            }
        } else {
            stack.append(str[i])
        }
    }
    
    if stack.isEmpty {
        return 1
    } else {
        return 0
    }
}