//
//  ProductsTableTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Steven Rowney on 05/01/2016.
//  Copyright © 2016 The Blue Cabrio. All rights reserved.
//

import UIKit

class ProductsTableTableViewController: UITableViewController {
    
    var productNames: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        productNames = ["1907 Wall Set", "1921 Dial Phone", "1937 Desk Set", "1984 Motorola Portable"];
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // this checks if an optional exists and assigns to new non-optional variable
        // it is now unwrapped
        if let pNames = productNames {
            return pNames.count;
        }
        
        return 0
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell", forIndexPath: indexPath)
        
        let productName = productNames?[indexPath.row]
        
        // optional chaining - adding ? first checks if it exists, if it does, continue.
        // same as a null check
        cell.textLabel?.text = productName
        cell.imageView?.image = UIImage(named: "image-cell1")
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowProduct" {
            let productVC = segue.destinationViewController as? ProductViewController
            
            // guard checks if optional exists, else will return and function will be over
            // so compiler knows below the let statements its ok to continue because it would
            // drop out if cell or indexPath doesn't exist
            guard let cell =  sender as? UITableViewCell,
                let indexPath = tableView.indexPathForCell(cell) else {
                    return
            }
            
            productVC?.productName = productNames?[indexPath.row]
            
        }
    }
    
}
