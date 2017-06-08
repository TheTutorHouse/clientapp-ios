//
//  SurveyScreen1ScrollView.swift
//  clientapp
//
//  Created by Steven Xie on 07-06-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class SurveyScreen1ScrollView: UIElement{
    var topBar: UIView
    var card1: SurveyCard1!
    
    init(parent: UIView, topBar: UIView){
        self.topBar = topBar
        let scrollViewHeight = parent.frame.maxY - topBar.frame.maxY
        let scrollViewSize = CGSize(width: parent.frame.width, height: scrollViewHeight)
        let scrollViewOrigin = CGPoint(x: 0, y: topBar.frame.maxY)
        let view = UIScrollView(frame: CGRect(origin: scrollViewOrigin, size: scrollViewSize))
        view.contentSize = CGSize(width: view.frame.width, height: 500)
        view.isUserInteractionEnabled = true
        super.init(withView: view, parent: parent)
        initializeContents()
    }
    
    func initializeContents(){
        card1 = SurveyCard1(parent: self.view)
    }
    
    override func initSizing() {
        return
    }
}
