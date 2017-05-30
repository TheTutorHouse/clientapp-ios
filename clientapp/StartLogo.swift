//
//  StartLogo.swift
//  clientapp
//
//  Created by Steven Xie on 29-05-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class StartLogoTitle: UIElement{
    
    init(parent: UIView){
        let imageView = UIImageView(image: #imageLiteral(resourceName: "TTHTitle"))
        super.init(withView: imageView, parent: parent)
    }
    
    override func initializeSize() {
        self.view.sizeToFit()
        //self.resizeView(minAmount: 265, maxAmount: 280, dynamicFactor: 0.736)
        print(self.view.frame.size)
    }
}

class StartLogoImage: UIElement{
    init(parent: UIView){
        let imageView = UIImageView.init(image: #imageLiteral(resourceName: "TTHLogo"))
        super.init(withView: imageView, parent: parent)
    }
    
    override func initializeSize() {
        self.view.sizeToFit()
    }
}




