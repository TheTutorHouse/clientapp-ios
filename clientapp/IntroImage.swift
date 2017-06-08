//
//  IntroImage.swift
//  clientapp
//
//  Created by Steven Xie on 06-06-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class IntroImage: UIElement{
    var importantRegionHeight: CGFloat = 0
    var importantRegionCenterPoint: CGPoint = CGPoint.zero{
        didSet{
            setImportantRegionCenterTo(point: importantRegionCenterPoint)
        }
    }
    
    init(parent: UIView){
        let view = UIImageView(image: #imageLiteral(resourceName: "IntroScreenImage"))
        super.init(withView: view, parent: parent)
    }
    
    override func initialize() {
        self.view.sizeToFit()
        super.initialize()
    }
    
    override func initSizing() {
        importantRegionHeight = 0.3686836028 * (self.view.frame.height)
        super.initSizing()
    }
    
    private func setImportantRegionCenterTo(point centerPoint: CGPoint){
        let importantRegionCenterX = 135/434 * self.view.frame.width
        let actualHorizontalDifferenceFromCenter = (self.view.frame.width/2) - (importantRegionCenterX)
        self.view.center.x = centerPoint.x + actualHorizontalDifferenceFromCenter
        
        let importantRegionCenterY = 123/433 * self.view.frame.height
        let actualVerticalDifferenceFromCenter = (self.view.frame.height/2) - (importantRegionCenterY)
        self.view.center.y = centerPoint.y + actualVerticalDifferenceFromCenter
    }
    
    func sizeImportantRegionTo(newImportantRegionHeight: CGFloat){
        let sizingFactor = newImportantRegionHeight/importantRegionHeight
        self.view.frame.size = CGSize(width: self.view.frame.width * sizingFactor, height: self.view.frame.width * sizingFactor)
    }
}
