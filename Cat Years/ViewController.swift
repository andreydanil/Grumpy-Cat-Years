//
//  ViewController.swift
//  Cat Years
//
//  Created by Andrey Danilkovich on 6/1/15.
//  Copyright (c) 2015 Andrey Danilkovich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var age: UITextField!
    
    @IBOutlet var calculatedAge: UILabel!
    
    @IBAction func findAge(sender: AnyObject) {
        
        var enteredAge = age.text.toInt();
        
        if enteredAge != nil {

            var catYears = enteredAge! * 7;
            calculatedAge.text = "\(catYears)";
        
        } else {
            calculatedAge.text = "🙀";
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        calculatedAge.text = "❓";
        //Looks for single or multiple taps.
        var tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "DismissKeyboard")
        view.addGestureRecognizer(tap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Calls this function when the tap is recognized.
    func DismissKeyboard(){
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }


}

