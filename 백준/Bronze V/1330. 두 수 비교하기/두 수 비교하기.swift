var input = readLine()!.split(separator: " ")

var a = Int(input[0])!
var b = Int(input[1])!

if a > b {
    print(">")
} else if a == b {
    print("==")
} else {
    print("<")
}