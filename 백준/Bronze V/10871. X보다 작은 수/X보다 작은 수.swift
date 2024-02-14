let input = readLine()!.split(separator: " ").map{Int(String( $0 ))!}
let a = readLine()!.split(separator: " ").map{Int(String( $0 ))!}

for i in 0..<input[0] {
    if input[1] > a[i] {
        print("\(a[i]) ", terminator: "")
    }
}