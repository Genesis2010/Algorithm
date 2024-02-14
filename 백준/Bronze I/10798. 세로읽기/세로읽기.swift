var inputArray = Array(repeating: Array(repeating: "", count: 15), count: 5)

for i in 0..<5 {
    var word = readLine()!.map { String($0) }
    var lastIndexOfWord = word.count
    inputArray[i].replaceSubrange(0..<lastIndexOfWord, with: word)
}

for i in 0..<15 {
    for j in 0..<5 {
        print(inputArray[j][i], terminator: "")
    }
}