//
//  ViewController.swift
//  clientapp
//
//  Created by Steven Xie on 28-05-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class IntroController: UIViewController {
    
    @IBOutlet weak var image: IntroImage!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var card: UIView!
    @IBOutlet weak var cardBottom: NSLayoutConstraint!
    var cardExtension: UIView!
    
    override func viewDidLoad() {
        self.button.setBackgroundImage(#imageLiteral(resourceName: "ButtonBackgroundHighlighted"), for: .highlighted)
        
        cardExtension = UIView(frame: CGRect.init(x: 0, y: view.frame.maxY, width: view.bounds.width, height: self.view.bounds.height * 1.25))
        cardExtension.backgroundColor = card.backgroundColor
        view.addSubview(cardExtension)
        
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        self.updateImageLayout()
        super.viewDidLayoutSubviews()
    }
    
    private func updateImageLayout(){
        //Basic setup
        image.translatesAutoresizingMaskIntoConstraints = true
        image.sizeToFit()
        
        //Size and position properly
        let availableSpace = CGSize(width: view.bounds.width, height: (card.frame.minY - 20))
        if image.criticalSize.height > availableSpace.height{
            image.sizeProportionallyByHeight(height: availableSpace.height)
            image.centerImageTo(point: CGPoint(x: view.center.x, y: card.frame.minY/2))
        }
        else{
            image.centerImageTo(point: CGPoint(x: view.center.x, y: card.frame.minY/2 - availableSpace.height * 0.06))
        }
    }

    @IBAction func onClick(_ sender: UIButton) {
        cardBottom.constant += self.view.bounds.height * 1.25
        UIView.animate(withDuration: 1, animations: {
            self.view.layoutIfNeeded()
            self.cardExtension.center.y -= self.view.bounds.height * 1.25
        }, completion:{ (finished: Bool) in
            let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "StudentInfo")
            UIApplication.shared.delegate?.window??.rootViewController = nextVC
        })
    }
}

