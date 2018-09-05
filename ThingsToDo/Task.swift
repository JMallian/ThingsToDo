//
//  Task.swift
//  ThingsToDo
//
//  Created by Jessica Mallian on 9/5/18.
//  Copyright © 2018 Jessica Mallian. All rights reserved.
//

import Foundation

enum Priority {
    case high
    case normal
}

class Task {
    var title: String
    var description: String
    var priority: Priority
    
    init(title: String, description: String, priority: Priority) {
        self.title = title
        self.description = description
        self.priority = priority
    }
}