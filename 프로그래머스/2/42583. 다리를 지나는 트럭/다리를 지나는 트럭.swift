import Foundation

/*
모든 트럭이 건널 때의 최소 시간 (초), 올라갈 수 있는 최대 트럭 bridge_length 개, weight 이하의 무게
아마 초마다 트럭이 건너는 듯 싶다

1. 다리에 트럭이 올라갈 수 있는지 확인 (다리도 queue 처럼 풀어야 할듯)

*/


func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {

    var queue = truck_weights
    var bridge = [(Int, Int)]() // 무게, 다리에 올라간 시간
    var time = 0
    
    while true {
        if queue.isEmpty && bridge.isEmpty {
            break
        }
        
        time += 1
        
        if !bridge.isEmpty {
            if time - bridge_length ==  bridge[0].1 {
                bridge.removeFirst()
            }
        }
        
        if !queue.isEmpty {
            let bridge_truck_weight = bridge.reduce(0) { $0 + $1.0 }
            
            let truck_weight = queue[0]
            
            if (bridge.count < bridge_length) && (bridge_truck_weight + truck_weight <= weight) {
                bridge.append((truck_weight, time))
                queue.removeFirst()
            }
        }
    }
    
    return time
}