let n = Int(readLine()!)!

print(Array(readLine()!).map { Int(String( $0 ))! }.reduce(0) { $0 + $1 })