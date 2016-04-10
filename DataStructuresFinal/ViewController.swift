//
//  FirstViewController.swift
//  Final Project
//
//  Created by Zineb El mechrafi on 3/30/16.
//  Copyright © 2016 Zineb El mechrafi. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    //MARKS: Fields
    @IBOutlet var firstField: UITextField!
    @IBOutlet var secondField: UITextField!
    @IBOutlet var thirdField: UITextField!
    @IBOutlet var fourthField: UITextField!
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var myPicker: UIPickerView!
    @IBOutlet var myTextField: UITextField!
    var pickerData: [String] = [String]()

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        pickerData = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated.
    }
    
    @IBAction func compute(sender: AnyObject) {
        
        let number1 = Int(firstField.text!)
        
        let number2 = Int(secondField.text!)
        
        let number3 = Int(thirdField.text!)
        
        let number4 = Int(fourthField.text!)

        let duration = number1! + number2! + number3! + number4!
        
        totalLabel.text = "\(duration)"
    }
    
}


