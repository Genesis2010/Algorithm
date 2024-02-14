var input = readLine()!.split(separator: " ").map{Int(String($0))!}

for i in input.sorted() {
    print("\(i) ", terminator: "")
}