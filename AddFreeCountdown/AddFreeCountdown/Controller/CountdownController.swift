//
//  CountdownController.swift
//  AddFreeCountdown
//
//  Created by Ian Hall on 12/29/19.
//  Copyright © 2019 Ian Hall. All rights reserved.
//

import Foundation
import CoreData

class CountdownController {
    
    static let shared: CountdownController = CountdownController()
    
    var countDowns: [Countdown]?
    
    init () {
        let fetchRequest: NSFetchRequest<Countdown> = Countdown.fetchRequest()
        
        let moc = CoreDataStack.context
        
        countDowns = (try? moc.fetch(fetchRequest)) ?? []
        
    }
}
