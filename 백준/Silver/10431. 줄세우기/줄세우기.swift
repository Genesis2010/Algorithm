let num = Int(readLine()!)!

for _ in 1...num {
    var input = readLine()!.split(separator: " ").map{Int($0)!}
    var count = 0
    let number = input.removeFirst()
    
    input.sort {
        count += $0 < $1 ? 1 : 0
        return $0 < $1
    }
    
    print(number, count)
}