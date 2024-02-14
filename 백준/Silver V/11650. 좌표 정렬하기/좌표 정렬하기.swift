let input = Int(readLine()!)!
var arr : [(Int, Int)] = []

for _ in 0..<input {
    let xY = readLine()!.split(separator: " ").map{ Int(String($0))!}
    
    arr.append((xY[0], xY[1]))
}

arr.sort(by: {
    $0.0 == $1.0 ? $0.1 < $1.1 : $0.0 < $1.0
})

for index in 0..<input {
    print("\(arr[index].0) \(arr[index].1)")
}