//
//  Store.swift
//  Delivery App
//
//  Created by Maria Shehata on 2/3/20.
//  Copyright © 2020 Maria Shehata. All rights reserved.
//

import Foundation
import UIKit

protocol Product {
    var name : String { get set }
    var picture : UIImage { get set }
    
}

protocol Category {
    var name : String { get set }
    var productList : [Product]{get set}
    
    func addProduct()
}

protocol Store {
    var name : String { get set }
    var location : String { get set }
    var logo : UIImage { get set }
    var categoriesList : [Category] { get set }
    
    func addProduct()
    func addCategory()
}
