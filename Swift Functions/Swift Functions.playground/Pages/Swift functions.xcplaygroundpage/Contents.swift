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




