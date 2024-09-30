import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    
    let typeDay = calculateDay(terms)
    let dates = calculateExpired(privacies, typeDay)
    var result = [Int]()
    
    for i in 0..<dates.count {
        let ymd = today.split(separator: ".").compactMap { Int($0) }
        let (year, month, day) = (ymd[0] * 12 * 28, ymd[1] * 28, ymd[2])
        let days = year + month + day

        if days >= dates[i] { 
            result.append(i+1)
        }
    }
    
    return result
}


func calculateExpired(_ privacies: [String], _ expired: [String: Int]) -> [Int] {
    var dates = [Int]()

    for privacy in privacies {
        let splitPrivacy = privacy.split(separator: " ").map { String($0) }
        let date = splitPrivacy[0].split(separator: ".").compactMap { Int($0) }
        let type = splitPrivacy[1]

        let (year, month, day) = (date[0] * 12 * 28, date[1] * 28, date[2])

        dates.append(year + month + day + expired[type]!)
    }
    
    return dates
}


func calculateDay(_ terms: [String]) -> [String: Int] {
     var typeDay = [String: Int]()
    
     for term in terms {
        let splitTerm = term.split(separator: " ").map { String($0) }
        let type = splitTerm[0]
        let period = Int(splitTerm[1])!

        typeDay[type, default: 0] = period * 28
    }
    
     return typeDay
}