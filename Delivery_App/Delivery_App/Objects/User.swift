//
//  User.swift
//  Delivery_App
//
//  Created by Maria Shehata on 3/4/20.
//  Copyright © 2020 Maria Shehata. All rights reserved.
//

import Foundation

class User {
    var ID : Int
    var contactInf : ContactInfo
    var orderHistory : [Int : Order]
    
    init(ID : Int, contactInf : ContactInfo){
        self.ID = ID
        self.contactInf = contactInf
        self.orderHistory = [Int : Order]()
    }
    
    
    
    func newOrder(orderID : Int, store : Store){
        var order = Order(orderID : orderID, store : store)
        orderHistory[order.orderID] = order
        
    }
    
     /*
    func searchStores() -> [Store]
    func placeOrder()
    func trackOrder()
    func pay()
 
  */
    
}
