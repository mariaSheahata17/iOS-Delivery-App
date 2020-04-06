//
//  WalmartStoreLocator.swift
//  Delivery_App
//
//  Created by Maria Shehata on 3/4/20.
//  Copyright © 2020 Maria Shehata. All rights reserved.
//

/*
Walmart Additional Headers : https://walmart.io/docs/affiliate/onboarding-guide
 1. Private key version
 2. ConsumerID
 3. Timestamp / command-> date +%s
 4. Generated signature
 
*/
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
        sessionConfig.httpAdditionalHeaders = ["WM_CONSUMER.INTIMESTAMP":"1585712917",                  // Timestamp
                                               "WM_CONSUMER.ID":"ca0ab1ed-8b48-453f-9221-71d35b455336", // ConsumerID
                                               "WM_SEC.KEY_VERSION":"1",
                                               "WM_QOS.CORRELATION_ID":"-18006880586",
                                               "WM_IFX.CLIENT_TYPE":"INTERNAL",
                                               "WM_PREVIEW":"false",
                                               "WM_SHOW_REASON_CODES":"ALL",
                                               "Content-Type":"application/json"]
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

