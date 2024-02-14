let input = readLine()!.split(separator: " ").map{ Int(String($0))! }

var N = input[0]
var A = input[1]
var B = input[2]
var major : [Int] = []
var total : [Int] = []

for _ in 1...10 {
    let input2 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    major.append(input2[0])
    total.append(input2[1])
}

var m = 66 - A
var t = 130 - B

for i in 0..<8-N {
    m -= 3 * major[i]
    if major[i] + total[i] >= 6{
        t -= 6 * 3
    } else {
        t -= (major[i] + total[i]) * 3
    }
    
    if m <= 0 && t <= 0 {
        print("Nice")
        break
    }
    if i == 7-N {
        print("Nae ga wae")
        break
    }
}