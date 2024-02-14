let input = readLine()!.split(separator: " ").map{Int(String($0))!}

let n = input[0]
let m = input[1]

var result = ""

func dfs (start: Int, depth: Int, temp : String) {
    if depth == m {
        result += "\(temp)\n"
        return
    } else {
        for i in start...n {
            dfs(start: i, depth: depth+1, temp: temp + "\(i) ")
        }
    }
}

dfs(start: 1, depth: 0, temp: "")
print(result)