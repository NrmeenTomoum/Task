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
class HomePage: UIViewController,CLLocationManagerDelegate,LocationServiceProtocol{
    @IBOutlet weak var outletOfSearchCitiesText: SearchTextField!
 
   

    override func viewDidLoad() {
        super.viewDidLoad()
        outletOfSearchCitiesText.filterStrings(["Red", "Blue", "Yellow"])
        LocationService.shared.delegate = self
        outletOfSearchCitiesText.itemSelectionHandler = { filteredResults, itemPosition in
            // Just in case you need the item position
            let item = filteredResults[itemPosition]
            print("Item at position \(itemPosition): \(item.title)")
            
            // Do whatever you want with the picked item
            self.outletOfSearchCitiesText.text = item.title
        }
        
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
