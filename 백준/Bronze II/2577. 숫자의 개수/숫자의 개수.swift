var count = 1

var result = 1

var num_count = [Int](repeating: 0, count: 10)

while count <= 3 {
    let input = Int(readLine()!)!
    
    result *= input
    
    count += 1
}

var result_string = String(result).map{ $0 }

for i in result_string {

    switch i {
    case "0":
        num_count[0] += 1
    case "1":
        num_count[1] += 1
    case "2":
        num_count[2] += 1
    case "3":
        num_count[3] += 1
    case "4":
        num_count[4] += 1
    case "5":
        num_count[5] += 1
    case "6":
        num_count[6] += 1
    case "7":
        num_count[7] += 1
    case "8":
        num_count[8] += 1
    case "9":
        num_count[9] += 1
    default:
        break
    }
}

for i in num_count{
    print(i)
}