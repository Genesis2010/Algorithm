let input = Int(readLine()!)!
var cookieMap = [[String]]()
var heart = (0,0)
var arm = (0,0)
var leg = (0,0)
var waist = 0

for _ in 0..<input {
    cookieMap.append(readLine()!.map{String($0)})
}

for i in 0..<input {
    if cookieMap[i].filter{$0 == "*"}.count == 1 {
        heart = (i+1, cookieMap[i].firstIndex(of: "*")!)
        break
    }
}

arm.0 = cookieMap[heart.0][0..<heart.1].filter{$0 == "*"}.count
arm.1 = cookieMap[heart.0][heart.1+1...cookieMap.count-1].filter{$0 == "*"}.count

for i in (heart.0+1)..<input {
    if cookieMap[i].filter({$0 == "*"}).count == 1 {
        waist += 1
    } else {
        break
    }
}

for i in (heart.0+waist+1)..<input {
    if cookieMap[i][heart.1-1] == "*" {
        leg.0 += 1
    }
    
    if cookieMap[i][heart.1+1] == "*" {
        leg.1 += 1
    }
}

print(heart.0 + 1, heart.1 + 1)
print(arm.0, arm.1, waist, leg.0, leg.1)