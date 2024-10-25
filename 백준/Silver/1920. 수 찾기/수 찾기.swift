let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{Int($0)!}

var setA = Set(input)

let m = Int(readLine()!)!
let input2 = readLine()!.split(separator: " ").map{Int($0)!}

for char in input2 {
    if setA.contains(char) {
        print(1)
    } else {
        print(0)
    }
}