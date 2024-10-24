let num = readLine()!.split(separator: " ").map{Int($0)!}

var a = Set(readLine()!.split(separator: " ").map{Int($0)!})
var b = Set(readLine()!.split(separator: " ").map{Int($0)!})

var a_b = a.filter { !b.contains($0) }
var b_a = b.filter { !a.contains($0) }

print(a_b.count + b_a.count)