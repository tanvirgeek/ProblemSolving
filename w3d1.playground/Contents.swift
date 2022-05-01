import Cocoa

func everyOtherString(word:String)->String{
    return word.enumerated().map({$0.offset % 2 == 1 ? "" : String($0.element)}).joined()
}

everyOtherString(word: "tanvir")


func checkAA(word:String)->Bool{
    return word.contains("aa")
}
checkAA(word: "tanvira")

func checkSimilarLastDigit(a:UInt,b:UInt)->Bool{
    let aStr = String(a).compactMap({$0.wholeNumberValue})
    let bStr = String(b).compactMap({$0.wholeNumberValue})
    return aStr.last == bStr.last
}

checkSimilarLastDigit(a: 101, b: 5111)


func convertLastThreeCharToUpperCase(word:String)->String{
    let lastThree =  String(word.suffix(3)).uppercased()
    let exceptLastThree = word.dropLast(3)
    return exceptLastThree + lastThree
}

convertLastThreeCharToUpperCase(word: "Tanviralam")


