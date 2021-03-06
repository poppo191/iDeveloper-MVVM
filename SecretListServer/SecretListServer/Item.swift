//
//  Item.swift
//  SecretList
//
//  Created by Kiattisak Anoochitarom on 6/25/2559 BE.
//  Copyright © 2559 Kiattisak Anoochitarom. All rights reserved.
//

import Foundation

class Item {
    var title: String
    var createdAt: NSDate
    
    init(title: String, createdAt: NSDate) {
        self.title = title
        self.createdAt = createdAt
    }
  
    func toDict() -> [String : AnyObject] {
        return [
            "title": title,
            "created_at" : NSDate().ISOString()
        ]
    }
}

private extension NSDate {
    func ISOString() -> String {
        struct Instance {
            static let formatter = NSDateFormatter()
        }
        Instance.formatter.locale = NSLocale(localeIdentifier: "en_US_POSIX")
        Instance.formatter.timeZone = NSTimeZone(abbreviation: "GMT")
        Instance.formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
        return Instance.formatter.stringFromDate(self)
    }
}
