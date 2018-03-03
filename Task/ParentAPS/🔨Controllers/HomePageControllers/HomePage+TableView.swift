//
//  HomePage+TableView.swift
//  Task
//
//  Created by mac on 3/3/18.
//  Copyright © 2018 NermeenTomoum. All rights reserved.
//

import Foundation
import UIKit
import GooglePlacesSearchController
// tableView
extension HomePage : UITableViewDelegate ,UITableViewDataSource
{
      // MARK: - function
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if citiesArray.count == 0
        {
            return 1
        }
        return citiesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if citiesArray.count == 0
        {
            citiesArray.append(LocationModel(citiyName: "London", ISOcountryCode: "UK"))
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "\(citiesArray[(indexPath as NSIndexPath).row].citiyName),  \(citiesArray[(indexPath as NSIndexPath).row].ISOcountryCode)"
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyBoard = UIStoryboard(name: Constants.StoryBoardIDs.main, bundle: nil)
        let weatherViewController = storyBoard.instantiateViewController(withIdentifier: Constants.StoryBoardIDs.weatherView) as! WeatherViewController
        self.navigationController?.pushViewController(weatherViewController, animated: false)
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            citiesArray.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
}
