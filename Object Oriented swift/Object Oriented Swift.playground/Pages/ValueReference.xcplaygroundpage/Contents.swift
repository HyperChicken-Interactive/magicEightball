struct User{
    var fullName: String
    var email:String
    var age:Int
}

var someUser:User = User(fullName: "John Smith", email: "johnsmith@tardis.net", age: 903)

var anotherUser = someUser

someUser.email = "thedoctor@tardis.co.uk"

anotherUser.email
someUser.email

//

class Person{
    var fullName: String
    var email:String
    init(name n: String, email e:String) {
        self.fullName = n
        self.email = e
    }
}

var someCompanion:Person = Person(name: "Rose Tyler", email: "rtyler@tardis.co.uk")

var anotherCompanion:Person = someCompanion

anotherCompanion.fullName = "Donna Noble"

anotherCompanion.fullName
someCompanion.fullName

//































