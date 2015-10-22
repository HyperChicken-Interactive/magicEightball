//: [Previous](@previous)

/////////////////
/////Strings/////
/////////////////

let country = "USA"
let state = "NC"
let city = "Charlotte"
let street = "Park Rd"
let streetNumber = 3432

//Concatination
let concattinatedAddress = city + ", " + state + ", " + country

//String interpolation
let interpolatedAddress = "\(city), \(state), \(country)"

let interpolatedStreetAddress = "\(streetNumber) \(interpolatedAddress)"

//////////////////
/////Integers/////
//////////////////

let favoriteProgrammingLanguage = "Swift"
let year = 2014

////////////////
/////Floats/////
////////////////

var version = 2.0

/////////////////
/////Boolian/////
/////////////////

let isAwesome = true

////////////////////
/////Type safty/////
////////////////////


var someString = ""
/*
someString = 12.51
*/
//Will not work because "once a string always a string"

let bestPlayer: String = "GAMERGOD88"
var averagePointsPerGame: Double = 1543.152
//Use doubles unless absolutly nessesary otherwise.

let yearOfRetirment: Int = 2014
let highScore: Bool = true
//Explicitly declare variables. always


//: [Next](@next)
