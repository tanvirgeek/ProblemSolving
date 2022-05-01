import Cocoa

var greeting = "Hello, playground"


func checkThreeOrFiveMultiple(numbers:[Int])->Bool{
    numbers.contains { [5,3].contains($0) }
}

checkThreeOrFiveMultiple(numbers: [1,2,6,0,101])

func checkNotThreeOrFive(numbers:[Int])->Bool{
    !numbers.contains(3) && !numbers.contains(5)
}

checkNotThreeOrFive(numbers: [1,2,3])

func checkThreeOrFive(numbers:[Int])->Bool{
    numbers.contains(3) || numbers.contains(5)
}

checkThreeOrFive(numbers: [1,2,4,6])

func firstAndLast(numbers:[Int])->[Int]{
    guard let first = numbers.first, let last = numbers.last else{
        return []
    }
    return [first,last]
}

firstAndLast(numbers: [1,2,3,4,5])
