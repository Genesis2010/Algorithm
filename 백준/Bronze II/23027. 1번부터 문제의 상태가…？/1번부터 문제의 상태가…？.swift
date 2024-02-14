var input = readLine()!.map{ String($0) }

var a = input.filter{ $0 == "A"}
var b = input.filter{ $0 == "B"}
var c = input.filter{ $0 == "C"}

if a.count == 0 {
    if b.count > 0 {
        for i in 0..<input.count {
            if input[i] == "C" || input[i] == "D" || input[i] == "F" {
                input[i] = "B"
            }
        }
    } else if c.count > 0 {
        for i in 0..<input.count {
            if input[i] == "D" || input[i] == "F" {
                input[i] = "C"
            }
        }
    }
    else {
        for i in 0..<input.count {
            input[i] = "A"
        }
    }
} else {
    for i in 0..<input.count {
        if input[i] == "B" || input[i] == "C" || input[i] == "D" || input[i] == "F" {
            input[i] = "A"
        }
    }
}

print(input.joined(separator: ""))