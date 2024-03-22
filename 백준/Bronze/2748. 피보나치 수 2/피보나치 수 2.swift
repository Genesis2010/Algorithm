var cache = [0,1,1]

let input = Int(readLine()!)!

if input > 2 {
    for i in 3...input {
        cache.append(cache[i-1] + cache[i-2])
    }
}
print(cache[input])