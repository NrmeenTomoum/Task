//
//  SysModel.swift
//  Task
//
//  Created by mac on 3/3/18.
//  Copyright © 2018 NermeenTomoum. All rights reserved.
//

import Foundation
class SysModel {
    var pod  : String = ""
    init(json: [String: Any]) {
        self.pod = (json["pod"] as? String)!
    }
}
