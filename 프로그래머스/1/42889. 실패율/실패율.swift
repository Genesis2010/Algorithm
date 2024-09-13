import Foundation

/*
실패율 - 클리어하지 못한 플레이어의 수 / 스테이지에 도달한 플레이어 수
전체 스테이지 개수 N, 사용자가 현재 멈춰있는 스테이지 번호 배열 
*/

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    
    var player = stages.count
    var counts = Array(repeating: 0, count: N+2)
    var failure = [Int: Double]()
    
    for stage in stages {
        counts[stage] += 1
    }
    
    for i in 1...N {
        let count = counts[i]
        let score = Double(count) / Double(player)

        failure[i] = score
        player -= count
    }
    
    return failure.sorted(by: <).sorted(by: {$0.1 > $1.1}).map { $0.key }
}