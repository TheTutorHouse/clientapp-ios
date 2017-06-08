//
//  File.swift
//  clientapp
//
//  Created by Steven Xie on 04-06-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit
class IntroCardBackground: UIElement{
    init(parent: UIView){
        let view = UIImageView(image: #imageLiteral(resourceName: "RedBackground"))
        super.init(withView: view, parent: parent)
    }
    
    override func initialize() {
        self.view.contentMode = .redraw
        super.initialize()
    }
    
    override func initSizing() {
        self.view.frame.size = CGSize(width: parent.frame.width, height: 250)
        self.view.center.x = self.parent.center.x
        self.view.center.y = self.parent.frame.maxY - (self.view.frame.height/2)
    }
}
