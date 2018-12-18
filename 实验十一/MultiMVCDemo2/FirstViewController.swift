//
//  ViewController.swift
//  MultiMVCDemo2
//
//  Created by liguiyang on 2018/11/28.
//  Copyright © 2018年 liguiyang. All rights reserved.
//

import UIKit


class FirstViewController: UIViewController {
    
    @IBOutlet weak var tfNo: UITextField!
    @IBOutlet weak var tfName: UITextField!
    let userDefault = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tfNo.text = userDefault.string(forKey: "no")
        tfName.text = userDefault.string(forKey: "name")

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Second"{
            let secVC = segue.destination as! SecondViewController
            secVC.no = tfNo.text!
            secVC.name = tfName.text!
            
            //store to file
            userDefault.set(tfNo.text!, forKey: "no")
            userDefault.set(tfName.text!, forKey: "name")
            userDefault.synchronize()
            
            print(NSTemporaryDirectory())
        }
    }
    
    @IBAction func myback(segue:UIStoryboardSegue) {
        if let secVC = segue.source as? SecondViewController {
            tfNo.text = secVC.no
            tfName.text = secVC.name
        }
    }
    
    
    
//
//    @IBAction func showSecondVC(_ sender: Any) {
//        stu.no = tfNo.text!
//        stu.name = tfName.text!
//
//        let secVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
//        secVC.stu = stu
//
//        self.navigationController?.pushViewController(secVC, animated: true)
//    }
//
//    @IBAction func showThirdVC(_ sender: Any) {
//        let thirdVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ThirdVC")
//        present(thirdVC, animated: true, completion: nil)
//    }
}

