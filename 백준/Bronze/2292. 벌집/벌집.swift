let input = Int(readLine()!)!
var number = 1
var count = 1

while input > number {
    number += (6*count)
    count += 1
}

print(count)