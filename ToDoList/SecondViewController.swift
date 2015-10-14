//
//  SecondViewController.swift
//  ToDoList
//
//  Created by SANKARA TELUKUTLA on 10/13/15.
//  Copyright © 2015 SANKARA TELUKUTLA. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

 
    @IBOutlet var item: UITextField!
   
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func addItem(sender: AnyObject) {
        toDoList.append(item.text!)
        
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
        print(item.text)
        print(toDoList)
        
        item.text = ""
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
   
    
   
}

