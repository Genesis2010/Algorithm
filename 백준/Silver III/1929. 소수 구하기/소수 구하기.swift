let input = readLine()!.split(separator: " ").map { Int($0)! }
var arr = [Bool](repeating: true, count: 1000001)
arr[1] = false
var cur = 2
for i in 2...1000 where arr[i] == true {
    for j in 2...1000000/i {
        arr[i*j] = false
    }
}
var ret = ""
for i in input[0]...input[1] {
    if arr[i] {
        ret += "\(i)\n"
    }
}
print(ret)