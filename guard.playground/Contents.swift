import Cocoa

// 1. working with optionals
var myCheeseWallet: Double = 0

func buyCheeseCoin(_ amount: Double?) {
    guard let amount = amount else {
        print("There are no coins to buy")
        return
    }
    
    myCheeseWallet += amount
}
print(myCheeseWallet)
buyCheeseCoin(3.14)
print(myCheeseWallet)

// 2. practical example with URLSession

func pingGoogle() {
    guard let url = URL(string: "https://www.google.com") else {
        print("Busted URL")
        return
    }
    
    let req = URLRequest(url: url)
    let defaultSession = URLSession(configuration: .default)
    
    defaultSession.dataTask(with: req) { (data, response, error) in
        guard let data = data else {
            print(error as Any)
            return
        }
        guard let response = response else {
            print(error as Any)
            return
        }
        
        print(data)
        print(response)
    }.resume()
}

pingGoogle()
