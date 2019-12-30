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
    
    //MARK: - Create
    @discardableResult func createCountdown (name: String, date: Date, format: String) -> Countdown {
    let newCountdown: Countdown = Countdown(name: name, date: date, format: format)
        saveToPersistentStore()
        return newCountdown
    }
    
    
    //MARK: - Modify
    
    //MARK: - Delete
    func delete (countdown: Countdown) {
        if let moc = countdown.managedObjectContext {
            moc.delete(countdown)
            saveToPersistentStore()
        }
    }
    
    //MARK: - Save
    private func saveToPersistentStore () {
        if CoreDataStack.context.hasChanges {
            try? CoreDataStack.context.save()
        }
    }
}
