//
//  CountDownImage.swift
//  AddFreeCountdown
//
//  Created by Ian Hall on 1/14/20.
//  Copyright © 2020 Ian Hall. All rights reserved.
//
import UIKit

class CountdownImage: UIImageView {
    
    var timer: Timer?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        adjustBorderToCircle()
        changeBorderColor()
        glow()
    }
    
    
    
    func adjustBorderToCircle() {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = self.layer.bounds.width / 2
        self.layer.borderWidth = 2
    }
    
    fileprivate func changeBorderColor() {
        self.layer.borderColor = UIColor.yellow.cgColor
    }
    
    
    
    func glow(){
        var shadowRadius: CGFloat = 10
        self.layer.shadowColor = UIColor.yellow.cgColor
        self.layer.shadowRadius = shadowRadius
        let timerSet = Timer(fire: Date(), interval: 1.0, repeats: true) { (_) in
            if shadowRadius < 30 {
                shadowRadius += 15
            } else if shadowRadius >= 30 {
                shadowRadius -= 15
            }
        }
        timerSet.fire()
        timer = timerSet
        
    }
    
}
