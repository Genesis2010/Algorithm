let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    var arr = [String]()
    
    for i in input {
        var temp = ""
        for j in i.reversed() {
            temp += String(j)
        }
        
        arr.append(temp)
    }
    
    let result = arr.joined(separator: " ")
    print(result)
}