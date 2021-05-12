import Cocoa

let litecoin = "LTC"
let cardano = "ADA"

let cryptoString = "LTC"

switch cryptoString {
case "LTC":
    print("Chose LTC first!")
case litecoin:
    print("Chose \(litecoin)")
case cardano:
    print("Chose \(cardano)")
case "BTC":
    print("Chose BTC")
default:
    print("You must be new here")
}

let chcPrice = 8

switch chcPrice {
case 0..<4:
    print("Buy the dip")
case 4...7:
    print("Wait for the dip")
case 8:
    print("Find another altcoin")
default:
    print("Something went horribly wrong")
}

enum Cyrpto {
    case btc
    case ltc
    case chc
}

func getCrypto(crypto: Cyrpto) {
    switch crypto {
    case .btc:
        print("BTC")
    case .ltc:
        print("LTC")
    case .chc:
        print("CHC")
    }
}

getCrypto(crypto: .chc)
