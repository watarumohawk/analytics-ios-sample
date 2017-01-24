//
//  SecondViewController.swift
//  analytics-ios-sample
//
//  Created by Wataru Sekiguchi on 2016/10/26.
//  Copyright © 2016年 Wataru Sekiguchi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var secondWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.secondWebView.delegate = self
        NSLog("~~~~~~~~Here is SecondViewController's viewDidLoad.~~~~~~~~")
        
        // WebView with GA
        let urlString = "https://storage.googleapis.com/ga-webview-bestpractice/webview-with-ga.html"
        let url = NSURL(string: urlString)
        let myRequest = NSURLRequest(URL: url!)
        secondWebView.loadRequest(myRequest)
    }
    
    override func viewDidAppear(animated: Bool) {
        
        NSLog("~~~~~~~~Here is SecondViewController's viewDidAppear.~~~~~~~~")
        
        let screenName = "SecondViewController"
        
        let tracker = GAI.sharedInstance().defaultTracker
        tracker.allowIDFACollection = true
        tracker.set(kGAIScreenName, value: screenName)
        
        let builder = GAIDictionaryBuilder.createScreenView()
        tracker.send(builder.build() as [NSObject : AnyObject])
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func WebViewDidStartLoad(secondWebView : UIWebView) {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = true
    }
    
    func webViewDidFinishLoad(secondWebView: UIWebView) {
        NSLog("~~~~~~~~Finished loading Second page~~~~~~~~")
    }
    
    func UIwebView(webView: UIWebView!, shouldStartLoadWithRequest request:NSURLRequest!, navigationType: UIWebViewNavigationType) -> Bool {
        return true
    }
    
    
}