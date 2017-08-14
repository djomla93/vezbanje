//
//  ViewController.swift
//  AdressBook
//
//  Created by iOS Akademija on 7/24/17.
//  Copyright © 2017 iOS Akademija. All rights reserved.
//

import UIKit
import RealmSwift


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let images = ["putin.jpg", "naruto.jpg"]
    
    
    
    @IBOutlet weak var tableview: UITableView!
    var datasource : Results<ContactItem>!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        reloadTheTable()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setup()
        reloadTheTable()
    }
    
    func reloadTheTable() {
        do {
        let realm = try Realm()
        datasource = realm.objects(ContactItem.self)
        tableview?.reloadData()
        }
        catch {
            
        }
    }
    
    func setup() {
        tableview.delegate = self
        tableview.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource.count
        
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let imageCell = tableview.dequeueReusableCell(withIdentifier: "imageCell", for: indexPath) as! ViewControllerTableViewCell
        
        imageCell.myImage.image = UIImage(named: images[indexPath.row])
        imageCell.myLabel.text = images[indexPath.row]
        
        let identifer: String = "myCell"
        var cell = tableview.dequeueReusableCell(withIdentifier: identifer)
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: identifer)
            
            return imageCell
        }
        
        let currentContactInfo = datasource[indexPath.row]
        cell?.textLabel?.text = currentContactInfo.Name
        cell?.detailTextLabel?.text = currentContactInfo.PhoneNumber
        return cell!
        
    }

    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return indexPath
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 50
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let myHeader = UIView(frame: CGRect(x: 0, y: 0, width: tableview.frame.width, height: 80))
        myHeader.backgroundColor = UIColor.darkGray
        return myHeader
    }
   
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        
        let myHeader = UIView(frame: CGRect(x: 0, y: 0, width: tableview.frame.width, height: 80))
        myHeader.backgroundColor = UIColor.green
        return myHeader
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 80
    }

    
    @IBAction func goToEnteryVC(_ sender: Any) {
        performSegue(withIdentifier: "goToEntryVC", sender: nil)
    }
}

