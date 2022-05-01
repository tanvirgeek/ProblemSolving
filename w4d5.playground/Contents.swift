import Cocoa

var greeting = "Hello, playground"


func swapFirstWithLast(numbers:[Int])->[Int]{
    var tempNumbers = numbers
    let first = tempNumbers.removeFirst()
    let last = tempNumbers.removeLast()
    return [last] + tempNumbers + [first]
}

swapFirstWithLast(numbers: [1,2,3,4])

func middleArray(numbers:[Int])->[Int]?{
    guard numbers.count % 2 == 0, numbers.count > 1 else{
        return nil
    }
    return [numbers[numbers.count/2 - 1],numbers[numbers.count/2]]
}

middleArray(numbers: [1,2,3,4,5,6])

func sumOfTwoIntegers(numbers1:[Int],numbers2:[Int])->[Int]{
    let sum1 = numbers1.reduce(0, {$1 + $0})
    let sum2 = numbers2.reduce(0, {$1 + $0})
    
    if sum1 > sum2 || sum1 == sum2{
        return numbers1
    }else{
        return numbers2
    }
}
sumOfTwoIntegers(numbers1: [22,5], numbers2: [21,6])
