//
//  ConstraintHandler.swift
//  clientapp
//
//  Created by Steven Xie on 2017-07-06.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit
class ConstraintHandler{
    static func packageConstraintsWithIdentifiers(fromViews views: [UIView]) -> [String: NSLayoutConstraint]{
        var constraintsPackage = [String: NSLayoutConstraint]()
        for view in views{
            for constraint in view.constraints{
                if let identifier = constraint.identifier{
                    constraintsPackage[identifier] = constraint
                }
            }
        }
        return constraintsPackage
    }
}
