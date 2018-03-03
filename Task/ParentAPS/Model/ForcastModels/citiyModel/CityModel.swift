//
//  CityModel.swift
//  Task
//
//  Created by mac on 3/3/18.
//  Copyright © 2018 NermeenTomoum. All rights reserved.
//

import Foundation
class CityModel
{
    var id : Int? = 0
    var name : String? = ""
    var country : String = ""
    var coord : CordinateModel?
    init(json : [String: Any]) {
        guard let id = json["id"] as? Int,
        let name = json["name"] as? String,
        let country = json["country"] as? String
        else {
            return
        }
        self.id = id
        self.name = name
        self.country = country
        self.coord = CordinateModel(json: json["coord"] as! [String: Any])
    }
}
