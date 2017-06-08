//
//  UIButtonElement.swift
//  clientapp
//
//  Created by Steven Xie on 04-06-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class UIButtonElement: UIElement{
    let button: UIButton!
    
    init(parent: UIView){
        button = UIButton(frame: CGRect.zero)
        let view = button as UIView
        super.init(withView: view, parent: parent)
    }
    
    override func initialize() {
        self.button.setBackgroundImage(#imageLiteral(resourceName: "ButtonBackground"), for: .normal)
        self.button.setBackgroundImage(#imageLiteral(resourceName: "ButtonBackgroundHighlighted"), for: .highlighted)
        self.button.sizeToFit()
        
        self.button.titleLabel?.font = UIFont(name: "AvenirNext-DemiBold", size: 25.0)
        self.button.setTitleColor(CustomColorScheme.darkRed, for: .highlighted)
        self.button.setTitleColor(CustomColorScheme.darkRed, for: .normal)
        self.button.titleLabel?.textAlignment = .center
        
        super.initialize()
    }    
}
