import UIKit

    func getMaxAndMin<T:Comparable>(a:T...) ->(T,T){
            var max = a[0]
            var min = a[0]
    
            for item in a{
                    if item > max{
                            max = item
                        }else if item < min{
                            min = item
                        }
                }
    
            return (max,min)
        }
    print(getMaxAndMin(a: 1, 2, 3, 9, 2, 88))
    print(getMaxAndMin(a: 1.0, 2.0, 3.0, 9.0, 2.0, 88.0))
    print(getMaxAndMin(a: "a", "b", "A", "sss"))

