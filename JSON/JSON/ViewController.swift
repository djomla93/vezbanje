//
//  ViewController.swift
//  JSON
//
//  Created by iOS Akademija on 8/2/17.
//  Copyright © 2017 iOS Akademija. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "http://date.jsontest.com")!
        let request = NSMutableURLRequest(url: url as URL)
        URLSession.shared.dataTask(with: request as URLRequest) { (data:Data?, response:URLResponse?, error:Error?) in
            
            if error != nil {
                print("Error: \(String(describing: error))")
            }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as? NSDictionary
                
                guard let parsedJSON = json else {
                    print("Error while parsing")
                    return
                }
                
                print(json)
            }
            catch {
                print("Caught an error: \(error)")
            }
        }.resume()
    
    
    }

}

