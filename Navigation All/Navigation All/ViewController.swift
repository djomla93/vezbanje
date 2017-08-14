//
//  ViewController.swift
//  Navigation All
//
//  Created by iOS Akademija on 7/11/17.
//  Copyright © 2017 iOS Akademija. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // ui obj
    @IBOutlet weak var myLabel: UILabel!
    
    // first load func
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // called when left bar button is clicked
    @IBAction func leftButton_clicked(_ sender: Any) {
        myLabel.text = "Left Bar Button Item Is Clicked"
    }
    
    
    // called when right bar button is clicked
    @IBAction func rightButton_clicked(_ sender: Any) {
        myLabel.text = "Right Bar Button Item Is Clicked"
    }
    
    


}

