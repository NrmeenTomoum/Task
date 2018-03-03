//
//  Alert.swift
//  Task
//
//  Created by mac on 3/3/18.
//  Copyright © 2018 NermeenTomoum. All rights reserved.
//

import Foundation
import UIKit
class Alert {
    
    class func alert(_ title: String , message :String , alertActions:[String] , navigationVC : UINavigationController) {
        //let navigationVC = Initilizer.getMainNavigation()
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title:"OK", style: .default, handler: nil)
        alert.addAction(okAction)
      //  for action in alertActions {
//           let alertAction  = createAction(action)
//            alert.addAction(alertAction)
   //     }
        
        navigationVC.present(alert, animated: true, completion: nil)
}
}
