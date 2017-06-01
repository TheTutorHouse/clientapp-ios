//
//  StartLogo.swift
//  clientapp
//
//  Created by Steven Xie on 29-05-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class StartLogo: UIGroup{
    let title: StartLogoTitle!
    let image: StartLogoImage!
    
    init(parent: UIView){
        title = StartLogoTitle(parent: parent)
        image = StartLogoImage(parent: parent)
        super.init()
    }
    
    override func layoutContent() {
        self.stackViews(topView: image.view, bottomView: title.view, byAmount: 22.5, pinnedView: .bottom)
    }
    
}



class StartLogoTitle: UIElement{
    
    init(parent: UIView){
        let imageView = UIImageView(image: #imageLiteral(resourceName: "TTHTitle"))
        super.init(withView: imageView, parent: parent)
    }
    
    override func initializeProperties() {
        self.view.contentMode = .redraw
    }
    
    override func initializeSize() {
        self.intelligentlyResize(minAmount: 265, maxAmount: 285, dynamicFactor: 0.74)
    }
}


class StartLogoImage: UIElement{
    init(parent: UIView){
        let imageView = UIImageView.init(image: #imageLiteral(resourceName: "TTHLogo"))
        super.init(withView: imageView, parent: parent)
    }
    
    override func initializeProperties() {
        self.view.contentMode = .redraw
    }
    
    override func initializeSize() {
        self.intelligentlyResize(minAmount: 85, maxAmount: 96, dynamicFactor: 0.25)
    }
}




