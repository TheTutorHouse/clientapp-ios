//
//  UIGroup.swift
//  clientapp
//
//  Created by Steven Xie on 01-06-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class UIGroup{
    init(){
        self.layoutContent()
    }
    
    func layoutContent(){
        
    }
    
    public enum RelativePosition{
        case top, bottom
    }
    
    func stackViews(topView: UIView, bottomView: UIView, byAmount amount: CGFloat, pinnedView: RelativePosition){
        let topViewSpacing = (topView.frame.height)/2
        let bottomViewSpacing = (bottomView.frame.height)/2
        let totalSpacing = topViewSpacing + bottomViewSpacing + amount
        
        switch pinnedView{
        case .bottom:
            topView.center.y = (bottomView.center.y - totalSpacing)
        case .top:
            bottomView.center.y = (topView.center.y + totalSpacing)
        }
    }
    
    func intelligentlyStackViews(topView: UIView, bottomView: UIView, minAmount: CGFloat, maxAmount: CGFloat, dynamicFactor: CGFloat, pinnedView: RelativePosition, parentView: UIView){
        var separationAmount = dynamicFactor * parentView.frame.height
        
        if separationAmount > maxAmount{
            separationAmount = maxAmount
        }
        else if separationAmount < minAmount{
            separationAmount = minAmount
        }
        
        stackViews(topView: topView, bottomView: bottomView, byAmount: separationAmount, pinnedView: pinnedView)
    }
}
