
//
//  EnteryViewController.swift
//  AdressBook
//
//  Created by iOS Akademija on 7/24/17.
//  Copyright © 2017 iOS Akademija. All rights reserved.
//

import UIKit
import RealmSwift

class EnteryViewController: UIViewController {

    @IBOutlet weak var txtContactName: UITextField!
    @IBOutlet weak var txtContactPhoneNumber: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    @IBAction func actionSaveData(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    func saveContacnts() {
        let newContat = ContactItem()
        newContat.Name = txtContactName.text!
        newContat.PhoneNumber = txtContactPhoneNumber.text!
        print(newContat)
        do {
            let realm = try Realm()
            try realm.write {
                realm.add(newContat)
            }
        }
        catch {
            
        }
        
    }
        

}
