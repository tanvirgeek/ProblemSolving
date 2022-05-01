import Cocoa

var greeting = "Hello, playground"


func middleElement(numbers1:[Int],numbers2:[Int])->[Int]?{
    guard numbers1.count == 3, numbers2.count == 3 else{
        return nil
    }
    
    return [numbers1[1],numbers2[1]]
}

middleElement(numbers1: [1,2,3], numbers2: [3,2,1])

func firstTwoElements(numbers:[Int])->Int{
    if numbers.count == 0 {
        return 0
    }else if numbers.count == 1{
        return numbers[0]
    }else{
        return numbers[0] + numbers[1]
    }
}

firstTwoElements(numbers: [3,1,2])

firstTwoElements(numbers: [12,22,34,32])

func findLargest(numbers:[Int])->[Int]{
    numbers.map({_ in numbers.max()!})
}

findLargest(numbers: [6,6,6,6,6])

func findLargestAndReplace(numbers:[Int])->[Int]{
    numbers.map({ _ in numbers.reduce(0,{max($0,$1)}) })
}

findLargestAndReplace(numbers: [7,8,9,10,11,12,13])


