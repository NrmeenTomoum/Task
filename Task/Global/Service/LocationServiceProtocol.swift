//
//  LocationServiceProtocol.swift
//  Task
//
//  Created by mac on 3/2/18.
//  Copyright © 2018 NermeenTomoum. All rights reserved.
//

import Foundation
import CoreLocation
protocol LocationServiceProtocol {
    func updateLocationRespose(_ placeMarks:CLPlacemark?)
    func updateLocationdidFailWithError(errorMessage : String)
}
