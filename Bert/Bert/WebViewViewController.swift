//
//  WebViewViewController.swift
//  Bert
//
//  Created by Adam Szeptycki on 12/12/15.
//  Copyright © 2015 MinimLabs. All rights reserved.
//

import Foundation
import UIKit

class WebViewViewController: UIViewController{
    @IBOutlet weak var webView: UIWebView!
    var url: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let request = NSURLRequest(URL: NSURL(string: url!)!)
        self.webView.loadRequest(request)
    }
    
}