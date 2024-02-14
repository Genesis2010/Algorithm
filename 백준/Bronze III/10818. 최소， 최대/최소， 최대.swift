let n = Int(readLine()!)!

var input = readLine()!.split(separator: " ").map{ Int(String($0))! }

input = input.sorted(by: <)

print("\(input[0]) \(input[n-1])")