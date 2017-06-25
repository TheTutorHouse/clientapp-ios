//
//  IntroImage.swift
//  clientapp
//
//  Created by Steven Xie on 06-06-2017.
//  Copyright © 2017 Horizon Industries. All rights reserved.
//

import UIKit

class IntroImage: UIImageView{
    var criticalSize: CGSize{
        get{
            let width = self.bounds.width * 220/781
            let height = self.bounds.height * 210/520
            return CGSize(width: width, height: height)
        }
    }
    
    func centerImageTo(point: CGPoint){
        let point = CGPoint(x: point.x, y: (point.y + (112/520 * self.bounds.height)))
        self.center = point
    }
    
    func sizeProportionallyByHeight(height: CGFloat){
        let height = height * 520/200
        let sizeRatio = self.bounds.width/self.bounds.height
        let previousCenter = self.center
        
        self.frame.size = CGSize(width: height * sizeRatio, height: height)
        self.center = previousCenter
    }
}
