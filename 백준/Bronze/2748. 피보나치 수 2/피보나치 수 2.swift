let n = Int(readLine()!)!

func fibonacci(_ n: Int) -> Int {
    
    var numbers: Array<Int> = [0,1,1]
    for i in 0...n{
        if i == 0 || i == 1 || i == 2{
            continue
        } else {
            numbers.append(numbers[i-1] + numbers[i-2])
        }
    }
    return numbers[n]
}

print(fibonacci(n))