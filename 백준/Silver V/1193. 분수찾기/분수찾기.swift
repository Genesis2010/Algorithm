var x = Int(readLine()!)!
var row = 0

while true {
    if x - row * (row + 1) / 2 <= 0 {
        break
    } else {
        row += 1
    }
}

var k = row * (row + 1) / 2 - x

if row % 2 == 0 {
    let a = row
    let b = 1
    print("\(a-k)/\(b+k)")
} else {
    let a = 1
    let b = row
    print("\(a+k)/\(b-k)")
}