//
//  CordinateModel.swift
//  Task
//
//  Created by mac on 3/3/18.
//  Copyright © 2018 NermeenTomoum. All rights reserved.
//

import Foundation
class CordinateModel
{
    var lat : Double = 0.0
    var lon : Double = 0.0
    init(json: [String: Any]) {
        guard let lat = json["lat"] as? Double,
        let lon = json["lon"] as? Double else {
            return
        }
        self.lat = lat
        self.lon = lon
        
        
        
    }
    
}
