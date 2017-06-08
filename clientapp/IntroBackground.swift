//
//  StartView.swift
//  clientapp
//
//  Created by Steven Xie on 28-05-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class IntroBackground: UIElement{
    init(parent: UIView) {
        let imageView = UIImageView.init(image: #imageLiteral(resourceName: "LightRedBackground"))
        super.init(withView: imageView, parent: parent)
    }
    
    override func initialize() {
        self.view.frame = parent.frame
        self.view.contentMode = .redraw
        self.view.isUserInteractionEnabled = true
    }
}
