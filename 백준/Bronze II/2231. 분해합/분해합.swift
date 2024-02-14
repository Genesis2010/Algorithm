var input = Int(readLine()!)!
var count = String(input).count
var sum = 0
var contain = false
var startNum = input - count*9 < 0 ? 0 : input - count*9

for i in startNum..<input {
    
    for j in String(i) {
        sum += Int(String(j))!
    }
    
    if input == i + sum {
        contain = true
        print(i)
        break
    }
    sum = 0
}

if !(contain) {
    print(0)
}