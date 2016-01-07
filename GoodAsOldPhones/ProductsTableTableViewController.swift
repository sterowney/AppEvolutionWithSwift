//
//  ProductsTableTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Steven Rowney on 05/01/2016.
//  Copyright © 2016 The Blue Cabrio. All rights reserved.
//

import UIKit

class ProductsTableTableViewController: UITableViewController {
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell", forIndexPath: indexPath)
        
        // optional chaining - adding ? first checks if it exists, if it does, continue.
        // same as a null check
        cell.textLabel?.text = "Hello friend."
        cell.imageView?.image = UIImage(named: "image-cell1")
        
        return cell
    }
    
}
