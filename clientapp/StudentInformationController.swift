//
//  StudentInformation.swift
//  clientapp
//
//  Created by Steven Xie on 25-06-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit
class StudentInformationController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var topBar: UIImageView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet var surveyCards: [SurveyCard]!
    @IBOutlet var textFields: [CustomTextField]!
    @IBOutlet var gradeButtons: [UIButton]!
    @IBOutlet var learningStyleButtons: [UIButton]!
    @IBOutlet var tutoringTypeButtons: [UIButton]!
    
    var controllerStage: ControllerStage = .loaded

    enum ControllerStage{
        case loaded, prepared, animated, finished
    }
    
    override func viewDidLoad() {
        view.isUserInteractionEnabled = true
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardResponder(notification:)), name: NSNotification.Name.UIKeyboardWillChangeFrame, object: nil)
    }
    
    override func viewDidLayoutSubviews(){
        if controllerStage == .loaded{
            prepareToAnimateInSubviews()
        }
        super.viewDidLayoutSubviews()
    }
    
    override func viewDidAppear(_ animated: Bool){
        if controllerStage == .prepared{
            animateInSubviews()
        }
        super.viewDidAppear(animated)
    }
    
    func prepareToAnimateInSubviews(){
        for constraint in contentView.constraints {
            if constraint.identifier == "topbar-top" {
                constraint.constant -= topBar.bounds.height
            }
        }
        
        for constraint in scrollView.constraints{
            if constraint.identifier == "scrollcontentview-top" {
                constraint.constant += view.bounds.height
            }
        }
        
        controllerStage = .prepared
    }
    
    func animateInSubviews(){
        for constraint in scrollView.constraints{
            if constraint.identifier == "scrollcontentview-top" {
                constraint.constant -= view.bounds.height
            }
        }
        
        UIView.animate(withDuration: 0.75, delay: 0.15, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.4, options: [], animations: {
            self.contentView.layoutIfNeeded()
        }, completion: nil)
        
        
        for constraint in contentView.constraints{
            if constraint.identifier == "topbar-top"{
                constraint.constant += topBar.bounds.height
            }
        }
        
        UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0.2, options: [], animations: {
            self.contentView.layoutIfNeeded()
        }, completion: nil)
        
        controllerStage = .animated
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        for card in surveyCards{
            if card.tag == textField.tag{
                card.indicator.status = .inProgress
            }
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField.tag{
        case 0:
            for field in textFields{
                if field.tag == 1{
                    field.becomeFirstResponder()
                }
            }
        case 1:
            textField.resignFirstResponder()
        default:
            print("Error - Invalid Textfield Tag Requested.")
        }
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        var currentCard: SurveyCard!
        for card in surveyCards{
            if card.tag == textField.tag{
                currentCard = card
            }
        }
        
        switch textField.tag{
        case 0:
            if let text = textField.text{
                if text == "" || text.rangeOfCharacter(from: .init(charactersIn: "1234567890")) != nil{
                    currentCard.indicator.status = .invalid
                }
                else{
                    currentCard.indicator.status = .valid
                }
            }
            else{
                currentCard.indicator.status = .invalid
            }
        case 1:
            if let text = textField.text{
                let emailTest = NSPredicate(format:"SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}")
                if text == "" || emailTest.evaluate(with: text) == false{
                    currentCard.indicator.status = .invalid
                }
                else{
                    currentCard.indicator.status = .valid
                }
            }
            else{
                currentCard.indicator.status = .invalid
            }
        default:
            print("Error - Invalid Textfield Tag Requested.")
        }
    }
    
    @IBAction func screenIsTapped(_ sender: UITapGestureRecognizer) {
        for textfield in textFields{
            if textfield.isFirstResponder == true{
                textfield.resignFirstResponder()
            }

        }
    }
    
    @IBAction func learningStyleButtonTapped(_ sender: UIButton) {
        for button in learningStyleButtons{
            if button == sender{
                if button.isSelected == true{
                    button.isSelected = false
                    for card in surveyCards{
                        if card.tag == 3{
                            card.indicator.status = .invalid
                        }
                    }
                }
                else{
                    button.isSelected = true
                    for card in surveyCards{
                        if card.tag == 3{
                            card.indicator.status = .valid
                        }
                    }
                }
            }
            else{
                button.isSelected = false
            }
        }
    }
    
    @IBAction func tutoringTypeButtonTapped(_ sender: UIButton) {
        for button in tutoringTypeButtons{
            if button == sender{
                if button.isSelected == true{
                    button.isSelected = false
                    for card in surveyCards{
                        if card.tag == 4{
                            card.indicator.status = .invalid
                        }
                    }
                }
                else{
                    button.isSelected = true
                    for card in surveyCards{
                        if card.tag == 4{
                            card.indicator.status = .valid
                        }
                    }
                }
            }
            else{
                button.isSelected = false
            }
        }
    }
    
    @IBAction func gradeButtonTapped(_ sender: UIButton) {
        for button in gradeButtons{
            if button == sender{
                if button.isSelected == true{
                    button.isSelected = false
                    for card in surveyCards{
                        if card.tag == 2{
                            card.indicator.status = .invalid
                        }
                    }
                }
                else{
                    button.isSelected = true
                    for card in surveyCards{
                        if card.tag == 2{
                            card.indicator.status = .valid
                        }
                    }
                }
            }
            else{
                button.isSelected = false
            }
        }
    }
    
    func keyboardResponder(notification: Notification){
        if let userInfo = notification.userInfo{
            if let endFrame = (userInfo[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue{
                let duration: TimeInterval = (userInfo[UIKeyboardAnimationDurationUserInfoKey] as? NSNumber)?.doubleValue ?? 0
                let animationCurveRawNSN = userInfo[UIKeyboardAnimationCurveUserInfoKey] as? NSNumber
                let animationCurveRaw = animationCurveRawNSN?.uintValue ?? UIViewAnimationOptions.curveEaseInOut.rawValue
                let animationCurve: UIViewAnimationOptions = UIViewAnimationOptions(rawValue: animationCurveRaw)
                
                for constraint in contentView.constraints{
                    if constraint.identifier == "scrollview-bottom"{
                        constraint.constant = endFrame.minY - view.frame.maxY
                    }
                }
                
                //The following code does nothing and I don't know why:
                /*
                if endFrame.minY != view.frame.maxY{
                    for textField in textFields{
                        if textField.isEditing{
                            for card in surveyCards{
                                if card.tag == textField.tag{
                                    scrollView.scrollRectToVisible(card.frame, animated: true)
                                    print("yeboi")
                                    print(card.frame)
                                }
                            }
                        }
                    }
                }
                */
                
                UIView.animate(withDuration: duration, delay: 0, options: animationCurve, animations: {
                    self.view.layoutIfNeeded()
                }, completion: nil)
            }
        }
    }
}
