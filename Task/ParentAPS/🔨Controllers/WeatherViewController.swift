//  WeatherViewController.swift
//  Task
//
//  Created by mac on 3/3/18.
//  Copyright © 2018 NermeenTomoum. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {
    @IBOutlet weak var outletOfForcast: UILabel!
    var forcastObject : ForcastModel?
    var locationModel : LocationModel?
    var forcastRespond : ForcastModel?
    override func viewDidLoad() {
        super.viewDidLoad()
      
        print("locationModel====>",locationModel?.citiyName)
        var url =  "http://samples.openweathermap.org/data/2.5/forecast?q=\(locationModel?.citiyName ?? ""),\(locationModel?.ISOcountryCode ?? "")&appid=8257f2aec57bb44d592b5d75f5074639"
        RequestHandler.getWithObjectResponse(url, view: self.view) { (response) in
            let forc = ForcastModel.init(dict: response)
          print("forc",forc)
        }
    }
    
    
}
