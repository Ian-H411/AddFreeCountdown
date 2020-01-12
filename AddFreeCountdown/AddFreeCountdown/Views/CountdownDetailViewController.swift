//
//  CountdownDetailViewController.swift
//  AddFreeCountdown
//
//  Created by Ian Hall on 1/12/20.
//  Copyright © 2020 Ian Hall. All rights reserved.
//

import UIKit

class CountdownDetailViewController: UIViewController {

    //MARK: - OUTLETS
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var countdownLabel: UILabel!
    
    @IBOutlet weak var countdownImageLabel: UIImageView!
    
    
    //MARK: - Variables
    
    var countdownLandingPad: Countdown?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    


}
