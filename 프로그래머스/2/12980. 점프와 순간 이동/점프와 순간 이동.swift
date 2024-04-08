import Foundation

// 한번에 K 칸 앞으로 점프
// (현재온거리) x 2 에 해당하는 위치로 순간 이동

// 순간이동 시 건전지 사용 x
// k 칸 아픙로 점프 시 K 만큼 건전지 사용

// 거리가 N 만큼 떨어진 장소로 이동, 사용량을 줄이기 위해 점프는 최소
// 건전지 사용량의 최소 값 (DP 인가..?)

func solution(_ n:Int) -> Int {
    var num  = n
    var result = 0
    
    while num != 0 {
        if num % 2 == 0 {
            num /= 2
        } else {
            num -= 1
            result += 1
        }
    }
    
    return result
}