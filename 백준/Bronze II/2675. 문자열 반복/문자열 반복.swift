let t = Int(readLine()!)!

for _ in 1...t {
    let input = readLine()!.split{ $0 == " "}
    
    let num = Int(input[0])
    
    for i in input[1].map({ $0 }) {
        for _ in 1...num! {
            print(i, terminator: "")
        }
    }
    print()
}