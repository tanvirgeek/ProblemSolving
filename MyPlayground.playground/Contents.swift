import Cocoa
import Foundation

func removeIndex(word:String,n:Int)->String{
    let charachterCount = word.count
    
    if n > charachterCount - 1 || charachterCount < 1{
        return word
    }
    let index = word.index(word.startIndex, offsetBy: n)
    var newWord = word
    
   
    
    newWord.remove(at: index)
    
    return newWord
    
}

removeIndex(word: "Tanvir", n: 1)

