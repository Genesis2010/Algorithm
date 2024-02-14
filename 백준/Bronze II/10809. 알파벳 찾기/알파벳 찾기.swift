let input = readLine()!.map{ $0 }

for i in 97...122 {
    let word = Character(Unicode.Scalar(i)!)

    print("\(input.firstIndex(of: word) ?? -1) ", terminator: "")

}