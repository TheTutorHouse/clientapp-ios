//
//  SurveyCard.swift
//  clientapp
//
//  Created by Steven Xie on 07-06-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class SurveyCard: UIView{
    var indicator: SurveyCardIndicator!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    private func initialize(){
        self.indicator = SurveyCardIndicator(frame: CGRect.zero)
        self.addSubview(indicator)
        
        self.layer.cornerRadius = 15
        self.layer.masksToBounds = true
    }
    
    override func layoutSubviews() {
        self.indicator.center = CGPoint(x: self.bounds.maxX - 20, y: 20)
        super.layoutSubviews()
    }
    
    public func contentsAreValid() -> Bool{
        if indicator.status == .valid{
            return true
        }
        else{
            return false
        }
    }
}
