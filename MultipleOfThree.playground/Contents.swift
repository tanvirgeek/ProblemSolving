import Cocoa

var greeting = "Hello, playground"

func checkMultipleOfThreeOrFive(positiveNumber:Int){
    guard positiveNumber >= 0 else{
        print("number is less than 0")
        return
    }
    
    if positiveNumber == 0{
        print("\(positiveNumber) is multiple of 3 and 5")
    }
    else if positiveNumber % 3 == 0{
        print("\(positiveNumber) number is multiple of 3")
    }else if(positiveNumber % 5 == 0){
        print("\(positiveNumber) number is multiple of 5")
    }else{
        print("\(positiveNumber) number is not multiple of 3 or 5")
    }
}

checkMultipleOfThreeOrFive(positiveNumber: 0)
