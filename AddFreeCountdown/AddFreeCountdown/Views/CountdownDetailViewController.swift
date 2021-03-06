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
    
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeUI()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        guard let timer = timer else {return}
        timer.invalidate()
    }
    //MARK: - Actions
    
    
    
    //MARK: - Helper Functions
    
    func initializeUI() {
        guard let countdown = countdownLandingPad,
            let date = countdown.date else {return}
        if let countdownImage = countdown.photo {
            countdownImageLabel.image = countdownImage
        }
        titleLabel.text = countdown.name
        dateLabel.text = DateHelper.shared.dateToString(date: date)
        refreshTimer(date: date)
        
    }
    
    func refreshTimer(date: Date) {
        let timerInitialized = Timer(timeInterval: 1.0, repeats: true) { (_) in
            
            self.countdownLabel.text =  DateHelper.shared.returnCountdown(date: date)
        }
        timerInitialized.fire()
        timer = timerInitialized
    }
    
    
}
