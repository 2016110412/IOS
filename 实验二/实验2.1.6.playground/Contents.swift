import UIKit

    extension Int{
            func sqrt() ->Double{
                    return Darwin.sqrt(Double(self))
                }
        }

    print(4.sqrt())
