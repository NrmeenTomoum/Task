//
//  WindModel.swift
//  Task
//
//  Created by mac on 3/3/18.
//  Copyright © 2018 NermeenTomoum. All rights reserved.
//

import Foundation
class  WindModel {
    var speed : Double = 0.0
    var deg : Double = 0.0
    init(json: [String: Any]) {
        self.speed = (json["speed"] as? Double)!
        self.deg = (json["deg"] as? Double)!
    }
    
}
