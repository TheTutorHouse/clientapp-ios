//
//  SurveyScreen1Background.swift
//  clientapp
//
//  Created by Steven Xie on 06-06-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class SurveyScreen1Background: UIElement{
    init(parent: UIView) {
        let imageView = UIImageView.init(image: #imageLiteral(resourceName: "RedBackground"))
        super.init(withView: imageView, parent: parent)
    }
    
    override func initialize() {
        self.view.frame = parent.frame
        self.view.contentMode = .redraw
        self.view.isUserInteractionEnabled = true
    }
}
