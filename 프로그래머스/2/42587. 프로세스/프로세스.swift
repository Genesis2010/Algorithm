import Foundation


// 운영체제가 규칙에 따라 특정 프로세스가 몇 번째로 실행되는지 확인
// 큐에 대기중인 프로세스 하나를 꺼낸다
// 대기 중인 프로세스 중 우선순위가 더 높은 프로세스 가 있다면 교체 -> 다시 넣기
// 위의 조건에 해당하지 않는 다면 프로세스를 실행
// 실행한 프로세스는 다시 큐에 넣지 않는다

func solution(_ priorities: [Int], _ location: Int) -> Int {
    // 인덱스와 우선순위를 함께 저장한 큐 생성
    var queue = priorities.enumerated().map { ($0.offset, $0.element) }
    // 내림차순으로 정렬된 우선순위 배열 생성 (가장 높은 우선순위부터)
    var sortedPriorities = priorities.sorted(by: >)
    var printedCount = 0

    while !queue.isEmpty {
        let currentTask = queue.removeFirst()
        // 만약 현재 작업의 우선순위가 가장 높은 우선순위와 같다면 실행 처리
        if currentTask.1 == sortedPriorities.first! {
            printedCount += 1
            sortedPriorities.removeFirst()
            // 찾고자 하는 위치의 작업이라면 실행 순서를 반환
            if currentTask.0 == location {
                return printedCount
            }
        } else {
            // 그렇지 않으면 큐의 맨 뒤로 이동
            queue.append(currentTask)
        }
    }
    
    return printedCount
}