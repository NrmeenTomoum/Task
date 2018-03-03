//
//  WeatherModel.swift
//  Task
//
//  Created by mac on 3/3/18.
//  Copyright © 2018 NermeenTomoum. All rights reserved.
//

import Foundation

class WeatherModel {
    var id  : Int = 0
    var main : String = ""
    var description : String = ""
    var icon : String = ""
    
    init(json : [String:Any]) {
        guard let id = json["id"] as? Int,
        let main = json["main"] as? String,
        let description = json["description"] as? String,
        let icon = json["icon"] as? String
        else {
            print("error")
            return
        }
        self.id = id
        self.main = main
        self.description = description
        self.icon = icon
    }
}
