//
//  SurveyCardIndicator.swift
//  clientapp
//
//  Created by Steven Xie on 25-06-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit
class SurveyCardIndicator: UIImageView{
    var status: Status = .notStarted{
        didSet{
            var newImage: UIImage
            switch status{
            case .inProgress: newImage = #imageLiteral(resourceName: "SurveyCardIndicator-Yellow")
            case .valid : newImage = #imageLiteral(resourceName: "SurveyCardIndicator-Green")
            case .invalid: newImage = #imageLiteral(resourceName: "SurveyCardIndicator-Red")
            case .notStarted: newImage = #imageLiteral(resourceName: "SurveyCardIndicator-White")
            }
            UIView.transition(with: self,
                              duration: 0.4,
                              options: .transitionCrossDissolve,
                              animations: {
                                self.image = newImage
            }, completion: nil)
        }
    }
    
    public enum Status{
        case invalid, valid, inProgress, notStarted
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    override init(image: UIImage?) {
        super.init(image: image)
        initialize()
    }
    
    override init(image: UIImage?, highlightedImage: UIImage?) {
        super.init(image: image, highlightedImage: highlightedImage)
        initialize()
    }
    
    private func initialize(){
        self.status = .notStarted
        self.sizeToFit()
    }
}
