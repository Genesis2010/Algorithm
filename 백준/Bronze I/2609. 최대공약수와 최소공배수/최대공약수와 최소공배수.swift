let num = readLine()!.split(separator: " ").map{Int(String($0))!}
 
var a = max(num[0], num[1])
var b = min(num[0], num[1])
 
while a % b != 0 {
    let temp = a % b
    a = b
    b = temp
}
 
print(b)
print(num[0] * num[1] / b)