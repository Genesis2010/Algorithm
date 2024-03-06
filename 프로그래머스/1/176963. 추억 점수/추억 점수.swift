import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    
    var sum = 0
    var result = [Int]()

    photo.forEach {
        for i in $0 {
            
            let index = name.firstIndex(of: i)
            
            sum += index == nil ? 0 : yearning[index!]
        }
        
        result.append(sum)
        sum = 0
    }
    
    return result
}