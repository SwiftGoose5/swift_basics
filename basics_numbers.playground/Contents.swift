import Cocoa

var num: Int
num = 12

var x, y: Int

print(num + 21)
print(num - 9)
print(num * 3)
print(num / 6)
print(num % 2)

num = 5
print(num % 2)

let result = num.quotientAndRemainder(dividingBy: 3)
print("Quotient: \(result.quotient) and Remainder: \(result.remainder)")

num += 1

print(num)

x = 8
y = 2
var xy = Int(pow(Double(x), Double(y)))
print(xy)
var root = Int(sqrt(Double(xy)))
print(root)

var six = "6rt"
var sixFromString = Int(six)
print("six: \(six) and sixString: \(sixFromString)")

var float: Float
float = 3.33

var dub: Double
dub = 3.12345678910
print(dub)
print(dub.rounded())

var dubString = String(format: "%.5f", dub)
print(dubString)
