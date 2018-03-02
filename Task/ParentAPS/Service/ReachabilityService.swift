////
////  ReachabilityService.swift
////  ParentAPSTask
////
////  Created by mac on 3/2/18.
////  Copyright © 2018 NermeenTomoum. All rights reserved.
////
//
//import Foundation
//import Reachability
//
//class ReachabilityService
//{
//
//   static let reachability = Reachability()!
//
//    @objc func reachabilityChanged(_ note: Notification) {
//
//        let reachability = note.object as! Reachability
//
//        switch reachability.connection {
//        case .wifi:
//            print("Reachable via WiFi")
//        case .cellular:
//            print("Reachable via Cellular")
//        case .none:
//            print("Network not reachable")
//        }
//    }
//
//class    func startObserveReachability() {
//           NotificationCenter.default.addObserver(self, selector: #selector(reachabilityChanged(_:)), name: .reachabilityChanged, object: reachability)
//
//      //  NotificationCenter.default.addObserver(self, selector: #selector(reachabilityChanged(note: <#Notification#>)), name: .reachabilityChanged, object: reachability)
//        do{
//            try reachability.startNotifier()
//        }catch{
//            print("could not start reachability notifier")
//        }
//    }
//
// class   func stopObserveReachability() {
//        reachability.stopNotifier()
//        NotificationCenter.default.removeObserver(self, name: .reachabilityChanged, object: reachability)
//
//    }
//
//
//}
//
//
