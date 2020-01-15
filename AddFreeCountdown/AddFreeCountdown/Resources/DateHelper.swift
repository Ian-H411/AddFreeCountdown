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
        var difference = difference
        if difference < 0 {
            return "Countdown complete"
        }
        let years = Int(difference / 31557600)
        difference -= Double(years * 31557600)
        let days = Int(difference / 86400)
        difference -= Double(days * 86400)
        let hours = Int(difference / 3600)
        difference -= Double(difference * 3600)
        let minutes = Int(difference / 60)
        let seconds = difference - Double(minutes * 60)
        
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

