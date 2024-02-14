let n = Int(readLine()!)!

for _ in 0..<n {
    let input = String(readLine()!)
    
    var count = 0
    var result = 0
    
    for i in input {
        if i == "O" {
            count += 1
            result += count
        } else {
            count = 0
        }
    }
    print(result)
}