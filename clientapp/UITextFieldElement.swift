//
//  UITextFieldElement.swift
//  clientapp
//
//  Created by Steven Xie on 07-06-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class UITextFieldElement: UIElement{
    var textFieldView: UITextField
    
    init(parent: UIView){
        let view = UITextField(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: parent.frame.width - 40, height: 36)))
        textFieldView = view
        super.init(withView: view, parent: parent)
        print("oholohos")
    }
    
    override func initialize() {
        self.textFieldView.font = UIFont(name: "AvenirNext-Regular", size: 25)
        self.textFieldView.textColor = UIColor(red: 168/255, green: 39/255, blue: 36/255, alpha: 1)
        self.view.backgroundColor = UIColor(red: 255/255, green: 192/255, blue: 192/255, alpha: 1)
        self.view.layer.cornerRadius = 11
        self.view.clipsToBounds = true
        self.view.isUserInteractionEnabled = true
        super.initialize()
    }
}
