////
////  AppDelegate.swift
////  analytics-ios-sample
////
////  Created by Wataru Sekiguchi on 2016/10/25.
////  Copyright © 2016年 Wataru Sekiguchi. All rights reserved.
////
//
//import Foundation
//
//import UIKit
//
//@UIApplicationMain
//class AppDelegate: UIResponder, UIApplicationDelegate {
//    
//    var window: UIWindow?
//    
//    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
//        
//        // [START tracker_swift]
//        // Configure tracker from GoogleService-Info.plist.
//        var configureError:NSError?
//        GGLContext.sharedInstance().configureWithError(&configureError)
//        assert(configureError == nil, "Error configuring Google services: \(configureError)")
//        
//        // Optional: configure GAI options.
//        let gai = GAI.sharedInstance()
//        gai.trackUncaughtExceptions = true  // report uncaught exceptions
//        gai.logger.logLevel = GAILogLevel.Verbose  // remove before app release
//        // [END tracker_swift]
//        
//        // Set a white background so that patterns are showcased.
//        window?.backgroundColor = UIColor.whiteColor()
//        
//        return true
//    }
//    
//}
