let n = Int(readLine()!)!

var stack = [Int]()

for _ in 0..<n {
    let number = Int(readLine()!)!
    if number == 0{
        stack.removeLast()
    } else {
        stack.append(number)
    }
}

print(stack.reduce(0,+))