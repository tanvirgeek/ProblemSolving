import Cocoa
import PlaygroundSupport
import Darwin



func findFactors(of x:Int, lowerLimit:Int)->Set<Int>{
    let maxFactor = Int(floor(Double(x/2)))
    var resultSet = Set<Int>()
    for i in 1...maxFactor{
        if x % i == 0{
            let factor = x/i
            if factor >= lowerLimit{
                resultSet.insert(factor)
            }
        }
    }
    return resultSet
}

func findCommonFactor(of ar:[Int],lowerLimit:Int)->[Int]{
    var result = [Int]()
    var tempSets = [Set<Int>]()
    for number in ar{
        tempSets.append(findFactors(of: number, lowerLimit: lowerLimit))
    }
    let firstSet = tempSets.first ?? Set([])
    let resultSet = tempSets.reduce(firstSet, {$0.intersection($1)})
    result = Array(resultSet)
    return result
}

func findMultiples(of x:Int,upperLimit:Int)->[Int]{
    let maxFactor = Int(floor(Double(upperLimit/x)))
    var result = [Int]()
    for i in 1...maxFactor{
        result.append(x * i)
    }
    return result
}

func findCommonMultiples(ar:[Int],upperlimit:Int)->[Int]{
    var setMultiples = [Set<Int>]()
    for number in ar{
        let multiples = findMultiples(of: number, upperLimit: upperlimit)
        let multiplesSet = Set(multiples)
        setMultiples.append(multiplesSet)
    }
    let firstSet = setMultiples.first ?? Set([])
    let commonSet = setMultiples.reduce(firstSet, {$0.intersection($1)})
    return Array(commonSet)
}


func getTotalX(a: [Int], b: [Int]) -> Int {
    let upperLimit = b.min() ?? 0 + 1
    let lowerLimit = a.max() ?? 0 - 1
    print(upperLimit+1, lowerLimit - 1)
    let multiples = Set(findCommonMultiples(ar: a, upperlimit: (upperLimit)))
    let factors = Set(findCommonFactor(of: b, lowerLimit: (lowerLimit)))
    
    return Array(multiples.intersection(factors)).count
}

getTotalX(a: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], b: [100, 99, 98, 97, 96, 95, 94, 93, 92, 91])

findMultiples(of: 4, upperLimit: 101)

func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
     var max = 0
     var notPossibleCount = 0
     for keyboard in keyboards{
         for drive in drives{
             
            if keyboard + drive > b{
                notPossibleCount += 1
            }else{
                if keyboard + drive > max{
                   max = keyboard + drive
                }
             }
         }
     }
     let maxNotPossible = keyboards.count * drives.count
     if notPossibleCount == maxNotPossible{
         return -1
     }else{
         return max
     }

}

getMoneySpent(keyboards: [5], drives: [4], b: 5 )

//factorial

func carryAll(_ arr: [Int]) -> [Int] {
    var result = [Int]()

    var carry = 0
    for val in arr.reversed() {
        let total = val + carry
        let digit = total % 10
        carry = total / 10
        result.append(digit)
    }

    while carry > 0 {
        let digit = carry % 10
        carry = carry / 10
        result.append(digit)
    }

    return result.reversed()
}

func factorial(_ n: Int) -> String {
    var result = [1]
    for i in 2...n {
        result = result.map { $0 * i }
        result = carryAll(result)
    }

    return result.map(String.init).joined()
}

factorial(25)

//kangaro
func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    // Write your code here
    if x1<x2{
        guard v1 > v2 else{
            return "NO"
        }
        
        var t = 0
    
        repeat{
            if (x2 + v2*t) == (x1 + v1*t){
                return "YES"
            }
            t += 1
        }while (x2 + v2*t)>=(x1 + v1*t)
    }
    
    if x2 < x1{
        guard v2 > v1 else{
            return "NO"
        }
        
        var t = 0
        repeat{
            if (x2 + v2*t) == (x1 + v1*t){
                return "YES"
            }
            t += 1
        }while (x2 + v2*t)<=(x1 + v1*t)
    }
    
    return "NO"
}
kangaroo(x1: 0, v1: 3, x2: 4, v2: 2)

//4

