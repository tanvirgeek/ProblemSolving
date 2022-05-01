import Cocoa

var greeting = "Hello, playground"

func checkZero(numbers1:[Int],numbers2:[Int])->Bool{
    numbers1.first == 0 && numbers2.first == 0 ? true : false
        
}

checkZero(numbers1: [0,1,2,3], numbers2: [0,2,3,4])


func threeTwiceOrFiveTwice(numbers:[Int])->Bool{
    func checkTwice(x:Int)->Bool{
        numbers.reduce(0) {$1 == x ? $0 + 1 : $0} == 2
    }
    return checkTwice(x: 3) || checkTwice(x: 5)
}

threeTwiceOrFiveTwice(numbers: [4,4,1,2,5,5])


func doubleArray(numbers:[Int])->[Int]{
    guard let last = numbers.last else{
        return []
    }
    var result = Array(repeating: Int(0), count: 2 * numbers.count)
    result.removeLast()
    result.append(last)
    return result
}

doubleArray(numbers: [])
