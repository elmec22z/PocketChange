//
//  secondViewController.swift
//  DataStructuresFinal
//
//  Created by Zineb El mechrafi on 4/24/16.
//  Copyright © 2016 Zineb El Mechrafi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
   // @IBOutlet var display: UILabel!
    
    var shoppingList = MyLinkedList<NSString>()
    var miscList = MyLinkedList<NSString>()
    var travelList = MyLinkedList<NSString>()
    var moviesList = MyLinkedList<NSString>()
   
    
    //@IBOutlet var label: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //display.text = String(shoppingList.head.value)
        
        // Do any additional setup after loading the view.
       
        
        if let s = shoppingList.head.value {
            var sum = 0
            for i in 0 ..< shoppingList.count  {
                //let v = shoppingList.head.value
                print("i is equal to ", i)
                
                let label: UILabel = UILabel()
                label.frame = CGRectMake(130, 150 + CGFloat(sum), 90, 21)
                label.backgroundColor = UIColor.orangeColor()
                label.textColor = UIColor.blackColor()
                label.textAlignment = NSTextAlignment.Center
                label.text =  s as String
                self.view.addSubview(label)
                sum += 21
                
                
            }
        }   else   {
            print("ll nil")
        }
        
        //print("The head is : ", shoppingList.head.value)
        if let s = miscList.head.value {
            var sum = 0
            for i in 1 ..< miscList.count  {
                //let v = shoppingList.head.value
                print("i is equal to ", i)
                miscList.head.next?.value
                let miscLabel: UILabel = UILabel()
                miscLabel.frame = CGRectMake(100, 300 + CGFloat(i), 90, 21)
                miscLabel.backgroundColor = UIColor.orangeColor()
                miscLabel.textColor = UIColor.blackColor()
                miscLabel.textAlignment = NSTextAlignment.Center
                miscLabel.text =  s as String
                self.view.addSubview(miscLabel)
                sum += 1
            }
        }   else   {
            print("ll nil")
        }
        
        //print("The head is : ", shoppingList.head.value)
        if let s = travelList.head.value {
            var sum = 0
            for i in 1 ..< travelList.count  {
                //let v = shoppingList.head.value
                print("i is equal to ", i)
                travelList.head.next?.value
                let label: UILabel = UILabel()
                label.frame = CGRectMake(200, 150 + CGFloat(i), 90, 21)
                label.backgroundColor = UIColor.orangeColor()
                label.textColor = UIColor.blackColor()
                label.textAlignment = NSTextAlignment.Center
                label.text =  s as String
                self.view.addSubview(label)
                sum += 1
            }
        }   else   {
            print("ll nil")
        }
        
        //print("The head is : ", shoppingList.head.value)
        if let s = moviesList.head.value {
            var sum = 0
            for i in 1 ..< moviesList.count  {
                //let v = shoppingList.head.value
                print("i is equal to ", i)
                moviesList.head.next?.value
                let label: UILabel = UILabel()
                label.frame = CGRectMake(200, 300 + CGFloat(i), 90, 21)
                label.backgroundColor = UIColor.orangeColor()
                label.textColor = UIColor.blackColor()
                label.textAlignment = NSTextAlignment.Center
                label.text =  s as String
                self.view.addSubview(label)
                sum += 1
            }
        }   else   {
            print("ll nil")
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
