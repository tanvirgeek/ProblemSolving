import Cocoa

func checkSequenceOfOneTwoThree(numbers:[Int])->Bool{
    for (index, _) in numbers.enumerated() {
        guard index < numbers.count - 2 else{
            return false
        }
        
        let secondIndex = index + 1
        let thirdIndex = index + 2
        
        if numbers[index] == 1 && numbers[secondIndex] == 2 && numbers[thirdIndex] == 3{
            return true
        }
    }
    return false
}


checkSequenceOfOneTwoThree(numbers: [1,2,3])


func checkSevenInFirstFour(numbers:[Int])->Bool{
    numbers.enumerated().filter({$0.offset < 4}).map({$0.element}).contains(7)
}

checkSevenInFirstFour(numbers: [0,1])

func checkNumberOfSevenOccurance(numbers:[Int])->Int{
    return numbers.filter({$0 == 7}).count
}

checkNumberOfSevenOccurance(numbers: [7,2,7,8,7])


