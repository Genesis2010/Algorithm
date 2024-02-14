var num : [Int] = []

for _ in 1...10 {
    let input = Int(readLine()!)!
    
    num.append(input % 42)
}

let set = Set(num) 

let result = Array(set)

print(result.count)