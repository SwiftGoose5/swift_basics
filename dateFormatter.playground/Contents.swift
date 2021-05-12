import Cocoa

let dateFormatter = DateFormatter()
dateFormatter.amSymbol = "am"
dateFormatter.pmSymbol = "pm"

dateFormatter.dateStyle = .medium
dateFormatter.timeStyle = .long

dateFormatter.locale = Locale(identifier: "en_US")

print(dateFormatter.string(from: Date()))
dateFormatter.weekdaySymbols = ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"]

dateFormatter.dateFormat = "EEE MM/dd/Y, 'at on near' h:mm:ss a"
print(dateFormatter.string(from: Date()))

dateFormatter.dateFormat = "EEEE, MM.dd.Y, h:mm"
print(dateFormatter.string(from: Date()))

dateFormatter.dateFormat = "EEEEE, MM.dd.Y, h:mm"
print(dateFormatter.string(from: Date()))

dateFormatter.dateFormat = "M/dd/Y, h:mm:ss a"
print(dateFormatter.string(from: Date()))

dateFormatter.dateFormat = "MM/dd/Y, h:mm:ss a ZZZ"
print(dateFormatter.string(from: Date()))

dateFormatter.locale = Locale(identifier: "fr_FR")
dateFormatter.dateFormat = "MM/dd/Y, 'at' h:mm:ss.SSSS"
print(dateFormatter.string(from: Date()))
