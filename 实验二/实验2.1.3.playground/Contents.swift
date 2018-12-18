import UIKit

    let arr1 = ["dgsdf","sdtr654","435egef"]
    var str = arr1.reduce("",{$0 + "," + $1})
    str.remove(at:str.startIndex)
    print(str)
