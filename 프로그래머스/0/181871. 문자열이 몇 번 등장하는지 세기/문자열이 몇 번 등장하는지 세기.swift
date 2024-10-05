import Foundation

func solution(_ myString: String, _ pat: String) -> Int {
    var result = 0
    var string = myString
    
    while !string.isEmpty {
        if string.hasPrefix(pat) {
            result += 1
        }
        string = String(string.dropFirst())
    }
    
    return result
}
