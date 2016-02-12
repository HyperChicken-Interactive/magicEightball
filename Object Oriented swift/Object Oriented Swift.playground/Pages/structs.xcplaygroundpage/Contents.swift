//Coords with two point
let x1:Int = 0
let y1:Int = 0

//We could make it a tuple?
let coords1:(x: Int, y: Int) = (0, 0)

coords1.x

//Even better, a struct:

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
//Structs are like blueprints
//Methods are kickass.

let coordPoint:Point = Point(x: 2, y: 2)
coordPoint.x

//instances of a method can be run using the . notation
print(coordPoint.surroundingPoints(withRange: 1))
