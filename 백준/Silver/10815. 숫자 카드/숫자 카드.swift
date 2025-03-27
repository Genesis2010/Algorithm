let n = Int(readLine()!)!
let nArray = Set(readLine()!.split(separator: " ").map{Int($0)!})

let m = Int(readLine()!)!
let mArray = readLine()!.split(separator: " ").map{Int($0)!}

var result = mArray.map{ nArray.contains($0) ? "1" : "0" }
print(result.joined(separator: " "))