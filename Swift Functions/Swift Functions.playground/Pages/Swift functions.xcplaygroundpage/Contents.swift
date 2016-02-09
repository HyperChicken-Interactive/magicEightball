//: IM BACK... again...

//DRY: Don't repeat yourself. We're going to be working with functions this round.

let length: Int = 12
let width: Int = 10

/*
area = lenght*width
but wait! we could do this better!
*/

func/*Keyword*/ makeArea/*function name.*/(length: Int, width: Int)/*Provided peramiters*/ ->Int/*return value*/{
    let area :Int = length * width
    return area
    //Remember, swift likes colons.
}

print(makeArea(length, width: width))
//So apparently, when you call a function, the first input data is just the variable name while subsequent variables have to be named explicetly. Or not, who knows.

//Let's update this with local parameter names

func findArea(length l: Int, width w: Int) ->Int{
    let a :Int = l*w
    return a
}

findArea(length: 10, width: 20)
//TADA!

//We can capture the function returns like:
let exampleReturnValue:Int = findArea(length: 12, width: 15)

//DEFAULT VALUES && Tuples!

func carpetCostCalculator(area area: Int, color: String = "dark white") ->(Double, String){
    //For this exersize, we're going to assume the following values.
    //We also are going to make area a double and assign it to dbArea.
    let dbArea: Double=Double(area)
    //PRICES:
    //Grey = 1.0
    //Dark White = 2.0
    //Light black = 4.0
    var price: Double
    
    switch color{
        case "Grey", "Gray":
            price = dbArea
        case "dw", "dark white", "But It's still grey asshat!":
            price = dbArea * 2.0
        case "lb", "light black", "Still ******* GRAY!!!":
            price = dbArea * 4.0
    default:
        price = 1.0
        print(price * dbArea)
    }
    
    return (price, color)
}

let (carpetCost: Int, carpetColor: String) = carpetCostCalculator(area: exampleReturnValue)

/*
NOTES:
* All function parameters are treated as constants
* You can assign multiple variables a la golang
    to a function with multiple return types.
*/











