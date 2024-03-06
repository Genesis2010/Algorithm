import Foundation

func solution(_ s:String) -> Bool {
   
    let lowS = s.lowercased()
    let pCount = lowS.filter { $0 == "p"}.count
    let yCount = lowS.filter { $0 == "y"}.count

    return pCount != yCount ? false : true
}