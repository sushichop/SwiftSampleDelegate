//
//  ReceiverViewController.swift
//  SwiftSampleDelegate
//
//  Created by sushichop on 7/5/15.
//  Copyright (c) 2015 sushichop. All rights reserved.
//

import UIKit

class ReceiverViewController: UIViewController, SenderViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - Segue

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier! == "SenderView" {
            let senderViewController = segue.destinationViewController as! SenderViewController
            senderViewController.delegate = self
        }
    }
    
    
    // MARK: - SenderVewControllerDelegate
    
    func senderViewController(senderViewController: SenderViewController, didSendRequiredInfo info: Dictionary<String, AnyObject>) {
        println("info: \(info)")
    }
    
    func senderViewController(senderViewController: SenderViewController, didSendOptionalInfo info: Dictionary<String, AnyObject>) {
        println("info: \(info)")
    }
    
}
