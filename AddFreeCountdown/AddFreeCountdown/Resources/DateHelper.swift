//
//  DateHelper.swift
//  AddFreeCountdown
//
//  Created by Ian Hall on 1/2/20.
//  Copyright © 2020 Ian Hall. All rights reserved.
//

import Foundation

class DateHelper {
    
    static let shared = DateHelper()
    
    private init () {}
    
    let dateFormater: DateFormatter = DateFormatter()
    
    func dateToString(date: Date) -> String {
        dateFormater.dateStyle = .long
        dateFormater.timeStyle = .short
        return dateFormater.string(from: date)
    }
    
    func returnCountdown(date: Date) -> String {
        let difference: Double = Date().distance(to: date)
        return convertCountdownToString(difference: difference)
    }
    
     fileprivate func convertCountdownToString(difference: Double) -> String {
        if difference < 0 {
            return "Countdown complete"
        }
        let dateFormater = DateComponentsFormatter()
        dateFormater.allowedUnits = [.year,.day,.hour,.minute,.second]
        dateFormater.unitsStyle = .full
        return dateFormater.string(from: TimeInterval(difference)) ?? "ERROR"
    }
    
}

