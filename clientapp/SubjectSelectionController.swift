//
//  GradeSelectionController.swift
//  clientapp
//
//  Created by Steven Xie on 27-06-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class SubjectSelectionController: ViewControllerWithKeyboard{
    @IBOutlet weak var topBar: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var constraints: [String: NSLayoutConstraint]!
    
    override func viewDidLoad() {
        let allViews = [view] + view.subviews
        constraints = ConstraintHandler.packageConstraintsWithIdentifiers(fromViews: allViews)
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        if controllerStage == .loaded{
            self.prepareToAnimateSubviews()
        }
        super.viewDidLayoutSubviews()
    }
    
    private func prepareToAnimateSubviews(){
        constraints["topbar-top"]?.constant = -topBar.bounds.height
        constraints["scrollview-top"]?.constant = view.bounds.height - 20
        controllerStage = .prepared
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if controllerStage == .prepared{
            self.animateInSubviews()
        }
        super.viewDidAppear(animated)
    }
    
    private func animateInSubviews(){
        constraints["scrollview-top"]?.constant = 0
        
        UIView.animate(withDuration: 0.75, delay: 0.15, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.4, options: [], animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        constraints["topbar-top"]?.constant = 0
        
        UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0.2, options: [], animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        controllerStage = .animated
    }
}
