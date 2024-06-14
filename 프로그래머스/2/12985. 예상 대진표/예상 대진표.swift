import Foundation
/*
N명이 참가 (토너먼트)
다음 라운드 1번 ~ N/2 (무조건 반올림 필수)
8 -> 4 -> 2 -> 1
8명 A-4, B-7 몇번째 라운드 ? 
*/

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var result = 0
    var gameRound = n / 2
    var alocation = Double(a)
    var blocation = Double(b)
    
    for i in 1...gameRound {
        if round(Double(alocation / 2)) == round(Double(blocation / 2)) {
            result = i
            break
        } else {
            alocation = round(Double(alocation / 2))
            blocation = round(Double(blocation / 2))
        }
    }

    return result
}