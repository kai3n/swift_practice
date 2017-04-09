//
//  ViewController.swift
//  First
//
//  Created by kaien on 4/7/17.
//  Copyright © 2017 James Pak. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        //textfield.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func buttonWasClicked(_ sender: Any) {
        label.text = "Hi \(textfield.text!)!"
        textfield.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.textfield.resignFirstResponder()
        return false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

