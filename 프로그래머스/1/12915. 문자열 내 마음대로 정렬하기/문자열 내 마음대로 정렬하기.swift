func solution(_ strings:[String], _ n:Int) -> [String] {
    
    var nStrings = [(String, Int)]()
    var result = [String]()
    
    for (i, str) in strings.enumerated() {
        let strArray = Array(str)
        let stringsTuple = (String(strArray[n]), i)
        nStrings.append(stringsTuple)
    }
    
    let sortNStrings = nStrings.sorted { (first, second) in
                                            if first.0 == second.0 {
                                                return strings[first.1] < strings[second.1]
                                            } else {
                                                return first.0 < second.0
                                            }
                                        }
    
    for i in sortNStrings {
        result.append(strings[i.1])
    }
    
    return result
}