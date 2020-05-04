//
//  GroceryItemCell.swift
//  Delivery_App
//
//  Created by Maria Shehata on 5/2/20.
//  Copyright © 2020 Maria Shehata. All rights reserved.
//

import UIKit

class GroceryItemCellView: UICollectionViewCell {
    
    @IBOutlet weak var itemView: UIImageView!
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemPrice: UILabel!
    
    
    @IBOutlet weak var addItemToCartButtonView: UIButton!
    
    
    @IBAction func addItemToCart(_ sender: Any) {
    }
    
}
