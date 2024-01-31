let input = readLine()!.uppercased()

var dict: [String:Int] = [:]

for i in input {
    if dict[String(i)] == nil {
        dict[String(i)] = 1
    } else {
        dict[String(i)]! += 1
    }
}

dict = dict.filter { $0.value == dict.values.max()! }

print( dict.count > 1 ? "?" : "\(dict.keys.first!)")