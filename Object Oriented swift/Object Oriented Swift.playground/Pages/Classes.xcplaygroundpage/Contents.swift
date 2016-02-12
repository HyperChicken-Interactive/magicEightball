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
    var hp: Int = 2
    var position: Point
    init(x: Int, y: Int){
        self.position = Point(x: x, y: y)
    }
    func decreaseHealth(factor: Int){
        hp -= factor
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
    func fireAtEnemy(enemy:Enemy){
        
    }
    func testForInRange(position p:Point, range r:Int, target t:Point) ->Bool{
        let availablePositions = position.surroundingPoints(withRange: range)
        for p in availablePositions {
            if (p.x == t.x) && (p.x == p.y){
                return true
            }
        }
    }
}
















