//
//  ViewController.swift
//  Bert
//
//  Created by Adam Szeptycki on 12/12/15.
//  Copyright © 2015 MinimLabs. All rights reserved.
//

import UIKit
import SafariServices

class MainViewController: UIViewController {
    @IBOutlet var urlFied: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        guard let identifier = segue.identifier else {return}
        switch identifier{
        case "showInWebView":
            let destinationVC = segue.destinationViewController as! WebViewViewController
            destinationVC.url = self.urlFied.text!
            break
        default: break
        }
    }
    @IBAction func showInSafariViewController(sender: UIButton) {
        let svc = SFSafariViewController(URL: NSURL(string: self.urlFied.text!)!)
        self.presentViewController(svc, animated: true, completion: nil)
    }
    
    @IBAction func openInSafari(sender: UIButton) {
        let url = NSURL(string: self.urlFied.text!)!    
        UIApplication.sharedApplication().openURL(url)
    }
}

