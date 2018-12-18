import UIKit

import Foundation

var str = "Swift is a powerful and intuitive programming language for iOS, OS X, tvOS, and watchOS"

var str1 = str.substring(to: str.index(str.startIndex,offsetBy:20))
//print(str1)
var str2 = str1.substring(from: str1.index(str1.startIndex,offsetBy:5))
print(str2)

var str3 = str.replacingOccurrences(of: "OS", with: "")
print(str3)