func timeConversion(s: String) -> String {
    // Write your code here
    let components = s.split(separator: ":")
    var hour = Int(components[0]) ?? 0
    let min = Int(components[1]) ?? 0
    let seconds = Int(String(components[2]).dropLast(2)) ?? 0
    var hourString = ""
    var minString = ""
    var secString = ""
    
    if s.hasSuffix("PM"){
        hour += 12
    }else if hour == 12 && s.hasSuffix("AM"){
        hour -= 12
    }
    
    if hour < 10{
        hourString = "0" + String(hour)
    }else{
        hourString = String(hour)
    }
    
    if min < 10{
        minString = "0" + String(min)
    }else{
        minString = String(min)
    }
    
    if seconds < 10{
        secString = "0" + String(seconds)
    }else{
        secString = String(seconds)
    }
    
    if s.hasSuffix("PM"){
        return hourString + ":" + minString + ":" + secString
    }else {
        return hourString + ":" + minString + ":" + secString
    }
}

timeConversion(s: "06:40:03AM")

//3
func staircase(n: Int) -> Void {
    // Write your code here
    for i in 1...n{
        for j in 1...n{
            if i <= n-j{
                print(" ",terminator: "")
            }else{
                print("#",terminator: "")
            }
        }
        print("",terminator: "\n")
    }
}

staircase(n:3)

//2
func plusMinus(arr: [Int]) -> Void {
    // Write your code here
    guard arr.count <= 100 else{
        return
    }
    var numberOfPositive = 0.0
    var numberOfNegetive = 0.0
    var numberOfZero = 0.0
    
    for number in arr{
        if number > 0{
            numberOfPositive += 1
        }else if number < 0{
            numberOfNegetive -= 1
        }else{
            numberOfZero += 1
        }
    }
    
    let total = Double(arr.count)
    print(String(format: "%0.6f", numberOfPositive/total))
    print(String(format: "%.6f", numberOfNegetive/total))
    print(String(format: "%.6f", numberOfZero/total))
}

plusMinus(arr: [1,2,3,4,5,6])

//1
func aVeryBigSum(ar: [Int]) -> Int {
    // Write your code here
    guard 1 <= ar.count, ar.count <= 10, ar.max() ?? 0 <= Int(pow(10.0, 10.0)), ar.min() ?? 0 >= 0 else{
        return 0
    }
    return ar.reduce(0, {$0+$1})
}


func turing2(s:String)->Bool{
    var result = false
    let allowedChar = Set("[{(]})")
    guard (s.count >= 1 && s.count <= 104), allowedChar.isSuperset(of: s)else{
        return false
    }
    var temp = s
    var i = 0
    repeat{
        temp = temp.replacingOccurrences(of: "()", with: "")
        temp = temp.replacingOccurrences(of: "{}", with: "")
        temp = temp.replacingOccurrences(of: "[]", with: "")
        i += 1
    }while(i < s.count/2)
    print(temp)
    result = temp.isEmpty
    return result
}
turing2(s: "1234")

//21
func removeA(str:String)->String{
    var result = str
    if str.prefix(1).lowercased() == "a"{
        result.removeFirst()
    }
    
    if str.suffix(1).lowercased() == "a"{
        result.removeLast()
    }
    
    return result
}

removeA(str: "Tanvisas")

//20
func twoCopyOfFirstTwo(str:String)->String{
    String(str.prefix(2)) + String(str.prefix(2))
}
twoCopyOfFirstTwo(str: "")

//19
func firstAndLast(str:String)->Bool{
    let firstTwo = str.prefix(2)
    let lastTwo = str.suffix(2)
    return firstTwo == lastTwo
}
firstAndLast(str: "abcdefa")
//18
func abcOrXyz(str:String)->String{
    if str.prefix(3) == "abc"{
        return "abc"
    }else if str.prefix(3) == "xyz"{
        return "xyz"
    }else{
        return ""
    }
}

abcOrXyz(str: "xyzkfkfkkfk")

//17
func swapLastTwo(str:String)->String{
    var result = str
    let last = result.removeLast()
    let beforeLast = result.removeLast()
    return result + String(last) + String(beforeLast)
}
swapLastTwo(str: "Tanvirab")
//16
func removeDuplicates(str1:String,str2:String)->String{
    let result = str1 + str2
    var set = Set<Character>()
    let squeezed = result.filter({set.insert($0).inserted})
    return squeezed
}

removeDuplicates(str1: "abcdef", str2: "defghijk")


