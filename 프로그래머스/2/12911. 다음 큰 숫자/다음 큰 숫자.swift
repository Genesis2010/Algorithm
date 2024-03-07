import Foundation

func solution(_ n:Int) -> Int
{
    
    var nextN = n + 1
    
    while true {
    	if n.nonzeroBitCount == nextN.nonzeroBitCount {
        	break;
        }
        nextN += 1
    }
    return nextN
}