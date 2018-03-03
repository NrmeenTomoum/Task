//
//  TempModel.swift
//  Task
//
//  Created by mac on 3/3/18.
//  Copyright © 2018 NermeenTomoum. All rights reserved.
//

import Foundation

class TempModel {
    var  dt : Int = 0
    var main : MainModel?
    var weather : [WeatherModel]?
    var clouds : CloudsModel?
    var wind  : WindModel?
    var sys : SysModel?
    var dt_txt : String = ""
    init(dict : [String:Any] ) {
        guard let dt = dict["dt"] as? Int ,let mainJson = dict ["main"] as? [String :Any] ,
            let weatherJson =  dict ["weather"] as? [[String :Any] ],
         let cloudsJson =  dict ["clouds"] as? [String :Any],
        let windJson = dict ["wind"] as? [String :Any],
        let sysJson = dict ["sys"] as? [String :Any],
        let dt_txt = dict ["dt_txt"] as? String
            else {
                print("error")
                return
        }
        var weather = [WeatherModel]()
        for item in weatherJson {
            let tempObj = WeatherModel(json: item)
            weather.append(tempObj)
              }
        
        
        self.main  = MainModel.init(json: mainJson)
        self.weather = weather
        self.clouds = CloudsModel.init(json: cloudsJson)
        self.wind = WindModel.init(json: windJson)
        self.sys = SysModel.init(json: sysJson)
        self.dt = dt
        self.dt_txt = dt_txt
    }

}




