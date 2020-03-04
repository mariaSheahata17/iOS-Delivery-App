//
//  Interfaces.swift
//  Delivery_App
//
//  Created by Maria Shehata on 3/4/20.
//  Copyright © 2020 Maria Shehata. All rights reserved.
//

import Foundation
import UIKit

protocol Store {
    var name : String { get set }
    var location : String { get set }
    var logo : UIImage { get set }
    var categoriesList : [ProductCategory] { get set }
    
    func addProduct()
    func addCategory()
}

protocol ProductCategory {
    var store : Store {get set}
    var name : String { get set }
    var productList : [Product]{get set}
    
    func addProduct()
}


protocol Product {
    var ID : Int {get set }
    var store : Store {get set}
    var name : String { get set }
    var picture : UIImage { get set }
    var price : Double {get set}
    var productCategory : ProductCategory {get set}
}
