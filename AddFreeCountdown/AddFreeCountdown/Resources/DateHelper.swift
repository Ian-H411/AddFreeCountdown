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
        let seconds: Int = Int(difference)
        let minutes: Int = Int(seconds / 60)
        let hours: Int = Int(minutes / 60)
        let days: Int = Int(hours / 24)
        let years: Int = Int(days / 365)
        var countDownString: String = ""
        if years != 0 {
            countDownString += "\(years) years, "
        }
        if days != 0 {
            countDownString += "\(days) days, "
        }
        countDownString += "\(hours) hours, \(minutes) minutes, \(seconds) seconds remaining"
        return countDownString
    }
    
}

