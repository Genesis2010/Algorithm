import Foundation

let input = readLine()!.split(separator: " ").map{Double($0)!}

let row = ceil(input[0] / (input[2]+1))
let col = ceil(input[1] / (input[3]+1))

print(Int(row * col))