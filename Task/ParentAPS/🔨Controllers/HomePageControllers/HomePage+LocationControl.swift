//
//  HomePage+LocationControl.swift
//  Task
//
//  Created by mac on 3/3/18.
//  Copyright © 2018 NermeenTomoum. All rights reserved.
//

import UIKit
import CoreLocation
// Location
extension HomePage : LocationServiceProtocol
{
    // MARK: -  variable
  
      // MARK: - function
    func updateLocationRespose(_ placeMarks: CLPlacemark?) {
        LocationService.shared.locationManager.stopUpdatingLocation()
        if let containsPlacemark = placeMarks {
            let administrativeArea = (containsPlacemark.administrativeArea != nil) ? containsPlacemark.administrativeArea : ""
            
            let isoCountry = (containsPlacemark.isoCountryCode != nil) ? containsPlacemark.isoCountryCode : ""
            if citiesArray.count == 1
            {
                citiesArray.removeAll()
                citiesArray.append(LocationModel(citiyName: administrativeArea!, ISOcountryCode: isoCountry!))
            }
            print( "===========>",administrativeArea ?? "" )
            outletOfSearchResultTableView.reloadData()
            
        }
        else
        {
            
            
            
        }
    }
    func updateLocationdidFailWithError(errorMessage: String) {
        
    }
}
