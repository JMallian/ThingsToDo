//
//  Task.swift
//  ThingsToDo
//
//  Created by Jessica Mallian on 9/5/18.
//  Copyright © 2018 Jessica Mallian. All rights reserved.
//

import Foundation
//TODO: implement description and priority again
enum Priority {
    case high
    case normal
}

class Task {
    var title: String
//    var description: String
//    var priority: Priority
    
    init(title: String) {
        self.title = title
//        self.description = description
//        self.priority = priority
    }
}
