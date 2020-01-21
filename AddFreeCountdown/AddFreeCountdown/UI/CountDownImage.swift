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
    }
    
    
    
    func adjustBorderToCircle() {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = self.layer.bounds.width / 2
        self.layer.borderWidth = 2
    }
    
    fileprivate func changeBorderColor() {
        self.layer.borderColor = UIColor.white.cgColor
    }
    
    
    
    
}
