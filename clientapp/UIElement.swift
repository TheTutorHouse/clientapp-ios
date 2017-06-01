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
        self.initializeLayout()
    }
    
    func initializeLayout(){
        self.initializeProperties()
        self.initializeSize()
        self.initializePosition()
    }
    
    func initializeProperties(){
        
    }
    
    func initializePosition(){
        self.view.center = parent.center
    }
    
    func initializeSize(){
    }
}
