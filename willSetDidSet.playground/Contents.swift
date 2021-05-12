import Cocoa

class CheeseCoin {
    var price: Double = 0 {
        
        willSet {
            if price != newValue {
                print("CHC price changed to: \(newValue)")
            }
        }
        
        didSet {
            if price != oldValue {
                print("CHC price was: \(oldValue)")
            }
        }
    }
    
    init(_ price: Double) {
        self.price = price
    }
    
    func pump(_ price: Double) {
        self.price = price
    }
    
}

var chc = CheeseCoin(1.0)
chc.pump(500)
chc.pump(1000)
chc.pump(20000)
