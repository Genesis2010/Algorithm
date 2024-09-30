var result = 0

while true {
    let input = Int(readLine()!)!
    
    if input == -1 {
        break
    } else {
        result += input
    }
}

print(result)