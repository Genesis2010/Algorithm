let n = Int(readLine()!)!
var schedule = [(Int, Int)]()
var score = 0

for _ in 1...n {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))!}
    
    switch input[0] {
    case 0:
        if schedule.isEmpty {
            continue
        } else {
            let data = schedule.popLast()!
            
            if data.0 - 1 > 0 {
                schedule.append((data.0 - 1, data.1))
            } else {
                score += data.1
            }
        }
    case 1:
        if schedule.isEmpty {
            schedule.append((input[2] - 1, input[1]))
        } else {
            if input[2] - 1 > 0 {
                schedule.append((input[2] - 1, input[1]))
            } else {
                score += input[1]
            }
        }
        
    default:
        break
    }
}

print(score)