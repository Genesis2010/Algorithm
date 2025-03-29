import Foundation

func bfsMinimumSteps(_ n: Int) -> Int {
    var visited = Set<Int>() // 방문한 숫자를 저장
    var queue = [(n, 0)] // (현재 숫자, 연산 횟수)
    
    while !queue.isEmpty {
        let (current, steps) = queue.removeFirst()
        
        if current == 1 {
            return steps
        }
        
        if visited.contains(current) {
            continue
        }
        
        visited.insert(current)

        if current % 3 == 0 {
            queue.append((current / 3, steps + 1))
        }
        if current % 2 == 0 {
            queue.append((current / 2, steps + 1))
        }
        queue.append((current - 1, steps + 1))
    }
    
    return -1
}

// 테스트 실행
let n = Int(readLine()!)!
print(bfsMinimumSteps(n))