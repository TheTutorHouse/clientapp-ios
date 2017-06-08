//
//  UITextElement.swift
//  clientapp
//
//  Created by Steven Xie on 04-06-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class UITextElement: UIElement{
    var textView: UITextView!
    
    init(parent: UIView){
        let view = UITextView(frame: CGRect.zero)
        textView = view
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
        case .Medium: fontName += "Medium"
        case .DemiBold: fontName += "DemiBold"
        case .Bold: fontName += "Bold"
        case .Heavy: fontName += "Heavy"
        }
        
        self.textView.font = UIFont.init(name: fontName, size: fontSize)
        self.textView.textColor = fontColor

        super.initialize()
    }
}
