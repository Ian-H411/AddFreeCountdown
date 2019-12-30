//
//  Countdown+Convenience.swift
//  AddFreeCountdown
//
//  Created by Ian Hall on 12/29/19.
//  Copyright © 2019 Ian Hall. All rights reserved.
//

import Foundation
import CoreData
import UIKit.UIImage

extension Countdown {
    convenience init(name: String, date: Date, format: String, context: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: context)
        self.name = name
        self.date = date
        self.photoData = nil
        self.format = format
    }
}
extension Countdown {
    var photo: UIImage? {
        get {
            guard let photoData = photoData else { return nil }
            return UIImage(data: photoData)
        } set {
            photoData = newValue?.jpegData(compressionQuality: 0.5)
        }
    }
}
