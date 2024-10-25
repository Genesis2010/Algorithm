let nk = readLine()!.split(separator: " ").map{Int($0)!}
let (k, n) = (nk[0], nk[1])

var nums = [Int]()
var target = 0
var result = 0

for _ in 0..<k {
   nums.append(Int(readLine()!)!)
}

var start = 1
var end = nums.max()!

while start <= end {
   var count = 0
   let mid = (end + start) / 2
   
   for i in 0..<k {
       count += (nums[i] / mid)
   }
   
   if count < n {
       end = mid - 1
   } else{
       start = mid + 1
   }
}

print(start - 1)