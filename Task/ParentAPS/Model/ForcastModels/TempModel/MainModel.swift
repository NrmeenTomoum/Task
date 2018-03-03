//
//  MainModel.swift
//  Task
//
//  Created by mac on 3/3/18.
//  Copyright © 2018 NermeenTomoum. All rights reserved.
//

import Foundation
class MainModel {
    var temp : Double = 0.0
    var  temp_min : Double = 0.0
    var  temp_max : Double = 0.0
    var  pressure : Double = 0.0
    var sea_level : Double = 0.0
    var grnd_level : Double = 0.0
    var humidity : Double = 0.0
    var temp_kf : Double = 0.0
    
    init(json : [String:Any]) {
        guard let temp = json ["temp"] as? Double, let temp_min = json["temp_min"] as? Double, let temp_max = json["temp_max"] as? Double , let pressure = json ["pressure"] as? Double , let  sea_level = json["sea_level"] as? Double
        , let grnd_level = json["grnd_level"] as? Double
        , let humidity = json["humidity"] as? Double
        , let temp_kf = json["temp_kf"] as? Double
            else {
                print("error")
                return
        }
        self.temp  = temp
        self.temp_min  = temp_min
        self.temp_max  = temp_max
        self.pressure  = pressure
        self.sea_level  = sea_level
        self.grnd_level  = grnd_level
        self.humidity  = humidity
        self.temp_kf = temp_kf
        
    }
}
