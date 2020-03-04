//
//  Order.swift
//  Delivery_App
//
//  Created by Maria Shehata on 3/4/20.
//  Copyright © 2020 Maria Shehata. All rights reserved.
//

import Foundation

class Order {
    var orderID : Int
    var store : Store
    var orderProducts : [SelectedProduct]?
    
    init(orderID : Int, store : Store){
        self.orderID = orderID
        self.store = store
    }
    
    /*
    func updateStatus()
    func addProduct()
    func removeProduct()
    func updateProduct()
 */
}
