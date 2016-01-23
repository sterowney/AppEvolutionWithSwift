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
    
    var product: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        if let p = product {
            
            productNameLabel.text = p.name
            
            if let pi = product?.productImage {
                productImageView.image = UIImage(named: pi)
            }
        }
        
    }
    
    @IBAction func addToCartPressed(sender: AnyObject) -> Void {
        
        print("Button Tapped")
    }
    
}
