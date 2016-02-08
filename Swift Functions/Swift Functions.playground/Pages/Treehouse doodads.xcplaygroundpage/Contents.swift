//Doing treehouse code chalenges here,
func greeting(){
    print("hello")
}

//

func temperatureInFahrenheit(temperature: Double) -> Double{
    let fahrenheit: Double = (temperature*9.0)/5.0+32.0
    return fahrenheit
}

let fahrenheitTemp: Double = temperatureInFahrenheit(24.0)

//

func getRemainder(value a: Int, divisor b: Int) -> Int {
    return (a % b)
}
let result: Int = getRemainder(value: 10, divisor: 3)