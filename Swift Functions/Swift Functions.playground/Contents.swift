//: IM BACK... again...

//DRY: Don't repeat yourself. We're going to be working with functions this round.

let length: Int = 12
let width: Int = 10

/*
area = lenght*width
but wait! we could do this better!
*/

func makeArea(length: Int, width: Int) ->Int{
    let area :Int = length * width
    return area
    //Remember, swift likes colons.
}

print(makeArea(length, width: width))
//So apparently, when you call a function, the first input data is just the variable name while subsequent variables have to be named explicetly. Or not, who knows.