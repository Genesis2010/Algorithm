let number = Int(readLine()!)!
var result = 0

for i in 1...number {
    result += (number / i) * i
}
print(result)