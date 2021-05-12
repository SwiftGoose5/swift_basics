import Cocoa

var str = "Hello, playground"

var bitcoinPrice = 55000
var cheeseCoinPrice: Int

var cheeseCoinExists = true

if cheeseCoinExists {
    cheeseCoinPrice = 10000
} else {
    cheeseCoinPrice = 0
}

print(cheeseCoinPrice)

func returnsTrue() -> Bool {
    return true
}

if !returnsTrue() {
    print("It was true all along!")
} else {
    print("Sadly, it was false")
}

if (cheeseCoinPrice < 15000) && (cheeseCoinPrice < bitcoinPrice) {
    print("Buy CheeseCoin!!!")
} else {
    print("Buy Bitcoin instead!!!")
}

cheeseCoinPrice = 15
if (cheeseCoinPrice < 9000) || (cheeseCoinPrice > bitcoinPrice) {
    print("Buy CheeseCoin!!")
} else {
    print("Buy BTC!!")
}

if bitcoinPrice <= 60000 {
    print("Buy 1 nested BTC")
    
    if bitcoinPrice <= 55000 {
        print("Buy 2 nested BTC")
        
        if bitcoinPrice <= 50000 {
            print("Buy 3 nested BTC")
        }
    }
}

let btc = "BTC"

if btc == "CheeseCoin" {
    print("Something is wrong")
} else if btc == "GhostCoin" {
    print("Something is still wrong")
} else if btc == "BTC" {
    print("ok, we're good.")
}


cheeseCoinPrice = 15
print(cheeseCoinPrice)

if cheeseCoinExists {
    cheeseCoinPrice = 10000
} else {
    cheeseCoinPrice = 0
}

if cheeseCoinExists { cheeseCoinPrice = 2000 } else { cheeseCoinPrice = 0 }

print(cheeseCoinPrice)

cheeseCoinExists ? (cheeseCoinPrice = 5) : (cheeseCoinPrice = 0)
print(cheeseCoinPrice)

(bitcoinPrice < 60000) && (cheeseCoinExists) ? (cheeseCoinPrice = 10) : (cheeseCoinPrice = -1)
print(cheeseCoinPrice)
