let input_1 = Int(readLine()!)!

let input_2 = Int(readLine()!)!

if input_1 > 0 {
    if input_2 > 0 {
        print(1)
    } else {
        print(4)
    }
} else {
    if input_2 > 0 {
        print(2)
    } else {
        print(3)
    }
}