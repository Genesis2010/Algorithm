var input = readLine()!.split(separator: " ").map{Int(String( $0 ))!}
var num = readLine()!.split(separator: " ").map{Int(String( $0 ))!}
var result = 0
for i in 0..<(input[0] - 2) {
    for j in i+1..<input[0] {
        for h in j+1..<input[0]{
            let temp = num[i] + num[j] + num[h]
            if temp <= input[1] && temp >= result {
                result = temp
            }
        }
    }
}

print(result)