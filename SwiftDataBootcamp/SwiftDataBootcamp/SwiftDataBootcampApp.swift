//
//  SwiftDataBootcampApp.swift
//  SwiftDataBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 17/10/25.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataBootcampApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: ToDoItem.self)
    }
}
