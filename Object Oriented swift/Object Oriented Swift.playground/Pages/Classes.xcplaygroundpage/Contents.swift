//We have the struct point here because we're going to need it. Just ignore it.

struct Point {
    let x:Int
    let y:Int
    
    init(x:Int, y:Int){
        self.x = x
        self.y = y
    }
    
    func surroundingPoints(withRange range: Int = 1) ->[Point]{
        var results:[Point] = []
        for xCoord in (self.x-range)...(self.x+range){
            for yCoord in (self.y-range)...(self.y+range){
                results.append(Point(x: xCoord, y: yCoord))
            }
        }
        return results
    }
}

//Now to the real code:

class Enemy{
    var hp: Int = 1
    var position: Point
    init(x: Int, y: Int){
        self.position = Point(x: x, y: y)
    }
    func decreaseHealth(factor by: Int){
        hp -= by
    }
}

class Tower{
    let position: Point
    var range:Int = 1
    var attk:Int = 1
    init(x: Int, y:Int, range: Int){
        self.position = Point(x: x, y: y)
        self.range = range
    }
    func fireAtEnemy(enemy e: Enemy){
        if testForInRange(position: self.position, range: self.range, target: e.position){
            while e.hp > 0{
                e.decreaseHealth(factor: self.attk)
                print("booyah! The tower killed it")
            }
        } else {
            print("Damn, it got away")
        }
        
    }
    func testForInRange(position p:Point, range r:Int, target t:Point) ->Bool{
        let availablePositions = position.surroundingPoints(withRange: range)
        for point in availablePositions {
            if (point.x == t.x) && (point.y == t.y){
                return true
            }
        }
    return false
    }
}

class SuperEnemy: Enemy {
    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        self.hp = 5
    }
}

class LaserTower: Tower {
    override init(x: Int, y: Int, range: Int) {
        super.init(x: x, y: y, range: range)
        self.range = 100
        self.attk = 50
    }
    override func fireAtEnemy(enemy e: Enemy) {
        while e.hp > 0{
            e.decreaseHealth(factor: self.attk)
            print("booyah! The tower killed it")
        }
    }
}

let tower:Tower = Tower(x: 0, y: 0, range: 1)
let enemy:Enemy = Enemy(x: 1, y: 1)

let sEnemy:SuperEnemy = SuperEnemy(x: 0, y: 0)
let lTower:LaserTower = LaserTower(x: 500, y: 100, range: 100)


tower.fireAtEnemy(enemy: enemy)












