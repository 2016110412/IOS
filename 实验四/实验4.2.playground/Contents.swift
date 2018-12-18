import UIKit

    class MyView:UIView{
            override func draw(_ rect: CGRect) {
                    let path = UIBezierPath(ovalIn:rect)
                    UIColor.red.setStroke()
                    path.stroke()
        
                    UIColor.gray.setFill()
                    path.fill();
                }
        }


    class TriangleView:UIView{
        override func draw(_ rect: CGRect) {
                    let path = UIBezierPath();
        
                    path.move(to: CGPoint(x:rect.size.width/2,y:0));
                    path.addLine(to: CGPoint(x:rect.size.width,y:rect.size.height))
                    path.addLine(to: CGPoint(x:0,y:rect.size.height))
        
                    UIColor.green.setFill()
                    path.fill()
                }
        }



    let vw = MyView();

    vw.draw(CGRect(x:0,y:0,width:200,height:100))

    class Controller:UIViewController{
        var lable:UILabel!
            var circleView:MyView!
            var tangleView:TriangleView!
            override func loadView() {
                   view = UIView(frame:CGRect(x:0,y:0,width:400,height:800));
                    view.backgroundColor = UIColor.white;
        
        
                    lable = UILabel(frame:CGRect(x:50,y:100,width:300,height:50))
                    lable.backgroundColor = UIColor.blue
                    lable.textColor = UIColor.white
                    lable.textAlignment  = .center
                    lable.text = "hello the laji yu yan swift"
        
                    view.addSubview(lable)
        
                    circleView = MyView(frame:CGRect(x:100,y:400,width:200,height:200))
                    circleView.backgroundColor = UIColor.green
        
                    view.addSubview(circleView)
        
        
                    tangleView = TriangleView(frame:CGRect(x:100,y:180,width:200,height:200))
                    tangleView.backgroundColor = UIColor.red
        
                    view.addSubview(tangleView)
        
                }
    
        }

    let ct = Controller()

    PlaygroundPage.current.liveView = ct
}


