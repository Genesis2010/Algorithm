import Foundation

/*
학생들의 번호는 체격 순으로 매겨져 앞, 뒷번호 학생에게만 빌릴 수 있음 ex) 4 -> 3, 5
최대한 많은 학생이 체육수업을 들어야 한다

n: 전체 학생수, lost: 도난당한 학생의 번호, reserve: 여벌의 체육복을 가져온 학생 
*/

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var reserveArray = reserve
    var lostArray = lost
    
    for i in lost {
        if reserve.contains(i) {
            lostArray.remove(at: lostArray.firstIndex(of: i)!)
            reserveArray.remove(at: reserveArray.firstIndex(of: i)!)
        }
    }
    
    var result = n - lostArray.count
    
    for i in lostArray.sorted() {
        if reserveArray.contains(i-1) {
            result += 1
            let index = reserveArray.firstIndex(of: i-1)
            reserveArray.remove(at: index!)
        } else if reserveArray.contains(i+1) {
            result += 1
            let index = reserveArray.firstIndex(of: i+1)
            reserveArray.remove(at: index!)
        }
    }
    
    return result
}