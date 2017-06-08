//
//  ViewController.swift
//  clientapp
//
//  Created by Steven Xie on 28-05-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class IntroController: UIViewController {
    var background: IntroBackground!
    var card: IntroCard!
    var image: IntroImage!

    override func viewDidLoad() {
        CustomUI.initialize()
        super.viewDidLoad()
        self.layoutSubviews()
        self.initPositions()
    }
    
    func layoutSubviews(){
        self.background = IntroBackground(parent: view)
        self.image = IntroImage(parent: background.view)
        self.card = IntroCard(parent: background.view)
        self.card.button.button.addTarget(self, action: #selector(onStartButtonClick), for: .touchUpInside)
    }
    
    func initPositions(){
        let availableImportantRegionSpace = card.background.view.frame.minY - 20
        if (self.image.importantRegionHeight + 25) > availableImportantRegionSpace{
            image.sizeImportantRegionTo(newImportantRegionHeight: availableImportantRegionSpace * 0.9)
        }
        
        self.image.importantRegionCenterPoint = CGPoint(x: self.view.center.x, y: (self.card.background.view.frame.minY + 10)/2)
    }
    
    func onStartButtonClick(){
        self.animateSubviews()
    }
    
    func animateSubviews(){
        UIView.animate(withDuration: 1.4, delay: 0.05, usingSpringWithDamping: 1, initialSpringVelocity: 0.4, options: [], animations: {
            self.card.background.view.center.y -= (self.view.frame.height)
            self.card.button.view.center.y -= (self.view.frame.height)
            self.card.title.view.center.y -= (self.view.frame.height)
            self.card.description.view.center.y -= self.view.frame.height
        }, completion: { finished in
            self.switchToSurveyController()
        })
    }
    
    func switchToSurveyController(){
        let studentInformationVC = SurveyScreen1(nibName: nil, bundle: nil)
        self.present(studentInformationVC, animated: false, completion: nil)
    }
    
}

