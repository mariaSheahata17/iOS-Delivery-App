//
//  Location.swift
//  Delivery_App
//
//  Created by Maria Shehata on 3/4/20.
//  Copyright © 2020 Maria Shehata. All rights reserved.
//source:
/*
 https://www.raywenderlich.com/5247-core-location-tutorial-for-ios-tracking-visited-locations

 */
import Foundation
import CoreLocation

class Location: Codable {
  static let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    formatter.timeStyle = .medium
    return formatter
  }()
  
  var coordinates: CLLocationCoordinate2D {
    return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
  }
  
  let latitude: Double
  let longitude: Double
  let date: Date
  let dateString: String
  let description: String
  
  init(_ location: CLLocationCoordinate2D, date: Date, descriptionString: String) {
    latitude =  location.latitude
    longitude =  location.longitude
    self.date = date
    dateString = Location.dateFormatter.string(from: date)
    description = descriptionString
  }
  
  convenience init(visit: CLVisit, descriptionString: String) {
    self.init(visit.coordinate, date: visit.arrivalDate, descriptionString: descriptionString)
  }
}

