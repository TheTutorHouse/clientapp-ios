//
//  IntroCardTitle.swift
//  clientapp
//
//  Created by Steven Xie on 04-06-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class IntroCardTitle: UILabelElement{
    override func initialize() {
        super.initialize(fontWeight: .DemiBold, fontSize: 24, fontColor: CustomColorScheme.lightRed)
        self.labelView.text = "Welcome to The Tutor House!"
        self.labelView.textAlignment = .center
    }
    
    override func initSizing() {
        let width = 363/414 * parent.frame.width
        self.view.frame.size = CGSize(width: width, height: CGFloat.greatestFiniteMagnitude)
        self.view.sizeToFit()
        
        super.initSizing()
    }
}
