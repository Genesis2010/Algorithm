func solution(_ s:String) -> Bool {
    if s.count == 4 || s.count == 6 {
        return !s.map { $0.isLetter ? true : false }.contains(true)
    } else {
        return false
    }
}