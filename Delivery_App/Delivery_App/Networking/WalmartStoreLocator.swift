//
//  WalmartStoreLocator.swift
//  Delivery_App
//
//  Created by Maria Shehata on 3/4/20.
//  Copyright © 2020 Maria Shehata. All rights reserved.
//


import Foundation
class WalmartStoreLocator {
    
    var lon: Double
    var lat: Double
    
    init(lon: Double , lat: Double) {
        self.lon = lon
        self.lat = lat
        
    }
    
    func startConnection(){
        // Additional Headers from Walmart Affliate API
        let sessionConfig = URLSessionConfiguration.default
        sessionConfig.httpAdditionalHeaders = ["WM_SEC.KEY_VERSION": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3"]
        // URL
        guard let url = URL(string : "https://developer.api.walmart.com/api-proxy/service/affil/product/taxonomy")else{ return}
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            if let response = response{
                print(response)
            }
            
            if let data = data{
                print(data)
            }
        }.resume()
      }
    
}

