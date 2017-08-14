//
//  ViewController.swift
//  TextField
//
//  Created by iOS Akademija on 7/4/17.
//  Copyright © 2017 iOS Akademija. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    // user interface object
    @IBOutlet weak var writeTextView: UITextView!
    @IBOutlet weak var readTextView: UITextView!
    

    // first load func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // TextView programmatically
        let coolTextView = UITextView()
        coolTextView.frame = CGRect(x: 16, y: 280, width: 343, height: 75)
        coolTextView.delegate = self
        
        coolTextView.text = "TextView Programmatically"
        coolTextView.font = UIFont.boldSystemFont(ofSize: 17)
        coolTextView.textColor = .red
        coolTextView.textAlignment = NSTextAlignment.left
        
        
        coolTextView.isEditable = true
        coolTextView.isSelectable = true
        coolTextView.allowsEditingTextAttributes = true
        coolTextView.clearsOnInsertion = false
        
        coolTextView.dataDetectorTypes = [.address, .link, .calendarEvent, .phoneNumber]
        coolTextView.backgroundColor = .yellow
        coolTextView.returnKeyType = UIReturnKeyType.done
        
        self.view.addSubview(coolTextView)
        
        
    }
    
    // called when send button is pressed
    @IBAction func send_clicked(_ sender: Any) {
        
        readTextView.text = writeTextView.text
        
        writeTextView.text = ""
    }
    
    // first called function about to edit TextView
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        readTextView.text = "Should Begin"
        return true
    }

    func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
        readTextView.text = "Should End"
        return true
    }
    
    // second called func did start editing TextView
    func textViewDidBeginEditing(_ textView: UITextView) {
        readTextView.text = "Did Begin"
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        readTextView.text = "Did End"
    }
    
    // firs called func we are editing text TextView
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        readTextView.text = readTextView.text + " 1"
        return true
    }
    
    func textViewDidChange(_ textView: UITextView) {
        readTextView.text = readTextView.text + " 2"
    }
    
    
}

