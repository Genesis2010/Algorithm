var input = readLine()!.split(separator: " ").map{Int(String( $0 ))!}
var count = 0

if input[2] > input[1] {
    print( input[0] / (input[2] - input[1]) + 1)
} else {
    print(-1)
}