import Cocoa

var greeting = "Hello, playground"

func checkFix(word:String)->Bool{
    var tempStr = word
    tempStr.removeFirst()
    return tempStr.hasPrefix("ix")
}

func findLargest(x:Int,y:Int,z:Int,a:Int,b:Int)->Int{
    return max(x, y, z, a, b)
}

findLargest(x: 10, y: 20, z: 30, a: 40, b: 50)

func findNearestToTen(a:Int,b:Int)->Int{
    guard a != b else{return 0}
    return abs(10-a) < abs(10-b) ? a : b
}

findNearestToTen(a: 9, b: 12)
