//
//  ViewController.swift
//  Switch
//
//  Created by iOS Akademija on 7/6/17.
//  Copyright © 2017 iOS Akademija. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // ui object
    @IBOutlet weak var mySwitch: UISwitch!
    var coolSwitch : UISwitch!
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var sunMoonImageView: UIImageView!
    
    
    // first load func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UISwitch program
        
        let coolSwitch = UISwitch()
        coolSwitch.frame = CGRect(x: 163, y: 400, width: 70, height: 70)
        coolSwitch.onTintColor = UIColor.orange
        //coolSwitch.thumbTintColor = UIColor.black
        //coolSwitch.onImage = UIImage(named: "button.png")
        coolSwitch.isOn = false
        self.view.addSubview(coolSwitch)
        coolSwitch.addTarget(self, action: #selector(coolSwitch_action), for: UIControlEvents.valueChanged)
        
        // background images
        backgroundImage.image = UIImage(named: "Night.jpg")
        sunMoonImageView.image = UIImage(named: "Moon.png")
        
    }
    
    
    // called when screen is pressed
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        coolSwitch.setOn(true, animated: true)

    }
    
    // called when we toggled switch in Main.storyboard
    @IBAction func mySwitch_action(_ sender: Any) {
        
        // switching bg images according to the state of switch
        if mySwitch.isOn {
            
            backgroundImage.image = UIImage(named: "Night.jpg")
            
        } else {
            backgroundImage.image = UIImage(named: "Day.jpg")
        }
        
    }
    
    func coolSwitch_action() {
        
        if coolSwitch.isOn {
            
            sunMoonImageView.image = UIImage(named: "Sun.png")
        } else {
            sunMoonImageView.image = UIImage(named: "Moon.png")
        }
    }


}

