var array = [Int](repeating: 0, count: 26)
let alphabet = readLine()!

for ch in alphabet {
    array[Int(ch.asciiValue!) - 97] += 1
}

print(array.map{ "\($0)" }.joined(separator: " "))