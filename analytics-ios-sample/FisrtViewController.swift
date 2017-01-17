//
//  FisrtViewController.swift
//  analytics-ios-sample
//
//  Created by Wataru Sekiguchi on 2016/10/25.
//  Copyright © 2016年 Wataru Sekiguchi. All rights reserved.
//

import UIKit

class FisrtViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NSLog("~~~~~~~~FirstViewController's viewDidLoad.~~~~~~~~")
        
    }
    
    override func viewDidAppear(animated: Bool) {
        NSLog("~~~~~~~~FirstViewController's viewDidAppear.~~~~~~~~")
        
        let screenName = "FirstViewController"
        
        let tracker = GAI.sharedInstance().defaultTracker
        tracker.allowIDFACollection = true
        tracker.set(kGAIScreenName, value: screenName)

        let builder = GAIDictionaryBuilder.createScreenView()
        tracker.send(builder.build() as [NSObject : AnyObject])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

