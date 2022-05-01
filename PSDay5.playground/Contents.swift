import Cocoa
import Foundation

func addLastChar(word:String)->String{
    var tempWord = word
    let lastChar = tempWord.removeLast()
    
    return String(lastChar) + word + String(lastChar)
}


func firstLastInterchange(word:String)->String{
    guard word.count > 1 else{
        return word
    }
    var tempStr = word
    let firstChar = tempStr.removeFirst()
    let lastChar = tempStr.removeLast()
    
    return String(lastChar) + tempStr + String(firstChar)
}

print(firstLastInterchange(word: ""))


