import Cocoa

var greeting = "Hello, playground"

func startWithIs(word:String)->Bool{
    return word.hasPrefix("Is")
}

startWithIs(word: "Hot")

func isBetweenTenToThirty(x:Int, y:Int)->Bool{
    return (x >= 10 && x <= 30) || (y >= 10 && y <= 30)
}

isBetweenTenToThirty(x: 31, y: 8)






