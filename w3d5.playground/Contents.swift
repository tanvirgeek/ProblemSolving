import Cocoa

var greeting = "Hello, playground"


func reverse(numbers:[Int])->[Int]{
    numbers.reduce([], { x,y in
        print(x, [y], [y] + x)
        return [y] + x
    })
}

reverse(numbers: [0,1,2,3,4])

[2] + [1]
