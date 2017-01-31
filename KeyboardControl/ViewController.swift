//
//  ViewController.swift
//  KeyboardControl
//
//  Created by Ahmed T Khalil on 11/24/16.
//  Copyright © 2016 kalikans. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //make it so that when you touch outside the keyboard, the keyboard goes away (end editing)
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //self refers to the View Controller
        //view refers to the view that the View Controller is managing
        self.view.endEditing(true)
    }
    
    
    //keyboard shuts down when you press 'return'
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

