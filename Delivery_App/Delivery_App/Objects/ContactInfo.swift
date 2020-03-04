//
//  ContactInfo.swift
//  Delivery_App
//
//  Created by Maria Shehata on 3/4/20.
//  Copyright © 2020 Maria Shehata. All rights reserved.
//

import Foundation
import UIKit

class ContactInfo {
    var name : String
    var email : String
    var password : String
    
    init(name : String, email : String, password : String ){
        self.name = name
        self.email = email
        self.password = password
    }
}
