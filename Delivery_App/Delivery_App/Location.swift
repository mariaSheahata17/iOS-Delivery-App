//
//  Location.swift
//  Delivery_App
//
//  Created by Maria Shehata on 3/4/20.
//  Copyright © 2020 Maria Shehata. All rights reserved.
//

import Foundation
import CoreLocation
import UIKit

class Location: NSObject, CLLocationManagerDelegate{
    
    let locationManger  = CLLocationManager()
    var latitude : Double?
    var longitude : Double?
    
    override init() {
        super.init()

    }
    
    func startSearchingLocation(){

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
        print("location.coordinate: \(location.coordinate)")


    }
    
    // Handle errors here
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
    
    
    
}
