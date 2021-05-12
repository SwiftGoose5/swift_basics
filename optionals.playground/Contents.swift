import Cocoa

var num: Int
var numOpt: Int?

num = 5
numOpt = 6

print(num)
print(numOpt)

numOpt = nil
print(numOpt)

print(numOpt ?? 3)

numOpt = 2
//print(numOpt!)

numOpt = 3
if var secondNum = numOpt {
    print(secondNum)
    secondNum = secondNum * 2
    print(secondNum)
} else {
    print("Something went wrong")
}

