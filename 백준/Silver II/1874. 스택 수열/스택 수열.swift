let n = Int(readLine()!)!
var count = 1

var stack = [Int]()
var result = [Character]()
var state = true

for _ in 0..<n {
    let num = Int(readLine()!)!
    
    while count <= num {
        stack.append(count)
        result.append("+")
        count += 1
    }
    
    if stack.last == num {
        stack.removeLast()
        result.append("-")
    } else {
        state = false
    }
}

if state {
    for i in result {
        print(i)
    }
} else {
    print("NO")
}