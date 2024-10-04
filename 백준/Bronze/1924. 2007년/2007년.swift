let days = [1:31, 2: 28, 3:31, 4:30, 5:31, 6:30, 7:31, 8:31, 9:30, 10:31, 11: 30, 12:31]
let week = [0: "SUN", 1: "MON", 2: "TUE", 3: "WED", 4: "THU", 5: "FRI", 6: "SAT"]
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var sumDays = 0

if input[0] != 1 {
    for i in 1..<input[0] {
        sumDays += days[i]!
    }
}

sumDays += input[1]
print(week[Int(sumDays % 7)]!)