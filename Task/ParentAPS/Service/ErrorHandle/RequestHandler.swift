//
//  RequestHandler.swift
//  Task
//
//  Created by mac on 3/3/18.
//  Copyright © 2018 NermeenTomoum. All rights reserved.
//

import Foundation
import Alamofire
class RequestHandler
{
    static var loaderr = loader()
    class func getWithObjectResponse(_ url:String,view:UIView, success: @escaping ([String:AnyObject]) -> ()) {
        NSLog(url, url)
        print("URL \(url)")
        loaderr.startIndecator(view)
        
        Alamofire.request(url,
                          method: .get,
                          parameters: nil,
                          encoding: JSONEncoding.default,
                          headers:nil).responseJSON { (response:DataResponse<Any>) in
                            loaderr.stopIndecator(view)
                            switch response.result {
                            case .success:
                                
                                let jsonResponse = response.result.value as! [String:AnyObject]
                                 NSLog("RESPONSE", jsonResponse)
                                success(jsonResponse)
                              case .failure(let error):
                               print("No  Connection")
//
                            }
        }
        
        
    }

    }
