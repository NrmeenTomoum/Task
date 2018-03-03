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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("locationModel====>",locationModel?.citiyName)
        var url =  "http://samples.openweathermap.org/data/2.5/forecast?q=\(locationModel?.citiyName ?? ""),\(locationModel?.ISOcountryCode ?? "")&appid=b6907d289e10d714a6e8n761fae27"
        
        RequestHandler.getWithObjectResponse(url, view: self.view) { (json)
        in
            print("response for token ===>",json)
           
            if let predictions = json["cod"] as? String {
                self.outletOfForcast.text = predictions
                let posts = response.posts
                self.posts = posts
              //  self.tableView.reloadData()
        }
        else
        {
                
            AlertView.alert("No Connection", message: "retry", alertActions: [], navigationVC: self.navigationController!)
        }
            
            
        // Do any additional setup after loading the view.
    }
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
