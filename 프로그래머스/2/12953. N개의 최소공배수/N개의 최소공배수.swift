func solution(_ arr:[Int]) -> Int {
    
    var result = arr[0]
    
    for i in 1..<arr.count {
        result = lcm(a: result, b: arr[i])
    }
    
    return result
}

// 최대공약수
func gcd(a: Int, b: Int) -> Int {
    if (a % b) == 0 {
        return b
    } 
    return gcd(a: b, b: a%b)
}

// 최소공배수
func lcm(a: Int, b: Int) -> Int {
    return a*b / gcd(a: a, b: b)
}