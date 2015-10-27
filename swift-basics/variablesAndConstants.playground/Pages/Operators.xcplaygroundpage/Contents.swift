//: [Previous](@previous)

//Bianary Operators

let height: Double = 12 //in feet
let width: Double = 10 //in feet

let areaInSquareFeet: Double = height * width

//One square metre is 1 square foot devided by 10.764

let areaInSquareMetres: Double = areaInSquareFeet/10.764

/*
Four main types of comparitive operators:
== or "is x equal to y?"
!= or "is x not equal to y?"
> or "is x greater than y?"
< or "is x less than y?"
>= or "is x greater than y? No? Is it equal?"
<= or "is x less than y? No? Is it equal?"

*/

let string1 = "Hello!"
let string2 = "Hi!"
let string3 = "Hello!"

string1 == string2
string1 == string3

string1 != string2
string1 != string3

"a" > "b"
"A" > "a"

//Operator Precedence

var x = 100 + 100 - 5 * 2 / 3 % 7

25 - 5 * 2 + 5

//unary operators

var levelScore = 0
levelScore++
levelScore = levelScore + 1
//TADA!

levelScore--
levelScore = levelScore - 1


levelScore += 5
levelScore = levelScore + 5

//NOT Operatore

let on = true
let off = !on

//: [Next](@next)
