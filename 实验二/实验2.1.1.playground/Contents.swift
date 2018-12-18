import UIKit

var dictionary = [["name":"张三","age":"19"],["name":"李四","age":"22"]]
var str = dictionary.map { $0["age"] ?? ""}.filter { $0 != ""}
print(str)

