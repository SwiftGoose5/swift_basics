import Cocoa

var chips: (String, Int) = ("Chips", 2)
print(chips.0)

chips = (name: "Crisps", amount: 5)
print(chips.1)

let salad: (name: String, amount: Int)
salad = (name: "Salad", 3)
print(salad.amount)
print(salad.0)


var quad: (name: String,
           amount: Int,
           price: Double,
           function: () -> Void)

quad = ("First", 1, 1.23, { print("Function inside a tuple") })
print(quad.function)
print(type(of: quad.function))
quad.function()

func fillMyWallet(name: String, price: Double, amount: Int) -> (name: String, value: Double) {
    return (name, price * Double(amount))
}

let cheeseWallet = fillMyWallet(name: "🧀🪙", price: 0.002, amount: 5000)
let ghostWallet  = fillMyWallet(name: "👻🪙", price: 10.02, amount: 1000)
let saladWallet  = fillMyWallet(name: "🥗🪙", price: 3.102, amount: 1500)

let myWallet = (cheeseWallet, ghostWallet, saladWallet)

print("name: \(myWallet.2.name) | \(myWallet.2.value)")
