import Cocoa

enum Crypto {
    case btc
    case ltc
    case chc
}
print(Crypto.btc)

enum CryptoString: String {
    case btc = "Bitcoin"
    case ltc = "Litecoin"
    case chc = "CheeseCoin"
}

print(CryptoString.chc.rawValue)

enum CyrptoParam {
    case btc(amount: Double)
}
print(CyrptoParam.btc(amount: 0.003))

enum BashCommand: String {
    case ls = """
ls -la /Users/Shared
"""
    case mkdir = """
    mkdir /Users/Shared/testDir
"""
}

func runBashCommand(_ cmd: String) {
    print(cmd)
}

runBashCommand("ls -la /Users/Shared; pwd; echo test")

func runBashWithEnum(_ cmd: BashCommand) {
    print(cmd.rawValue)
}
runBashWithEnum(.mkdir)

enum Salad {
    enum Vegetable {
        enum Cut {
            case diced
            case chopped
        }
        case tomato
        case cucumber
    }
    
    enum Dressing {
        case italian
        case oilAndVinegar
    }
    
    case vegetable(Vegetable, Vegetable.Cut)
    case dressing(Dressing)
}

var salad: [Salad] = []

func buildSalad(with ingredient: Salad) {
    switch ingredient {
    case .vegetable(.cucumber, .chopped):
        print("Add chopped cucumber")
    case .vegetable(.cucumber, .diced):
        print("Add diced cucumber")
    case .vegetable(.tomato, _):
        print("Add tomatoes cut any style")
    case .dressing(_):
        print("Just add some dressing")
    }
    
    salad.append(ingredient)
}

buildSalad(with: .vegetable(.cucumber, .diced))
buildSalad(with: .vegetable(.tomato, .chopped))
buildSalad(with: .dressing(.oilAndVinegar))

for ingredient in salad {
    print(ingredient)
}
