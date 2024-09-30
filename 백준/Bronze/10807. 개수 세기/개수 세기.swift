let input = Int(readLine()!)!
let numArray = readLine()!.split(separator: " ").map{Int(String($0))!}
let v = Int(readLine()!)!

print(numArray.filter{ $0 == v}.count)
