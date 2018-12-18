//
//  ViewController.swift
//  12.2
//
//  Created by student on 2018/12/17.
//  Copyright © 2018年 苟帅. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfAge: UITextField!
    
  
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        appDelegate.saveContext()
    }
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func add(_ sender: Any) {
        let person = Person(context: context)
        person.name = tfName.text
        person.age = tfAge.text
        //保存到数据库
        //appDelegate.saveContext()
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func update(_ sender: Any) {
        let fetch:NSFetchRequest<Person> = Person.fetchRequest()
        //查找条件，相当于select * from ？ where
        fetch.predicate = NSPredicate(format: "name=%@", tfName.text!)
        let persons = try? context.fetch(fetch)
        if let p = persons?.first {
            p.age = tfAge.text
        }
    }
    
    @IBAction func del(_ sender: Any) {
        let fetch:NSFetchRequest<Person> = Person.fetchRequest()
        //查找条件，相当于select * from ？ where
        fetch.predicate = NSPredicate(format: "name=%@", tfName.text!)
        let persons = try? context.fetch(fetch)
        if let p = persons?.first {
            context.delete(p)
        }
    }
    
    @IBAction func query(_ sender: Any) {
        let fetch:NSFetchRequest<Person> = Person.fetchRequest()
        //查找条件，相当于select * from ？ where 
        fetch.predicate = NSPredicate(format: "name=%@", tfName.text!)
        let persons = try? context.fetch(fetch)
        if let p = persons?.first {
            tfAge.text = p.age
        }
    }
    
}

