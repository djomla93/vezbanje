//
//  ViewController.swift
//  Aligment Programmaticaly
//
//  Created by iOS Akademija on 7/15/17.
//  Copyright © 2017 iOS Akademija. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secoundTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // aligment programmatically
        topLabel.frame.origin.x = self.view.frame.size.width / 1.183
        topLabel.frame.origin.y = self.view.frame.size.height / 19.61
        
        // Full aligment
        let x_view = self.view.bounds.width / 5.6
        let y_view = self.view.bounds.height / 3
        let width_view = self.view.bounds.width / 1.56
        let height_view = self.view.bounds.height / 5.2
        
        myView.frame = CGRect(x: x_view, y: y_view, width: width_view, height: height_view)
        
        // Calculation Aligment
        let x_textField = self.view.bounds.width / 18.75 // 20pxls
        let width_textField = self.view.bounds.width - x_textField - x_textField
        let y_firstTxt = myView.frame.origin.y + myView.bounds.height + x_textField
        let height_textField = self.view.bounds.height / 22.23
        
        firstTextField.frame = CGRect(x: x_textField, y: y_firstTxt, width: width_textField, height: height_textField)
        
        let y_secoundTxt = firstTextField.frame.origin.y + firstTextField.bounds.height + x_textField
        
        secoundTextField.frame = CGRect(x: x_textField, y: y_secoundTxt, width: width_textField, height: height_textField)
        
    }

    
    


}

