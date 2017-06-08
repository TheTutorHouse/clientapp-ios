//
//  IntroCard.swift
//  clientapp
//
//  Created by Steven Xie on 04-06-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class IntroCard{
    var background: IntroCardBackground!
    var title: IntroCardTitle!
    var description: IntroCardDescription!
    var button: IntroCardButton!
    var parent: UIView
    
    init(parent: UIView) {
        background = IntroCardBackground(parent: parent)
        self.parent = parent
        addSubviews()
        initPositions()
    }
    
    func addSubviews(){
        title = IntroCardTitle(parent: background.parent)
        description = IntroCardDescription(parent: background.parent)
        button = IntroCardButton(parent: background.parent)
    }
    
    func initPositions(){
        let verticalSpacing = parent.frame.height * 0.0375
        
        button.view.center.y = button.parent.frame.maxY - verticalSpacing - button.view.frame.height/2
        description.view.center.y = button.view.frame.minY - verticalSpacing - description.view.frame.height/2
        title.view.center.y = description.view.frame.minY - verticalSpacing * 0.5 - title.view.frame.height/2
        
        //title.view.backgroundColor = UIColor.green
        //description.view.backgroundColor = UIColor.blue
        
        let 🤡 = parent.frame.maxY - (title.view.center.y - verticalSpacing - title.view.frame.height/2)
        self.background.view.frame.size = CGSize(width: parent.frame.width, height: 🤡 + 1000)
        self.background.view.center.y = background.parent.frame.maxY - background.view.frame.height/2 + 1000
    }
}
