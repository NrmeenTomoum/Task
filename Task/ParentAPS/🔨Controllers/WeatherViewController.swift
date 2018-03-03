//  WeatherViewController.swift
//  Task
//
//  Created by mac on 3/3/18.
//  Copyright © 2018 NermeenTomoum. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {
    @IBOutlet weak var outletOfForcast: UILabel!
    @IBOutlet weak var tableView: UITableView!
    var forcastObject : ForcastModel?
    var locationModel : LocationModel?
    var forcastRespond : ForcastModel?
    override func viewDidLoad() {
        super.viewDidLoad()
      
        print("locationModel====>",locationModel?.citiyName)
        var url =  "http://samples.openweathermap.org/data/2.5/forecast?q=\(locationModel?.citiyName ?? ""),\(locationModel?.ISOcountryCode ?? "")&appid=8257f2aec57bb44d592b5d75f5074639"
        RequestHandler.getWithObjectResponse(url, view: self.view) { (response) in
            let forc = ForcastModel.init(dict: response)
            self.forcastRespond = forc
            self.tableView.reloadData()
            
          print("forc",forc)
        }
    }
    
    
}
extension  WeatherViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      if forcastRespond?.cnt == nil
      {
        return 0
        }
        return (forcastRespond?.cnt)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "weather")
        let tempModelObj = forcastRespond?.list![indexPath.row]
        cell?.textLabel?.text = tempModelObj?.weather![0].main
        cell?.detailTextLabel?.text = tempModelObj?.weather![0].description
        return cell!
    }
    
    
    
}
