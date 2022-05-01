import Cocoa

var greeting = "Hello, playground"

func checkThreeTimes(numbers:[Int],num:Int)->Bool{
   
    for (index, number) in numbers.enumerated(){
        let indexInBound = index + 2 < numbers.count
        if !indexInBound{ return false}
        let numberMatches = number == num && numbers[index + 1] == num && numbers[index + 2] == num
        if indexInBound && numberMatches{
            return true
        }
    }
    return false
}

checkThreeTimes(numbers: [1,1,1,3,3,3,2,2], num: 2)

func sevenCounter(numbers:[Int])->Int{
    var count = 0
    for (index,number) in numbers.enumerated(){
        guard index + 1 < numbers.count else{
            return count
        }
        let nextNumber = numbers[index + 1]
        if number == 7,nextNumber == 7{
            count += 1
        }
    }
    return count
}

sevenCounter(numbers: [0,1,2,7,0,7,7,9])

func stringAtEven(_ word:String)->String{
    word.enumerated().filter({$0.offset % 2 == 0}).map({String($0.element)}).joined()
}

stringAtEven("abcdef")

func removeA(_ word:String)->String{
    word.enumerated().filter({
        if ($0.offset == 0 || $0.offset == word.count-1){
            return true
        }else if $0.element.lowercased() == "a"{
            return false
        }else{
            return true
        }
    }).map({String($0.element)}).joined()
}

removeA("abcabca")
removeA("abcd")
removeA("abcda")
removeA("aabcdaa")
removeA("aabaaaacdaa")
