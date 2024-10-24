let nm = readLine()!.split(separator: " ").map{Int($0)!}
let n = nm[0], m = nm[1]

var dict = [String: Int]()
var num = Array(repeating: "", count: n)

for i in 1...n {
    let name = readLine()!
    
    dict[name, default: 0] = i
    num[i-1] = name
}

for _ in 1...m {
    let input = readLine()!
    
    if let number = Int(input) {
        print(num[number-1])
    } else {
        print(dict[input]!)
    }
}
