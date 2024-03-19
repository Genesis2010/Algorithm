let vowels = ["a","e","i","o","u"]

while true {
    var letter = [String]()
    var consonantCount = 0
    var vowelCount = 0
    var isAcceptable = false
    var input = readLine()!.map{String($0)}
    
    if input.joined() == "end" {
        break
    }
   
    for i in input {
        if vowels.contains(i) {
            vowelCount += 1
            consonantCount = 0
            isAcceptable = true
        } else {
            vowelCount = 0
            consonantCount += 1
        }
        
        if consonantCount == 3 || vowelCount == 3 {
            isAcceptable = false
            break
        }
        
        if !letter.isEmpty && letter.last! == i && i != "e" && i != "o" { 
            isAcceptable = false
            break
        }
        
        letter.append(i)
    }
    
    if isAcceptable {
        print("<\(input.joined())> is acceptable.")
    } else {
        print("<\(input.joined())> is not acceptable.")
    }
}