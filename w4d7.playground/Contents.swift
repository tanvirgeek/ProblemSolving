import Cocoa

func sumExeceptImmediate11(numbers:[Int])->Int{
    numbers.enumerated().reduce(0, {
        if $1.offset > 0{
            return numbers[$1.offset - 1] == 11 ? $0 : $0 + $1.element
        }else{
            return $0 + $1.element
        }
    })
}

sumExeceptImmediate11(numbers: [1,11,2])

func countEvenInteger(numbers:[Int])->Int{
    numbers.reduce(0, { $1 % 2 == 0 ? $0 + 1 : $0 })
}

countEvenInteger(numbers: [1])

func diffMaxMin(numbers:[Int])->Int?{
    guard let max = numbers.max(),let min = numbers.min() else{
        return nil
    }
    return max - min
}

diffMaxMin(numbers: [1])
