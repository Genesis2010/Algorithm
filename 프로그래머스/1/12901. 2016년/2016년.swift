func solution(_ a:Int, _ b:Int) -> String {
    
    let week = ["FRI","SAT","SUN","MON","TUE","WED","THU"]
    let date = [1:31,2:29,3:31,4:30,5:31,6:30,7:31,8:31,9:30,10:31,11:30,12:31]
    var sum = 0
    
    for i in 1..<a {
        sum += date[i]!
    }
        
    return week[(sum + b - 1) % 7]
}