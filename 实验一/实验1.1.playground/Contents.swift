import UIKit

func PrimeNumber() -> [Int]{
    var prime_number = [2,3]
    var num = 0
    var sqrt = true
    for x in 4...10000{
        num = x/2+1
        for y in 2...num{
            if(x % y == 0){
                sqrt = false
                break
            }
            sqrt = true
        }
        if sqrt{
            prime_number.append(x)
        }
    }
    return prime_number
}

var primenumbers = PrimeNumber()
primenumbers.sort()  //升序排列
print(primenumbers)

//降序排序
//方法一
func descending(x: Int, y: Int) -> Bool {
    return x > y
}
primenumbers.sort(by: descending)
print("降序排序1：")
print(primenumbers)
//方法二
primenumbers.sort { (x: Int, y: Int) -> Bool in
    return x > y
}
print("降序排序2：")
print(primenumbers)
//方法三
primenumbers.sort { (x, y) -> Bool in
    return x > y
}
print("降序排序3：")
print(primenumbers)
//方法四
primenumbers.sort { (x, y) in
    return x > y
}
print("降序排序4：")
print(primenumbers)
//方法五
primenumbers.sort(by: { return $0 > $1 })
print("降序排序5：")
print(primenumbers)
