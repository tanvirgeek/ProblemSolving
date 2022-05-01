import Cocoa

var greeting = "Hello, playground"



func largestValue(numbers:[Int])->Int?{
    
    guard let first = numbers.first, let last = numbers.last else{
        return nil
    }
    
    let middleValues = numbers.count % 2 == 1 ? [numbers[(numbers.count - 1)/2]] : [numbers[numbers.count/2],numbers[numbers.count/2 - 1]]
    
    let values = [first,last] + middleValues
    
    //return values.reduce(Int.min,{max($0,$1)})
    return values.max()
}

largestValue(numbers: [1,2,77,998,101])

func middleThree(numbers:[Int])->[Int]{
    guard numbers.count % 2 == 1, numbers.count >= 3 else{
        return []
    }
    let firstIndex = (numbers.count - 1)/2 - 1
    return [numbers[firstIndex], numbers[firstIndex + 1], numbers[firstIndex + 2]]
}

middleThree(numbers: [1,2,3,4,5,6,7,8,9,10,11])

func checkArray(numbers:[Int],container1:[Int],container2:[Int])->Bool{
    guard numbers.count == 4, container1.count == 2, container2.count == 2 else{
        return false
    }
    return !numbers.contains(where: {!container1.contains($0) && !container2.contains($0)})
}

checkArray(numbers: [1,1,1,10,11], container1: [1,3], container2: [2,5])
