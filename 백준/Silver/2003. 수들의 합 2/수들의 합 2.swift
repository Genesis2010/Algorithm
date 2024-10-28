let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0]
let m = nm[1]
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}

var count = 0
for i in 0..<n{
    var sum = 0
    for j in i..<n{
        sum += arr[j]
        if sum == m{
            count += 1
        }
    }
}
print(count)