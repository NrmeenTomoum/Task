//
//  CloudsModel.swift
//  Task
//
//  Created by mac on 3/3/18.
//  Copyright © 2018 NermeenTomoum. All rights reserved.
//

import Foundation
class CloudsModel {
    var all : Int = 0
    init(json: [String: Any]) {
        self.all = (json["all"] as? Int)!
    }
}

