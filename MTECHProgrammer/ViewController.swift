//
//  ViewController.swift
//  Support
//
//  Created by Lim Chang Siang on 13/2/18.
//  Copyright © 2018 Lim Chang Siang. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    @IBAction func emailSupport(sender: AnyObject){
        if(MFMailComposeViewController.canSendMail()){
            let emailViewController: MFMailComposeViewController = MFMailComposeViewController();
            emailViewController.mailComposeDelegate = self;
            emailViewController.setToRecipients([]);
            emailViewController.setSubject("support Required");
            emailViewController.setMessageBody("This is a message without HTML", isHTML: false);
            self.present(emailViewController, animated: true, completion: nil);
        }
        else{
            print("Mail Services are not available");
        }
    }

    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

