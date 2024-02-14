var n = Int(readLine()!)!

var result : [[String]] = []

for i in 0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    
    result.append([input[0], input[1], "\(i+1)"])
}

result = result.sorted { first, second in
    let firstAge = Int(first[0])!
    let secondAge = Int(second[0])!
    
    if firstAge == secondAge {
        return Int(first[2])! < Int(second[2])!
    } else {
        return firstAge < secondAge
    }
}

result.forEach { result in
    print("\(result[0]) \(result[1])")
}