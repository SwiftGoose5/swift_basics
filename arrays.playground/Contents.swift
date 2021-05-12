import Cocoa

// 1. declaration & initialization
var array0: [String]
var array1 = [String?]()
var array2: Array<Double> = [3.14]
var array3 = [String](repeating: "Bacon", count: 12)
var array4 = ["Chips", "Salad", "Grilled Cheese"]

array0 = []

print("array0: \(array0)")
//print("array1: \(array1)")
//print("array2: \(array2)")
//print("array3: \(array3)")
//print("array4: \(array4)")

// 2. adding and replacing items
array0.append("Morph Ball")
array0.append("Bombs")
array0.append("Super Missiles")
print(array0)

array0.insert("Missiles", at: 2)
print(array0)

array0.replaceSubrange(2...3, with: ["High Jump Boots", "Varia Suit"])
print(array0)
array0[2] = "Power Bombs"
print(array0)


// 3. removing items
array0.removeAll(keepingCapacity: true)
print(array0)

// 4. count and capacity
print(array0.capacity)
print(array0.count)
print(array0.isEmpty)
array0.append("Power Bombs")
array0.append("Power Bombs")
array0.append("Power Bombs")
array0.append("Power Bombs")
array0.append("Power Bombs")
print(array0.capacity)

// 5. basic example storing structs

struct VideoGame {
    let name: String
    let genre: String
}

var topFiveGames = [VideoGame]()

topFiveGames.append(VideoGame(name: "Dark Souls", genre: "ARPG"))
topFiveGames.append(VideoGame(name: "Diablo II", genre: "ARPG"))
topFiveGames.append(VideoGame(name: "CS 1.6", genre: "FPS"))
topFiveGames.append(VideoGame(name: "Chrono Trigger", genre: "RPG"))
topFiveGames.append(VideoGame(name: "Super Metroid", genre: "Platformer"))

print(topFiveGames[0].name)

for (index, game) in topFiveGames.enumerated() { print("\(index+1) | \(game.name)") }
