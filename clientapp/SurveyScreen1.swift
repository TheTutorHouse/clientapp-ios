//
//  SurveyScreen1.swift
//  clientapp
//
//  Created by Steven Xie on 06-06-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class SurveyScreen1: UIViewController, UITextFieldDelegate{
    var background: SurveyScreen1Background!
    var topBar: SurveyScreen1TopBar!
    var scrollView: SurveyScreen1ScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutSubviews()
        saveInitialViewStates()
        self.prepareForAnimateIn()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.animateIn()
        super.viewWillAppear(animated)
    }
    
    func layoutSubviews(){
        background = SurveyScreen1Background(parent: view)
        topBar = SurveyScreen1TopBar(parent: background.view)
        scrollView = SurveyScreen1ScrollView(parent: background.view, topBar: topBar.view)
        self.scrollView.card1.textField.textFieldView.delegate = self
    }
    
    var initialPositions: [CGPoint]!
    func saveInitialViewStates(){
        initialPositions = [CGPoint]()
        let views = [topBar.view!]
        for view in views{
            initialPositions.append(view.center)
        }
    }
    
    func prepareForAnimateIn(){
        topBar.view.center.y -= topBar.view.center.y
    }
    
    func animateIn(){
        UIView.animate(withDuration: 0.8, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0.2, options: [], animations: {
            self.topBar.view.center = self.initialPositions[0]
        }, completion: nil)
    }
    
    func animateOut(){
        return
    }
}
