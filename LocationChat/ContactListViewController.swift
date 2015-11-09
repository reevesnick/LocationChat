//
//  ContactListViewController.swift
//  LocationChat
//
//  Created by Neegbeah Reeves, Brittany Simmions, and Nino Roberston  on 9/11/15.
//
//

import Foundation
import MapKit
import Contacts
import AddressBook
import DZNEmptyDataSet


class ContactListViewController: UITableViewController, DZNEmptyDataSetSource, DZNEmptyDataSetDelegate{
    let contactName = ["Neegbeah","Brittany","Nino"];
    
    let authStatus = ABAddressBookGetAuthorizationStatus()
    
   
    
    
    //let contactPic = [""];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        navigationItem.title = "Contacts"
        
        //DZEmptyDataSet Implementation
        self.tableView.emptyDataSetSource = self
        self.tableView.emptyDataSetDelegate = self
        
        // A little trick for removing the cell separators
        self.tableView.tableFooterView = UIView()
        
        
    }
    
    // De Allocation
    deinit {
        self.tableView.emptyDataSetSource = nil
        self.tableView.emptyDataSetDelegate = nil
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.contactName.count;
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CustomCell", forIndexPath: indexPath) 
        //cell.contactNameLabel?.text = contactName.text
        return cell
    }
}


