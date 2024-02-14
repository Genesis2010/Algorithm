let input = readLine()!.split(separator: " ").map{Int(String($0))!}

let num = readLine()!.split(separator: " ").map{Int(String($0))!}

let n = input[0]
let m = input[1]

var node_visited = Array(repeating: false, count: n)

let num_sort = num.sorted()
var result = ""

func dfs(arr: [Int], depth: Int, temp: String) {
    if depth == m {
        result += "\(temp)\n"
        return
        
    } else {
        for i in 0..<arr.count {
            if !node_visited[i] {
                node_visited[i] = true
                dfs(arr: arr, depth: depth + 1, temp: temp + "\(arr[i]) ")
                node_visited[i] = false
            }
        }
    }
}

dfs(arr: num_sort, depth: 0, temp: "")
print(result)