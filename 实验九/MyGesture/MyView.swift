//
//  MyView.swift
//  MyGesture
//
//  Created by student on 2018/11/25.
//  Copyright © 2018年 苟帅. All rights reserved.
//

import UIKit

class MyView: UIView {

   
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        
        UIColor.orange.setFill()
        path.fill()
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 5, height: 5)
        self.layer.shadowOpacity = 0.8
        
        self.contentMode = .redraw // 采用重绘方式
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(pan(gesture:)))
        self.addGestureRecognizer(panGesture)
        
    }
    
    @objc func pan(gesture: UIPanGestureRecognizer) {
        self.center = gesture.location(in: superview)
    }
 

}
