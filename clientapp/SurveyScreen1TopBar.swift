//
//  SurveyScreen1TopBar.swift
//  clientapp
//
//  Created by Steven Xie on 06-06-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class SurveyScreen1TopBar: UIElement{
    
    init(parent: UIView) {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "SurveyScreen1TopBar"))
        super.init(withView: imageView, parent: parent)
        initPosition()
    }
    
    override func initSizing() {
        super.initSizing()
        self.view.sizeToFit()
    }
    
    func initPosition(){
        self.view.center.x = parent.center.x
        self.view.center.y = parent.frame.minY + 20 + self.view.frame.height/2
    }
}
