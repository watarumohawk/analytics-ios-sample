//
//  ThirdViewController.swift
//  analytics-ios-sample
//
//  Created by Wataru Sekiguchi on 2016/10/26.
//  Copyright © 2016年 Wataru Sekiguchi. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var dataLayer: TAGDataLayer = TAGManager.instance().dataLayer
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("~~~~~~ ThirdViewController's viewDidLoad. ~~~~")
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        NSLog("~~~~~~~~Here is ThirdViewController's viewDidAppear.~~~~~~~~")

        dataLayer.push(["event": "OpenScreen", "screenName": "Third Screen"])
        
        
    }
    
    func webViewDidFinishLoad(secondWebView: UIWebView) {
        NSLog("~~~~~~~~Finished loading Second page~~~~~~~~")
    }
    
}