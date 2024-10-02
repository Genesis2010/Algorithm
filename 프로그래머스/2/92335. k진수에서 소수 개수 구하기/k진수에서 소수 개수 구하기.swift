import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    
    let kNumber = String(n, radix: k)
    
    let splitNumber = kNumber.split(separator: "0")
    
    let primeCount = splitNumber.filter{ isPrime(Int($0)!) }.count
    
    return primeCount
}

func isPrime(_ num: Int) -> Bool {
    if num < 2 {
        return false
    } else if num == 2 || num == 3 {
        return true
    }
    
    for i in 2...Int(sqrt(Double(num))) {
        if num % i == 0 {
            return false
        }
    }
    
    return true
}