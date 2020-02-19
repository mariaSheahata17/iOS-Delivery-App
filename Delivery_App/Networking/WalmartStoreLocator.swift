//
//  WalmartStoreLocator.swift
//  Delivery App
//
//  Created by Maria Shehata on 2/18/20.
//  Copyright © 2020 Maria Shehata. All rights reserved.
//

import Foundation

class WalmartStoreLocator{
    
    var lon: Double
    var lat: Double
    
    init(lon: Double , lat: Double) {
        self.lon = lon
        self.lat = lat
        
    }
    
    func startConnection(){
        // URL
        let url = URL(string : "https://developer.api.walmart.com/api-proxy/service/affil/product/stores")
        guard url != nil else{
            print("Error creating url object")
        }


        // URL Request
        var request = URLRequest( url : url!)

        // Specify the header
        let header = ["lat": "\(self.lat)" , "lon" : "\(self.lon)"]
        request.allHTTPHeaderFields = header

        // Specify the body
        let jsonObject = []
            

        // Set the request type

        // Get the URLSession

        // Create the data task

        // Fire off the data task

    }
    

}

