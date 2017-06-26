//
//  GradeButton.swift
//  clientapp
//
//  Created by Steven Xie on 26-06-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class GradeButton: UIButton{
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    private func initialize(){
        self.imageView?.frame = self.bounds
        self.imageView?.contentMode = .scaleAspectFill
        self.contentVerticalAlignment = .fill
        self.contentHorizontalAlignment = .fill
    }
}
