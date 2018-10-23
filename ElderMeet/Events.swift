//
//  Events.swift
//  ElderMeet
//
//  Created by Lim JunQuan Ryan on 23/10/18.
//  Copyright © 2018 Ryan Lim. All rights reserved.
//

import Foundation
import Firebase

struct Task {
    
    var name: String
    var completed: Bool
    var addedByUser: String
    var ref: DatabaseReference?
    
    func toDictionary() -> Any {
        return [
            "name": name,
            "completed": completed,
            "addedByUser": addedByUser
        ]
    }
    
}
