//
//  CountdownTableViewCell.swift
//  AddFreeCountdown
//
//  Created by Ian Hall on 1/2/20.
//  Copyright © 2020 Ian Hall. All rights reserved.
//

import UIKit

class CountdownTableViewCell: UITableViewCell {
//MARK: - Variables
    @IBOutlet weak var countdownImage: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    //MARK: - Helper Functions
    
    func updateCell (_ countdown: Countdown) {
        if let image = countdown.photo {
            countdownImage.image = image
        }
        guard let date = countdown.date else {return}
        titleLabel.text = countdown.name
        dateLabel.text = DateHelper.shared.dateToString(date:date)
        
    }
}
