//
//  LocationModel.swift
//  Task
//
//  Created by mac on 3/3/18.
//  Copyright © 2018 NermeenTomoum. All rights reserved.
//

import Foundation
class LocationModel {
    
    var citiyName :String = ""
    var ISOcountryCode : String = ""
    init(citiyName :String,ISOcountryCode:String) {
        self.citiyName = citiyName
        self.ISOcountryCode = ISOcountryCode
    }
}
