var input = Int(readLine()!)!

print(fact(input))

func fact(_ num : Int) -> Int{
    if num == 1 || num == 0{
        return 1
    }
    return num * fact(num-1)
}