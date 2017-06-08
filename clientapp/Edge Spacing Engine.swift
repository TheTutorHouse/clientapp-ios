//
//  Edge Spacing Engine.swift
//  clientapp
//
//  Created by Steven Xie on 01-06-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

extension UIElement{
    struct EdgeSpacing{
        var left: IntelligentSize?
        var right: IntelligentSize?
        var top: IntelligentSize?
        var bottom: IntelligentSize?
    }
    
    struct IntelligentSize{
        var min: CGFloat
        var max: CGFloat
        var dynamicFactor: CGFloat
        var constant: CGFloat?
    }
}
