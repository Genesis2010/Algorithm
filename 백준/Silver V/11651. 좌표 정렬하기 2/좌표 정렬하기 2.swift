var n = Int(readLine()!)!

var result = [[Int]]()

for _ in 0..<n {
    result.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

result.sort(by: { a ,b -> Bool in
    return a[1] < b[1] || (a[1] == b[1] && a[0] < b[0])
    
})

result.forEach{ result in
    print("\(result[0]) \(result[1])")
}
