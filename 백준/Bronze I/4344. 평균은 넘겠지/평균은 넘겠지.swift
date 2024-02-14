import Foundation

let c = Int(readLine()!)!

for _ in 1...c {
    let input = readLine()!.split{ $0 == " " }.map{Int(String( $0 ))!}

    let average = Float(input.reduce(0, +) - input[0]) / Float(input[0])

    var count : Float = 0
    
    for i in 1...input[0] {

        if Float(input[i]) > average {
            count += 1
        }
    }
    print("\(String(format: "%.3f", count/Float(input[0]) * 100))%")
}
