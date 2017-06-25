//
//  DisplayTester.swift
//  clientapp
//
//  Created by Steven Xie on 25-06-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class DisplayTester{
    static func addTestPoint(coordinates: CGPoint, target: UIView){
        let view = UIView(frame: CGRect.init(origin: CGPoint.zero, size: CGSize(width: 10, height: 10)))
        view.center = coordinates
        view.backgroundColor = UIColor.red
        target.addSubview(view)
    }
}
