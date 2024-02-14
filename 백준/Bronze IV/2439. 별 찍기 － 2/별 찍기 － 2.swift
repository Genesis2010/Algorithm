let n = Int(readLine()!)!

var count = 1

for i in (1...n).reversed() {
    if !(i == 1){
        for _ in (1...i-1) {
            print(" ", terminator: "")
        }
    }
    for _ in (1...count) {
        print("*", terminator: "")
    }
    print("")
    count+=1
}
