//
//  SelectedProduct.swift
//  Delivery App
//
//  Created by Maria Shehata on 2/5/20.
//  Copyright © 2020 Maria Shehata. All rights reserved.
//

import Foundation

class SelectedProduct{
    var product : Product
    var quantity : Int
    
    init(product : Product){
        self.product = product
        self.quantity = 1
    }
    
    func increaseQuantity(){
        self.quantity += 1
    }
    
    func decreaseQuantity(){
        self.quantity += 1
    }
}
