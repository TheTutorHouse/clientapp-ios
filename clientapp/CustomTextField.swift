//
//  CustomTextField.swift
//  clientapp
//
//  Created by Steven Xie on 25-06-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class CustomTextField: UITextField{
    var isActive = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    private func initialize(){
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = true
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        let bounds = bounds.insetBy(dx: 8, dy: 3)
        return bounds
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        let bounds = bounds.insetBy(dx: 8, dy: 3)
        return bounds
    }
}
