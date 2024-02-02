import Foundation

func solution(_ array:[Int]) -> Int {
    
    let sortedArray = array.sorted(by: <)
    
    return sortedArray[Int(sortedArray.count / 2)]
}