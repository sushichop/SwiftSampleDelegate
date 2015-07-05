//
//  SenderViewController.swift
//  SwiftSampleDelegate
//
//  Created by sushichop on 7/5/15.
//  Copyright (c) 2015 sushichop. All rights reserved.
//

import UIKit

// You need to use 'AnyObject' insted of 'Any' 
// because of optional protocol and Objective-C compatible mode.
@objc protocol SenderViewControllerDelegate: NSObjectProtocol {
    
    func senderViewController(senderViewController: SenderViewController, didSendRequiredInfo: Dictionary<String, AnyObject>)
    
    optional func senderViewController(senderViewController: SenderViewController, didSendOptionalInfo: Dictionary<String, AnyObject>)
    
}

class SenderViewController: UIViewController {

    weak var delegate: SenderViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - IBAction
    
    @IBAction func goBack(sender: AnyObject) {
        
        // Xcode checks the method is implemented or not.
        self.delegate?.senderViewController(self, didSendRequiredInfo: ["message": "this is required", "score": 3])
        
        // You do not need to check the method is implemented or not.
        self.delegate?.senderViewController?(self, didSendOptionalInfo: ["message": "this is optional", "score": 100])
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}