//15
func middleThree(str:String)->String?{
    guard str.count%2 == 1, str.count > 3 else{
        return nil
    }
    let firstIndex = (str.count - 1)/2 - 1
    return String(Array(str)[firstIndex]) + String(Array(str)[firstIndex + 1]) + String(Array(str)[firstIndex + 2])
}

middleThree(str: "12345")
//14
func firstAndLastChar(str:String,n:Int)->String{
    return String(str.prefix(1))+String(str.suffix(4))
}

firstAndLastChar(str: "Tanvir", n: 3)

//13
func startsWithAb(str:String)->Bool{
    str.hasPrefix("ab")
}
startsWithAb(str: "abnormal")

//12
func middleString(str:String)->String?{
    guard str.count % 2 == 0 else{
        return nil
    }
    let charArray = Array(str)
    let midChar1 = charArray[str.count/2 - 1]
    let midChar2 = charArray[str.count/2]
    return String(midChar1) + String(midChar2)
}

middleString(str: "Tanvir")

//10
func removeFirstAndLastChar(str:String)->String{
    let range = str.index(str.startIndex, offsetBy: 1)..<str.index(str.endIndex, offsetBy: -1)
    return String(str[range])
}
removeFirstAndLastChar(str: "Tanvir")

//9
func moveFirstTwoToLast(str:String)->String?{
    guard str.count >= 2 else{
        return nil
    }
    let firstTwo = str.prefix(2)
    let range = str.index(str.startIndex, offsetBy: 2)...
    return String(str[range]) + firstTwo
}

moveFirstTwoToLast(str: "Tanvir")

//8
func addStringExceptFirstChar(str1:String,str2:String)->String{
    var tempStr1 = str1
    var tempStr2 = str2
    tempStr1.removeFirst()
    tempStr2.removeFirst()
    return tempStr1 + tempStr2
}
addStringExceptFirstChar(str1: "Tanvir", str2: "Alam")

//7
func shortLongShort(text1:String,text2:String)->String{
    let text1IsSmaller = text1.count < text2.count
    if text1IsSmaller{
        return text1 + text2 + text1
    }else{
        return text2 + text1 + text2
    }
}

shortLongShort(text1: "tanvirgngnngng", text2: "alam")

//6
func withoutFirstAndLast(text:String)->String?{
    guard text.count >= 2 else{
        return nil
    }
    var temText = text
    temText.removeFirst()
    temText.removeLast()
    return temText
}

withoutFirstAndLast(text: "tan")

//5
func firstHalf(text:String)->String?{
    if text.count % 2 == 0{
        return String(text.prefix(text.count/2))
    }
    return nil
}

firstHalf(text: "TanvirAlam")

//41
func lastTwo(text:String)->String{
    String(text.suffix(2)) + String(text.suffix(2))
}
lastTwo(text: "I")

//40
func insertInTheMiddle(str1:String,str2:String)->String{
    var result = str1
    let insertIndex = str1.count % 2 == 0 ? str1.count/2 : (str1.count + 1)/2
    result.insert(contentsOf: str2, at: String.Index(utf16Offset: insertIndex, in: result))
    return result
}

insertInTheMiddle(str1: "<<<<>>>", str2: "Tanvir")

//39
func boldOrItallic(text:String,tag:String)->String{
    return "<" + tag + ">" + text
}

boldOrItallic(text: "Tanvir", tag: "b")

//38
func leftShift(nummbers:[Int])->[Int]{
    var tempNumbers = nummbers
    let firstNumber = tempNumbers.removeFirst()
    tempNumbers.append(firstNumber)
    return tempNumbers
}

leftShift(nummbers: [1,2,3,4])

//37
func threeIncreasingAdjacend(numbers:[Int])->Bool{
    for (index,number) in numbers.enumerated(){
        if index + 2 < numbers.count{
            if number + 1 == numbers[index + 1], number+2 == numbers[index + 2]{
                return true
            }
        }
    }
    
    return false
}

threeIncreasingAdjacend(numbers: [1,0,3,6,8,89])

//36
func checkThreesAreAdjucend(numbers:[Int])->Bool{
    if numbers[0] == 3 && numbers[1] != 3{
        return false
    }
    
    if numbers.last == 3 && numbers[numbers.count - 2] != 3{
        return false
    }
    
    for (index,number) in numbers.enumerated(){
        let nextIndex = index + 1
        let previousIndex = index - 1
        if nextIndex < numbers.count && previousIndex >= 0 {
            if number == 3 && (numbers[nextIndex] != 3 && numbers[previousIndex] != 3){
                return false
            }
        }
    }
    
    return true
}

