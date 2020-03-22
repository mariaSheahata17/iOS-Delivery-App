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
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    
    }
    

    // Actions
    
    @IBAction func getLocation(_ sender: UIButton) {
        let location  = Location()
        let status = CLLocationManager.authorizationStatus()
        switch status {
            case .notDetermined:
                location.locationManger.requestWhenInUseAuthorization()
                    return

                // 2
            case .denied, .restricted:
                let alert = UIAlertController(title: "Location Services disabled", message: "Please enable Location Services in Settings", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(okAction)
                present(alert, animated: true, completion: nil)
                return
            case .authorizedAlways, .authorizedWhenInUse:
                break

        }

        location.startSearchingLocation()
        print(location.latitude)
        print(location.longitude)

    }
}

