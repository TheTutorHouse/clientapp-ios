//
//  ViewController.swift
//  clientapp
//
//  Created by Steven Xie on 28-05-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class StartController: UIViewController {
    var background: StartBackground!
    var logo: StartLogo!

    override func viewDidLoad() {
        CustomUI.initialize()
        super.viewDidLoad()
        self.layoutSubview()
    }
    
    func layoutSubview(){
        self.background = StartBackground(parent: view)
        self.logo = StartLogo(parent: background.view)
    }

}

