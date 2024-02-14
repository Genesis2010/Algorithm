let n = Int(readLine()!)!

var resultRow = [Int]()
var resultColumn = [Int]()

var arr = Array(repeating: Array(repeating: "Z", count: n), count: n)

for i in 0..<n {
    let num = readLine()!.map{ String($0) }
    for j in 0..<n {
        arr[i][j] = num[num.index(num.startIndex, offsetBy: j)]
    }
}

for i in 0..<n {
    for j in 0..<n-1 {
        if arr[i][j] == arr[i][j+1] {
            continue
        } else {
            swapRow(i, j)
            resultRow.append(max(sameRow(), sameColumn()))
            swapRow(i, j)
        }
    }
}

for i in 0..<n {
    for j in 0..<n-1 {
        if arr[j][i] == arr[j+1][i] {
            continue
        } else {
            swapColumn(j, i)
            resultColumn.append(max(sameRow(), sameColumn()))
            swapColumn(j, i)
        }
    }
}

print(max(resultRow.max()!, resultColumn.max()!))

func swapRow(_ r: Int, _ c: Int) {
    let temp = arr[r][c]
    arr[r][c] = arr[r][c + 1]
    arr[r][c + 1] = temp
    
}

func swapColumn(_ r: Int, _ c: Int) {
    let temp = arr[r][c]
    arr[r][c] = arr[r + 1][c]
    arr[r + 1][c] = temp
}

func sameRow() -> Int {
    
    var max = 0
    
    for i in 0..<n {
        var same = 1
        for j in 0..<n-1 {
            if arr[i][j] == arr[i][j+1] {
                same += 1
            } else {
                same = 1
            }
            
            if max < same {
                max = same
                
            }
        }
    }
    return max
}

func sameColumn() -> Int {
    
    var max = 0
    
    for i in 0..<n {
        var same = 1
        for j in 0..<n-1 {
            if arr[j][i] == arr[j+1][i] {
                same += 1
            } else {
                same = 1
            }
            
            if max < same {
                max = same
            }
        }
    }
    return max
}
