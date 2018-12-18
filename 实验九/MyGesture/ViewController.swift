//
//  ViewController.swift
//  MyGesture
//
//  Created by student on 2018/11/25.
//  Copyright © 2018年 苟帅. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "Gesture View"
        let addItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(addView))
        
        let moveItem = UIBarButtonItem(title: "Move", style: .plain, target: self, action: #selector(moveView))
        
        self.navigationItem.rightBarButtonItems = [addItem, moveItem]
        
//        let clearView =
        
        
        
        
    }
    
    @objc func addView() {
        
    }
    
    @objc func moveView() {
        
    }

}

