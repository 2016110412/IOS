//
//  SecondViewController.swift
//  MultiMVCDemo2
//
//  Created by liguiyang on 2018/11/28.
//  Copyright © 2018年 liguiyang. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var name = ""
    var no = ""
    
    
    @IBOutlet weak var tfNo: UITextField!
    @IBOutlet weak var tfName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        tfNo.text = no
        tfName.text = name
        // Do any additional setup after loading the view.
    }
    
//
//    @IBAction func back(_ sender: Any) {
//        no = tfNo.text!
//        name = tfName.text!
//
//
//        navigationController?.popViewController(animated: true)
//    }
//

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        no = tfNo.text!
        name = tfName.text!
    }
 

}
