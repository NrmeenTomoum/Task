//
//  ViewController.swift
//  ParentAPSTask
//
//  Created by mac on 2/28/18.
//  Copyright © 2018 NermeenTomoum. All rights reserved.
//

import UIKit
import CoreLocation
import SearchTextField
import GooglePlacesSearchController
class HomePage: UIViewController,CLLocationManagerDelegate,LocationServiceProtocol{
    
    let GoogleMapsAPIServerKey = "AIzaSyBvjEp5VmB8gvEKUtlUqYaHh5j1d4dzJz0"
    
    @IBOutlet weak var outletOfSearchResultTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func ActionOfAddCitiy(_ sender: Any) {
        
        let controller = GooglePlacesSearchController(
            apiKey: GoogleMapsAPIServerKey,
            placeType: PlaceType.cities
        )
        controller.didSelectGooglePlace {
            (place) -> Void in
            print(place.ISOcountryCode , place.locality)
            
            let storyBoard = UIStoryboard(name: Constants.StoryBoardIDs.main, bundle: nil)
            let homeVC = storyBoard.instantiateViewController(withIdentifier: Constants.StoryBoardIDs.weatherView) as! WeatherViewController
            self.navigationController?.pushViewController(homeVC, animated: false)
            controller.isActive = false
        }
        present(controller, animated: true, completion: nil)
    }
    
   
    
}
// Location
extension HomePage
{
    func updateLocationRespose(_ placeMarks: CLPlacemark?) {
        LocationService.shared.locationManager.stopUpdatingLocation()
        if let containsPlacemark = placeMarks {
            let administrativeArea = (containsPlacemark.administrativeArea != nil) ? containsPlacemark.administrativeArea : ""
            print( "===========>",administrativeArea ?? "" )
        }
    }
}
// tableView
extension HomePage : UITableViewDelegate ,UITableViewDataSource
{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return    0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell ()
        return cell
    }
    
}
