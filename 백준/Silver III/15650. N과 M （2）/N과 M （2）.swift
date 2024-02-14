let input = readLine()!.split(separator: " ").map{Int(String($0))!}

let n = input[0]
let m = input[1]

func dfs(start: Int, depth: Int, result: String) {
    if depth == m {
        print(result)
        return
    }

    if start <= n {
        for i in start...n {
            dfs(start: i+1, depth: depth+1, result: result + "\(i) ")
        }
    }
}

dfs(start: 1, depth: 0, result: "")