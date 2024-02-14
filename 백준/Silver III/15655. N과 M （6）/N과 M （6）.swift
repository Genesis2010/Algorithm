let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let num = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()

let n = input[0]
let m = input[1]

var result = ""

func dfs(start: Int, arr: [Int], depth: Int, temp: String) {
    if depth == m {
        result += "\(temp)\n"
        return
    } else {
        for i in start..<arr.count {
            dfs(start: i + 1, arr: arr, depth: depth + 1, temp: temp + "\(arr[i]) ")
        }
    }
}

dfs(start: 0, arr: num, depth: 0, temp: "")
print(result)