import UIKit

import Foundation

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

