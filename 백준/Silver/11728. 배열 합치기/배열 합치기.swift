let ab = readLine()!.split(separator: " ").map{Int($0)!}
let (a, b) = (ab[0], ab[1])
var result = ""
let aArray = readLine()!.split(separator: " ").map{Int($0)!}
let bArray = readLine()!.split(separator: " ").map{Int($0)!}

var aPoint = 0
var bPoint = 0

while aPoint < a && bPoint < b {
    let aNum = aArray[aPoint]
    let bNum = bArray[bPoint]
    
    if aNum < bNum {
        result += "\(aNum) "
        aPoint += 1
    } else {
        result += "\(bNum) "
        bPoint += 1
    }
}

while aPoint < a {
    result += "\(aArray[aPoint]) "
    aPoint += 1
}

while bPoint < b {
    result += "\(bArray[bPoint]) "
    bPoint += 1
}

print(result)