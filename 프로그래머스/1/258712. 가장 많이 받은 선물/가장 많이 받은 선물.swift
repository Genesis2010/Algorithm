import Foundation

/*
다음달에 누가 가장 선물을 많이 받을지 예측

선물 지수 : 이번 달까지 친구들에게 준 선물 수 - 받은 선물 수

조건
1. 두 사람이 선물 주고받은 기록이 있다면 더 많이 준사람이 하나 더 받는다
2. 기록이 같거나 없나면 선물 지수가 더 큰 사람이 작은 사람에게 하나를 받는다
(선물 지수가 같다면 선물 주고 받지 않는다)
*/

// 일단 선물 지수는 딕셔너리로 해야돼
// 그러면 준 사람, 받은 사람의 경우는 ? 이중 배열로? 더 쉬운 방법이 있을까?
// 이중 배열이라면 이중 포문으로 탐색을 해야해 O(n^2) 걸림 50 * 50 은 2500 

func solution(_ friends:[String], _ gifts:[String]) -> Int {
    
    var nameToIndex = [String: Int]()
    var giftValue = [String: Int]()
    var giftGraph = Array(repeating: Array(repeating: 0, count: friends.count), count: friends.count)
    
    var result = 0
    
    for (index, value) in friends.enumerated() {
        nameToIndex[value] = index
    }
    
    for gift in gifts {
        let splitGift = gift.split(separator: " ").map{ String($0) }
        let giver = nameToIndex[splitGift[0]]!
        let receiver = nameToIndex[splitGift[1]]!
        giftGraph[giver][receiver] += 1
        
        giftValue[splitGift[0], default: 0] += 1
        giftValue[splitGift[1], default: 0] -= 1
    }
    
    
    for i in 0..<friends.count {
        var temp = 0
        
        for j in 0..<friends.count {
            if i == j {
                continue
            }
            
            if giftGraph[i][j] > giftGraph[j][i] {
                temp += 1
            } else if giftGraph[i][j] == giftGraph[j][i] {
                if (giftValue[friends[i]] ?? 0) > (giftValue[friends[j]] ?? 0) {
                    temp += 1
                }
            }
        }
        
        result = max(result, temp)
    }
    
    return result
}