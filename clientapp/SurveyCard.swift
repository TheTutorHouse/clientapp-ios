//
//  SurveyCard.swift
//  clientapp
//
//  Created by Steven Xie on 07-06-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class SurveyCard: UIElement{
    var title: UILabelElement
    var indicator = UIImageView(image: #imageLiteral(resourceName: "SurveyCardIndicator-White"))
    var status: Status = .incomplete{
        didSet{
            var newImage: UIImage
            switch status{
            case .incomplete:
                 newImage = #imageLiteral(resourceName: "SurveyCardIndicator-White")
            case .error:
                newImage = #imageLiteral(resourceName: "SurveyCardIndicator-Red")
            case .partial:
                newImage = #imageLiteral(resourceName: "SurveyCardIndicator-Yellow")
            case .verified:
                newImage = #imageLiteral(resourceName: "SurveyCardIndicator-Green")
            }
            
            UIView.transition(with: self.indicator,
                              duration: 0.3,
                              options: .transitionCrossDissolve,
                              animations: {
                                self.indicator.image = newImage
            },
                              completion: nil)
        }
    }
    
    public enum Status{
        case incomplete, partial, verified, error
    }
    
    init(parent: UIView, titleText: String){
        let width = parent.frame.width * 0.93
        let height: CGFloat = 50
        let view = UIImageView(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: width, height: height)))
        view.contentMode = .redraw
        view.image = #imageLiteral(resourceName: "SurveyCardBackground")
        title = UILabelElement(parent: view)
        self.title.labelView.text = titleText
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = true
        super.init(withView: view, parent: parent)
        initPositions()
    }
    
    override func initialize() {
        title.initialize(fontWeight: .Medium, fontSize: 20, fontColor: CustomColorScheme.darkRed)
        indicator.frame = CGRect(origin: view.center, size: CGSize(width: 15, height: 15))
        indicator.contentMode = .scaleAspectFit
        self.view.addSubview(indicator)
        self.title.labelView.textAlignment = .left
        super.initialize()
    }
    
    func initPositions(){
        self.title.view.frame.origin = CGPoint(x: 20, y: 9)
        self.indicator.center = CGPoint(x: self.view.bounds.maxX - 16, y: 16)
    }
}
