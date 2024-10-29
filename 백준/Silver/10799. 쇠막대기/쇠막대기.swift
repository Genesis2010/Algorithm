var stack = [String]()
var lastInput = ""
var barCount = 0

let inputs = readLine()!.map{String($0)}

for input in inputs {
    if input == "(" {
        stack.append(input)
    } else if input == ")" && lastInput == "(" {
        stack.removeLast()
        barCount += stack.count
    } else {
        stack.removeLast()
        barCount += 1
    }
    
    lastInput = input
}

print(barCount)