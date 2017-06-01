//
//  SizingControllers.swift
//  clientapp
//
//  Created by Steven Xie on 29-05-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

extension UIElement{
    public enum Axis{
        case vertical, horizontal
    }
    
    public func intelligentlyResize(minAmount: CGFloat, maxAmount: CGFloat, dynamicFactor: CGFloat, axis: Axis = .horizontal, retainCenter: Bool = true){
        let previousCenter = self.view.center
        var scaleFactor: CGFloat = 0
        
        switch axis{
        case .horizontal:
            let parentWidth = parent.frame.width
            
            var viewWidth = dynamicFactor * parentWidth
            if viewWidth > maxAmount{
                viewWidth = maxAmount
            }
            else if viewWidth < minAmount{
                viewWidth = minAmount
            }
            
            scaleFactor = CGFloat(viewWidth)/CGFloat(view.frame.width)
            
            
        case .vertical:
            let parentHeight = parent.frame.height
            
            var viewHeight = dynamicFactor * parentHeight
            if viewHeight > maxAmount{
                viewHeight = maxAmount
            }
            else if viewHeight < minAmount{
                viewHeight = minAmount
            }
            
            scaleFactor = CGFloat(viewHeight)/CGFloat(view.frame.height)
        }
        
        view.frame.size.width = view.frame.width * scaleFactor
        view.frame.size.height = view.frame.height * scaleFactor
        
        if retainCenter == true{
            self.view.center = previousCenter
        }
    }
}
