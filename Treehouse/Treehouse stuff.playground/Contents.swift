//
struct Tag {
    let name: String
}

struct Post {
    let title: String
    let author: String
    let tag: Tag
    
    func description() -> String {
        return "\(title) by \(author). Filed under \(tag.name)"
    }
}

let firstPost:Post = Post(title: "AND HIS NAME IS", author: "JOHN CENA", tag: Tag(name: "DO DODO DOOOO"))

let postDescription: String = firstPost.description()

//

class Point {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int){
        self.x = x
        self.y = y
    }
}


class Machine {
    var location: Point
    
    init() {
        self.location = Point(x: 0, y: 0)
    }
    
    func move(direction: String) {
        print("Do nothing! I'm a machine!")
    }
}

class Robot: Machine{
    override func move(direction: String) {
        switch direction{
        case "Up":
            location.y++
        case "Down":
            location.y--
        case "Right":
            location.x++
        case "Left":
            location.x--
        default:
            print("Lol nope.")
        }
    }
}




