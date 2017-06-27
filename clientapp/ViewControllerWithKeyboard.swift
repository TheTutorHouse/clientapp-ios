//
//  CustomViewController.swift
//  clientapp
//
//  Created by Steven Xie on 26-06-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class ViewControllerWithKeyboard: UIViewController{
    
    var controllerStage: ControllerStage = .loaded
    enum ControllerStage{
        case loaded, prepared, animated, finished
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardDidMove(notification:)), name: NSNotification.Name.UIKeyboardWillChangeFrame, object: nil)
    }
    
    func keyboardDidMove(notification: Notification){
    }
}
