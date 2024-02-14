let input = readLine()!.split(separator: " ").map{Int(String($0))!}

var year = 0

var e = 0
var s = 0
var m = 0

while true {
    
    e += 1
    s += 1
    m += 1
    
    if e == 16 {
        e = 1
    }
    if s == 29 {
        s = 1
    }
    if m == 20 {
        m = 1
    }
    
    year += 1
    
    if input[0] == e && input[1] == s && input[2] == m {
        break
    }
}

print(year)