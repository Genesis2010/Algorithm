let n = Int(readLine()!)!
var result : [Int] = []
for _ in 1...n {
    result.append(Int(readLine()!)!)
}

for i in result.sorted() {
    print(i)
}