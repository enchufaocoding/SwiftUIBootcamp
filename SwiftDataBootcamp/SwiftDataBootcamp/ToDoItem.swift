//
//  ToDoItem.swift
//  SwiftDataBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 17/10/25.
//

import Foundation
import SwiftData

@Model
class ToDoItem: Identifiable {
    var id: UUID
    var name: String
    var isComplete: Bool
    
    init(id: UUID = UUID(), name: String, isComplete: Bool = false) {
        self.id = id
        self.name = name
        self.isComplete = isComplete
    }
}
