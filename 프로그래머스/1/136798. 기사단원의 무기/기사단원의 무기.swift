import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var result = [Int]()
    
    for i in 1...number {
        result.append(countDivisors(i))
    }
    
    let limtResult = result.map { $0 > limit ? power : $0}
    
    return limtResult.reduce(0, +)
}

func countDivisors(_ n: Int) -> Int {
    if n <= 0 {
        return 0
    }
    
    var count = 0
    let sqrtN = Int(Double(n).squareRoot())
    
    for i in 1...sqrtN {
        if n % i == 0 {
            if i * i == n {
                count += 1
            } else {
                count += 2
            }
        }
    }
    
    if n == 1 {
        count = 1
    }
    
    return count
}