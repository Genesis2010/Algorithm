let input = Int(readLine()!)!
let seat = Array(readLine()!)

let countL = seat.filter { $0 == "L" }.count

if countL/2 > 1 {
    print(seat.count - (countL/2) + 1)
} else {
    print(seat.count)
}


