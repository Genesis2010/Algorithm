let input = Int(readLine()!)!
var num = 100
var count = 0

while true {
    
    let num_string = String(num).map{ $0 }
    
    for i in 0..<num_string.count - 2 {

        if num_string[i] == "6" && num_string[i+1] == "6" && num_string[i+2] == "6"{
            count += 1
            break
        }
    }
    if input == count {
        break
    }
    num += 1
}

print(num)