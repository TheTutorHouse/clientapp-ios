//
//  SubjectCard.swift
//  clientapp
//
//  Created by Steven Xie on 27-06-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class SubjectCard: UIView{
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.cornerRadius = 22
        layer.masksToBounds = true
    }
}
