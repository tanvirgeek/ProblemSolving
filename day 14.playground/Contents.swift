import Cocoa

var greeting = "Hello, playground"


func checkRange(a:Int,b:Int)->Bool{
    let twentyToThirty = 20...30
    let thirtyToFourty = 30...40
    if (twentyToThirty.contains(a) && twentyToThirty.contains(b)) || (thirtyToFourty.contains(a) && thirtyToFourty.contains(b)){
        return true
    }else{
        return false
    }
}

checkRange(a: 20, b: 30)
checkRange(a: 30, b: 40)
checkRange(a: 32, b: 20)


func checkLargerValueInRange(a:Int,b:Int)->Int{
    let maxNumber = max(a,b)
    let range = 20...30
    if range.contains(maxNumber){
        return maxNumber
    }else{
        return 0
    }
}
checkLargerValueInRange(a: 19, b: 23)
