while true {
    let input = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
    
    if input.contains(0) {
         break
    }
    
    if input[0] + input[1] > input[2] {
        if (input[0] == input[1]) && (input[1] == input[2]) {
            print("Equilateral")
        } else if (input[0] == input[1]) || (input[1] == input[2]) {
            print("Isosceles")
        } else {
            print("Scalene")
        }
    } else {
        print("Invalid")
    }
}

