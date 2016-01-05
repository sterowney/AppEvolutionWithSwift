//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by Steven Rowney on 05/01/2016.
//  Copyright © 2016 The Blue Cabrio. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var productNameLabel: UILabel!
    
    @IBOutlet weak var productImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productNameLabel.text = "1937 Desk Phone";
        productImageView.image = UIImage(named: "phone-fullscreen3")
    }
    
    @IBAction func addToCartPressed(sender: AnyObject) -> Void {
        
        print("Button Tapped")
    }
    
}
