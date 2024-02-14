let num = readLine()!.split(separator: " ")
let a = Int(String(num[0].reversed()))!
let b = Int(String(num[1].reversed()))!

if a > b {
    print(a)
} else {
    print(b)
}