//
//  StartView.swift
//  clientapp
//
//  Created by Steven Xie on 28-05-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class StartBackground: UIElement{
    init(parent: UIView) {
        let imageView = UIImageView.init(image: #imageLiteral(resourceName: "RedBackground"))
        super.init(withView: imageView, parent: parent)
    }
    
    override func initializeSize() {
        self.view.frame = parent.frame
        self.view.sizeToFit()
    }
}
