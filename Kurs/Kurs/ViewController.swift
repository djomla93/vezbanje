//
//  ViewController.swift
//  Kurs
//
//  Created by iOS Akademija on 7/1/17.
//  Copyright © 2017 iOS Akademija. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonclicked(_ sender: Any) {
      //  print("Hello button")
        
        myLabel.text = "Hello Button"
        
    }
    
    
}

