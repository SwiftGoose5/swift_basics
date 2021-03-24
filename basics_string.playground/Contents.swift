import Cocoa

var bitcoin = "Bitcoin"
let cheeseCoin = "CheeseCoin"

var long = """
    this string is
    far too long to
only fit on one line.
"""

print(bitcoin)
print(cheeseCoin)
print(long)
print(bitcoin + cheeseCoin)
print(bitcoin + " " + cheeseCoin)
print("I like bitcoin and cheeseCoin")
print("I like \(bitcoin) and \(cheeseCoin)")
print("I bought \(1) \(cheeseCoin) for $\(1 * 10000)")

for char in cheeseCoin {
    print("char: \(char)")
}

print(cheeseCoin.count)
print(cheeseCoin.lowercased())
print(cheeseCoin.first)
print("".first)
print(bitcoin.removeFirst())
print(bitcoin.replacingOccurrences(of: "it", with: "Ghost"))
print(bitcoin.sorted())
print(bitcoin.split(separator: "t"))

bitcoin.append(" is interesting.")
print(bitcoin)

if (bitcoin == cheeseCoin) {
    print("I'm not sure why these are teh same.")
} else {
    print("Good, they're not the same...")
}
