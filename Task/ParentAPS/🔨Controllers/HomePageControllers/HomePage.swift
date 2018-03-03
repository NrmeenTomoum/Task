//
//  ViewController.swift
//  ParentAPSTask
//
//  Created by mac on 2/28/18.
//  Copyright © 2018 NermeenTomoum. All rights reserved.
//

import UIKit
import CoreLocation
import GooglePlacesSearchController
class HomePage: UIViewController,CLLocationManagerDelegate{
   // MARK: - Variable
    let GoogleMapsAPIServerKey = "AIzaSyBvjEp5VmB8gvEKUtlUqYaHh5j1d4dzJz0"
    var citiesArray = [LocationModel]()
  
    @IBOutlet weak var outletOfSearchResultTableView: UITableView!
      // MARK: - function
    override func viewDidLoad() {
        super.viewDidLoad()
         LocationService.shared.delegate = self
    }
    override func viewWillAppear(_ animated: Bool) {
        outletOfSearchResultTableView.reloadData()
    }
    
    @IBAction func ActionOfAddCitiy(_ sender: Any) {
        
        let controller = GooglePlacesSearchController(
            apiKey: GoogleMapsAPIServerKey,
            placeType: PlaceType.cities
        )
        controller.didSelectGooglePlace {
            (place) -> Void in
            print(place.ISOcountryCode , place.locality)
            if self.citiesArray.count < 5
            {
                var isExist = false
                for item in self.citiesArray
                {
                    if item.citiyName == place.locality && item.ISOcountryCode == place.ISOcountryCode
                    {
                         isExist = true
                        break;
                    }
                    
                }
                if  isExist == false
                {
                self.citiesArray.append(LocationModel(citiyName: place.locality, ISOcountryCode:  place.ISOcountryCode))
                }
            }
            let storyBoard = UIStoryboard(name: Constants.StoryBoardIDs.main, bundle: nil)
            let weatherViewController = storyBoard.instantiateViewController(withIdentifier: Constants.StoryBoardIDs.weatherView) as! WeatherViewController
            var cityName : String = place.locality
            weatherViewController.locationModel = LocationModel(citiyName: cityName.removeWhitespace(), ISOcountryCode:place.ISOcountryCode )
            self.navigationController?.pushViewController(weatherViewController, animated: false)
            controller.isActive = false
        }
        present(controller, animated: true, completion: nil)
    }
    
   
    
}


extension String {
    func replace(_ string:String, replacement:String) -> String {
        return self.replacingOccurrences(of: string, with: replacement, options: NSString.CompareOptions.literal, range: nil)
    }
    
    func removeWhitespace() -> String {
         return self.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!
    }
}

