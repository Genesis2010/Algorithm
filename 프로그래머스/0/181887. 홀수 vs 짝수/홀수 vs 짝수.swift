import Foundation

func solution(_ num_list:[Int]) -> Int {
    
    var even = 0
    var odd = 0
    
    for i in 0..<num_list.count {
        if i % 2 == 0 {
            even += num_list[i]
        } else {
            odd += num_list[i]
        }
    }
    
    return even <= odd ? odd : even
}