//
//  forcastModel.swift
//  Task
//
//  Created by mac on 3/3/18.
//  Copyright © 2018 NermeenTomoum. All rights reserved.
//

import Foundation
class ForcastModel {
    
    var cod :String = ""
    var message : Double = 0.0
    var cnt : Int = 0
    var list : [TempModel]?
    var city : CityModel?
    
  init(citiyName :String,ISOcountryCode:String) {
    }
    
    init?(dict: [String: Any]) {
        guard let cod = dict["cod"] as? String,
            let message = dict["message"] as? Double,
            let cnt = dict["cnt"] as? Int,
        let listJson = dict["list"] as? [[String: Any]],
        let cityJson = dict["city"] as? [String: Any]
         else {
                print("error")
                return
        }
        var list = [TempModel]()
        let city =  CityModel.init(json :cityJson)
        for item in listJson {
            let tempObj = TempModel(dict: item)
            list.append(tempObj)
            print("temp model")
        }
        
        self.cod = cod
        self.message = message
        self.cnt = cnt
        self.list = list
        self.city = city
        
        
    }
    
}




