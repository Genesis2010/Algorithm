let input = Int(readLine()!)!

var count = 0
var result = 0
var n1 = 0
var n2 = 0

while true {
    
    if count == 0 {
        n1 = input / 10
        n2 = input % 10
    } else {
        n1 = result / 10
        n2 = result % 10
    }
    
    let sum = n1 + n2
    
    if sum >= 10 {
        n1 = n2
        n2 = sum % 10
        
        result = n1 * 10 + n2
    } else {
        result = n2 * 10 + sum
    }

    count += 1
    
    if Int(input) == result {
        print(count)
        break
    }
}