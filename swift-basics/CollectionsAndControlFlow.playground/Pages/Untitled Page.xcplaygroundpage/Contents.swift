    //Arrays

var todo: [String] = ["Finish Collections course",
    "buy groceries",
    "resond to emails"]

todo.append("Pick Up Drycleaning.")

todo += ["Order Book online", "Learn GO!"]

let greetings: [String] = ["Well hello there!", "How're you?", "What's Up?"]

//greetings.append("Hey there!")
//Doesn't work, greetings is constant

//Reading From Arrays

let firstTask = todo[0]
let thirdTask = todo[2]
    
todo[4] = "Brush Teeth"
    
    
//inserting to arrays

todo[3]
    
todo.insert("Buy Book", atIndex: 3)

todo[3];
    
//removing array
    
todo.removeAtIndex(3)
    
todo.count
    