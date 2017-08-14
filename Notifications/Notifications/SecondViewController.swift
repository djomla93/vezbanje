//
//  SecondViewController.swift
//  Notifications
//
//  Created by iOS Akademija on 8/2/17.
//  Copyright © 2017 iOS Akademija. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func post_pressed(_ sender: AnyObject) {
        
        
        
        NotificationCenter.default.post(
            name: NSNotification.Name(rawValue: "HelloNotification"),
            object: nil
        )
    }
    
    @IBAction func green_notification(_ sender: Any) {
        NotificationCenter.default.post(
            name: NSNotification.Name(rawValue: "GreenNotification"),
            object: nil
        )
        
    }

    @IBAction func goBack_pressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }
    
    

    

}
