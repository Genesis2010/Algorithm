let n = Double(readLine()!)!

var num = readLine()!.split(separator: " ").map{ Double(String( $0 ))! }

let max = num.max()!

num = num.map{ ($0/max) * 100 }

print( num.reduce(0, +) / n )