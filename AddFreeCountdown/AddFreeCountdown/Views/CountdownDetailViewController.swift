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
        guard let countdown = countdownLandingPad else {return}
        guard let date = countdown.date else {return}
        titleLabel.text = countdown.name
        dateLabel.text = DateHelper.shared.dateToString(date: date)
        countdownImageLabel.image = countdown.photo
        refreshTimer(date: date)
        
    }
    
    func refreshTimer(date: Date) {
        let timerInitialized = Timer(timeInterval: 1.0, repeats: true) { (_) in
            let seconds = DateHelper.shared.returnCountdown(date: date)
            let minuetes = seconds / 60
            let hours = minuetes / 60
            let days = hours / 24
            let years = days / 365
            let countdownAsString = "\(years) years, \(days) days, \(hours) hours, \(minuetes) mins, \(seconds) seconds."
            self.countdownLabel.text = countdownAsString
        }
        timerInitialized.fire()
        timer = timerInitialized
    }
    

}
