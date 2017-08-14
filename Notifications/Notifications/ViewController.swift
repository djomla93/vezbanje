//
//  ViewController.swift
//  Notifications
//
//  Created by iOS Akademija on 8/2/17.
//  Copyright © 2017 iOS Akademija. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(ViewController.gotNotification),
            name: NSNotification.Name(rawValue: "HelloNotification") ,
            object: nil
        )
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(ViewController.gotGreenNotification),
            name: NSNotification.Name(rawValue: "GreenNotification") ,
            object: nil
        )
    }

    func gotNotification() {
        self.view.backgroundColor = .yellow
        
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name(rawValue: "HelloNotification"), object: nil)
    
    }
    
    func gotGreenNotification() {
        self.view.backgroundColor = .green
    }
}

