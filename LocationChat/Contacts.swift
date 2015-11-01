//
//  Contacts.swift
//  Pods
//
//  Created by Neegbeah Reeves on 11/1/15.
//
//

import RealmSwift

class Contacts: Object {
    
    dynamic var ontactName=""
    dynamic var createdAt = NSDate()
    dynamic var status=""
    
    
// Specify properties to ignore (Realm won't persist these)
    
    
//  override static func ignoredProperties() -> [String] {
//    return []
//  }
}
