let n = Int(readLine()!)!
let num = readLine()!.split(separator: " ").map{Int(String($0))!}

var isPrime = true
var count = 0

for i in num {
    if i == 1 {
        isPrime = false
    } else {
        for j in 2..<i {
            if i % j == 0 {
                isPrime = false
            }
        }
    }
    if isPrime == true {
        count += 1
    }
    isPrime = true
}

print(count)