//
//  CustomColorScheme
//  clientapp
//
//  Created by Steven Xie on 28-05-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import Foundation
import UIKit
struct CustomColorScheme{
    static var lightRed: UIColor {
        get{
            let sourceImage = #imageLiteral(resourceName: "LightRedBackground")
            return sourceImage.getPixelColor(pos: CGPoint(x: 1, y: 1))
        }
    }
    static var darkRed: UIColor{
        get{
            let sourceImage = #imageLiteral(resourceName: "RedBackground")
            return sourceImage.getPixelColor(pos: CGPoint(x: 1, y: 1))
        }
    }
}
