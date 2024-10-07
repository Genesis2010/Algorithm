let input = Int(readLine()!)!
var array = [0, 1]

if input > 1 {
    for i in 2...input {
        array.append(array[i-1] + array[i-2])
    } 
}

print(array[input])