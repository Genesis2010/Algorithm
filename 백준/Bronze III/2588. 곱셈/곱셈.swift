var input_1 = Int(readLine()!)!

var input_2 = readLine()!

var input_2_all = Int(input_2)!

var input_int = Array(input_2).map { Int(String( $0 ))! }

print(input_1 * input_int[2])
print(input_1 * input_int[1])
print(input_1 * input_int[0])
print(input_1 * input_2_all)