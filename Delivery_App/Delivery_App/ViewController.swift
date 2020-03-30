//
//  ViewController.swift
//  Delivery_App
//
//  Created by Maria Shehata on 3/4/20.
//  Copyright © 2020 Maria Shehata. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {
    
    var storeLocator = WalmartStoreLocator(lon: 1,lat: 1)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    
    }
    

 
    @IBAction func getLocation(_ sender: UIButton) {
        storeLocator.startConnection()

    }
 
}

