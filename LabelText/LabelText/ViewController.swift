//
//  ViewController.swift
//  LabelText
//
//  Created by iOS Akademija on 6/27/17.
//  Copyright © 2017 iOS Akademija. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBOutlet weak var textBox: UITextField!

    @IBOutlet weak var appliedText: UILabel!
    
    @IBAction func applyText(_ sender: Any) {
        appliedText.text = textBox.text
    }
    
}


