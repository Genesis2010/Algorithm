let input = readLine()!.split(separator: " ").map{String($0)}
let playCount = Int(input[0])!
var playUser = [String]()
var gamePlayer = 0

switch input[1] {
    case "Y":
        gamePlayer = 2
    case "F":
        gamePlayer = 3
    case "O":
        gamePlayer = 4
    default:
        break
}

for _ in 0..<playCount {
    let user = readLine()!
    playUser.append(user)
}

print(Int(Set(playUser).count / (gamePlayer - 1)))