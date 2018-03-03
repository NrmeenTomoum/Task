//
//  LocationService.swift
//  Task
//
//  Created by mac on 3/2/18.
//  Copyright © 2018 NermeenTomoum. All rights reserved.
//

import Foundation

import UIKit
import CoreLocation

class LocationService: UIViewController,CLLocationManagerDelegate{
    static   let shared = LocationService()
    let  locationManager = CLLocationManager()
    var delegate:LocationServiceProtocol? = nil
    func getPermission() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyKilometer
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        CLGeocoder().reverseGeocodeLocation(manager.location!, completionHandler: {(placemarks, error)->Void in
            
            if (error != nil) {
                print("Reverse geocoder failed with error" + (error?.localizedDescription)!)
                return
            }
            
            if (placemarks?.count)! > 0 {
                
                print("placemarks",placemarks!)
                let pm = placemarks?[0]
                self.delegate?.updateLocationRespose(pm)
            } else {
                self.delegate?.updateLocationdidFailWithError(errorMessage: "Problem with the data received from geocoder")
            }
        })
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        delegate?.updateLocationdidFailWithError(errorMessage: "Error while updating location ")
        //print("Error while updating location " + error.localizedDescription)
    }
}
