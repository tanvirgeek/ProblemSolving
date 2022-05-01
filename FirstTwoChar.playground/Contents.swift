import Cocoa

func firstTwoChar(str:String)->String{
    var givenString = str
    let firstTwoChar = String(givenString.removeFirst()) + String(givenString.removeFirst())
    
    givenString.removeLast()
    givenString.removeLast()
    
    return firstTwoChar + givenString + firstTwoChar
}


firstTwoChar(str: "1234567")


func firstTwo(str:String)->String{
    var firstTwoChar = str.prefix(2)
    return firstTwoChar + str + firstTwoChar
}

firstTwo(str: "12345")
