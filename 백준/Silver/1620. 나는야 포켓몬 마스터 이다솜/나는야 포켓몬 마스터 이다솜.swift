let nm = readLine()!.split(separator: " ").map{Int($0)!}
let n = nm[0], m = nm[1]

var dict = [String: Int]()
var numDict = [Int: String]()

for i in 1...n {
    let name = readLine()!
    
    dict[name, default: 0] = i
    numDict[i, default: ""] = name
}

for _ in 1...m {
    let input = readLine()!
    
    if let number = Int(input) {
        print(numDict[number]!)
    } else {
        print(dict[input]!)
    }
}
