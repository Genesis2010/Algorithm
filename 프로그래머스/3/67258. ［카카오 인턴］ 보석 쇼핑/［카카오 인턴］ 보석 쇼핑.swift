import Foundation

func solution(_ gems:[String]) -> [Int] {
    var gemCount = [String: Int]()  // 보석 종류별로 카운트 저장
    var gemSet = Set(gems)  // 전체 보석 종류를 저장
    var start = 0
    var end = 0
    var minLength = Int.max
    var result = [0, 0]

    while end < gems.count {
        // 현재 보석 추가
        gemCount[gems[end], default: 0] += 1
        end += 1

        // 모든 종류의 보석이 포함되면 start를 이동시켜 구간을 줄임
        while gemCount.count == gemSet.count {
            if end - start < minLength {
                minLength = end - start
                result = [start + 1, end]
            }

            gemCount[gems[start]]! -= 1
            
            if gemCount[gems[start]]! == 0 {
                gemCount.removeValue(forKey: gems[start])
            }
            
            start += 1
        }
    }

    return result
}
