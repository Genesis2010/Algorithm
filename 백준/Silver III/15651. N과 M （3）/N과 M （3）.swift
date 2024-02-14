let input = readLine()!.split(separator: " ").map{Int(String($0))!}

let n = input[0]
let m = input[1]

var result = ""

func dfs(depth: Int, temp: String) {
    if depth == m {
        result += "\(temp)\n"
        return
    }
    
    for i in 1...n {
            
        dfs(depth: depth+1, temp: temp + "\(i) ")
    }
}

dfs(depth: 0, temp: "")
print(result)