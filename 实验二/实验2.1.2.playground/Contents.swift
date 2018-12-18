import UIKit

let arr1 = ["sdfg","123dsf","13546","dsf123"]
let arr2 = arr1.filter({Int($0) != nil})
print(arr2)
