import Foundation

let n = Int(readLine()!)!

if n == 1 {
    print(0)
} else {
    var primeNumber = [Bool](repeating: true, count: 4_000_000 + 1)
    
    primeNumber[0] = false
    primeNumber[1] = false
    
    for i in 2...Int(sqrt((Double(4_000_000) + 1))) {
        if primeNumber[i] {
            for j in stride(from: i * 2, through: 4_000_000, by: i) {
                primeNumber[j] = false
            }
        }
    }
    
    let isPrimeNumber = (2...n).filter { primeNumber[$0] }
    
    var start = 0
    var end = 0
    var sum = 0
    var result = 0
    
    while end <= isPrimeNumber.count {
        if sum < n {
            if end < isPrimeNumber.count { sum += isPrimeNumber[end] }
            end += 1
        } else {
            sum -= isPrimeNumber[start]
            start += 1
        }
        
        if n == sum {
            result += 1
        }
    }
    
    print(result)
}