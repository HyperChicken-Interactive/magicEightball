//: [Previous](@previous)

/*
Airport codes:

LGA = La Guardia
LHR = London-Heathrow
CDG = Charles De Gaulle
HKG = Hong Kong Intl.
DXB = Dubai Intl.
*/

var airportCodes: [String: String] = ["LGA": "La Guardia",
    "LHR": "London-Heathrow",
    "CDG": "Charles De Gaulle",
    "HKG": "Hong Kong Intl.",
    "DXB": "Dubai Intl.",
    "ORD": "Los Angeles Intl."]

//Get info on a variable/constant by holding ALT/OPTION and hovering over it, you should see a "?"

//Reading from dictionaries.

airportCodes["LGA"]
//remember to maintain case!

//Inserting Key value pairs

airportCodes["SYD"] = "Sydney Airport"

airportCodes["ORD"] = "Chicago O'hare intl"

airportCodes.updateValue("Dublin Airport", forKey: "DUB")

//removing key value pairs

airportCodes["DXB"] = nil

airportCodes.removeValueForKey("DUB")

//Dealing with nonexistant data.

let airportName = airportCodes["LGA"]
airportName.dynamicType

let orlandoAirport = airportCodes["MCO"]

//: [Next](@next)
