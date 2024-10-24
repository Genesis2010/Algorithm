let n = Int(readLine()!)!

var dict = [String : String]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ String($0) }
    dict[input[0], default: ""] = input[1]
}

var nameArray = dict.filter { $0.value == "enter" }.map { $0.key }

nameArray.sorted(by: >).forEach{ print($0, terminator: "\n")}
