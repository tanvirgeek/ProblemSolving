import Cocoa

var greeting = "Hello, playground"


func leftRotation(numbers:[Int], n:Int)->[Int]{
    var newNumbers = numbers
    for _ in 1...n{
        let first = newNumbers.removeFirst()
        newNumbers.append(first)
    }
    return newNumbers
}

leftRotation(numbers: [55,10,5,33,42],n: 3)

func sumOfAllElements(numbers:[Int])->Int{
    numbers.reduce(0, {x,y in
        x + y
    })
}

sumOfAllElements(numbers: [1,2,3])

func checkEqual(numbers:[Int])->Bool{
    numbers.first == numbers.last
}

checkEqual(numbers: [6,4,3,3,6])

func check5(numbers:[Int])->Bool{
    numbers.first == 5 || numbers.last == 5
}

check5(numbers: [])

func checkFive(numbers:[Int])->Bool{
    numbers.enumerated().filter({
        if $0.offset == 1 || $0.offset == numbers.count - 1{
            return $0.element == 5
        }
        return false
    }).count > 0
}

checkFive(numbers: [0,3,4,5,3,2,2,9,1,5])
