//: [Previous](@previous)

//ForIn Loops

var todo: [String] = ["Finish Collections course",
    "buy groceries",
    "resond to emails",
    "Order Book",
    "Print Out Drycleaning",
    "Something else"]

print(todo[0])
print(todo[1])
print(todo[2])

for task in todo{
    print(task)
}

//Range operators


for number in 1...12{
    print("5 times \(number) is \(5 * number)")
}

//Wile loops

var index: Int = 0

while index < todo.count{
    print(todo[index])
    index++
}

//In a while loop, the statment is checked first, then the task executed.

var counter: Int = 0

while counter < 2{
    print("\(counter) times")
    counter++
}

repeat{
    print("\(counter - 2) times")
    counter++
} while counter < 4



//In a repeat while loop, the task is executed first, then the statment checked.














//: [Next](@next)
