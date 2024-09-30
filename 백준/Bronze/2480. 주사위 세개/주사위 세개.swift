let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
var result = 0

for i in input {
    let count = input.filter { $0 == i }.count 
    
    if count == 1 {
        result = input.max()! * 100
    } else if count == 2 {
        result = (i * 100) + 1000
        break
    } else {
        result = (i * 1000) + 10000
        break
    }
}

print(result)