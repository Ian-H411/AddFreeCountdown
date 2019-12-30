//
//  Countdown+Convenience.swift
//  AddFreeCountdown
//
//  Created by Ian Hall on 12/29/19.
//  Copyright © 2019 Ian Hall. All rights reserved.
//

import Foundation
import CoreData
extension Countdown {
    
    convenience init(name: String, date: Date, context: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: context)
        
    }
}
