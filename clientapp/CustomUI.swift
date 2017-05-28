//
//  CustomUI.swift
//  clientapp
//
//  Created by Steven Xie on 28-05-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

struct CustomUI{
    static var statusBarColor: UIColor = UIColor.black{
        didSet{
            guard let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else {return}
            statusBar.backgroundColor = statusBarColor
        }
    }
    
    static func initialize(){
        statusBarColor = CustomColorScheme.grey1
    }
}
