func solution(_ s:String) -> String {
    
    var letter = Array(s)
    var first = true
    var result: String = ""
    
    for i in letter {
        result += first ? i.uppercased() : i.lowercased()
        first = i == " "
    }
    
    return result
}