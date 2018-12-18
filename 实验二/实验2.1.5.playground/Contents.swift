import UIKit
    func f1(a:Int) -> Int{
            return a
        };

    func f2(a:String) -> Int{
            return Int(a)!
        };

    func f3() -> Int{
            return 2
        };

    func f4(a:Int){
    
        };

    func f5(a:Int) -> Int{
            return a+1
        };

    let funarr:[Any] = [f1,f2,f3,f4,f5]
    for(index,value) in funarr.enumerated(){
            if value is (Int) -> Int{
                    print(index)
                }
        }
