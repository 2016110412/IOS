//
//  FirstViewController.swift
//  homework_4_hello world
//
//  Created by 苟帅 on 2018/10/17.
//  Copyright © 2018年 苟帅. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label = UILabel(frame: CGRect(x: 100, y: 100, width: 200, height: 100))
        label.text = "hello,world"
        label.textAlignment = .center
        label.backgroundColor = UIColor.blue
        label.center = view.center
        view.addSubview(label)
        
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 100))
        button.setTitle("click me", for: .normal)
        button.setTitleColor(UIColor.green, for: .normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(action), for: .touchUpInside)
        
        //let image = UIImageView(image: UIImage(named: "1"))
        //image.sizeToFit()
        //view.addSubview(image)
        
    }
    
    @IBAction func action(){
        label.text = "hello"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
