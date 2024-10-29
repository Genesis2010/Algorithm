let ab = readLine()!.split(separator: " ").map{Int($0)!}
let (a, b) = (ab[0], ab[1])
var result = [Int]()
let aArray = readLine()!.split(separator: " ").map{Int($0)!}
let bArray = readLine()!.split(separator: " ").map{Int($0)!}

var aPoint = 0
var bPoint = 0

while aPoint < a && bPoint < b {
    let aNum = aArray[aPoint]
    let bNum = bArray[bPoint]
    
    if aNum < bNum {
        result.append(aNum)
        aPoint += 1
    } else {
        result.append(bNum)
        bPoint += 1
    }
}

if aPoint == a {
    result += bArray[bPoint..<b]
} else {
    result += aArray[aPoint..<a]
}

print(result.map{String($0)}.joined(separator: " "))