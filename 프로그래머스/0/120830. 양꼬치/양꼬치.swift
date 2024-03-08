import Foundation

func solution(_ n:Int, _ k:Int) -> Int { 
    if n > 9 {
        return n * 12000 + (k - n / 10) * 2000
    } else {
        return n * 12000 + k * 2000
    }
}