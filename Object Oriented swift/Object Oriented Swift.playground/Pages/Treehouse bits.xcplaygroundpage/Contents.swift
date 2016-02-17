struct User{
    let name:String
    let age:Int
}
//

struct Book {
    let title: String
    let author: String
    let price: Double
}

let myBook:Book = Book(title: "Animal Farm", author: "George Orwell", price: 6.00)
//
struct Person {
    let firstName: String
    let lastName: String
    func getFullName() ->String{
        return ("\(firstName) \(lastName)")
    }
}
let aPerson:Person = Person(firstName: "John", lastName: "CENA")
let fullName:String = aPerson.getFullName()

//

struct RGBColor {
    let red: Double
    let green: Double
    let blue: Double
    let alpha: Double
    
    let description: String
    
    // Add your code below
    init(red:Double, green:Double, blue:Double, alpha:Double){
        self.red = red
        self.blue = blue
        self.green = green
        self.alpha = alpha
        self.description = "red: \(red), green: \(green), blue: \(blue), alpha \(alpha)"
    }
}

//

class Shape {
    var numberOfSides:Int
    init(sides s: Int){
        self.numberOfSides = s
    }
}

let someShape:Shape = Shape(sides: 2)

//

struct Location {
    let latitude: Double
    let longitude: Double
}

class Business{
    let location:Location
    let name:String
    init(loc: Location, name:String){
        self.location = loc
        self.name = name
    }
}

let coords:Location = Location(latitude: 10.0, longitude: 10.0)

let someBusiness:Business = Business(loc: coords, name: "AND HIS NAME IS JOHN CENA")









