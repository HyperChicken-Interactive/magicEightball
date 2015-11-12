//: [Previous](@previous)

var arrayOfInts: [Int] = [0,1,2,3,4,5]

arrayOfInts.append(6)

arrayOfInts += [7]

let value = arrayOfInts[4]

let discardedValue = arrayOfInts.removeAtIndex(5)

//shhh

var iceCream: [String: String] = ["CC": "Chocolate Chip",
    "AP": "Apple Pie",
    "PB": "Peanut Butter"]

iceCream.updateValue("RR", forKey: "Rocky Road")

let applePie = iceCream["AP"]

iceCream.updateValue("Chocolate Chip Cookie Dough", forKey: "CC")

//For loops

// Enter your code below
var results: [Int] = []
var loop: [Int] = [1,2,3,4,5,6,7,8,9,10]

for multiplier in loop{
    results.append(multiplier * 6)
}

//While loop

let numbers = [2,8,1,16,4,3,9]
var sum = 0
var counter = 0

while counter < numbers.count{
    sum += numbers[counter]
    counter++
}

var moreresults: [Int] = []

for n in 1...100 {
    // Enter your code below
    if n % 7 == 0 &&  n % 2 != 0{
        moreresults.append(n)
    }
    
    // End code
}

//Switching up the challenges

var europeanCapitals: [String] = []
var asianCapitals: [String] = []
var otherCapitals: [String] = []

let world = [
    "BEL": "Brussels",
    "LIE": "Vaduz",
    "BGR": "Sofia",
    "USA": "Washington D.C.",
    "MEX": "Mexico City",
    "BRA": "Brasilia",
    "IND": "New Delhi",
    "VNM": "Hanoi"]

for (key, value) in world {
    switch
}







