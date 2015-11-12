import Foundation

if 1 < 2{
    print("true")
}
//runs when the evaluated clause "1 < 2" is true.

var tempriture: Int = 2

if tempriture < 18 &&/* now runs if both clauses are satisfied. */ tempriture > 12{
    print("Wear a light sweater")
} else if /*Tries to run if the first evaluated clause returns "false"*/ tempriture < 12{
    print("I'm pretty sure you need a jacket")
} else {
    print("A tee is fine")
}

if 3 > 2 && 2 != 2{
    print("Clause 1 ran")
} else if 3 > 2 && 2 == 2{
    print("Clause 2 ran")
}

if 3 > 6 || 2 < 2{
    print("Clause 1 ran")
} else if 3 == 3 || 2 == 2{
    print("Clause 2 ran")
} else if 3 < 3 || 4 > 1{
    print("Clause 3 ran")
}

//////////
//Switch//
//////////

let airportCodes: [String] = ["LGA", "LHR", "CDC", "HKG", "DXB", "LGW", "JFK", "ORY"]

let airport: String = airportCodes[0]

switch airport{
    case "LGA" : print("New York")
    case "LHR" : print("London-Heathrow")
    case "CDC" : print("Paris")
    case "HKG" : print("Hong Kong")
    default: print("Nope, what airport is that?")
}
//shiney new if statment evaluates using the == operator

//lets try this with for loops

for airportCode in airportCodes{
    switch airportCode{
    case "LGA", "JFK" : print("New York")
    case "LHR", "LGW" : print("London")
    case "CDC", "ORY" : print("Paris")
    case "HKG" : print("Hong Kong")
    default: print("Nope, what airport is that?")
    }
}

var randomTempriture: Int = Int(arc4random_uniform(UInt32(150)))

switch randomTempriture {
case 0..<32: print("Forget clothes, you\'re a popsicle!")
case 32..<45: print("You\re gunna need a big coat...")
case 45..<70: print("It's a bit chilly, get a light jacket")
default: print("yeah, just don't.")
}











