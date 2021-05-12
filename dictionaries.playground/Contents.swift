import Cocoa

//// 1. declaration & creation
//var snack: [String: Int]
//snack = [:]
//print(snack.capacity)
//print(snack.count)
//
//// 2. adding and updating items
//snack["Doritos"] = 1
//print(snack.capacity)
//print(snack.count)
////print(snack)
//
//snack.updateValue(3, forKey: "Skittles")
//print(snack.capacity)
//print(snack.count)
////print(snack)
//
//snack.updateValue(500, forKey: "Doritos")
//snack["Nerds Rope"] = 5
//print(snack)
//print(snack.capacity)
//print(snack.count)
//
//snack["Iced Honey Bun"] = 3
//print(snack)
//print(snack.capacity)
//print(snack.count)
//
//// 3. working with count / capacity
//print(snack.count)
//print(snack.isEmpty)
//print(snack.capacity)
//
//var veggie: [String: Int] = ["Tomato": 1]
//print(veggie.capacity)
//print(veggie.count)
//veggie.reserveCapacity(50)
//print(veggie.capacity)
//print(veggie.count)
//
//// 4. removing items
//print(snack.removeValue(forKey: "Doritos"))
//print(snack)
//snack.removeAll()
//print(snack)
//
//snack["Doritos"] = 1
//print(snack)
//
//snack["Doritos"] = 5
//print(snack)
//
//snack["Nerds Rope"] = 5
//print(snack)

// 5. in-depth example


struct MagicCard: Hashable, CustomStringConvertible {
    enum Rarity: String, RawRepresentable {
        case Common, Uncommon, Rare
    }
    enum Condition: String, RawRepresentable {
        case HeavilyPlayed, LightlyPlayed, Good, VeryGood, NearMint
    }
    
    let name: String
    let rarity: Rarity
    var condition: Condition
    let description: String
    
    init(_ name: String, _ rarity: Rarity, _ condition: Condition) {
        self.name = name
        self.rarity = rarity
        self.condition = condition
        self.description = "\(name) | \(rarity) | \(condition)"
    }
}

var mtgCollection: [MagicCard:Int] = [:]

mtgCollection[MagicCard("Mind Over Matter", .Rare, .NearMint)] = 1
mtgCollection[MagicCard("Black Lotus", .Rare, .NearMint)] = 10
mtgCollection[MagicCard("Mountain", .Common, .HeavilyPlayed)] = 1

mtgCollection[MagicCard("Mind Over Matter", .Rare, .HeavilyPlayed)] = 1
mtgCollection.updateValue(2, forKey: MagicCard("Mind Over Matter", .Rare, .NearMint))

//print(mtgCollection)
//print(mtgCollection.keys)
//print(mtgCollection.values)

func getNumberOfCard(_ collection: [MagicCard:Int],
                     called name: String,
                     _ rarity: MagicCard.Rarity,
                     _ condition: MagicCard.Condition) -> Int? {
    return collection[MagicCard(name, rarity, condition)]
}
getNumberOfCard(mtgCollection, called: "Black Lotus", .Rare, .HeavilyPlayed)

func searchCollectionByName(_ collection: [MagicCard:Int],
                            called name: String) -> MagicCard? {
    for card in collection {
        if card.key.name == name {
            return card.key
        }
    }
    return nil
}

print(searchCollectionByName(mtgCollection, called: "Mountain"))
