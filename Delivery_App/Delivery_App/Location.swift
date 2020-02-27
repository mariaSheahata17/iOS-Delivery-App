//
//  Location.swift
//  Delivery_App
//
//  Created by Maria Shehata on 2/26/20.
//  Copyright © 2020 Maria Shehata. All rights reserved.
//

import Foundation
import CoreLocation

class Location: NSObject, CLLocationManagerDelegate{
    
    let locationManger = CLLocationManager()
    var latitude : Double?
    var longitude : Double?
    
    override init() {
        super.init()
        locationManger.delegate = self
        locationManger.desiredAccuracy = kCLLocationAccuracyBest
        locationManger.requestWhenInUseAuthorization()
        locationManger.startUpdatingLocation()
    }
    
    // this function is called each time the user changes the location
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let location = locations[0]
        self.latitude! = location.coordinate.latitude
        self.longitude! = location.coordinate.longitude
    }
    
    
    
}
