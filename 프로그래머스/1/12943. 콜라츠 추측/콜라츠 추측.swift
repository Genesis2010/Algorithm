func solution(_ num:Int) -> Int {
    
    var sendNum: Int64 = Int64(num)
    var count = 0
    
    while sendNum != 1 {
        if count == 500 {
            count = -1
            break
        } else {
            sendNum = sendNum % 2 == 0 ? sendNum / 2 : sendNum*3 + 1
            count += 1
        }
    }
    
    return count
}