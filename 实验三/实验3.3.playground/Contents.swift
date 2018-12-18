import UIKit

import Foundation
import UIKit

var currentTime = Date()
let zone = NSTimeZone.system
let interval = zone.secondsFromGMT()
var timeFormatter = DateFormatter()
timeFormatter.locale = Locale(identifier:  "zh_hans_CN")
timeFormatter.dateFormat = "yyyy年MM月dd日 EEEE aa HH:mm"
var now_beijing = currentTime.addingTimeInterval(TimeInterval(interval+28800))
var time_beijing = timeFormatter.string(from:now_beijing)
print("北京时间：\(time_beijing)")

var now_dongjing = currentTime.addingTimeInterval(TimeInterval(interval+32400))
var time_dongjing = timeFormatter.string(from:now_dongjing)
print("东京时间：\(time_dongjing)")

var now_newyork = currentTime.addingTimeInterval(TimeInterval(interval-10800))
var time_mewyork = timeFormatter.string(from:now_newyork)
print("纽约时间：\(time_mewyork)")

var now_london = currentTime.addingTimeInterval(TimeInterval(interval))
var time_london = timeFormatter.string(from:now_london)
print("伦敦时间：\(time_london)")

var str = "Swift is a powerful and intuitive programming language for iOS, OS X, tvOS, and watchOS"
var str1 = str.substring(to: str.index(str.startIndex,offsetBy:20))
//print(str1)
var str2 = str1.substring(from: str1.index(str1.startIndex,offsetBy:5))
print(str2)
var str3 = str.replacingOccurrences(of: "OS", with: "")
print(str3)


var dic = NSDictionary([1:time_beijing,2:time_dongjing,3:time_mewyork,4:time_london,5:str2,6:str3])

let filePath = NSHomeDirectory() + "/Documents/dictionary.plist"
try! dic.Write(toFile: filePath,atomically:true)

