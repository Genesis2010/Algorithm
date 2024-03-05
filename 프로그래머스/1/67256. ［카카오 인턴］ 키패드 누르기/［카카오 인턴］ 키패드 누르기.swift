import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    
    var result = [String]()
    let keyPad = [1:(0,0),2:(0,1),3:(0,2),4:(1,0),5:(1,1),6:(1,2),7:(2,0),8:(2,1),9:(2,2),0:(3,1)]
    var leftLocation = (3,0)
    var rightLocation = (3,2)
    
    for i in numbers {
        switch i {
            case 1,4,7:
                result.append("L")
                leftLocation = keyPad[i]!
            case 3,6,9:
                result.append("R")
                rightLocation = keyPad[i]!
            case 2,5,8,0:
                let move = calDistance(keyPad[i]!, leftLocation, rightLocation, hand)
            
                if move == "R" {
                    rightLocation = keyPad[i]!
                } else {
                    leftLocation = keyPad[i]!
                }
            
                result.append(move)
            default:
                break
        }
    }
    return result.joined()
}

func calDistance(_ pushLocation: (Int,Int), _ leftLocation: (Int,Int), _ rightLocation: (Int,Int), _ hand: String) -> String {

    let leftDistance = abs(pushLocation.0 - leftLocation.0) + abs(pushLocation.1 - leftLocation.1)
    let rightDistance = abs(pushLocation.0 - rightLocation.0) + abs(pushLocation.1 - rightLocation.1)
    
    if leftDistance > rightDistance {
        return "R"
    } else if leftDistance < rightDistance {
        return "L"
    } else {
        return hand == "right" ? "R" : "L"
    }
}