checkThreesAreAdjucend(numbers: [3,3,2])

//35
func checkTwoFiveNotNextToEachOther(numbers:[Int])->Bool{
    var fiveOccurance = 0
  
    for (index,number) in numbers.enumerated() {
        if index + 1 < numbers.count{
            let nextNumber = numbers[index + 1]
            if number == 5 && nextNumber != 5{
                fiveOccurance += 1

            }
        }
    }
    if numbers[numbers.count - 1] == 5{
        fiveOccurance += 1
    }
    return fiveOccurance == 2
}

checkTwoFiveNotNextToEachOther(numbers: [2,3,4,5,6,5,9])

//34
func oddEvenNextToEachOther(numbers:[Int])->Bool{
    var occurance = 0
    for (index,number) in numbers.enumerated(){
        if index + 1 < numbers.count {
            let nextNumber = numbers[index + 1]
            if (number % 2 == 0 && nextNumber % 2 == 0) || (number % 2 == 1 && nextNumber % 2 == 1){
                occurance += 1
            }
        }
    }
    return occurance > 0
}

oddEvenNextToEachOther(numbers: [1,2,3,4,5,8])

//33
func checkOneThree(numbers:[Int])->Bool{
    var threeIndex:Int?
    var oneIndex:Int?
    
    for (index,number) in numbers.enumerated() {
        if number == 1 {
            oneIndex = index
        }
        if number == 3 {
            threeIndex = index
        }
    }
    
    if let threeIndex = threeIndex,let oneIndex = oneIndex {
        return threeIndex > oneIndex ? true : false
    }
    
    return false
}
checkOneThree(numbers: [1,2,3,4])

//32
func checkFive(numbers:[Int])->Bool{
    var occcurance = 0
    for (index, number) in numbers.enumerated(){
        if (index + 1 < numbers.count){
            let nextNumber = numbers[index + 1]
            if number == 5, nextNumber == 5{
                occcurance += 1
            }
        }
        if (index + 2 < numbers.count){
            let nextNumber = numbers[index + 2]
            if number == 5, nextNumber == 5{
                occcurance += 1
            }
        }
    }
    return occcurance > 0 ? true : false
}

checkFive(numbers: [1,2,3,4,5,6,5,5,4])

//31
func threeNextToAthreeOrFiveNextToAFive(numbers:[Int])->Bool{
    
    //numbers.contains(where: { [3,3].contains($0) })
    
    var occurance = 0
    
    for (index,number) in numbers.enumerated(){
        
        guard index < numbers.count - 1 else{
            return occurance > 0
        }
        
        let threeAfterThree = number == 3 && numbers[index + 1] == 3
        let fiveAfterFive = number == 5 && numbers[index + 1] == 5
        
        if threeAfterThree || fiveAfterFive {
            occurance += 1
        }
    }
    return false
}

threeNextToAthreeOrFiveNextToAFive(numbers: [1,2,3,4,3,5,5])

//30
func noTwosOrNoFives(numbers:[Int])->Bool{
    let twoFound = numbers.contains(where: {$0==2})
    let fiveFound = numbers.contains(where: {$0==5})
    
    return !twoFound || !fiveFound
}

noTwosOrNoFives(numbers: [1,3,4,2,5])


func twoOrFive(numbers:[Int])->Bool{
    !numbers.contains(where: {$0 != 2 && $0 != 5})
}

twoOrFive(numbers: [2,5,2])

func onesGreaterThanThrees(numbers:[Int])->Bool{
    let ones = numbers.reduce(0, {$1 == 1 ? $0+1 : $0})
    let threes = numbers.reduce(0,{$1 == 3 ? $0+1 : $0})
    return ones > threes
}

onesGreaterThanThrees(numbers: [1,3,3])

func findThreeNextToAthree(numbers:[Int])->Int?{
    for (index,number) in numbers.enumerated() {
        if number == 3 && index < numbers.count - 1 && numbers[index + 1] == 3{
            return index
        }
    }
    return nil
}

findThreeNextToAthree(numbers: [1,2,3,3,4,5,3,3])
