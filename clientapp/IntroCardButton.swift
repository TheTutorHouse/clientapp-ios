//
//  IntroCardButton.swift
//  clientapp
//
//  Created by Steven Xie on 05-06-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class IntroCardButton: UIButtonElement{
    override func initialize() {
        super.initialize()
        
        self.button.setTitle("Begin", for: .normal)
        self.button.setTitle("Begin", for: .highlighted)
    }
    
    override func initSizing() {
        let width = 225/414 * parent.frame.width
        let height = 69/225 * width
        self.view.frame.size = CGSize(width: width, height: height)

        super.initSizing()
    }
}
