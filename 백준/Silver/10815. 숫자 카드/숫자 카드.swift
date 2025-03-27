let n = Int(readLine()!)!
let nArray = readLine()!.split(separator: " ").map{Int($0)!}
let nArraySort = nArray.sorted()

let m = Int(readLine()!)!
let mArray = readLine()!.split(separator: " ").map{Int($0)!}
var result = Array(repeating: 0, count: m)

var mIndexDic = [Int: Int]()

for i in 0..<mArray.count {
    mIndexDic[mArray[i]] = i
}

var containsMArray = [Int]()
let mArraySort = mArray.sorted()

var nIndex = 0
var mIndex = 0

while nIndex < n && mIndex < m {
    if nArraySort[nIndex] < mArraySort[mIndex] {
        nIndex += 1
    } else if nArraySort[nIndex] > mArraySort[mIndex]{
        mIndex += 1
    } else {
        containsMArray.append(mArraySort[mIndex])
        nIndex += 1
        mIndex += 1
    }
}

for i in containsMArray {
    result[mIndexDic[i]!] = 1
}

for i in result {
    print(i, terminator: " ")
}