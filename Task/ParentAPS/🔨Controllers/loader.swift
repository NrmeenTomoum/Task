//
//  loader.swift
//  Task
//
//  Created by mac on 3/3/18.
//  Copyright © 2018 NermeenTomoum. All rights reserved.
//
import UIKit
import MBProgressHUD

class loader: NSObject {
    
    
    func startIndecator(_ view:UIView)
    {
    
        let spinnerActivity = MBProgressHUD.showAdded(to: view, animated: true);
        
       // spinnerActivity.colo = UIColor.white
        spinnerActivity.contentColor = UIColor.orange
        
        spinnerActivity.isUserInteractionEnabled = false;
        
        
        
        view.isUserInteractionEnabled = false
        
        
    }
    func startIndecatorWithOutView(_ view:UIView)
    {
        
       // let spinnerActivity = MBProgressHUD.showAdded(to: view, animated: true);
      //  spinnerActivity.isUserInteractionEnabled = false;
        
        view.isUserInteractionEnabled = false
        
        
    }
    func stopIndecatorWithOutView(_ view:UIView)
    {
     //   MBProgressHUD.hideAllHUDs(for: view, animated: true)
        view.isUserInteractionEnabled = true
    }

    func stopIndecator(_ view:UIView)
    {
        MBProgressHUD.hideAllHUDs(for: view, animated: true)
                view.isUserInteractionEnabled = true
    }
    
    
}
