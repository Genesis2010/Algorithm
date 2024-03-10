import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {

    var area = brown + yellow
    var num = [(Int, Int)]()
    var result = [Int]()
    
    for i in 1...area {
        if area % i == 0 {
            num.append((Int(area / i), i))
        }
    }

    for i in num {
        if (i.0 >= 3 && i.1 >= 3) && ((i.0 - 2) * (i.1 - 2) == yellow) {
            result.append(i.0)
            result.append(i.1)
            break
        }
    }
    
    return result
}