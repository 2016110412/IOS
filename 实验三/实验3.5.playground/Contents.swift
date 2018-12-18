import UIKit



let dic = ["key1":100, "key2":"一天"] as [String : Any]
do {
    let jsonData = try JSONSerialization.data(withJSONObject: dic, options: [])
    print(jsonData)
}
catch {
    print(error)
}

