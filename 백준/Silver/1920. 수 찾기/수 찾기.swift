let n = Int(readLine()!)!
let a = Set(readLine()!.split(separator: " ").map { Int(String($0))! })

let m = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{Int($0)!}
var result = ""

input.forEach { 
    result += a.contains($0) ? "1\n" : "0\n"
}

print(result)