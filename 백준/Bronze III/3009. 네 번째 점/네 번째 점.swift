let first = readLine()!.split(separator: " ").map{Int(String( $0 ))!}
let second = readLine()!.split(separator: " ").map{Int(String( $0 ))!}
let third = readLine()!.split(separator: " ").map{Int(String( $0 ))!}
var last : [Int] = []

for i in 0..<first.count {
    if first[i] == second[i] {
        last.append(third[i])
    } else if first[i] == third[i] {
        last.append(second[i])
    } else if second[i] == third[i] {
        last.append(first[i])
    }
}

print(last[0], last[1])