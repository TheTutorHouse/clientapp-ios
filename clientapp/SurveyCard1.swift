//
//  SurveyCard1.swift
//  clientapp
//
//  Created by Steven Xie on 07-06-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class SurveyCard1: SurveyCard{
    var textField: UITextFieldElement!
    
    init(parent: UIView){
        super.init(parent: parent, titleText: "Name:")
        textField = UITextFieldElement(parent: self.view)
        print(textField.view.frame)
        initPositions2lol()
        initialize1()
    }
    
    func initialize1() {
        self.textField.textFieldView.placeholder = "Feridun Hamdullahpur"
        textField.textFieldView.reloadInputViews()
        textField.textFieldView.contentVerticalAlignment = .center
    }
    
    override func initSizing() {
        self.view.center.x = parent.center.x
        self.view.center.y = 20 + self.view.frame.height/2
        self.view.frame.size = CGSize(width: self.view.frame.width, height: 90)
    }
    
    func initPositions2lol() {
        self.textField.view.center = CGPoint(x: self.view.bounds.width/2, y: self.view.bounds.height/2 + 13.3)
    }
}
