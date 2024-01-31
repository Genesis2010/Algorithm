let num = Int(readLine()!)!

var count = 0

func cal (_ num: Int) -> Int{
    
    for i in 100...num {
        let firstNum = i/100
        let secondNum = i % 100 / 10
        let thirdNum = i % 10
        
        if secondNum - firstNum == thirdNum - secondNum {
                count += 1
        }
    }
    
    count += 99
    
    return count
}

if num >= 100 {
    print(cal(num))
} else {
    count += num
    print(count)
}
