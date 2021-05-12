import Cocoa

// 1. basic functions with/without params/returns
func hello() {
    print("hello")
}

func measureFlour(_ grams: Double) {
    print("We measured \(grams) of flour")
}

//hello()
//measureFlour(1.234)

func goodbye() -> String { "Good afternoon, good evening, and good night" }
var seeYa = goodbye()
//print(seeYa)

// 2. what is void?
func voidTest() -> Void {
    print("Testing void")
    return ()
}

//print(type(of: voidTest))

// 3. storing functions in variables
var myFunc: () -> (String) = { print("garbage"); return "salad" }
//print(type(of: myFunc))
//myFunc()

// 4. functions that return other functions

func returnsFunc(outside: String) -> ((String) -> (String)) {
    print("outer function was called")
    
    
    return { (inside) in
        print("inner function was called")
        return "This is \(outside) | this is \(inside)"
    }
}

let returnA = returnsFunc(outside: "it's out")
print(returnA)
print(type(of: returnA))

print(returnA("this is inside"))
