//
//  UIElement.swift
//  clientapp
//
//  Created by Steven Xie on 30-05-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class UIElement{
    var view: UIView!
    var parent: UIView!
    
    init(withView view: UIView, parent: UIView){
        self.view = view
        self.parent = parent
        parent.addSubview(view)
        initialize()
        initSizing()
    }
    
    internal func initialize(){
        
    }
    
    internal func initSizing(){
        self.view.center = parent.center
    }
}
