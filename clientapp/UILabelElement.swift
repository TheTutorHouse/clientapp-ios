//
//  UILabelElement.swift
//  clientapp
//
//  Created by Steven Xie on 04-06-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class UILabelElement: UIElement{
    var labelView: UILabel!
    
    init(parent: UIView){
        let view = UILabel(frame: CGRect.zero)
        labelView = view 
        super.init(withView: view, parent: parent)
    }
    
    public enum FontWeight{
        case UltraLight, Light, Regular, Medium, DemiBold, Bold, Heavy
    }
    
    func initialize(fontWeight: FontWeight, fontSize: CGFloat, fontColor: UIColor) {
        var fontName = "AvenirNext-"
        switch fontWeight{
        case .UltraLight: fontName += "UltraLight"
        case .Light: fontName += "Light"
        case .Regular: fontName += "Regular"
        case .DemiBold: fontName += "DemiBold"
        case .Bold: fontName += "Bold"
        case .Heavy: fontName += "Heavy"
        case .Medium: fontName += "Medium"
        }
        
        self.labelView.font = UIFont.init(name: fontName, size: fontSize)
        self.labelView.textColor = fontColor
        self.labelView.lineBreakMode = .byWordWrapping
        self.labelView.numberOfLines = 0
        self.labelView.sizeToFit()
        
        super.initialize()
    }
}
