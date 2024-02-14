var array: [[Int]] = []
for _ in 0..<9 {
    array.append(readLine()!.split(separator: " ").map { Int($0)! })
}

let maxValue = array.flatMap { $0 }.max()!

for y in 0..<9 {
    for x in 0..<9 {
        if array[y][x] == maxValue {
            print(maxValue)
            print(y + 1, x + 1)
            break
        }
    }
}