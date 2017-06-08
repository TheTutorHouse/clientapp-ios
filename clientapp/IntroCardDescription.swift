//
//  IntroCardDescription.swift
//  clientapp
//
//  Created by Steven Xie on 04-06-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class IntroCardDescription: UILabelElement{
    override func initialize() {
        super.initialize(fontWeight: .Regular, fontSize: 21, fontColor: CustomColorScheme.lightRed)
        self.labelView.textAlignment = .center
        self.labelView.text = "Complete this one-minute match so we can find the tutor that’s right for you!"
    }
    
    override func initSizing() {
        let width = 314/414 * parent.frame.width
        self.view.frame.size = CGSize(width: width, height: CGFloat.greatestFiniteMagnitude)
        self.view.sizeToFit()
        
        super.initSizing()
    }
}
