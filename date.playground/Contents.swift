import Cocoa

let dateFormatter = DateFormatter()
dateFormatter.dateStyle = .medium
dateFormatter.timeStyle = .medium

let present = Date()
let distantPast = Date.distantPast
let past = Date(timeInterval: -3600, since: present)
let future = Date(timeInterval: 3600, since: present)
let distantFuture = Date.distantFuture

//print(dateFormatter.string(from: distantPast))
//print(dateFormatter.string(from: past))
//print(dateFormatter.string(from: present))
//print(dateFormatter.string(from: future))
//print(dateFormatter.string(from: distantFuture))

let interval = DateInterval(start: past, duration: 7200)
print(interval.start)
print(interval.end)
print(interval.duration)

let anotherInterval = DateInterval(start: past, end: future)
print(anotherInterval.start)
print(anotherInterval.end)
print(anotherInterval.duration)
