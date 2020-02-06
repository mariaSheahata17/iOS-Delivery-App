//
//  GroupOrder.swift
//  Delivery App
//
//  Created by Maria Shehata on 2/5/20.
//  Copyright © 2020 Maria Shehata. All rights reserved.
//

import Foundation

class GroupOrder{
    
    var orderID : String
    var store : Store
    var orderList : [Order]?
    var value : Int?
    var location : String
    
    init(orderID : String, store : Store, location : String ){
        self.orderID = orderID
        self.store = store
        self.location = location
        
    }
}
