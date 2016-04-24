//
//  FirstViewController.swift
//  Final Project
//
//  Created by Zineb El mechrafi on 3/30/16.
//  Copyright © 2016 Zineb El mechrafi. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    //MARKS: Fields
    
    
    
    @IBOutlet var firstField: UITextField!
    @IBOutlet var secondField: UITextField!
    @IBOutlet var thirdField: UITextField!
    @IBOutlet var fourthField: UITextField!
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var enter: UITextField!
    let shoppingList = MyLinkedList<NSString>()
    let miscList = MyLinkedList<NSString>()
    let travelList = MyLinkedList<NSString>()
    let foodList = MyLinkedList<NSString>()
    @IBOutlet var display: UILabel!
    @IBOutlet var myPicker: UIPickerView!
    var Array = [ "Shopping", "Travel", "Movies", "Miscellaneous"]
    var placementAnswer = 0
    var value = ""
    
   
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        myPicker = UIPickerView()
        myPicker.dataSource = self
        myPicker.delegate = self

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
    
    @IBAction func createReceipt(sender: AnyObject) {

       
        shoppingList.addItem(enter.text!)
        //for _ in 0...myList.count {
        //display.text! = enter.text!
        }
    
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Array[row];
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Array.count
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1;
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        placementAnswer = row
        print (row)
       // value = Array[row]
       // print("values:----------\(value)");
    }
    
}


