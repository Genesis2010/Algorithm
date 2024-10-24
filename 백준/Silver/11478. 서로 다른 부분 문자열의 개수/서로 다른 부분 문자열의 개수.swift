let input = readLine()!.map{String($0)}
var strSet = Set<String>()

for i in 0..<input.count {
    var temp = ""
    for j in i..<input.count {
        temp = temp + input[j]
        strSet.insert(temp)
    }
}

print(strSet.count)