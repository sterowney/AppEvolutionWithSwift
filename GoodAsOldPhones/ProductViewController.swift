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
        
        guard let product = product,
              let name = product.name,
              let price = product.price else {
            return
        }
        
        let alertController = UIAlertController(title: "Added to cart", message: "You added an \(name) to the cart and it costs \(price)", preferredStyle: UIAlertControllerStyle.Alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        presentViewController(alertController, animated: true, completion: nil)
    }
    
}
