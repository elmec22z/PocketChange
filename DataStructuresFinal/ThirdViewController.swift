//
//  ThirdViewController.swift
//  DataStructuresFinal
//
//  Created by Zineb El mechrafi on 4/24/16.
//  Copyright © 2016 Zineb El Mechrafi. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    
    var shoppingList = MyLinkedList<NSString>()
    var miscList = MyLinkedList<NSString>()
    var travelList = MyLinkedList<NSString>()
    var moviesList = MyLinkedList<NSString>()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
