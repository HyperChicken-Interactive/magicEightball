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

//

func getTowerCoordinates(location: String) ->(Double, Double){
    switch location{
    case "Eiffel Tower":
        return (48.8582, 2.2945)
    case "Great Pyramid":
        return (29.9792, 31.1344)
    case "Sydney Opera House":
        return (33.8587, 151.2140)
    default:
        return (0, 0)
    }
}