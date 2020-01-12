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
    
    let dateFormater = DateFormatter()
    
    func dateToString(date: Date) -> String {
        dateFormater.dateStyle = .long
        dateFormater.timeStyle = .short
        return dateFormater.string(from: date)
    }
    
    func returnCountdown(date: Date) -> Double {
        let difference = Date().distance(to: date)
        return difference
    }
    
}

